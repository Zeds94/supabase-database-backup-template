SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict Lv3Ix9wZPVG8cb0Z1Cqr2jkNduSyGN3eiXeHp9HROJlmgiqOFHk3MoOWsym2I1r

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	8c40ff96-c2b9-41c2-ab9c-67ea35065e17	{"action":"user_signedup","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}	2025-10-22 08:09:14.087203+00	
00000000-0000-0000-0000-000000000000	2968f341-5e3a-499e-bf78-28eb2ec1dd40	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-22 08:14:36.280836+00	
00000000-0000-0000-0000-000000000000	3a338ed9-d923-45c7-a74e-1b93a5f3f15f	{"action":"user_signedup","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}	2025-10-22 12:38:37.052344+00	
00000000-0000-0000-0000-000000000000	eea0eaa2-ac15-4693-917b-fe5ea655aca1	{"action":"logout","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-22 12:40:53.699693+00	
00000000-0000-0000-0000-000000000000	d8e05f3d-309e-48f0-b6cd-8b50a3a5ebad	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-22 15:27:03.652525+00	
00000000-0000-0000-0000-000000000000	a8224309-e103-4931-8758-320e8130bc13	{"action":"logout","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-22 15:27:08.010368+00	
00000000-0000-0000-0000-000000000000	2ba2fce7-c98c-4d71-8f59-4a800df7e1e7	{"action":"user_signedup","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}	2025-10-23 11:27:59.069878+00	
00000000-0000-0000-0000-000000000000	91b85e10-e2a8-4d53-bf84-9445f422a526	{"action":"logout","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-23 11:28:05.969599+00	
00000000-0000-0000-0000-000000000000	6eca5cf1-f2a7-4b08-a2f1-949bf12e03ba	{"action":"login","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-23 11:40:25.012179+00	
00000000-0000-0000-0000-000000000000	bac95468-0093-4ebb-9928-d4f1e169eed1	{"action":"logout","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-23 11:40:31.724289+00	
00000000-0000-0000-0000-000000000000	d3f297dd-58f7-4740-a014-145ed9dfcc09	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-23 12:33:51.388349+00	
00000000-0000-0000-0000-000000000000	c3afd17b-93b4-40b4-a517-91bca65b0b81	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-23 12:33:58.994054+00	
00000000-0000-0000-0000-000000000000	2b6a2e2f-922f-48bd-ad28-25e1fe029744	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-23 20:52:48.596348+00	
00000000-0000-0000-0000-000000000000	bcfd2776-483a-4beb-a956-effb69efcbd6	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-23 20:52:52.201858+00	
00000000-0000-0000-0000-000000000000	33252de9-b6d3-4dad-a508-54088ded8d38	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-25 14:13:05.090544+00	
00000000-0000-0000-0000-000000000000	1e7444ca-3a40-4ef1-9427-10546e983e4c	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-25 14:33:43.030736+00	
00000000-0000-0000-0000-000000000000	2456dfe0-fcd8-4c95-b372-1a444ffc976f	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:15:07.421497+00	
00000000-0000-0000-0000-000000000000	1f4c2635-dd6a-4452-9338-387d820b6a50	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:15:30.147038+00	
00000000-0000-0000-0000-000000000000	38ad1069-8601-41d3-a78b-ed004fca3a40	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:15:44.461437+00	
00000000-0000-0000-0000-000000000000	47b6d40e-a994-4f17-bd69-7b0b630b259f	{"action":"login","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:18:09.882835+00	
00000000-0000-0000-0000-000000000000	fec41a5b-cc3d-4134-be5e-a4d467e1a023	{"action":"login","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:20:19.827261+00	
00000000-0000-0000-0000-000000000000	398f7a5b-1277-4a42-9f11-b9e2da1dae11	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:21:10.05316+00	
00000000-0000-0000-0000-000000000000	1f32842d-5205-46c4-ae62-bc0ac5976b86	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 11:30:20.508325+00	
00000000-0000-0000-0000-000000000000	e6b16322-f3b3-420e-b47b-cd0b75095aaf	{"action":"token_refreshed","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 12:29:49.387842+00	
00000000-0000-0000-0000-000000000000	5cc65c80-a6d1-4ebc-8442-884c1223904d	{"action":"token_revoked","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 12:29:49.400975+00	
00000000-0000-0000-0000-000000000000	44541f3b-7998-4a99-ad0f-f9af44257028	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 12:37:10.879023+00	
00000000-0000-0000-0000-000000000000	3bb5980d-d75f-4063-bce7-69cb59826626	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 12:46:29.736089+00	
00000000-0000-0000-0000-000000000000	2e5db140-d4de-4fd2-b611-c85c10a46f08	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 12:46:54.080286+00	
00000000-0000-0000-0000-000000000000	c4cae1d6-eb26-4a66-9619-924df43f7673	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:14:51.528459+00	
00000000-0000-0000-0000-000000000000	9774ef6c-2086-4dd2-b07c-57d059f1d07d	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:14:54.216594+00	
00000000-0000-0000-0000-000000000000	2675107f-aeb2-4838-b2e9-637100700e54	{"action":"login","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:15:12.21031+00	
00000000-0000-0000-0000-000000000000	ebf73dcf-0a25-47c2-9125-6df65e927011	{"action":"logout","actor_id":"6d03324f-3430-413e-8757-33fd753821d5","actor_name":"Miguel Zamudio","actor_username":"miguelzamudiosegovia@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:31:02.873663+00	
00000000-0000-0000-0000-000000000000	3d69f1fd-6556-40b0-ab60-341671aa4bf6	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:33:46.867661+00	
00000000-0000-0000-0000-000000000000	c6e43486-2bf7-4d95-a134-773fdb07dc7e	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:33:51.062241+00	
00000000-0000-0000-0000-000000000000	cbd44fca-259e-4f62-9664-dbf6838914cb	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:34:03.875649+00	
00000000-0000-0000-0000-000000000000	208aee6a-b3b3-4fb8-9a14-afc5e7d283ff	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:34:07.886903+00	
00000000-0000-0000-0000-000000000000	b55ea9ee-eb32-4f37-83b9-a3a25d488afb	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:34:43.345987+00	
00000000-0000-0000-0000-000000000000	8c6cc567-fe59-4f45-9e82-b43783de6b30	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:49:17.191195+00	
00000000-0000-0000-0000-000000000000	83d65bc8-e495-4d21-b812-51cc6f0c0c3e	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:49:21.645153+00	
00000000-0000-0000-0000-000000000000	9b688e0b-861f-4876-948a-19f6089f64dd	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:49:26.81608+00	
00000000-0000-0000-0000-000000000000	062af0bf-9518-4bb9-a250-b25cf9e2b872	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:49:43.743488+00	
00000000-0000-0000-0000-000000000000	431cc233-bc7c-4005-b0d3-1802e8db4140	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:49:46.855816+00	
00000000-0000-0000-0000-000000000000	122d31ab-fc33-431b-aeca-665c7cfe6266	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:59:23.424781+00	
00000000-0000-0000-0000-000000000000	1fbfb9f6-2216-488b-9849-04b2086a3ca7	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:59:28.845991+00	
00000000-0000-0000-0000-000000000000	7ab49ad6-6964-4c47-b85f-89e2bea12496	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 13:59:38.182248+00	
00000000-0000-0000-0000-000000000000	d97f840e-9111-40c1-8443-6c390ccaf8f4	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 13:59:41.577629+00	
00000000-0000-0000-0000-000000000000	218b5984-b025-4819-a8a8-d8721fdb4356	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 14:04:29.003452+00	
00000000-0000-0000-0000-000000000000	465e5dc2-2011-4dbd-9af5-37c388610b30	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 14:05:55.509792+00	
00000000-0000-0000-0000-000000000000	ca6bc03d-88d6-4192-9d1b-c0656f44f8a5	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 14:06:03.2735+00	
00000000-0000-0000-0000-000000000000	91a35c14-e203-42cf-a0ab-a192680461d9	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 14:06:16.895796+00	
00000000-0000-0000-0000-000000000000	a7aed322-6e7d-490f-80e4-fc4c71e661b7	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 14:08:36.340092+00	
00000000-0000-0000-0000-000000000000	e874eacd-7430-49af-ba6f-83f97dfcaea3	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 14:12:34.574459+00	
00000000-0000-0000-0000-000000000000	92e5a520-d2bf-4919-b01a-3336ed26214f	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 14:12:42.106232+00	
00000000-0000-0000-0000-000000000000	cf505ce9-7065-4325-bd14-a2086eb90b0a	{"action":"token_refreshed","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 15:19:28.462749+00	
00000000-0000-0000-0000-000000000000	77805131-073a-4159-bb7b-4767dc744ec0	{"action":"token_revoked","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 15:19:28.485999+00	
00000000-0000-0000-0000-000000000000	e6b110ca-c7ff-4f03-8fb1-ccd09643618c	{"action":"token_refreshed","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 16:21:44.796693+00	
00000000-0000-0000-0000-000000000000	ab7f6065-879f-43da-9c70-da70472fa446	{"action":"token_revoked","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-10-31 16:21:44.804504+00	
00000000-0000-0000-0000-000000000000	61b967a5-850e-4eff-9f30-b908d41824c7	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 16:31:22.506046+00	
00000000-0000-0000-0000-000000000000	4e486aaf-c1bd-448f-8775-c1576df00868	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 16:37:59.429368+00	
00000000-0000-0000-0000-000000000000	8c91ee14-7ff9-49c7-981f-db80ba324dd6	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 17:03:48.75164+00	
00000000-0000-0000-0000-000000000000	fd642c96-6050-4f24-b2ec-b6d36b4dbf93	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 17:10:03.675684+00	
00000000-0000-0000-0000-000000000000	7b7c3874-68a0-4756-88d3-3386ff0f3ccd	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 17:20:58.116974+00	
00000000-0000-0000-0000-000000000000	dc1c4294-5edc-4170-88d5-4ade7c760d4e	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 17:21:24.11531+00	
00000000-0000-0000-0000-000000000000	eb6c9c2f-51fe-4f62-92d5-4293bf887e3c	{"action":"logout","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-10-31 17:21:27.671976+00	
00000000-0000-0000-0000-000000000000	9dd9e7a2-39bf-42e4-bdc6-af6f43209ecf	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 17:21:42.649353+00	
00000000-0000-0000-0000-000000000000	6b3860bb-28dc-4bdc-b98e-4f0f106eaacc	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 18:23:22.095422+00	
00000000-0000-0000-0000-000000000000	70206982-1901-42a6-a290-4076381f0000	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 18:25:12.279294+00	
00000000-0000-0000-0000-000000000000	921bd913-6c0d-46d7-9756-e4535e7b7fed	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 18:30:03.904547+00	
00000000-0000-0000-0000-000000000000	a92f36f5-3a2c-4ff5-a98e-e60a35d9bb17	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-10-31 18:30:29.04639+00	
00000000-0000-0000-0000-000000000000	9aa102c4-8b5f-4b40-8f2c-7486c6c2cff1	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-01 14:54:16.932597+00	
00000000-0000-0000-0000-000000000000	9942091a-839e-41e7-a0d0-ee47a0b3d4db	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-01 14:57:12.97405+00	
00000000-0000-0000-0000-000000000000	eb37e441-c105-4825-9250-deb8023a2d31	{"action":"token_refreshed","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 16:34:05.899725+00	
00000000-0000-0000-0000-000000000000	ddf2ae6b-3462-4c5a-8ab5-ecd0fefeabc8	{"action":"token_revoked","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 16:34:05.911686+00	
00000000-0000-0000-0000-000000000000	31bdeafa-5ad9-4945-8532-a28fcb956dfd	{"action":"token_refreshed","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 18:29:49.206661+00	
00000000-0000-0000-0000-000000000000	03ce0a78-c3eb-4498-bcfc-9df5c79a8398	{"action":"token_revoked","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-01 18:29:49.218988+00	
00000000-0000-0000-0000-000000000000	7d3f6a79-a6c3-4bdc-bbd4-93f38e43fcac	{"action":"token_refreshed","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 11:11:20.774694+00	
00000000-0000-0000-0000-000000000000	02820403-cc91-4251-bc15-31dc0c0adb2b	{"action":"token_revoked","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-02 11:11:20.798393+00	
00000000-0000-0000-0000-000000000000	a32e533a-7031-420c-b7ac-4909351c0cc3	{"action":"logout","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-11-02 11:12:15.665491+00	
00000000-0000-0000-0000-000000000000	4d2b2324-8847-4226-b50e-b0e08a59f3d2	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-02 11:14:39.008672+00	
00000000-0000-0000-0000-000000000000	5a074d82-6114-4bc3-96b6-2888b788dd1d	{"action":"logout","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-11-02 11:24:06.65315+00	
00000000-0000-0000-0000-000000000000	62ebac57-19ee-4f88-8add-913439e1fe97	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-02 11:26:34.739826+00	
00000000-0000-0000-0000-000000000000	ccf62849-d3f0-4888-b4a7-bc57c9b833e7	{"action":"logout","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-11-02 11:33:16.586253+00	
00000000-0000-0000-0000-000000000000	b5f1d439-5c33-4d2b-b10d-9ef5fbb53f1b	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-02 11:36:44.809028+00	
00000000-0000-0000-0000-000000000000	a7665930-5299-4f5e-97cf-74ac3793f3d3	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-03 08:24:41.607744+00	
00000000-0000-0000-0000-000000000000	00fbdaf2-1abd-426d-ae5a-58441560ac6a	{"action":"token_refreshed","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 09:07:45.544242+00	
00000000-0000-0000-0000-000000000000	c9542db3-2c4e-439e-94a7-7d64c93ea7be	{"action":"token_revoked","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 09:07:45.563227+00	
00000000-0000-0000-0000-000000000000	9f3fb506-be7b-4f28-bd4a-9089585d5b4b	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-03 09:08:47.51959+00	
00000000-0000-0000-0000-000000000000	c35c1468-d05f-46e9-8297-845829fdb058	{"action":"token_refreshed","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 09:24:19.556666+00	
00000000-0000-0000-0000-000000000000	9f7d6513-911c-403d-a30d-fb45dfd226cc	{"action":"token_revoked","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 09:24:19.560387+00	
00000000-0000-0000-0000-000000000000	3c4c49a0-9237-4d0c-8301-2161847932df	{"action":"login","actor_id":"ca14fc9e-eb45-457a-9742-9229aeee6d80","actor_name":"Miguel Zamudio","actor_username":"migueleo985@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-03 09:26:45.311133+00	
00000000-0000-0000-0000-000000000000	7775d789-6410-4d4c-a1bd-426f792dd5e7	{"action":"token_refreshed","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 10:27:16.707389+00	
00000000-0000-0000-0000-000000000000	535b9589-d4a6-44d5-8345-520b5f577f62	{"action":"token_revoked","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-11-03 10:27:16.719951+00	
00000000-0000-0000-0000-000000000000	ecc24b28-7ea9-426d-a05f-f9109bd4f8d3	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-03 10:44:49.634501+00	
00000000-0000-0000-0000-000000000000	9ba76b40-ba86-4f86-afd6-e329a152a4ed	{"action":"login","actor_id":"52167db1-d5ab-4f2e-9add-c6064bb86cd5","actor_name":"Erick Zamudio","actor_username":"zed.bertrandt@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}	2025-11-03 11:02:05.869809+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	6d03324f-3430-413e-8757-33fd753821d5	authenticated	authenticated	miguelzamudiosegovia@gmail.com	\N	2025-10-23 11:27:59.080702+00	\N		\N		\N			\N	2025-10-31 13:15:12.210938+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "116047528556552626952", "name": "Miguel Zamudio", "email": "miguelzamudiosegovia@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocIG-Hs65TVMydYsPbzafsba5tmnaLWJbwrhZJ-ydGrNA_uFXw=s96-c", "full_name": "Miguel Zamudio", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocIG-Hs65TVMydYsPbzafsba5tmnaLWJbwrhZJ-ydGrNA_uFXw=s96-c", "provider_id": "116047528556552626952", "email_verified": true, "phone_verified": false}	\N	2025-10-23 11:27:59.00836+00	2025-10-31 13:15:12.212667+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	52167db1-d5ab-4f2e-9add-c6064bb86cd5	authenticated	authenticated	zed.bertrandt@gmail.com	\N	2025-10-22 12:38:37.063403+00	\N		\N		\N			\N	2025-11-03 11:02:05.877017+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "109934097353311802707", "name": "Erick Zamudio", "email": "zed.bertrandt@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocL_ec9oyxULYD_04X-bUSUTzLbJLxjgxcMoVBBAh3t3XNv6UQ=s96-c", "full_name": "Erick Zamudio", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocL_ec9oyxULYD_04X-bUSUTzLbJLxjgxcMoVBBAh3t3XNv6UQ=s96-c", "provider_id": "109934097353311802707", "email_verified": true, "phone_verified": false}	\N	2025-10-22 12:38:36.973122+00	2025-11-03 11:02:05.884994+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ca14fc9e-eb45-457a-9742-9229aeee6d80	authenticated	authenticated	migueleo985@gmail.com	\N	2025-10-22 08:09:14.091311+00	\N		\N		\N			\N	2025-11-03 09:26:45.317641+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "110161430186472226551", "name": "Miguel Zamudio", "email": "migueleo985@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLlAH5GlNUaGhe7EaNhMgrOFKC_MX8kwEDoC4l9a6d2Pwd1amDfvA=s96-c", "full_name": "Miguel Zamudio", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocLlAH5GlNUaGhe7EaNhMgrOFKC_MX8kwEDoC4l9a6d2Pwd1amDfvA=s96-c", "provider_id": "110161430186472226551", "email_verified": true, "phone_verified": false}	\N	2025-10-22 08:09:14.067972+00	2025-11-03 09:26:45.341851+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
110161430186472226551	ca14fc9e-eb45-457a-9742-9229aeee6d80	{"iss": "https://accounts.google.com", "sub": "110161430186472226551", "name": "Miguel Zamudio", "email": "migueleo985@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLlAH5GlNUaGhe7EaNhMgrOFKC_MX8kwEDoC4l9a6d2Pwd1amDfvA=s96-c", "full_name": "Miguel Zamudio", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocLlAH5GlNUaGhe7EaNhMgrOFKC_MX8kwEDoC4l9a6d2Pwd1amDfvA=s96-c", "provider_id": "110161430186472226551", "email_verified": true, "phone_verified": false}	google	2025-10-22 08:09:14.082692+00	2025-10-22 08:09:14.08275+00	2025-11-03 09:26:45.306728+00	213e9e7a-d259-4ccc-b43e-48471912f2ca
109934097353311802707	52167db1-d5ab-4f2e-9add-c6064bb86cd5	{"iss": "https://accounts.google.com", "sub": "109934097353311802707", "name": "Erick Zamudio", "email": "zed.bertrandt@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocL_ec9oyxULYD_04X-bUSUTzLbJLxjgxcMoVBBAh3t3XNv6UQ=s96-c", "full_name": "Erick Zamudio", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocL_ec9oyxULYD_04X-bUSUTzLbJLxjgxcMoVBBAh3t3XNv6UQ=s96-c", "provider_id": "109934097353311802707", "email_verified": true, "phone_verified": false}	google	2025-10-22 12:38:37.038593+00	2025-10-22 12:38:37.038664+00	2025-11-03 11:02:05.856179+00	807f2473-d6d3-4d74-947a-75d3de220650
116047528556552626952	6d03324f-3430-413e-8757-33fd753821d5	{"iss": "https://accounts.google.com", "sub": "116047528556552626952", "name": "Miguel Zamudio", "email": "miguelzamudiosegovia@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocIG-Hs65TVMydYsPbzafsba5tmnaLWJbwrhZJ-ydGrNA_uFXw=s96-c", "full_name": "Miguel Zamudio", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocIG-Hs65TVMydYsPbzafsba5tmnaLWJbwrhZJ-ydGrNA_uFXw=s96-c", "provider_id": "116047528556552626952", "email_verified": true, "phone_verified": false}	google	2025-10-23 11:27:59.059365+00	2025-10-23 11:27:59.059419+00	2025-10-31 13:15:12.207478+00	0c40672c-1cf0-48d3-8dc3-0811ef1d82d5
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id") FROM stdin;
84181b7e-1aea-46f6-a97b-dd5ab37bbdde	52167db1-d5ab-4f2e-9add-c6064bb86cd5	2025-11-02 11:36:44.816719+00	2025-11-02 11:36:44.816719+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	93.9.237.39	\N	\N
304c4c8b-fb2f-4419-87a0-0a12472c3883	ca14fc9e-eb45-457a-9742-9229aeee6d80	2025-10-31 17:21:42.650065+00	2025-11-03 09:07:45.595594+00	\N	aal1	\N	2025-11-03 09:07:45.594914	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	77.204.104.181	\N	\N
bc262152-3326-44b1-a0ea-71779b70b136	ca14fc9e-eb45-457a-9742-9229aeee6d80	2025-11-03 09:08:47.521093+00	2025-11-03 09:08:47.521093+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	77.204.104.181	\N	\N
81d0bed0-1e28-4877-8c4e-99af2178fe7b	ca14fc9e-eb45-457a-9742-9229aeee6d80	2025-11-03 09:26:45.318641+00	2025-11-03 09:26:45.318641+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	77.204.104.181	\N	\N
67ee0ce4-0330-4a65-811a-8aaad2a26bbb	52167db1-d5ab-4f2e-9add-c6064bb86cd5	2025-11-03 08:24:41.622152+00	2025-11-03 10:27:16.760029+00	\N	aal1	\N	2025-11-03 10:27:16.758905	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	93.9.237.39	\N	\N
42af7623-2348-4ee5-af6f-1f9cdc92a461	52167db1-d5ab-4f2e-9add-c6064bb86cd5	2025-11-03 10:44:49.647229+00	2025-11-03 10:44:49.647229+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	93.9.237.39	\N	\N
dcf6727b-535d-48da-8106-7fffab2eaa0d	52167db1-d5ab-4f2e-9add-c6064bb86cd5	2025-11-03 11:02:05.877113+00	2025-11-03 11:02:05.877113+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0	93.9.237.39	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
304c4c8b-fb2f-4419-87a0-0a12472c3883	2025-10-31 17:21:42.652155+00	2025-10-31 17:21:42.652155+00	oauth	ce626f37-c247-408a-a02c-ffee5f729e5a
84181b7e-1aea-46f6-a97b-dd5ab37bbdde	2025-11-02 11:36:44.836937+00	2025-11-02 11:36:44.836937+00	oauth	a5a995d4-06bc-4d51-8280-2ed82b6e1976
67ee0ce4-0330-4a65-811a-8aaad2a26bbb	2025-11-03 08:24:41.663661+00	2025-11-03 08:24:41.663661+00	oauth	c72c8b07-2099-4e10-a662-dd600fc26384
bc262152-3326-44b1-a0ea-71779b70b136	2025-11-03 09:08:47.528139+00	2025-11-03 09:08:47.528139+00	oauth	21f76889-2b11-47bf-bee4-464d85cf0761
81d0bed0-1e28-4877-8c4e-99af2178fe7b	2025-11-03 09:26:45.342333+00	2025-11-03 09:26:45.342333+00	oauth	77246383-64a5-4a6c-b3b9-242d5922c38c
42af7623-2348-4ee5-af6f-1f9cdc92a461	2025-11-03 10:44:49.683565+00	2025-11-03 10:44:49.683565+00	oauth	99a56d65-6ed2-462b-b49c-e883b2852d2c
dcf6727b-535d-48da-8106-7fffab2eaa0d	2025-11-03 11:02:05.886619+00	2025-11-03 11:02:05.886619+00	oauth	70add241-51ad-471e-92a4-499f2b6498a3
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	49	slsedqoismam	52167db1-d5ab-4f2e-9add-c6064bb86cd5	f	2025-11-02 11:36:44.825477+00	2025-11-02 11:36:44.825477+00	\N	84181b7e-1aea-46f6-a97b-dd5ab37bbdde
00000000-0000-0000-0000-000000000000	37	wo3ai224bwb3	ca14fc9e-eb45-457a-9742-9229aeee6d80	t	2025-10-31 17:21:42.650797+00	2025-11-03 09:07:45.565177+00	\N	304c4c8b-fb2f-4419-87a0-0a12472c3883
00000000-0000-0000-0000-000000000000	51	kijlb3bffh6e	ca14fc9e-eb45-457a-9742-9229aeee6d80	f	2025-11-03 09:07:45.576245+00	2025-11-03 09:07:45.576245+00	wo3ai224bwb3	304c4c8b-fb2f-4419-87a0-0a12472c3883
00000000-0000-0000-0000-000000000000	52	4s46izwc3h33	ca14fc9e-eb45-457a-9742-9229aeee6d80	f	2025-11-03 09:08:47.525625+00	2025-11-03 09:08:47.525625+00	\N	bc262152-3326-44b1-a0ea-71779b70b136
00000000-0000-0000-0000-000000000000	50	f6mlvlynsfbd	52167db1-d5ab-4f2e-9add-c6064bb86cd5	t	2025-11-03 08:24:41.63875+00	2025-11-03 09:24:19.561027+00	\N	67ee0ce4-0330-4a65-811a-8aaad2a26bbb
00000000-0000-0000-0000-000000000000	54	pudyjkaj2yta	ca14fc9e-eb45-457a-9742-9229aeee6d80	f	2025-11-03 09:26:45.326967+00	2025-11-03 09:26:45.326967+00	\N	81d0bed0-1e28-4877-8c4e-99af2178fe7b
00000000-0000-0000-0000-000000000000	53	meh25ltenm4j	52167db1-d5ab-4f2e-9add-c6064bb86cd5	t	2025-11-03 09:24:19.56246+00	2025-11-03 10:27:16.72233+00	f6mlvlynsfbd	67ee0ce4-0330-4a65-811a-8aaad2a26bbb
00000000-0000-0000-0000-000000000000	55	5aeisxdip3tk	52167db1-d5ab-4f2e-9add-c6064bb86cd5	f	2025-11-03 10:27:16.739722+00	2025-11-03 10:27:16.739722+00	meh25ltenm4j	67ee0ce4-0330-4a65-811a-8aaad2a26bbb
00000000-0000-0000-0000-000000000000	56	gw3ssg5usy35	52167db1-d5ab-4f2e-9add-c6064bb86cd5	f	2025-11-03 10:44:49.668158+00	2025-11-03 10:44:49.668158+00	\N	42af7623-2348-4ee5-af6f-1f9cdc92a461
00000000-0000-0000-0000-000000000000	57	5sprsb24sbea	52167db1-d5ab-4f2e-9add-c6064bb86cd5	f	2025-11-03 11:02:05.880406+00	2025-11-03 11:02:05.880406+00	\N	dcf6727b-535d-48da-8106-7fffab2eaa0d
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: Organizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Organizations" ("id", "name") FROM stdin;
46813fff-b640-4722-a32f-4e11e0b48ce5	Migueleo
\.


--
-- Data for Name: Projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Projects" ("id", "organization_id", "name") FROM stdin;
1981d332-0973-467d-a6ba-e020b5d0c881	46813fff-b640-4722-a32f-4e11e0b48ce5	Chantier Clamart
\.


--
-- Data for Name: Kanban_Lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Kanban_Lists" ("id", "project_id", "name", "position") FROM stdin;
65a4abe7-d5c8-470f-a007-40fe8a1c406e	1981d332-0973-467d-a6ba-e020b5d0c881	Test List	\N
\.


--
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Orders" ("id", "project_id", "kanban_list_id", "order_number", "recipient_email", "delivery_postal_code", "estimated_delivery_date", "status_flags", "title", "supplier_name", "delivery_type", "tracking_id", "input_timestamp") FROM stdin;
40d92955-ae9c-401d-b669-49856c1f3936	1981d332-0973-467d-a6ba-e020b5d0c881	65a4abe7-d5c8-470f-a007-40fe8a1c406e	123	\N	\N	\N	\N	Test comanda	\N	\N	\N	2025-10-31 14:28:46.327681
4597a2cc-81a6-4c04-bdfd-96874a17a06a	\N	\N	{"tipo_documento":"ORDER","numero_orden":"M2509505207868","numero_seguimiento":null,"fecha_pedido":"2025-09-29","proveedor":"ManoManoPro","email_destinatario":"commandes@kasq.fr","codigo_postal":"92700","productos":[{"descripcion":"Pack Bati-support GEBERIT UP100 + plaque Delta01 blanche + cuvette suspendue SAT sans bride et fixat...","cantidad":3}]}	\N	\N	\N	\N	ManoManoPro	\N	\N	\N	2025-10-31 19:18:31.403
\.


--
-- Data for Name: Activity_Log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Activity_Log" ("id", "order_id", "user_id", "type", "content") FROM stdin;
\.


--
-- Data for Name: Tracking_Infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Tracking_Infos" ("id", "organization_id", "correlated_order_id", "tracking_number", "carrier_name", "extracted_order_number", "extracted_recipient_email", "extracted_postal_code", "extracted_product_semantic", "correlation_method") FROM stdin;
\.


--
-- Data for Name: Attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Attachments" ("id", "order_id", "tracking_id", "file_type", "storage_path") FROM stdin;
\.


--
-- Data for Name: Products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Products" ("id", "order_id", "description", "reference", "quantity") FROM stdin;
\.


--
-- Data for Name: Profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Profiles" ("id", "organization_id", "full_name", "email") FROM stdin;
\.


--
-- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."lists" ("id", "user_id", "title", "position", "created_at", "updated_at") FROM stdin;
75b5de96-3582-481c-9b8e-880b4676f67a	52167db1-d5ab-4f2e-9add-c6064bb86cd5	Commandé pour livraison chantier	1	2025-10-31 13:33:39.808105+00	2025-11-01 14:58:02.537421+00
7fca7e9a-66b7-4f90-929a-2a21f0fb672b	ca14fc9e-eb45-457a-9742-9229aeee6d80	Commandé pour Pick Up	0	2025-10-31 14:05:06.269713+00	2025-11-01 14:58:18.878185+00
65710888-cd3d-4793-81cf-f4d7ad95acc3	ca14fc9e-eb45-457a-9742-9229aeee6d80	Commandé pour livraison chantier	1	2025-10-31 14:14:13.699719+00	2025-11-01 14:58:26.948484+00
8436e5ff-0835-4520-9054-4c26e0942f42	52167db1-d5ab-4f2e-9add-c6064bb86cd5	Commandé pour Pick Up	0	2025-10-31 13:30:25.500373+00	2025-11-01 14:58:52.214247+00
904d74ad-f489-4259-937a-2e153213cdb6	52167db1-d5ab-4f2e-9add-c6064bb86cd5	Expédié	2	2025-11-01 15:15:46.995461+00	2025-11-01 15:15:46.995461+00
0ddf71e1-e042-4dee-b780-df9d9a59199d	52167db1-d5ab-4f2e-9add-c6064bb86cd5	PICK UP!	3	2025-11-01 15:16:10.924697+00	2025-11-01 15:16:10.924697+00
0fdfd99b-2548-4a7d-b24d-66bbf656fa04	52167db1-d5ab-4f2e-9add-c6064bb86cd5	Livré Chantier	0	2025-11-01 15:16:30.558661+00	2025-11-01 15:16:30.558661+00
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."projects" ("id", "user_id", "name", "color", "created_at", "updated_at") FROM stdin;
44e624e9-8a31-4368-8cbf-bd94335dc185	ca14fc9e-eb45-457a-9742-9229aeee6d80	test_p	#ec4899	2025-10-31 14:29:22.540338+00	2025-10-31 14:29:22.540338+00
48a7d98a-42c4-4df1-9e5e-f9fc4fe7bfc4	ca14fc9e-eb45-457a-9742-9229aeee6d80	casa Clamart	#f59e0b	2025-10-31 16:39:03.104823+00	2025-10-31 16:39:03.104823+00
b12d3bf4-31d8-44c9-9ddd-a37f7b9a4cfe	52167db1-d5ab-4f2e-9add-c6064bb86cd5	test-zed	#3b82f6	2025-10-31 18:24:27.539622+00	2025-10-31 18:24:27.539622+00
18f738f3-ea51-4940-992a-e0f76da63d96	52167db1-d5ab-4f2e-9add-c6064bb86cd5	test-zori	#f59e0b	2025-10-31 18:32:26.204785+00	2025-10-31 18:32:26.204785+00
f0664d0b-0603-4795-960b-e69c971d8094	52167db1-d5ab-4f2e-9add-c6064bb86cd5	Test-new	#3b82f6	2025-11-01 16:53:16.638787+00	2025-11-01 16:53:16.638787+00
075aa630-cfe4-4e81-8ac8-0c98fd7a8c17	52167db1-d5ab-4f2e-9add-c6064bb86cd5	tests03112025	#f59e0b	2025-11-03 09:26:49.702926+00	2025-11-03 09:26:49.702926+00
59e95f9c-8cf0-4e88-891f-e294fb7734d7	ca14fc9e-eb45-457a-9742-9229aeee6d80	sad	#ec4899	2025-11-03 09:27:06.426247+00	2025-11-03 09:27:06.426247+00
\.


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."cards" ("id", "user_id", "list_id", "project_id", "title", "fournisseur", "date_commande", "date_estimee_livraison", "date_livraison_effective", "date_limite_pick_up", "type_livraison", "statut", "adresse", "lien_tracking", "bon_de_commande", "produits", "position", "created_at", "updated_at") FROM stdin;
7dbddf43-ba53-4fc7-80cc-0f271f60f49d	ca14fc9e-eb45-457a-9742-9229aeee6d80	65710888-cd3d-4793-81cf-f4d7ad95acc3	\N	Orden 1	\N	\N	\N	\N	\N	\N	Commandé	\N	\N	\N	[]	0	2025-10-31 14:17:23.945281+00	2025-10-31 14:17:23.945281+00
268397f3-ffff-49b3-ba99-f079883e24cc	ca14fc9e-eb45-457a-9742-9229aeee6d80	7fca7e9a-66b7-4f90-929a-2a21f0fb672b	\N	Prueba ahora	\N	\N	\N	\N	\N	\N	Commandé	\N	\N	\N	[]	0	2025-10-31 16:42:31.89788+00	2025-10-31 16:42:31.89788+00
f8d40594-41b2-4664-9efb-4bc6e403b026	52167db1-d5ab-4f2e-9add-c6064bb86cd5	75b5de96-3582-481c-9b8e-880b4676f67a	\N	test zori comande	\N	\N	\N	\N	\N	\N	En cours	\N	\N	\N	[]	0	2025-10-31 18:38:32.624343+00	2025-10-31 18:38:32.624343+00
df03880f-1c4b-4aca-b30f-ca7092471ed3	52167db1-d5ab-4f2e-9add-c6064bb86cd5	0fdfd99b-2548-4a7d-b24d-66bbf656fa04	18f738f3-ea51-4940-992a-e0f76da63d96	Test Livre Chantier	Leclerc	2025-11-02	2025-10-03	\N	\N	Retrait	Commandé	29 Rue Jules	\N	\N	[]	0	2025-11-02 11:30:20.331239+00	2025-11-02 11:30:20.331239+00
259f1bf4-b18d-4fa7-91cf-1e14e3485454	52167db1-d5ab-4f2e-9add-c6064bb86cd5	0ddf71e1-e042-4dee-b780-df9d9a59199d	f0664d0b-0603-4795-960b-e69c971d8094	Test Carte 1	Manomano	\N	\N	\N	\N	\N	Commandé	\N	\N	\N	[{"qte": 1, "desc": "Termometro", "unite": "pce"}, {"qte": 1, "desc": "KIT VMC Casa", "unite": "pce"}]	0	2025-11-01 16:52:17.423216+00	2025-11-03 09:19:05.732456+00
cc4c48a0-37fd-43fc-8bad-6ab32af2359b	52167db1-d5ab-4f2e-9add-c6064bb86cd5	8436e5ff-0835-4520-9054-4c26e0942f42	075aa630-cfe4-4e81-8ac8-0c98fd7a8c17	TestNewCarte	asdsadasd	2025-11-03	\N	\N	\N	Retrait	Commandé			123123	[]	0	2025-11-03 09:55:35.572305+00	2025-11-03 09:55:35.572305+00
d1fcc320-8648-4a4f-8a58-9c04b24bbdb0	52167db1-d5ab-4f2e-9add-c6064bb86cd5	8436e5ff-0835-4520-9054-4c26e0942f42	f0664d0b-0603-4795-960b-e69c971d8094	Commande Test New UI	ManoMaru	2025-11-03	2025-05-12	\N	2025-11-08	Retrait	Commandé	adasdasdasdasdasdasd		1231412	[]	0	2025-11-03 10:32:15.306116+00	2025-11-03 10:32:15.306116+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 57, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict Lv3Ix9wZPVG8cb0Z1Cqr2jkNduSyGN3eiXeHp9HROJlmgiqOFHk3MoOWsym2I1r

RESET ALL;
