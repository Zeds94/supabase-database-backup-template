


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE SCHEMA IF NOT EXISTS "api";


ALTER SCHEMA "api" OWNER TO "postgres";


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."activity_log_type_enum" AS ENUM (
    'comment',
    'status_change',
    'correlation_success',
    'correlation_fail',
    'file_added'
);


ALTER TYPE "public"."activity_log_type_enum" OWNER TO "postgres";


CREATE TYPE "public"."attachment_file_type_enum" AS ENUM (
    'invoice_pdf',
    'delivery_proof_photo',
    'original_email'
);


ALTER TYPE "public"."attachment_file_type_enum" OWNER TO "postgres";


CREATE TYPE "public"."correlation_method" AS ENUM (
    'Third-party website',
    'Email correlation'
);


ALTER TYPE "public"."correlation_method" OWNER TO "postgres";


CREATE TYPE "public"."correlation_method_enum" AS ENUM (
    'direct',
    'cross_data',
    'semantic',
    'manual',
    'unmatched'
);


ALTER TYPE "public"."correlation_method_enum" OWNER TO "postgres";


CREATE TYPE "public"."delivery_type" AS ENUM (
    'Delivery',
    'Pick-up'
);


ALTER TYPE "public"."delivery_type" OWNER TO "postgres";


CREATE TYPE "public"."delivery_type_enum" AS ENUM (
    'delivery',
    'pickup'
);


ALTER TYPE "public"."delivery_type_enum" OWNER TO "postgres";


CREATE TYPE "public"."file_format" AS ENUM (
    'PDF',
    'IMAGE',
    'AUDIO'
);


ALTER TYPE "public"."file_format" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_org_id_from_order"("order_id_input" "uuid") RETURNS "uuid"
    LANGUAGE "plpgsql" STABLE
    AS $$
DECLARE
    proj_id UUID;
BEGIN
    SELECT project_id INTO proj_id
    FROM public."Orders"
    WHERE id = order_id_input
    LIMIT 1;
    RETURN get_org_id_from_project(proj_id);
END;
$$;


ALTER FUNCTION "public"."get_org_id_from_order"("order_id_input" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_org_id_from_project"("project_id_input" "uuid") RETURNS "uuid"
    LANGUAGE "plpgsql" STABLE
    AS $$
DECLARE
    org_id UUID;
BEGIN
    SELECT organization_id INTO org_id
    FROM public."Projects"
    WHERE id = project_id_input
    LIMIT 1;
    RETURN org_id;
END;
$$;


ALTER FUNCTION "public"."get_org_id_from_project"("project_id_input" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_user_organization_id"() RETURNS "uuid"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
DECLARE
    org_id UUID;
BEGIN
    SELECT organization_id INTO org_id
    FROM public."Profiles"
    WHERE id = auth.uid()
    LIMIT 1;
    RETURN org_id;
END;
$$;


ALTER FUNCTION "public"."get_user_organization_id"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_updated_at_column"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    NEW.updated_at = timezone('utc'::text, now());
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_updated_at_column"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."Activity_Log" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "user_id" "uuid" DEFAULT "auth"."uid"(),
    "type" "public"."file_format",
    "content" "text"
);


ALTER TABLE "public"."Activity_Log" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Attachments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid" NOT NULL,
    "tracking_id" "uuid",
    "file_type" "public"."file_format",
    "storage_path" "text"
);


ALTER TABLE "public"."Attachments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Kanban_Lists" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "project_id" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "name" "text" NOT NULL,
    "position" integer
);


ALTER TABLE "public"."Kanban_Lists" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Orders" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "project_id" "uuid" DEFAULT "auth"."uid"(),
    "kanban_list_id" "uuid" DEFAULT "auth"."uid"(),
    "order_number" "text",
    "recipient_email" "text",
    "delivery_postal_code" "text",
    "estimated_delivery_date" timestamp with time zone,
    "status_flags" "jsonb",
    "title" "text" NOT NULL,
    "supplier_name" "text",
    "delivery_type" "public"."delivery_type",
    "tracking_id" "uuid",
    "input_timestamp" timestamp without time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."Orders" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Organizations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


ALTER TABLE "public"."Organizations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Products" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "order_id" "uuid" NOT NULL,
    "description" "text",
    "reference" "text",
    "quantity" numeric
);


ALTER TABLE "public"."Products" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Profiles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "organization_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "full_name" "text",
    "email" "text"
);


ALTER TABLE "public"."Profiles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Projects" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "organization_id" "uuid" NOT NULL,
    "name" "text"
);


ALTER TABLE "public"."Projects" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Tracking_Infos" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "organization_id" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "correlated_order_id" "uuid",
    "tracking_number" "text",
    "carrier_name" "text",
    "extracted_order_number" "text",
    "extracted_recipient_email" "text",
    "extracted_postal_code" "text",
    "extracted_product_semantic" "text",
    "correlation_method" "public"."correlation_method"
);


ALTER TABLE "public"."Tracking_Infos" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."cards" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "list_id" "uuid" NOT NULL,
    "project_id" "uuid",
    "title" "text" NOT NULL,
    "fournisseur" "text",
    "date_commande" "date",
    "date_estimee_livraison" "text",
    "date_livraison_effective" "date",
    "date_limite_pick_up" "date",
    "type_livraison" "text",
    "statut" "text" DEFAULT 'Commandé'::"text",
    "adresse" "text",
    "lien_tracking" "text",
    "bon_de_commande" "text",
    "produits" "jsonb" DEFAULT '[]'::"jsonb",
    "position" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    CONSTRAINT "cards_type_livraison_check" CHECK (("type_livraison" = ANY (ARRAY['Retrait'::"text", 'Livraison Chantier'::"text"])))
);


ALTER TABLE "public"."cards" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."lists" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "title" "text" NOT NULL,
    "position" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."lists" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."projects" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "color" "text" DEFAULT '#3b82f6'::"text",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."projects" OWNER TO "postgres";


ALTER TABLE ONLY "public"."Activity_Log"
    ADD CONSTRAINT "Activity_Log_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Attachments"
    ADD CONSTRAINT "Attachments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Kanban_Lists"
    ADD CONSTRAINT "Kanban_Lists_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Organizations"
    ADD CONSTRAINT "Organizations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Profiles"
    ADD CONSTRAINT "Profiles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Projects"
    ADD CONSTRAINT "Projects_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Tracking_Infos"
    ADD CONSTRAINT "Tracking_Infos_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."lists"
    ADD CONSTRAINT "lists_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."projects"
    ADD CONSTRAINT "projects_pkey" PRIMARY KEY ("id");



CREATE INDEX "idx_activity_log_order_id" ON "public"."Activity_Log" USING "btree" ("order_id");



CREATE INDEX "idx_attachments_order_id" ON "public"."Attachments" USING "btree" ("order_id");



CREATE INDEX "idx_attachments_tracking_id" ON "public"."Attachments" USING "btree" ("tracking_id");



CREATE INDEX "idx_cards_list_id" ON "public"."cards" USING "btree" ("list_id");



CREATE INDEX "idx_cards_project_id" ON "public"."cards" USING "btree" ("project_id");



CREATE INDEX "idx_cards_user_id" ON "public"."cards" USING "btree" ("user_id");



CREATE INDEX "idx_kanban_lists_project_id" ON "public"."Kanban_Lists" USING "btree" ("project_id");



CREATE INDEX "idx_lists_user_id" ON "public"."lists" USING "btree" ("user_id");



CREATE INDEX "idx_orders_kanban_list_id" ON "public"."Orders" USING "btree" ("kanban_list_id");



CREATE INDEX "idx_orders_order_number" ON "public"."Orders" USING "btree" ("order_number");



CREATE INDEX "idx_orders_project_id" ON "public"."Orders" USING "btree" ("project_id");



CREATE INDEX "idx_products_order_id" ON "public"."Products" USING "btree" ("order_id");



CREATE INDEX "idx_profiles_organization_id" ON "public"."Profiles" USING "btree" ("organization_id");



CREATE INDEX "idx_projects_organization_id" ON "public"."Projects" USING "btree" ("organization_id");



CREATE INDEX "idx_projects_user_id" ON "public"."projects" USING "btree" ("user_id");



CREATE INDEX "idx_tracking_infos_correlated_order_id_null" ON "public"."Tracking_Infos" USING "btree" ("correlated_order_id") WHERE ("correlated_order_id" IS NULL);



CREATE INDEX "idx_tracking_infos_organization_id" ON "public"."Tracking_Infos" USING "btree" ("organization_id");



CREATE OR REPLACE TRIGGER "update_cards_updated_at" BEFORE UPDATE ON "public"."cards" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_kanban_lists_updated_at" BEFORE UPDATE ON "public"."Kanban_Lists" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_lists_updated_at" BEFORE UPDATE ON "public"."lists" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_orders_updated_at" BEFORE UPDATE ON "public"."Orders" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_profiles_updated_at" BEFORE UPDATE ON "public"."Profiles" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_projects_updated_at" BEFORE UPDATE ON "public"."Projects" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_projects_updated_at" BEFORE UPDATE ON "public"."projects" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_tracking_infos_updated_at" BEFORE UPDATE ON "public"."Tracking_Infos" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



ALTER TABLE ONLY "public"."Activity_Log"
    ADD CONSTRAINT "Activity_Log_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."Orders"("id");



ALTER TABLE ONLY "public"."Activity_Log"
    ADD CONSTRAINT "Activity_Log_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."Attachments"
    ADD CONSTRAINT "Attachments_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."Orders"("id");



ALTER TABLE ONLY "public"."Attachments"
    ADD CONSTRAINT "Attachments_tracking_id_fkey" FOREIGN KEY ("tracking_id") REFERENCES "public"."Tracking_Infos"("id");



ALTER TABLE ONLY "public"."Kanban_Lists"
    ADD CONSTRAINT "Kanban_Lists_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."Projects"("id");



ALTER TABLE ONLY "public"."Orders"
    ADD CONSTRAINT "Orders_kanban_list_id_fkey" FOREIGN KEY ("kanban_list_id") REFERENCES "public"."Kanban_Lists"("id");



ALTER TABLE ONLY "public"."Orders"
    ADD CONSTRAINT "Orders_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."Projects"("id");



ALTER TABLE ONLY "public"."Orders"
    ADD CONSTRAINT "Orders_tracking_id_fkey" FOREIGN KEY ("tracking_id") REFERENCES "public"."Tracking_Infos"("id");



ALTER TABLE ONLY "public"."Products"
    ADD CONSTRAINT "Products_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."Orders"("id");



ALTER TABLE ONLY "public"."Profiles"
    ADD CONSTRAINT "Profiles_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."Profiles"
    ADD CONSTRAINT "Profiles_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "public"."Organizations"("id");



ALTER TABLE ONLY "public"."Projects"
    ADD CONSTRAINT "Projects_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "public"."Organizations"("id");



ALTER TABLE ONLY "public"."Tracking_Infos"
    ADD CONSTRAINT "Tracking_Infos_correlated_order_id_fkey" FOREIGN KEY ("correlated_order_id") REFERENCES "public"."Orders"("id");



ALTER TABLE ONLY "public"."Tracking_Infos"
    ADD CONSTRAINT "Tracking_Infos_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "public"."Organizations"("id");



ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_list_id_fkey" FOREIGN KEY ("list_id") REFERENCES "public"."lists"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."projects"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."lists"
    ADD CONSTRAINT "lists_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."projects"
    ADD CONSTRAINT "projects_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE "public"."Activity_Log" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Attachments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Kanban_Lists" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Orders" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Organizations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Products" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Profiles" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Projects" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Tracking_Infos" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "Users can CRUD activity_logs for orders in their organization" ON "public"."Activity_Log" USING (("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"())) WITH CHECK (("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"()));



CREATE POLICY "Users can CRUD lists for projects in their organization" ON "public"."Kanban_Lists" USING (("public"."get_org_id_from_project"("project_id") = "public"."get_user_organization_id"())) WITH CHECK (("public"."get_org_id_from_project"("project_id") = "public"."get_user_organization_id"()));



CREATE POLICY "Users can CRUD orders for projects in their organization" ON "public"."Orders" USING (("public"."get_org_id_from_project"("project_id") = "public"."get_user_organization_id"())) WITH CHECK (("public"."get_org_id_from_project"("project_id") = "public"."get_user_organization_id"()));



CREATE POLICY "Users can CRUD products for orders in their organization" ON "public"."Products" USING (("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"())) WITH CHECK (("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"()));



CREATE POLICY "Users can CRUD projects in their organization" ON "public"."Projects" USING (("organization_id" = "public"."get_user_organization_id"())) WITH CHECK (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can CRUD tracking_infos for their organization" ON "public"."Tracking_Infos" USING (("organization_id" = "public"."get_user_organization_id"())) WITH CHECK (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can delete attachments in their organization" ON "public"."Attachments" FOR DELETE USING (((("order_id" IS NOT NULL) AND ("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"())) OR (("tracking_id" IS NOT NULL) AND (( SELECT "Tracking_Infos"."organization_id"
   FROM "public"."Tracking_Infos"
  WHERE ("Tracking_Infos"."id" = "Attachments"."tracking_id")) = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can delete lists from their organization's projects" ON "public"."Kanban_Lists" FOR DELETE USING (("project_id" IN ( SELECT "Projects"."id"
   FROM "public"."Projects"
  WHERE ("Projects"."organization_id" = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can delete projects from their organization" ON "public"."Projects" FOR DELETE USING (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can delete their own cards" ON "public"."cards" FOR DELETE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can delete their own lists" ON "public"."lists" FOR DELETE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can delete their own projects" ON "public"."projects" FOR DELETE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can insert attachments in their organization" ON "public"."Attachments" FOR INSERT WITH CHECK (((("order_id" IS NOT NULL) AND ("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"())) OR (("tracking_id" IS NOT NULL) AND (( SELECT "Tracking_Infos"."organization_id"
   FROM "public"."Tracking_Infos"
  WHERE ("Tracking_Infos"."id" = "Attachments"."tracking_id")) = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can insert lists into their organization's projects" ON "public"."Kanban_Lists" FOR INSERT WITH CHECK (("project_id" IN ( SELECT "Projects"."id"
   FROM "public"."Projects"
  WHERE ("Projects"."organization_id" = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can insert projects into their organization" ON "public"."Projects" FOR INSERT WITH CHECK (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can insert their own cards" ON "public"."cards" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can insert their own lists" ON "public"."lists" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can insert their own projects" ON "public"."projects" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can update lists in their organization's projects" ON "public"."Kanban_Lists" FOR UPDATE USING (("project_id" IN ( SELECT "Projects"."id"
   FROM "public"."Projects"
  WHERE ("Projects"."organization_id" = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can update projects in their organization" ON "public"."Projects" FOR UPDATE USING (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can update their own cards" ON "public"."cards" FOR UPDATE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can update their own lists" ON "public"."lists" FOR UPDATE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can update their own profile" ON "public"."Profiles" FOR UPDATE USING (("id" = "auth"."uid"()));



CREATE POLICY "Users can update their own projects" ON "public"."projects" FOR UPDATE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can view attachments in their organization" ON "public"."Attachments" FOR SELECT USING (((("order_id" IS NOT NULL) AND ("public"."get_org_id_from_order"("order_id") = "public"."get_user_organization_id"())) OR (("tracking_id" IS NOT NULL) AND (( SELECT "Tracking_Infos"."organization_id"
   FROM "public"."Tracking_Infos"
  WHERE ("Tracking_Infos"."id" = "Attachments"."tracking_id")) = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can view lists for projects in their organization" ON "public"."Kanban_Lists" FOR SELECT USING (("project_id" IN ( SELECT "Projects"."id"
   FROM "public"."Projects"
  WHERE ("Projects"."organization_id" = "public"."get_user_organization_id"()))));



CREATE POLICY "Users can view profiles in their organization" ON "public"."Profiles" FOR SELECT USING (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can view projects in their organization" ON "public"."Projects" FOR SELECT USING (("organization_id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can view their own cards" ON "public"."cards" FOR SELECT USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can view their own lists" ON "public"."lists" FOR SELECT USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can view their own organization" ON "public"."Organizations" FOR SELECT USING (("id" = "public"."get_user_organization_id"()));



CREATE POLICY "Users can view their own profile" ON "public"."Profiles" FOR SELECT USING (("id" = "auth"."uid"()));



CREATE POLICY "Users can view their own projects" ON "public"."projects" FOR SELECT USING (("auth"."uid"() = "user_id"));



ALTER TABLE "public"."cards" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."lists" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."projects" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."Kanban_Lists";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."Orders";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."Organizations";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."Projects";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."cards";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."lists";



GRANT USAGE ON SCHEMA "api" TO "anon";
GRANT USAGE ON SCHEMA "api" TO "authenticated";
GRANT USAGE ON SCHEMA "api" TO "service_role";



GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

























































































































































GRANT ALL ON FUNCTION "public"."get_org_id_from_order"("order_id_input" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."get_org_id_from_order"("order_id_input" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_org_id_from_order"("order_id_input" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_org_id_from_project"("project_id_input" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."get_org_id_from_project"("project_id_input" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_org_id_from_project"("project_id_input" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_user_organization_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_user_organization_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_user_organization_id"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "service_role";


















GRANT ALL ON TABLE "public"."Activity_Log" TO "anon";
GRANT ALL ON TABLE "public"."Activity_Log" TO "authenticated";
GRANT ALL ON TABLE "public"."Activity_Log" TO "service_role";



GRANT ALL ON TABLE "public"."Attachments" TO "anon";
GRANT ALL ON TABLE "public"."Attachments" TO "authenticated";
GRANT ALL ON TABLE "public"."Attachments" TO "service_role";



GRANT ALL ON TABLE "public"."Kanban_Lists" TO "anon";
GRANT ALL ON TABLE "public"."Kanban_Lists" TO "authenticated";
GRANT ALL ON TABLE "public"."Kanban_Lists" TO "service_role";



GRANT ALL ON TABLE "public"."Orders" TO "anon";
GRANT ALL ON TABLE "public"."Orders" TO "authenticated";
GRANT ALL ON TABLE "public"."Orders" TO "service_role";



GRANT ALL ON TABLE "public"."Organizations" TO "anon";
GRANT ALL ON TABLE "public"."Organizations" TO "authenticated";
GRANT ALL ON TABLE "public"."Organizations" TO "service_role";



GRANT ALL ON TABLE "public"."Products" TO "anon";
GRANT ALL ON TABLE "public"."Products" TO "authenticated";
GRANT ALL ON TABLE "public"."Products" TO "service_role";



GRANT ALL ON TABLE "public"."Profiles" TO "anon";
GRANT ALL ON TABLE "public"."Profiles" TO "authenticated";
GRANT ALL ON TABLE "public"."Profiles" TO "service_role";



GRANT ALL ON TABLE "public"."Projects" TO "anon";
GRANT ALL ON TABLE "public"."Projects" TO "authenticated";
GRANT ALL ON TABLE "public"."Projects" TO "service_role";



GRANT ALL ON TABLE "public"."Tracking_Infos" TO "anon";
GRANT ALL ON TABLE "public"."Tracking_Infos" TO "authenticated";
GRANT ALL ON TABLE "public"."Tracking_Infos" TO "service_role";



GRANT ALL ON TABLE "public"."cards" TO "anon";
GRANT ALL ON TABLE "public"."cards" TO "authenticated";
GRANT ALL ON TABLE "public"."cards" TO "service_role";



GRANT ALL ON TABLE "public"."lists" TO "anon";
GRANT ALL ON TABLE "public"."lists" TO "authenticated";
GRANT ALL ON TABLE "public"."lists" TO "service_role";



GRANT ALL ON TABLE "public"."projects" TO "anon";
GRANT ALL ON TABLE "public"."projects" TO "authenticated";
GRANT ALL ON TABLE "public"."projects" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";































