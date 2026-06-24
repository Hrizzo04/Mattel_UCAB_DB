--
-- PostgreSQL database dump
--

\restrict mfXEQj3EScpFnDfIPd2f4c0d2I5Z9CPgNhvXFMKc58tQIznSXILEMfcmYqE2VuL

-- Dumped from database version 17.6
-- Dumped by pg_dump version 18.4 (Ubuntu 18.4-0ubuntu0.26.04.1)

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
-- Name: auth; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA auth;


ALTER SCHEMA auth OWNER TO supabase_admin;

--
-- Name: extensions; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA extensions;


ALTER SCHEMA extensions OWNER TO postgres;

--
-- Name: graphql; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA graphql;


ALTER SCHEMA graphql OWNER TO supabase_admin;

--
-- Name: graphql_public; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA graphql_public;


ALTER SCHEMA graphql_public OWNER TO supabase_admin;

--
-- Name: pgbouncer; Type: SCHEMA; Schema: -; Owner: pgbouncer
--

CREATE SCHEMA pgbouncer;


ALTER SCHEMA pgbouncer OWNER TO pgbouncer;

--
-- Name: realtime; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA realtime;


ALTER SCHEMA realtime OWNER TO supabase_admin;

--
-- Name: storage; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA storage;


ALTER SCHEMA storage OWNER TO supabase_admin;

--
-- Name: vault; Type: SCHEMA; Schema: -; Owner: supabase_admin
--

CREATE SCHEMA vault;


ALTER SCHEMA vault OWNER TO supabase_admin;

--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: supabase_vault; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;


--
-- Name: EXTENSION supabase_vault; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: aal_level; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);


ALTER TYPE auth.aal_level OWNER TO supabase_auth_admin;

--
-- Name: code_challenge_method; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);


ALTER TYPE auth.code_challenge_method OWNER TO supabase_auth_admin;

--
-- Name: factor_status; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);


ALTER TYPE auth.factor_status OWNER TO supabase_auth_admin;

--
-- Name: factor_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);


ALTER TYPE auth.factor_type OWNER TO supabase_auth_admin;

--
-- Name: oauth_authorization_status; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_authorization_status AS ENUM (
    'pending',
    'approved',
    'denied',
    'expired'
);


ALTER TYPE auth.oauth_authorization_status OWNER TO supabase_auth_admin;

--
-- Name: oauth_client_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_client_type AS ENUM (
    'public',
    'confidential'
);


ALTER TYPE auth.oauth_client_type OWNER TO supabase_auth_admin;

--
-- Name: oauth_registration_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_registration_type AS ENUM (
    'dynamic',
    'manual'
);


ALTER TYPE auth.oauth_registration_type OWNER TO supabase_auth_admin;

--
-- Name: oauth_response_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.oauth_response_type AS ENUM (
    'code'
);


ALTER TYPE auth.oauth_response_type OWNER TO supabase_auth_admin;

--
-- Name: one_time_token_type; Type: TYPE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);


ALTER TYPE auth.one_time_token_type OWNER TO supabase_auth_admin;

--
-- Name: action; Type: TYPE; Schema: realtime; Owner: supabase_admin
--

CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);


ALTER TYPE realtime.action OWNER TO supabase_admin;

--
-- Name: equality_op; Type: TYPE; Schema: realtime; Owner: supabase_admin
--

CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);


ALTER TYPE realtime.equality_op OWNER TO supabase_admin;

--
-- Name: user_defined_filter; Type: TYPE; Schema: realtime; Owner: supabase_admin
--

CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);


ALTER TYPE realtime.user_defined_filter OWNER TO supabase_admin;

--
-- Name: wal_column; Type: TYPE; Schema: realtime; Owner: supabase_admin
--

CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);


ALTER TYPE realtime.wal_column OWNER TO supabase_admin;

--
-- Name: wal_rls; Type: TYPE; Schema: realtime; Owner: supabase_admin
--

CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);


ALTER TYPE realtime.wal_rls OWNER TO supabase_admin;

--
-- Name: buckettype; Type: TYPE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TYPE storage.buckettype AS ENUM (
    'STANDARD',
    'ANALYTICS',
    'VECTOR'
);


ALTER TYPE storage.buckettype OWNER TO supabase_storage_admin;

--
-- Name: email(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;


ALTER FUNCTION auth.email() OWNER TO supabase_auth_admin;

--
-- Name: FUNCTION email(); Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';


--
-- Name: jwt(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;


ALTER FUNCTION auth.jwt() OWNER TO supabase_auth_admin;

--
-- Name: role(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;


ALTER FUNCTION auth.role() OWNER TO supabase_auth_admin;

--
-- Name: FUNCTION role(); Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';


--
-- Name: uid(); Type: FUNCTION; Schema: auth; Owner: supabase_auth_admin
--

CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;


ALTER FUNCTION auth.uid() OWNER TO supabase_auth_admin;

--
-- Name: FUNCTION uid(); Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';


--
-- Name: grant_pg_cron_access(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;


ALTER FUNCTION extensions.grant_pg_cron_access() OWNER TO supabase_admin;

--
-- Name: FUNCTION grant_pg_cron_access(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';


--
-- Name: grant_pg_graphql_access(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
begin
    if not exists (
        select 1
        from pg_event_trigger_ddl_commands() ev
        join pg_catalog.pg_extension e on ev.objid = e.oid
        where e.extname = 'pg_graphql'
    ) then
        return;
    end if;

    drop function if exists graphql_public.graphql;
    create or replace function graphql_public.graphql(
        "operationName" text default null,
        query text default null,
        variables jsonb default null,
        extensions jsonb default null
    )
        returns jsonb
        language sql
    as $$
        select graphql.resolve(
            query := query,
            variables := coalesce(variables, '{}'),
            "operationName" := "operationName",
            extensions := extensions
        );
    $$;

    -- Attach the wrapper to the extension so DROP EXTENSION cascades to it,
    -- which in turn triggers set_graphql_placeholder to reinstall the "not enabled" stub.
    alter extension pg_graphql add function graphql_public.graphql(text, text, jsonb, jsonb);

    grant usage on schema graphql to postgres, anon, authenticated, service_role;
    grant execute on function graphql.resolve to postgres, anon, authenticated, service_role;
    grant usage on schema graphql to postgres with grant option;
    grant usage on schema graphql_public to postgres with grant option;
end;
$_$;


ALTER FUNCTION extensions.grant_pg_graphql_access() OWNER TO supabase_admin;

--
-- Name: FUNCTION grant_pg_graphql_access(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';


--
-- Name: grant_pg_net_access(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    IF EXISTS (
      SELECT FROM pg_extension
      WHERE extname = 'pg_net'
      -- all versions in use on existing projects as of 2025-02-20
      -- version 0.12.0 onwards don't need these applied
      AND extversion IN ('0.2', '0.6', '0.7', '0.7.1', '0.8', '0.10.0', '0.11.0')
    ) THEN
      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

      REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
      REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

      GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
      GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    END IF;
  END IF;
END;
$$;


ALTER FUNCTION extensions.grant_pg_net_access() OWNER TO supabase_admin;

--
-- Name: FUNCTION grant_pg_net_access(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';


--
-- Name: pgrst_ddl_watch(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;


ALTER FUNCTION extensions.pgrst_ddl_watch() OWNER TO supabase_admin;

--
-- Name: pgrst_drop_watch(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;


ALTER FUNCTION extensions.pgrst_drop_watch() OWNER TO supabase_admin;

--
-- Name: set_graphql_placeholder(); Type: FUNCTION; Schema: extensions; Owner: supabase_admin
--

CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;


ALTER FUNCTION extensions.set_graphql_placeholder() OWNER TO supabase_admin;

--
-- Name: FUNCTION set_graphql_placeholder(); Type: COMMENT; Schema: extensions; Owner: supabase_admin
--

COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';


--
-- Name: graphql(text, text, jsonb, jsonb); Type: FUNCTION; Schema: graphql_public; Owner: supabase_admin
--

CREATE FUNCTION graphql_public.graphql("operationName" text DEFAULT NULL::text, query text DEFAULT NULL::text, variables jsonb DEFAULT NULL::jsonb, extensions jsonb DEFAULT NULL::jsonb) RETURNS jsonb
    LANGUAGE plpgsql
    AS $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;


ALTER FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) OWNER TO supabase_admin;

--
-- Name: get_auth(text); Type: FUNCTION; Schema: pgbouncer; Owner: supabase_admin
--

CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO ''
    AS $_$
  BEGIN
      RAISE DEBUG 'PgBouncer auth request: %', p_usename;

      RETURN QUERY
      SELECT
          rolname::text,
          CASE WHEN rolvaliduntil < now()
              THEN null
              ELSE rolpassword::text
          END
      FROM pg_authid
      WHERE rolname=$1 and rolcanlogin;
  END;
  $_$;


ALTER FUNCTION pgbouncer.get_auth(p_usename text) OWNER TO supabase_admin;

--
-- Name: rls_auto_enable(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.rls_auto_enable() RETURNS event_trigger
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO 'pg_catalog'
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN
    SELECT *
    FROM pg_event_trigger_ddl_commands()
    WHERE command_tag IN ('CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO')
      AND object_type IN ('table','partitioned table')
  LOOP
     IF cmd.schema_name IS NOT NULL AND cmd.schema_name IN ('public') AND cmd.schema_name NOT IN ('pg_catalog','information_schema') AND cmd.schema_name NOT LIKE 'pg_toast%' AND cmd.schema_name NOT LIKE 'pg_temp%' THEN
      BEGIN
        EXECUTE format('alter table if exists %s enable row level security', cmd.object_identity);
        RAISE LOG 'rls_auto_enable: enabled RLS on %', cmd.object_identity;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE LOG 'rls_auto_enable: failed to enable RLS on %', cmd.object_identity;
      END;
     ELSE
        RAISE LOG 'rls_auto_enable: skip % (either system schema or not in enforced list: %.)', cmd.object_identity, cmd.schema_name;
     END IF;
  END LOOP;
END;
$$;


ALTER FUNCTION public.rls_auto_enable() OWNER TO postgres;

--
-- Name: validarcredenciales(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.validarcredenciales(p_username character varying, p_password character varying) RETURNS TABLE(rol_r_id integer, cliente_cl_id integer)
    LANGUAGE sql
    AS $$
  select u.rol_r_id, u.cliente_cl_id
  from usuario u
  where u.u_nombre = p_username
    AND u.u_contraseña = p_password
  LIMIT 1;
$$;


ALTER FUNCTION public.validarcredenciales(p_username character varying, p_password character varying) OWNER TO postgres;

--
-- Name: apply_rls(jsonb, integer); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
    -- Regclass of the table e.g. public.notes
    entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

    -- I, U, D, T: insert, update ...
    action realtime.action = (
        case wal ->> 'action'
            when 'I' then 'INSERT'
            when 'U' then 'UPDATE'
            when 'D' then 'DELETE'
            else 'ERROR'
        end
    );

    -- Is row level security enabled for the table
    is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

    subscriptions realtime.subscription[] = array_agg(subs)
        from
            realtime.subscription subs
        where
            subs.entity = entity_
            -- Filter by action early - only get subscriptions interested in this action
            -- action_filter column can be: '*' (all), 'INSERT', 'UPDATE', or 'DELETE'
            and (subs.action_filter = '*' or subs.action_filter = action::text);

    -- Subscription vars
    working_role regrole;
    working_selected_columns text[];
    claimed_role regrole;
    claims jsonb;

    subscription_id uuid;
    subscription_has_access bool;
    visible_to_subscription_ids uuid[] = '{}';

    -- structured info for wal's columns
    columns realtime.wal_column[];
    -- previous identity values for update/delete
    old_columns realtime.wal_column[];

    error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

    -- Primary jsonb output for record
    output jsonb;

    -- Loop record for iterating unique roles (outer loop)
    role_record record;
    -- Loop record for iterating unique selected_columns within a role (inner loop)
    cols_record record;
    -- Subscription ids visible at the role level (before fanning out by selected_columns)
    visible_role_sub_ids uuid[] = '{}';

begin
    perform set_config('role', null, true);

    columns =
        array_agg(
            (
                x->>'name',
                x->>'type',
                x->>'typeoid',
                realtime.cast(
                    (x->'value') #>> '{}',
                    coalesce(
                        (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                        (x->>'type')::regtype
                    )
                ),
                (pks ->> 'name') is not null,
                true
            )::realtime.wal_column
        )
        from
            jsonb_array_elements(wal -> 'columns') x
            left join jsonb_array_elements(wal -> 'pk') pks
                on (x ->> 'name') = (pks ->> 'name');

    old_columns =
        array_agg(
            (
                x->>'name',
                x->>'type',
                x->>'typeoid',
                realtime.cast(
                    (x->'value') #>> '{}',
                    coalesce(
                        (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                        (x->>'type')::regtype
                    )
                ),
                (pks ->> 'name') is not null,
                true
            )::realtime.wal_column
        )
        from
            jsonb_array_elements(wal -> 'identity') x
            left join jsonb_array_elements(wal -> 'pk') pks
                on (x ->> 'name') = (pks ->> 'name');

    for role_record in
        select claims_role
        from (select distinct claims_role from unnest(subscriptions)) t
        order by claims_role::text
    loop
        working_role := role_record.claims_role;

        -- Update `is_selectable` for columns and old_columns (once per role)
        columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(columns) c;

        old_columns =
                array_agg(
                    (
                        c.name,
                        c.type_name,
                        c.type_oid,
                        c.value,
                        c.is_pkey,
                        pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                    )::realtime.wal_column
                )
                from
                    unnest(old_columns) c;

        if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
            -- Fan out 400 error per distinct selected_columns for this role
            for cols_record in
                select selected_columns
                from (select distinct selected_columns from unnest(subscriptions) s where s.claims_role = working_role) t
                order by coalesce(array_to_string(selected_columns, ','), '')
            loop
                working_selected_columns := cols_record.selected_columns;
                return next (
                    jsonb_build_object(
                        'schema', wal ->> 'schema',
                        'table', wal ->> 'table',
                        'type', action
                    ),
                    is_rls_enabled,
                    (select array_agg(s.subscription_id) from unnest(subscriptions) as s where s.claims_role = working_role and (s.selected_columns is not distinct from working_selected_columns)),
                    array['Error 400: Bad Request, no primary key']
                )::realtime.wal_rls;
            end loop;

        -- The claims role does not have SELECT permission to the primary key of entity
        elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
            -- Fan out 401 error per distinct selected_columns for this role
            for cols_record in
                select selected_columns
                from (select distinct selected_columns from unnest(subscriptions) s where s.claims_role = working_role) t
                order by coalesce(array_to_string(selected_columns, ','), '')
            loop
                working_selected_columns := cols_record.selected_columns;
                return next (
                    jsonb_build_object(
                        'schema', wal ->> 'schema',
                        'table', wal ->> 'table',
                        'type', action
                    ),
                    is_rls_enabled,
                    (select array_agg(s.subscription_id) from unnest(subscriptions) as s where s.claims_role = working_role and (s.selected_columns is not distinct from working_selected_columns)),
                    array['Error 401: Unauthorized']
                )::realtime.wal_rls;
            end loop;

        else
            -- Create the prepared statement (once per role)
            if is_rls_enabled and action <> 'DELETE' then
                if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                    deallocate walrus_rls_stmt;
                end if;
                execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
            end if;

            -- Collect all visible subscription IDs for this role (filter check + RLS check)
            visible_role_sub_ids = '{}';

            for subscription_id, claims in (
                    select
                        subs.subscription_id,
                        subs.claims
                    from
                        unnest(subscriptions) subs
                    where
                        subs.entity = entity_
                        and subs.claims_role = working_role
                        and (
                            realtime.is_visible_through_filters(columns, subs.filters)
                            or (
                              action = 'DELETE'
                              and realtime.is_visible_through_filters(old_columns, subs.filters)
                            )
                        )
            ) loop

                if not is_rls_enabled or action = 'DELETE' then
                    visible_role_sub_ids = visible_role_sub_ids || subscription_id;
                else
                    -- Check if RLS allows the role to see the record
                    perform
                        -- Trim leading and trailing quotes from working_role because set_config
                        -- doesn't recognize the role as valid if they are included
                        set_config('role', trim(both '"' from working_role::text), true),
                        set_config('request.jwt.claims', claims::text, true);

                    execute 'execute walrus_rls_stmt' into subscription_has_access;

                    if subscription_has_access then
                        visible_role_sub_ids = visible_role_sub_ids || subscription_id;
                    end if;
                end if;
            end loop;

            perform set_config('role', null, true);

            -- Inner loop: per distinct selected_columns for this role
            for cols_record in
                select selected_columns
                from (select distinct selected_columns from unnest(subscriptions) s where s.claims_role = working_role) t
                order by coalesce(array_to_string(selected_columns, ','), '')
            loop
                working_selected_columns := cols_record.selected_columns;

                output = jsonb_build_object(
                    'schema', wal ->> 'schema',
                    'table', wal ->> 'table',
                    'type', action,
                    'commit_timestamp', to_char(
                        ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                        'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
                    ),
                    'columns', (
                        select
                            jsonb_agg(
                                jsonb_build_object(
                                    'name', pa.attname,
                                    'type', pt.typname
                                )
                                order by pa.attnum asc
                            )
                        from
                            pg_attribute pa
                            join pg_type pt
                                on pa.atttypid = pt.oid
                            left join (
                                select unnest(conkey) as pkey_attnum
                                from pg_constraint
                                where conrelid = entity_ and contype = 'p'
                            ) pk on pk.pkey_attnum = pa.attnum
                        where
                            attrelid = entity_
                            and attnum > 0
                            and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
                            and (working_selected_columns is null or pa.attname = any(working_selected_columns) or pk.pkey_attnum is not null)
                    )
                )
                -- Add "record" key for insert and update
                || case
                    when action in ('INSERT', 'UPDATE') then
                        jsonb_build_object(
                            'record',
                            (
                                select
                                    jsonb_object_agg(
                                        -- if unchanged toast, get column name and value from old record
                                        coalesce((c).name, (oc).name),
                                        case
                                            when (c).name is null then (oc).value
                                            else (c).value
                                        end
                                    )
                                from
                                    unnest(columns) c
                                    full outer join unnest(old_columns) oc
                                        on (c).name = (oc).name
                                where
                                    coalesce((c).is_selectable, (oc).is_selectable)
                                    and (working_selected_columns is null or coalesce((c).name, (oc).name) = any(working_selected_columns) or coalesce((c).is_pkey, (oc).is_pkey))
                                    and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            )
                        )
                    else '{}'::jsonb
                end
                -- Add "old_record" key for update and delete
                || case
                    when action = 'UPDATE' then
                        jsonb_build_object(
                                'old_record',
                                (
                                    select jsonb_object_agg((c).name, (c).value)
                                    from unnest(old_columns) c
                                    where
                                        (c).is_selectable
                                        and (working_selected_columns is null or (c).name = any(working_selected_columns) or (c).is_pkey)
                                        and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                                )
                            )
                    when action = 'DELETE' then
                        jsonb_build_object(
                            'old_record',
                            (
                                select jsonb_object_agg((c).name, (c).value)
                                from unnest(old_columns) c
                                where
                                    (c).is_selectable
                                    and (working_selected_columns is null or (c).name = any(working_selected_columns) or (c).is_pkey)
                                    and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                                    and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                            )
                        )
                    else '{}'::jsonb
                end;

                -- Filter visible_role_sub_ids to those matching the current selected_columns group
                visible_to_subscription_ids = coalesce(
                    (
                        select array_agg(s.subscription_id)
                        from unnest(subscriptions) s
                        where s.claims_role = working_role
                          and (s.selected_columns is not distinct from working_selected_columns)
                          and s.subscription_id = any(visible_role_sub_ids)
                    ),
                    '{}'::uuid[]
                );

                return next (
                    output,
                    is_rls_enabled,
                    visible_to_subscription_ids,
                    case
                        when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                        else '{}'
                    end
                )::realtime.wal_rls;
            end loop;

        end if;
    end loop;

    perform set_config('role', null, true);
end;
$$;


ALTER FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) OWNER TO supabase_admin;

--
-- Name: broadcast_changes(text, text, text, text, text, record, record, text); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;


ALTER FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) OWNER TO supabase_admin;

--
-- Name: build_prepared_statement_sql(text, regclass, realtime.wal_column[]); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;


ALTER FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) OWNER TO supabase_admin;

--
-- Name: cast(text, regtype); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
declare
  res jsonb;
begin
  if type_::text = 'bytea' then
    return to_jsonb(val);
  end if;
  execute format('select to_jsonb(%L::'|| type_::text || ')', val) into res;
  return res;
end
$$;


ALTER FUNCTION realtime."cast"(val text, type_ regtype) OWNER TO supabase_admin;

--
-- Name: check_equality_op(realtime.equality_op, regtype, text, text); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;


ALTER FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) OWNER TO supabase_admin;

--
-- Name: is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[]); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;


ALTER FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) OWNER TO supabase_admin;

--
-- Name: list_changes(name, name, integer, integer); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS TABLE(wal jsonb, is_rls_enabled boolean, subscription_ids uuid[], errors text[], slot_changes_count bigint)
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
  WITH pub AS (
    SELECT
      concat_ws(
        ',',
        CASE WHEN bool_or(pubinsert) THEN 'insert' ELSE NULL END,
        CASE WHEN bool_or(pubupdate) THEN 'update' ELSE NULL END,
        CASE WHEN bool_or(pubdelete) THEN 'delete' ELSE NULL END
      ) AS w2j_actions,
      coalesce(
        string_agg(
          realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
          ','
        ) filter (WHERE ppt.tablename IS NOT NULL),
        ''
      ) AS w2j_add_tables
    FROM pg_publication pp
    LEFT JOIN pg_publication_tables ppt ON pp.pubname = ppt.pubname
    WHERE pp.pubname = publication
    GROUP BY pp.pubname
    LIMIT 1
  ),
  -- MATERIALIZED ensures pg_logical_slot_get_changes is called exactly once
  w2j AS MATERIALIZED (
    SELECT x.*, pub.w2j_add_tables
    FROM pub,
         pg_logical_slot_get_changes(
           slot_name, null, max_changes,
           'include-pk', 'true',
           'include-transaction', 'false',
           'include-timestamp', 'true',
           'include-type-oids', 'true',
           'format-version', '2',
           'actions', pub.w2j_actions,
           'add-tables', pub.w2j_add_tables
         ) x
  ),
  slot_count AS (
    SELECT count(*)::bigint AS cnt
    FROM w2j
    WHERE w2j.w2j_add_tables <> ''
  ),
  rls_filtered AS (
    SELECT xyz.wal, xyz.is_rls_enabled, xyz.subscription_ids, xyz.errors
    FROM w2j,
         realtime.apply_rls(
           wal := w2j.data::jsonb,
           max_record_bytes := max_record_bytes
         ) xyz(wal, is_rls_enabled, subscription_ids, errors)
    WHERE w2j.w2j_add_tables <> ''
      AND xyz.subscription_ids[1] IS NOT NULL
  )
  SELECT rf.wal, rf.is_rls_enabled, rf.subscription_ids, rf.errors, sc.cnt
  FROM rls_filtered rf, slot_count sc

  UNION ALL

  SELECT null, null, null, null, sc.cnt
  FROM slot_count sc
  WHERE NOT EXISTS (SELECT 1 FROM rls_filtered)
$$;


ALTER FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) OWNER TO supabase_admin;

--
-- Name: quote_wal2json(regclass); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
  SELECT
    realtime.wal2json_escape_identifier(nsp.nspname::text)
    || '.'
    || realtime.wal2json_escape_identifier(pc.relname::text)
  FROM pg_class pc
  JOIN pg_namespace nsp ON pc.relnamespace = nsp.oid
  WHERE pc.oid = entity
$$;


ALTER FUNCTION realtime.quote_wal2json(entity regclass) OWNER TO supabase_admin;

--
-- Name: send(jsonb, text, text, boolean); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  generated_id uuid;
  final_payload jsonb;
BEGIN
  BEGIN
    generated_id := gen_random_uuid();

    -- Check if payload has an 'id' key, if not, add the generated UUID
    IF payload ? 'id' THEN
      final_payload := payload;
    ELSE
      final_payload := jsonb_set(payload, '{id}', to_jsonb(generated_id));
    END IF;

    -- Set the topic configuration
    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    INSERT INTO realtime.messages (id, payload, event, topic, private, extension)
    VALUES (generated_id, final_payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      RAISE WARNING 'WarnSendingBroadcastMessage: %', SQLERRM;
  END;
END;
$$;


ALTER FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) OWNER TO supabase_admin;

--
-- Name: send_binary(bytea, text, text, boolean); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  generated_id uuid;
BEGIN
  BEGIN
    generated_id := gen_random_uuid();

    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    INSERT INTO realtime.messages (id, binary_payload, event, topic, private, extension)
    VALUES (generated_id, payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      RAISE WARNING 'WarnSendingBroadcastMessage: %', SQLERRM;
  END;
END;
$$;


ALTER FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean) OWNER TO supabase_admin;

--
-- Name: subscription_check_filters(); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
    col_names text[] = coalesce(
            array_agg(a.attname order by a.attnum),
            '{}'::text[]
        )
        from
            pg_catalog.pg_attribute a
        where
            a.attrelid = new.entity
            and a.attnum > 0
            and not a.attisdropped
            and pg_catalog.has_column_privilege(
                (new.claims ->> 'role'),
                a.attrelid,
                a.attnum,
                'SELECT'
            );
    filter realtime.user_defined_filter;
    col_type regtype;
    in_val jsonb;
    selected_col text;
begin
    for filter in select * from unnest(new.filters) loop
        if not filter.column_name = any(col_names) then
            raise exception 'invalid column for filter %', filter.column_name;
        end if;

        col_type = (
            select atttypid::regtype
            from pg_catalog.pg_attribute
            where attrelid = new.entity
                  and attname = filter.column_name
        );
        if col_type is null then
            raise exception 'failed to lookup type for column %', filter.column_name;
        end if;

        if filter.op = 'in'::realtime.equality_op then
            in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
            if coalesce(jsonb_array_length(in_val), 0) > 100 then
                raise exception 'too many values for `in` filter. Maximum 100';
            end if;
        else
            perform realtime.cast(filter.value, col_type);
        end if;
    end loop;

    if new.selected_columns is not null then
        for selected_col in select * from unnest(new.selected_columns) loop
            if not selected_col = any(col_names) then
                raise exception 'invalid column for select %', selected_col;
            end if;
        end loop;
    end if;

    new.filters = coalesce(
        array_agg(f order by f.column_name, f.op, f.value),
        '{}'
    ) from unnest(new.filters) f;

    new.selected_columns = (
        select array_agg(c order by c)
        from unnest(new.selected_columns) c
    );

    return new;
end;
$$;


ALTER FUNCTION realtime.subscription_check_filters() OWNER TO supabase_admin;

--
-- Name: to_regrole(text); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;


ALTER FUNCTION realtime.to_regrole(role_name text) OWNER TO supabase_admin;

--
-- Name: topic(); Type: FUNCTION; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;


ALTER FUNCTION realtime.topic() OWNER TO supabase_realtime_admin;

--
-- Name: wal2json_escape_identifier(text); Type: FUNCTION; Schema: realtime; Owner: supabase_admin
--

CREATE FUNCTION realtime.wal2json_escape_identifier(name text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
  -- Prefix `\`, `,`, `.`, and any whitespace with `\`
  SELECT regexp_replace(name, '([\\,.[:space:]])', '\\\1', 'g')
$$;


ALTER FUNCTION realtime.wal2json_escape_identifier(name text) OWNER TO supabase_admin;

--
-- Name: allow_any_operation(text[]); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.allow_any_operation(expected_operations text[]) RETURNS boolean
    LANGUAGE sql STABLE
    AS $$
  WITH current_operation AS (
    SELECT storage.operation() AS raw_operation
  ),
  normalized AS (
    SELECT CASE
      WHEN raw_operation LIKE 'storage.%' THEN substr(raw_operation, 9)
      ELSE raw_operation
    END AS current_operation
    FROM current_operation
  )
  SELECT EXISTS (
    SELECT 1
    FROM normalized n
    CROSS JOIN LATERAL unnest(expected_operations) AS expected_operation
    WHERE expected_operation IS NOT NULL
      AND expected_operation <> ''
      AND n.current_operation = CASE
        WHEN expected_operation LIKE 'storage.%' THEN substr(expected_operation, 9)
        ELSE expected_operation
      END
  );
$$;


ALTER FUNCTION storage.allow_any_operation(expected_operations text[]) OWNER TO supabase_storage_admin;

--
-- Name: allow_only_operation(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.allow_only_operation(expected_operation text) RETURNS boolean
    LANGUAGE sql STABLE
    AS $$
  WITH current_operation AS (
    SELECT storage.operation() AS raw_operation
  ),
  normalized AS (
    SELECT
      CASE
        WHEN raw_operation LIKE 'storage.%' THEN substr(raw_operation, 9)
        ELSE raw_operation
      END AS current_operation,
      CASE
        WHEN expected_operation LIKE 'storage.%' THEN substr(expected_operation, 9)
        ELSE expected_operation
      END AS requested_operation
    FROM current_operation
  )
  SELECT CASE
    WHEN requested_operation IS NULL OR requested_operation = '' THEN FALSE
    ELSE COALESCE(current_operation = requested_operation, FALSE)
  END
  FROM normalized;
$$;


ALTER FUNCTION storage.allow_only_operation(expected_operation text) OWNER TO supabase_storage_admin;

--
-- Name: can_insert_object(text, text, uuid, jsonb); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;


ALTER FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) OWNER TO supabase_storage_admin;

--
-- Name: enforce_bucket_name_length(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.enforce_bucket_name_length() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
    if length(new.name) > 100 then
        raise exception 'bucket name "%" is too long (% characters). Max is 100.', new.name, length(new.name);
    end if;
    return new;
end;
$$;


ALTER FUNCTION storage.enforce_bucket_name_length() OWNER TO supabase_storage_admin;

--
-- Name: extension(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
    _filename text;
BEGIN
    -- Split on "/" to get path segments
    SELECT string_to_array(name, '/') INTO _parts;
    -- Get the last path segment (the actual filename)
    SELECT _parts[array_length(_parts, 1)] INTO _filename;
    -- Extract extension: reverse, split on '.', then reverse again
    RETURN reverse(split_part(reverse(_filename), '.', 1));
END
$$;


ALTER FUNCTION storage.extension(name text) OWNER TO supabase_storage_admin;

--
-- Name: filename(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;


ALTER FUNCTION storage.filename(name text) OWNER TO supabase_storage_admin;

--
-- Name: foldername(text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
BEGIN
    -- Split on "/" to get path segments
    SELECT string_to_array(name, '/') INTO _parts;
    -- Return everything except the last segment
    RETURN _parts[1 : array_length(_parts,1) - 1];
END
$$;


ALTER FUNCTION storage.foldername(name text) OWNER TO supabase_storage_admin;

--
-- Name: get_common_prefix(text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.get_common_prefix(p_key text, p_prefix text, p_delimiter text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT CASE
    WHEN position(p_delimiter IN substring(p_key FROM length(p_prefix) + 1)) > 0
    THEN left(p_key, length(p_prefix) + position(p_delimiter IN substring(p_key FROM length(p_prefix) + 1)))
    ELSE NULL
END;
$$;


ALTER FUNCTION storage.get_common_prefix(p_key text, p_prefix text, p_delimiter text) OWNER TO supabase_storage_admin;

--
-- Name: get_size_by_bucket(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::bigint)::bigint as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;


ALTER FUNCTION storage.get_size_by_bucket() OWNER TO supabase_storage_admin;

--
-- Name: list_multipart_uploads_with_delimiter(text, text, text, integer, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;


ALTER FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text) OWNER TO supabase_storage_admin;

--
-- Name: list_objects_with_delimiter(text, text, text, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.list_objects_with_delimiter(_bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_peek_name TEXT;
    v_current RECORD;
    v_common_prefix TEXT;

    -- Configuration
    v_is_asc BOOLEAN;
    v_prefix TEXT;
    v_start TEXT;
    v_upper_bound TEXT;
    v_file_batch_size INT;

    -- Seek state
    v_next_seek TEXT;
    v_count INT := 0;

    -- Dynamic SQL for batch query only
    v_batch_query TEXT;

BEGIN
    -- ========================================================================
    -- INITIALIZATION
    -- ========================================================================
    v_is_asc := lower(coalesce(sort_order, 'asc')) = 'asc';
    v_prefix := coalesce(prefix_param, '');
    v_start := CASE WHEN coalesce(next_token, '') <> '' THEN next_token ELSE coalesce(start_after, '') END;
    v_file_batch_size := LEAST(GREATEST(max_keys * 2, 100), 1000);

    -- Calculate upper bound for prefix filtering (bytewise, using COLLATE "C")
    IF v_prefix = '' THEN
        v_upper_bound := NULL;
    ELSIF right(v_prefix, 1) = delimiter_param THEN
        v_upper_bound := left(v_prefix, -1) || chr(ascii(delimiter_param) + 1);
    ELSE
        v_upper_bound := left(v_prefix, -1) || chr(ascii(right(v_prefix, 1)) + 1);
    END IF;

    -- Build batch query (dynamic SQL - called infrequently, amortized over many rows)
    IF v_is_asc THEN
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" >= $2 ' ||
                'AND o.name COLLATE "C" < $3 ORDER BY o.name COLLATE "C" ASC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" >= $2 ' ||
                'ORDER BY o.name COLLATE "C" ASC LIMIT $4';
        END IF;
    ELSE
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" < $2 ' ||
                'AND o.name COLLATE "C" >= $3 ORDER BY o.name COLLATE "C" DESC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" < $2 ' ||
                'ORDER BY o.name COLLATE "C" DESC LIMIT $4';
        END IF;
    END IF;

    -- ========================================================================
    -- SEEK INITIALIZATION: Determine starting position
    -- ========================================================================
    IF v_start = '' THEN
        IF v_is_asc THEN
            v_next_seek := v_prefix;
        ELSE
            -- DESC without cursor: find the last item in range
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_prefix AND o.name COLLATE "C" < v_upper_bound
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix <> '' THEN
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            END IF;

            IF v_next_seek IS NOT NULL THEN
                v_next_seek := v_next_seek || delimiter_param;
            ELSE
                RETURN;
            END IF;
        END IF;
    ELSE
        -- Cursor provided: determine if it refers to a folder or leaf
        IF EXISTS (
            SELECT 1 FROM storage.objects o
            WHERE o.bucket_id = _bucket_id
              AND o.name COLLATE "C" LIKE v_start || delimiter_param || '%'
            LIMIT 1
        ) THEN
            -- Cursor refers to a folder
            IF v_is_asc THEN
                v_next_seek := v_start || chr(ascii(delimiter_param) + 1);
            ELSE
                v_next_seek := v_start || delimiter_param;
            END IF;
        ELSE
            -- Cursor refers to a leaf object
            IF v_is_asc THEN
                v_next_seek := v_start || delimiter_param;
            ELSE
                v_next_seek := v_start;
            END IF;
        END IF;
    END IF;

    -- ========================================================================
    -- MAIN LOOP: Hybrid peek-then-batch algorithm
    -- Uses STATIC SQL for peek (hot path) and DYNAMIC SQL for batch
    -- ========================================================================
    LOOP
        EXIT WHEN v_count >= max_keys;

        -- STEP 1: PEEK using STATIC SQL (plan cached, very fast)
        IF v_is_asc THEN
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_next_seek AND o.name COLLATE "C" < v_upper_bound
                ORDER BY o.name COLLATE "C" ASC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_next_seek
                ORDER BY o.name COLLATE "C" ASC LIMIT 1;
            END IF;
        ELSE
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix <> '' THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            END IF;
        END IF;

        EXIT WHEN v_peek_name IS NULL;

        -- STEP 2: Check if this is a FOLDER or FILE
        v_common_prefix := storage.get_common_prefix(v_peek_name, v_prefix, delimiter_param);

        IF v_common_prefix IS NOT NULL THEN
            -- FOLDER: Emit and skip to next folder (no heap access needed)
            name := rtrim(v_common_prefix, delimiter_param);
            id := NULL;
            updated_at := NULL;
            created_at := NULL;
            last_accessed_at := NULL;
            metadata := NULL;
            RETURN NEXT;
            v_count := v_count + 1;

            -- Advance seek past the folder range
            IF v_is_asc THEN
                v_next_seek := left(v_common_prefix, -1) || chr(ascii(delimiter_param) + 1);
            ELSE
                v_next_seek := v_common_prefix;
            END IF;
        ELSE
            -- FILE: Batch fetch using DYNAMIC SQL (overhead amortized over many rows)
            -- For ASC: upper_bound is the exclusive upper limit (< condition)
            -- For DESC: prefix is the inclusive lower limit (>= condition)
            FOR v_current IN EXECUTE v_batch_query USING _bucket_id, v_next_seek,
                CASE WHEN v_is_asc THEN COALESCE(v_upper_bound, v_prefix) ELSE v_prefix END, v_file_batch_size
            LOOP
                v_common_prefix := storage.get_common_prefix(v_current.name, v_prefix, delimiter_param);

                IF v_common_prefix IS NOT NULL THEN
                    -- Hit a folder: exit batch, let peek handle it
                    v_next_seek := v_current.name;
                    EXIT;
                END IF;

                -- Emit file
                name := v_current.name;
                id := v_current.id;
                updated_at := v_current.updated_at;
                created_at := v_current.created_at;
                last_accessed_at := v_current.last_accessed_at;
                metadata := v_current.metadata;
                RETURN NEXT;
                v_count := v_count + 1;

                -- Advance seek past this file
                IF v_is_asc THEN
                    v_next_seek := v_current.name || delimiter_param;
                ELSE
                    v_next_seek := v_current.name;
                END IF;

                EXIT WHEN v_count >= max_keys;
            END LOOP;
        END IF;
    END LOOP;
END;
$_$;


ALTER FUNCTION storage.list_objects_with_delimiter(_bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text, sort_order text) OWNER TO supabase_storage_admin;

--
-- Name: operation(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;


ALTER FUNCTION storage.operation() OWNER TO supabase_storage_admin;

--
-- Name: protect_delete(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.protect_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Check if storage.allow_delete_query is set to 'true'
    IF COALESCE(current_setting('storage.allow_delete_query', true), 'false') != 'true' THEN
        RAISE EXCEPTION 'Direct deletion from storage tables is not allowed. Use the Storage API instead.'
            USING HINT = 'This prevents accidental data loss from orphaned objects.',
                  ERRCODE = '42501';
    END IF;
    RETURN NULL;
END;
$$;


ALTER FUNCTION storage.protect_delete() OWNER TO supabase_storage_admin;

--
-- Name: search(text, text, integer, integer, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_peek_name TEXT;
    v_current RECORD;
    v_common_prefix TEXT;
    v_delimiter CONSTANT TEXT := '/';

    -- Configuration
    v_limit INT;
    v_prefix TEXT;
    v_prefix_lower TEXT;
    v_is_asc BOOLEAN;
    v_order_by TEXT;
    v_sort_order TEXT;
    v_upper_bound TEXT;
    v_file_batch_size INT;

    -- Dynamic SQL for batch query only
    v_batch_query TEXT;

    -- Seek state
    v_next_seek TEXT;
    v_count INT := 0;
    v_skipped INT := 0;
BEGIN
    -- ========================================================================
    -- INITIALIZATION
    -- ========================================================================
    v_limit := LEAST(coalesce(limits, 100), 1500);
    v_prefix := coalesce(prefix, '') || coalesce(search, '');
    v_prefix_lower := lower(v_prefix);
    v_is_asc := lower(coalesce(sortorder, 'asc')) = 'asc';
    v_file_batch_size := LEAST(GREATEST(v_limit * 2, 100), 1000);

    -- Validate sort column
    CASE lower(coalesce(sortcolumn, 'name'))
        WHEN 'name' THEN v_order_by := 'name';
        WHEN 'updated_at' THEN v_order_by := 'updated_at';
        WHEN 'created_at' THEN v_order_by := 'created_at';
        WHEN 'last_accessed_at' THEN v_order_by := 'last_accessed_at';
        ELSE v_order_by := 'name';
    END CASE;

    v_sort_order := CASE WHEN v_is_asc THEN 'asc' ELSE 'desc' END;

    -- ========================================================================
    -- NON-NAME SORTING: Use path_tokens approach (unchanged)
    -- ========================================================================
    IF v_order_by != 'name' THEN
        RETURN QUERY EXECUTE format(
            $sql$
            WITH folders AS (
                SELECT path_tokens[$1] AS folder
                FROM storage.objects
                WHERE objects.name ILIKE $2 || '%%'
                  AND bucket_id = $3
                  AND array_length(objects.path_tokens, 1) <> $1
                GROUP BY folder
                ORDER BY folder %s
            )
            (SELECT folder AS "name",
                   NULL::uuid AS id,
                   NULL::timestamptz AS updated_at,
                   NULL::timestamptz AS created_at,
                   NULL::timestamptz AS last_accessed_at,
                   NULL::jsonb AS metadata FROM folders)
            UNION ALL
            (SELECT path_tokens[$1] AS "name",
                   id, updated_at, created_at, last_accessed_at, metadata
             FROM storage.objects
             WHERE objects.name ILIKE $2 || '%%'
               AND bucket_id = $3
               AND array_length(objects.path_tokens, 1) = $1
             ORDER BY %I %s)
            LIMIT $4 OFFSET $5
            $sql$, v_sort_order, v_order_by, v_sort_order
        ) USING levels, v_prefix, bucketname, v_limit, offsets;
        RETURN;
    END IF;

    -- ========================================================================
    -- NAME SORTING: Hybrid skip-scan with batch optimization
    -- ========================================================================

    -- Calculate upper bound for prefix filtering
    IF v_prefix_lower = '' THEN
        v_upper_bound := NULL;
    ELSIF right(v_prefix_lower, 1) = v_delimiter THEN
        v_upper_bound := left(v_prefix_lower, -1) || chr(ascii(v_delimiter) + 1);
    ELSE
        v_upper_bound := left(v_prefix_lower, -1) || chr(ascii(right(v_prefix_lower, 1)) + 1);
    END IF;

    -- Build batch query (dynamic SQL - called infrequently, amortized over many rows)
    IF v_is_asc THEN
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" >= $2 ' ||
                'AND lower(o.name) COLLATE "C" < $3 ORDER BY lower(o.name) COLLATE "C" ASC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" >= $2 ' ||
                'ORDER BY lower(o.name) COLLATE "C" ASC LIMIT $4';
        END IF;
    ELSE
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" < $2 ' ||
                'AND lower(o.name) COLLATE "C" >= $3 ORDER BY lower(o.name) COLLATE "C" DESC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" < $2 ' ||
                'ORDER BY lower(o.name) COLLATE "C" DESC LIMIT $4';
        END IF;
    END IF;

    -- Initialize seek position
    IF v_is_asc THEN
        v_next_seek := v_prefix_lower;
    ELSE
        -- DESC: find the last item in range first (static SQL)
        IF v_upper_bound IS NOT NULL THEN
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_prefix_lower AND lower(o.name) COLLATE "C" < v_upper_bound
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        ELSIF v_prefix_lower <> '' THEN
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_prefix_lower
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        ELSE
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        END IF;

        IF v_peek_name IS NOT NULL THEN
            v_next_seek := lower(v_peek_name) || v_delimiter;
        ELSE
            RETURN;
        END IF;
    END IF;

    -- ========================================================================
    -- MAIN LOOP: Hybrid peek-then-batch algorithm
    -- Uses STATIC SQL for peek (hot path) and DYNAMIC SQL for batch
    -- ========================================================================
    LOOP
        EXIT WHEN v_count >= v_limit;

        -- STEP 1: PEEK using STATIC SQL (plan cached, very fast)
        IF v_is_asc THEN
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_next_seek AND lower(o.name) COLLATE "C" < v_upper_bound
                ORDER BY lower(o.name) COLLATE "C" ASC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_next_seek
                ORDER BY lower(o.name) COLLATE "C" ASC LIMIT 1;
            END IF;
        ELSE
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek AND lower(o.name) COLLATE "C" >= v_prefix_lower
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix_lower <> '' THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek AND lower(o.name) COLLATE "C" >= v_prefix_lower
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            END IF;
        END IF;

        EXIT WHEN v_peek_name IS NULL;

        -- STEP 2: Check if this is a FOLDER or FILE
        v_common_prefix := storage.get_common_prefix(lower(v_peek_name), v_prefix_lower, v_delimiter);

        IF v_common_prefix IS NOT NULL THEN
            -- FOLDER: Handle offset, emit if needed, skip to next folder
            IF v_skipped < offsets THEN
                v_skipped := v_skipped + 1;
            ELSE
                name := split_part(rtrim(storage.get_common_prefix(v_peek_name, v_prefix, v_delimiter), v_delimiter), v_delimiter, levels);
                id := NULL;
                updated_at := NULL;
                created_at := NULL;
                last_accessed_at := NULL;
                metadata := NULL;
                RETURN NEXT;
                v_count := v_count + 1;
            END IF;

            -- Advance seek past the folder range
            IF v_is_asc THEN
                v_next_seek := lower(left(v_common_prefix, -1)) || chr(ascii(v_delimiter) + 1);
            ELSE
                v_next_seek := lower(v_common_prefix);
            END IF;
        ELSE
            -- FILE: Batch fetch using DYNAMIC SQL (overhead amortized over many rows)
            -- For ASC: upper_bound is the exclusive upper limit (< condition)
            -- For DESC: prefix_lower is the inclusive lower limit (>= condition)
            FOR v_current IN EXECUTE v_batch_query
                USING bucketname, v_next_seek,
                    CASE WHEN v_is_asc THEN COALESCE(v_upper_bound, v_prefix_lower) ELSE v_prefix_lower END, v_file_batch_size
            LOOP
                v_common_prefix := storage.get_common_prefix(lower(v_current.name), v_prefix_lower, v_delimiter);

                IF v_common_prefix IS NOT NULL THEN
                    -- Hit a folder: exit batch, let peek handle it
                    v_next_seek := lower(v_current.name);
                    EXIT;
                END IF;

                -- Handle offset skipping
                IF v_skipped < offsets THEN
                    v_skipped := v_skipped + 1;
                ELSE
                    -- Emit file
                    name := split_part(v_current.name, v_delimiter, levels);
                    id := v_current.id;
                    updated_at := v_current.updated_at;
                    created_at := v_current.created_at;
                    last_accessed_at := v_current.last_accessed_at;
                    metadata := v_current.metadata;
                    RETURN NEXT;
                    v_count := v_count + 1;
                END IF;

                -- Advance seek past this file
                IF v_is_asc THEN
                    v_next_seek := lower(v_current.name) || v_delimiter;
                ELSE
                    v_next_seek := lower(v_current.name);
                END IF;

                EXIT WHEN v_count >= v_limit;
            END LOOP;
        END IF;
    END LOOP;
END;
$_$;


ALTER FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text) OWNER TO supabase_storage_admin;

--
-- Name: search_by_timestamp(text, text, integer, integer, text, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.search_by_timestamp(p_prefix text, p_bucket_id text, p_limit integer, p_level integer, p_start_after text, p_sort_order text, p_sort_column text, p_sort_column_after text) RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_cursor_op text;
    v_query text;
    v_prefix text;
BEGIN
    v_prefix := coalesce(p_prefix, '');

    IF p_sort_order = 'asc' THEN
        v_cursor_op := '>';
    ELSE
        v_cursor_op := '<';
    END IF;

    v_query := format($sql$
        WITH raw_objects AS (
            SELECT
                o.name AS obj_name,
                o.id AS obj_id,
                o.updated_at AS obj_updated_at,
                o.created_at AS obj_created_at,
                o.last_accessed_at AS obj_last_accessed_at,
                o.metadata AS obj_metadata,
                storage.get_common_prefix(o.name, $1, '/') AS common_prefix
            FROM storage.objects o
            WHERE o.bucket_id = $2
              AND o.name COLLATE "C" LIKE $1 || '%%'
        ),
        -- Aggregate common prefixes (folders)
        -- Both created_at and updated_at use MIN(obj_created_at) to match the old prefixes table behavior
        aggregated_prefixes AS (
            SELECT
                rtrim(common_prefix, '/') AS name,
                NULL::uuid AS id,
                MIN(obj_created_at) AS updated_at,
                MIN(obj_created_at) AS created_at,
                NULL::timestamptz AS last_accessed_at,
                NULL::jsonb AS metadata,
                TRUE AS is_prefix
            FROM raw_objects
            WHERE common_prefix IS NOT NULL
            GROUP BY common_prefix
        ),
        leaf_objects AS (
            SELECT
                obj_name AS name,
                obj_id AS id,
                obj_updated_at AS updated_at,
                obj_created_at AS created_at,
                obj_last_accessed_at AS last_accessed_at,
                obj_metadata AS metadata,
                FALSE AS is_prefix
            FROM raw_objects
            WHERE common_prefix IS NULL
        ),
        combined AS (
            SELECT * FROM aggregated_prefixes
            UNION ALL
            SELECT * FROM leaf_objects
        ),
        filtered AS (
            SELECT *
            FROM combined
            WHERE (
                $5 = ''
                OR ROW(
                    date_trunc('milliseconds', %I),
                    name COLLATE "C"
                ) %s ROW(
                    COALESCE(NULLIF($6, '')::timestamptz, 'epoch'::timestamptz),
                    $5
                )
            )
        )
        SELECT
            split_part(name, '/', $3) AS key,
            name,
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
        FROM filtered
        ORDER BY
            COALESCE(date_trunc('milliseconds', %I), 'epoch'::timestamptz) %s,
            name COLLATE "C" %s
        LIMIT $4
    $sql$,
        p_sort_column,
        v_cursor_op,
        p_sort_column,
        p_sort_order,
        p_sort_order
    );

    RETURN QUERY EXECUTE v_query
    USING v_prefix, p_bucket_id, p_level, p_limit, p_start_after, p_sort_column_after;
END;
$_$;


ALTER FUNCTION storage.search_by_timestamp(p_prefix text, p_bucket_id text, p_limit integer, p_level integer, p_start_after text, p_sort_order text, p_sort_column text, p_sort_column_after text) OWNER TO supabase_storage_admin;

--
-- Name: search_v2(text, text, integer, integer, text, text, text, text); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.search_v2(prefix text, bucket_name text, limits integer DEFAULT 100, levels integer DEFAULT 1, start_after text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text, sort_column text DEFAULT 'name'::text, sort_column_after text DEFAULT ''::text) RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $$
DECLARE
    v_sort_col text;
    v_sort_ord text;
    v_limit int;
BEGIN
    -- Cap limit to maximum of 1500 records
    v_limit := LEAST(coalesce(limits, 100), 1500);

    -- Validate and normalize sort_order
    v_sort_ord := lower(coalesce(sort_order, 'asc'));
    IF v_sort_ord NOT IN ('asc', 'desc') THEN
        v_sort_ord := 'asc';
    END IF;

    -- Validate and normalize sort_column
    v_sort_col := lower(coalesce(sort_column, 'name'));
    IF v_sort_col NOT IN ('name', 'updated_at', 'created_at') THEN
        v_sort_col := 'name';
    END IF;

    -- Route to appropriate implementation
    IF v_sort_col = 'name' THEN
        -- Use list_objects_with_delimiter for name sorting (most efficient: O(k * log n))
        RETURN QUERY
        SELECT
            split_part(l.name, '/', levels) AS key,
            l.name AS name,
            l.id,
            l.updated_at,
            l.created_at,
            l.last_accessed_at,
            l.metadata
        FROM storage.list_objects_with_delimiter(
            bucket_name,
            coalesce(prefix, ''),
            '/',
            v_limit,
            start_after,
            '',
            v_sort_ord
        ) l;
    ELSE
        -- Use aggregation approach for timestamp sorting
        -- Not efficient for large datasets but supports correct pagination
        RETURN QUERY SELECT * FROM storage.search_by_timestamp(
            prefix, bucket_name, v_limit, levels, start_after,
            v_sort_ord, v_sort_col, sort_column_after
        );
    END IF;
END;
$$;


ALTER FUNCTION storage.search_v2(prefix text, bucket_name text, limits integer, levels integer, start_after text, sort_order text, sort_column text, sort_column_after text) OWNER TO supabase_storage_admin;

--
-- Name: update_updated_at_column(); Type: FUNCTION; Schema: storage; Owner: supabase_storage_admin
--

CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;


ALTER FUNCTION storage.update_updated_at_column() OWNER TO supabase_storage_admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: audit_log_entries; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE auth.audit_log_entries OWNER TO supabase_auth_admin;

--
-- Name: TABLE audit_log_entries; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';


--
-- Name: custom_oauth_providers; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.custom_oauth_providers (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    provider_type text NOT NULL,
    identifier text NOT NULL,
    name text NOT NULL,
    client_id text NOT NULL,
    client_secret text NOT NULL,
    acceptable_client_ids text[] DEFAULT '{}'::text[] NOT NULL,
    scopes text[] DEFAULT '{}'::text[] NOT NULL,
    pkce_enabled boolean DEFAULT true NOT NULL,
    attribute_mapping jsonb DEFAULT '{}'::jsonb NOT NULL,
    authorization_params jsonb DEFAULT '{}'::jsonb NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    email_optional boolean DEFAULT false NOT NULL,
    issuer text,
    discovery_url text,
    skip_nonce_check boolean DEFAULT false NOT NULL,
    cached_discovery jsonb,
    discovery_cached_at timestamp with time zone,
    authorization_url text,
    token_url text,
    userinfo_url text,
    jwks_uri text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT custom_oauth_providers_authorization_url_https CHECK (((authorization_url IS NULL) OR (authorization_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_authorization_url_length CHECK (((authorization_url IS NULL) OR (char_length(authorization_url) <= 2048))),
    CONSTRAINT custom_oauth_providers_client_id_length CHECK (((char_length(client_id) >= 1) AND (char_length(client_id) <= 512))),
    CONSTRAINT custom_oauth_providers_discovery_url_length CHECK (((discovery_url IS NULL) OR (char_length(discovery_url) <= 2048))),
    CONSTRAINT custom_oauth_providers_identifier_format CHECK ((identifier ~ '^[a-z0-9][a-z0-9:-]{0,48}[a-z0-9]$'::text)),
    CONSTRAINT custom_oauth_providers_issuer_length CHECK (((issuer IS NULL) OR ((char_length(issuer) >= 1) AND (char_length(issuer) <= 2048)))),
    CONSTRAINT custom_oauth_providers_jwks_uri_https CHECK (((jwks_uri IS NULL) OR (jwks_uri ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_jwks_uri_length CHECK (((jwks_uri IS NULL) OR (char_length(jwks_uri) <= 2048))),
    CONSTRAINT custom_oauth_providers_name_length CHECK (((char_length(name) >= 1) AND (char_length(name) <= 100))),
    CONSTRAINT custom_oauth_providers_oauth2_requires_endpoints CHECK (((provider_type <> 'oauth2'::text) OR ((authorization_url IS NOT NULL) AND (token_url IS NOT NULL) AND (userinfo_url IS NOT NULL)))),
    CONSTRAINT custom_oauth_providers_oidc_discovery_url_https CHECK (((provider_type <> 'oidc'::text) OR (discovery_url IS NULL) OR (discovery_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_oidc_issuer_https CHECK (((provider_type <> 'oidc'::text) OR (issuer IS NULL) OR (issuer ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_oidc_requires_issuer CHECK (((provider_type <> 'oidc'::text) OR (issuer IS NOT NULL))),
    CONSTRAINT custom_oauth_providers_provider_type_check CHECK ((provider_type = ANY (ARRAY['oauth2'::text, 'oidc'::text]))),
    CONSTRAINT custom_oauth_providers_token_url_https CHECK (((token_url IS NULL) OR (token_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_token_url_length CHECK (((token_url IS NULL) OR (char_length(token_url) <= 2048))),
    CONSTRAINT custom_oauth_providers_userinfo_url_https CHECK (((userinfo_url IS NULL) OR (userinfo_url ~~ 'https://%'::text))),
    CONSTRAINT custom_oauth_providers_userinfo_url_length CHECK (((userinfo_url IS NULL) OR (char_length(userinfo_url) <= 2048)))
);


ALTER TABLE auth.custom_oauth_providers OWNER TO supabase_auth_admin;

--
-- Name: flow_state; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text,
    code_challenge_method auth.code_challenge_method,
    code_challenge text,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone,
    invite_token text,
    referrer text,
    oauth_client_state_id uuid,
    linking_target_id uuid,
    email_optional boolean DEFAULT false NOT NULL
);


ALTER TABLE auth.flow_state OWNER TO supabase_auth_admin;

--
-- Name: TABLE flow_state; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.flow_state IS 'Stores metadata for all OAuth/SSO login flows';


--
-- Name: identities; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


ALTER TABLE auth.identities OWNER TO supabase_auth_admin;

--
-- Name: TABLE identities; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';


--
-- Name: COLUMN identities.email; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';


--
-- Name: instances; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE auth.instances OWNER TO supabase_auth_admin;

--
-- Name: TABLE instances; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';


--
-- Name: mfa_amr_claims; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);


ALTER TABLE auth.mfa_amr_claims OWNER TO supabase_auth_admin;

--
-- Name: TABLE mfa_amr_claims; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';


--
-- Name: mfa_challenges; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);


ALTER TABLE auth.mfa_challenges OWNER TO supabase_auth_admin;

--
-- Name: TABLE mfa_challenges; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';


--
-- Name: mfa_factors; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid,
    last_webauthn_challenge_data jsonb
);


ALTER TABLE auth.mfa_factors OWNER TO supabase_auth_admin;

--
-- Name: TABLE mfa_factors; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';


--
-- Name: COLUMN mfa_factors.last_webauthn_challenge_data; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.mfa_factors.last_webauthn_challenge_data IS 'Stores the latest WebAuthn challenge data including attestation/assertion for customer verification';


--
-- Name: oauth_authorizations; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_authorizations (
    id uuid NOT NULL,
    authorization_id text NOT NULL,
    client_id uuid NOT NULL,
    user_id uuid,
    redirect_uri text NOT NULL,
    scope text NOT NULL,
    state text,
    resource text,
    code_challenge text,
    code_challenge_method auth.code_challenge_method,
    response_type auth.oauth_response_type DEFAULT 'code'::auth.oauth_response_type NOT NULL,
    status auth.oauth_authorization_status DEFAULT 'pending'::auth.oauth_authorization_status NOT NULL,
    authorization_code text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone DEFAULT (now() + '00:03:00'::interval) NOT NULL,
    approved_at timestamp with time zone,
    nonce text,
    CONSTRAINT oauth_authorizations_authorization_code_length CHECK ((char_length(authorization_code) <= 255)),
    CONSTRAINT oauth_authorizations_code_challenge_length CHECK ((char_length(code_challenge) <= 128)),
    CONSTRAINT oauth_authorizations_expires_at_future CHECK ((expires_at > created_at)),
    CONSTRAINT oauth_authorizations_nonce_length CHECK ((char_length(nonce) <= 255)),
    CONSTRAINT oauth_authorizations_redirect_uri_length CHECK ((char_length(redirect_uri) <= 2048)),
    CONSTRAINT oauth_authorizations_resource_length CHECK ((char_length(resource) <= 2048)),
    CONSTRAINT oauth_authorizations_scope_length CHECK ((char_length(scope) <= 4096)),
    CONSTRAINT oauth_authorizations_state_length CHECK ((char_length(state) <= 4096))
);


ALTER TABLE auth.oauth_authorizations OWNER TO supabase_auth_admin;

--
-- Name: oauth_client_states; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_client_states (
    id uuid NOT NULL,
    provider_type text NOT NULL,
    code_verifier text,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE auth.oauth_client_states OWNER TO supabase_auth_admin;

--
-- Name: TABLE oauth_client_states; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.oauth_client_states IS 'Stores OAuth states for third-party provider authentication flows where Supabase acts as the OAuth client.';


--
-- Name: oauth_clients; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_clients (
    id uuid NOT NULL,
    client_secret_hash text,
    registration_type auth.oauth_registration_type NOT NULL,
    redirect_uris text NOT NULL,
    grant_types text NOT NULL,
    client_name text,
    client_uri text,
    logo_uri text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    client_type auth.oauth_client_type DEFAULT 'confidential'::auth.oauth_client_type NOT NULL,
    token_endpoint_auth_method text NOT NULL,
    CONSTRAINT oauth_clients_client_name_length CHECK ((char_length(client_name) <= 1024)),
    CONSTRAINT oauth_clients_client_uri_length CHECK ((char_length(client_uri) <= 2048)),
    CONSTRAINT oauth_clients_logo_uri_length CHECK ((char_length(logo_uri) <= 2048)),
    CONSTRAINT oauth_clients_token_endpoint_auth_method_check CHECK ((token_endpoint_auth_method = ANY (ARRAY['client_secret_basic'::text, 'client_secret_post'::text, 'none'::text])))
);


ALTER TABLE auth.oauth_clients OWNER TO supabase_auth_admin;

--
-- Name: oauth_consents; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.oauth_consents (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    client_id uuid NOT NULL,
    scopes text NOT NULL,
    granted_at timestamp with time zone DEFAULT now() NOT NULL,
    revoked_at timestamp with time zone,
    CONSTRAINT oauth_consents_revoked_after_granted CHECK (((revoked_at IS NULL) OR (revoked_at >= granted_at))),
    CONSTRAINT oauth_consents_scopes_length CHECK ((char_length(scopes) <= 2048)),
    CONSTRAINT oauth_consents_scopes_not_empty CHECK ((char_length(TRIM(BOTH FROM scopes)) > 0))
);


ALTER TABLE auth.oauth_consents OWNER TO supabase_auth_admin;

--
-- Name: one_time_tokens; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);


ALTER TABLE auth.one_time_tokens OWNER TO supabase_auth_admin;

--
-- Name: refresh_tokens; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);


ALTER TABLE auth.refresh_tokens OWNER TO supabase_auth_admin;

--
-- Name: TABLE refresh_tokens; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE; Schema: auth; Owner: supabase_auth_admin
--

CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE auth.refresh_tokens_id_seq OWNER TO supabase_auth_admin;

--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: auth; Owner: supabase_auth_admin
--

ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;


--
-- Name: saml_providers; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);


ALTER TABLE auth.saml_providers OWNER TO supabase_auth_admin;

--
-- Name: TABLE saml_providers; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';


--
-- Name: saml_relay_states; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);


ALTER TABLE auth.saml_relay_states OWNER TO supabase_auth_admin;

--
-- Name: TABLE saml_relay_states; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';


--
-- Name: schema_migrations; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE auth.schema_migrations OWNER TO supabase_auth_admin;

--
-- Name: TABLE schema_migrations; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';


--
-- Name: sessions; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text,
    oauth_client_id uuid,
    refresh_token_hmac_key text,
    refresh_token_counter bigint,
    scopes text,
    CONSTRAINT sessions_scopes_length CHECK ((char_length(scopes) <= 4096))
);


ALTER TABLE auth.sessions OWNER TO supabase_auth_admin;

--
-- Name: TABLE sessions; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';


--
-- Name: COLUMN sessions.not_after; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';


--
-- Name: COLUMN sessions.refresh_token_hmac_key; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sessions.refresh_token_hmac_key IS 'Holds a HMAC-SHA256 key used to sign refresh tokens for this session.';


--
-- Name: COLUMN sessions.refresh_token_counter; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sessions.refresh_token_counter IS 'Holds the ID (counter) of the last issued refresh token.';


--
-- Name: sso_domains; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);


ALTER TABLE auth.sso_domains OWNER TO supabase_auth_admin;

--
-- Name: TABLE sso_domains; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';


--
-- Name: sso_providers; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    disabled boolean,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);


ALTER TABLE auth.sso_providers OWNER TO supabase_auth_admin;

--
-- Name: TABLE sso_providers; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';


--
-- Name: COLUMN sso_providers.resource_id; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';


--
-- Name: users; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);


ALTER TABLE auth.users OWNER TO supabase_auth_admin;

--
-- Name: TABLE users; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';


--
-- Name: COLUMN users.is_sso_user; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';


--
-- Name: webauthn_challenges; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.webauthn_challenges (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid,
    challenge_type text NOT NULL,
    session_data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    CONSTRAINT webauthn_challenges_challenge_type_check CHECK ((challenge_type = ANY (ARRAY['signup'::text, 'registration'::text, 'authentication'::text])))
);


ALTER TABLE auth.webauthn_challenges OWNER TO supabase_auth_admin;

--
-- Name: webauthn_credentials; Type: TABLE; Schema: auth; Owner: supabase_auth_admin
--

CREATE TABLE auth.webauthn_credentials (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    credential_id bytea NOT NULL,
    public_key bytea NOT NULL,
    attestation_type text DEFAULT ''::text NOT NULL,
    aaguid uuid,
    sign_count bigint DEFAULT 0 NOT NULL,
    transports jsonb DEFAULT '[]'::jsonb NOT NULL,
    backup_eligible boolean DEFAULT false NOT NULL,
    backed_up boolean DEFAULT false NOT NULL,
    friendly_name text DEFAULT ''::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    last_used_at timestamp with time zone
);


ALTER TABLE auth.webauthn_credentials OWNER TO supabase_auth_admin;

--
-- Name: asignacion_horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignacion_horario (
    responsable_r_id integer NOT NULL,
    turno_tu_id integer NOT NULL
);


ALTER TABLE public.asignacion_horario OWNER TO postgres;

--
-- Name: asistencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asistencia (
    a_id integer NOT NULL,
    a_fecha_hora_llegada timestamp without time zone NOT NULL,
    a_fecha_hora_salida timestamp without time zone NOT NULL,
    empleado_em_id integer NOT NULL
);


ALTER TABLE public.asistencia OWNER TO postgres;

--
-- Name: asistencia_a_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asistencia_a_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.asistencia_a_id_seq OWNER TO postgres;

--
-- Name: asistencia_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asistencia_a_id_seq OWNED BY public.asistencia.a_id;


--
-- Name: bloqueo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bloqueo (
    b_id integer NOT NULL,
    b_fecha_hora_inicio timestamp without time zone NOT NULL,
    b_fecha_hora_fin timestamp without time zone NOT NULL,
    b_descripcion character varying(500) NOT NULL,
    cl_id integer
);


ALTER TABLE public.bloqueo OWNER TO postgres;

--
-- Name: bloqueo_b_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bloqueo_b_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bloqueo_b_id_seq OWNER TO postgres;

--
-- Name: bloqueo_b_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bloqueo_b_id_seq OWNED BY public.bloqueo.b_id;


--
-- Name: caracteristica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caracteristica (
    car_id integer NOT NULL,
    car_nombre character varying(100) NOT NULL,
    car_descripcion character varying(250) NOT NULL,
    "diseño_producto_dp_id" integer NOT NULL
);


ALTER TABLE public.caracteristica OWNER TO postgres;

--
-- Name: caracteristica_car_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caracteristica_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.caracteristica_car_id_seq OWNER TO postgres;

--
-- Name: caracteristica_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caracteristica_car_id_seq OWNED BY public.caracteristica.car_id;


--
-- Name: caracteristica_compatibilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caracteristica_compatibilidad (
    carcom_id integer NOT NULL,
    carcom_nombre character varying(100) NOT NULL,
    carcom_descripcion character varying(250) NOT NULL,
    caracteristica_car_id2 integer NOT NULL,
    "caracteristica_diseño_producto_dp_id2" integer NOT NULL,
    caracteristica_car_id integer NOT NULL,
    "caracteristica_diseño_producto_dp_id" integer NOT NULL
);


ALTER TABLE public.caracteristica_compatibilidad OWNER TO postgres;

--
-- Name: caracteristica_compatibilidad_carcom_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caracteristica_compatibilidad_carcom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.caracteristica_compatibilidad_carcom_id_seq OWNER TO postgres;

--
-- Name: caracteristica_compatibilidad_carcom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caracteristica_compatibilidad_carcom_id_seq OWNED BY public.caracteristica_compatibilidad.carcom_id;


--
-- Name: cargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargo (
    car_id integer NOT NULL,
    car_nombre character varying(100) NOT NULL,
    car_descripcion character varying(250) NOT NULL
);


ALTER TABLE public.cargo OWNER TO postgres;

--
-- Name: cargo_car_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cargo_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cargo_car_id_seq OWNER TO postgres;

--
-- Name: cargo_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cargo_car_id_seq OWNED BY public.cargo.car_id;


--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    cat_id integer NOT NULL,
    cat_nombre character varying(100) NOT NULL,
    cat_descripcion character varying(250) NOT NULL,
    categoria_cat_id integer
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_cat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_cat_id_seq OWNER TO postgres;

--
-- Name: categoria_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_cat_id_seq OWNED BY public.categoria.cat_id;


--
-- Name: cheque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cheque (
    mp_id integer NOT NULL,
    ch_banco character varying(100) NOT NULL,
    ch_numero_cuenta character varying(50) NOT NULL
);


ALTER TABLE public.cheque OWNER TO postgres;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    cl_id integer NOT NULL,
    cl_direccion character varying(250) NOT NULL,
    cl_email character varying(150) NOT NULL,
    membresia_mem_id integer,
    l_id integer
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_b2b; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente_b2b (
    cl_id integer NOT NULL,
    clb2b_nombre character varying(100) NOT NULL,
    clb2b_linea_credito numeric NOT NULL
);


ALTER TABLE public.cliente_b2b OWNER TO postgres;

--
-- Name: cliente_b2c; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente_b2c (
    cl_id integer NOT NULL,
    clb2c_p_nombre character varying(50) NOT NULL,
    clb2c_s_nombre character varying(50),
    clb2c_p_apellido character varying(50) NOT NULL,
    clb2c_s_apellido character varying(50) NOT NULL
);


ALTER TABLE public.cliente_b2c OWNER TO postgres;

--
-- Name: cliente_cl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_cl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_cl_id_seq OWNER TO postgres;

--
-- Name: cliente_cl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_cl_id_seq OWNED BY public.cliente.cl_id;


--
-- Name: compatibilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compatibilidad (
    comp_id integer NOT NULL,
    categoria_cat_id integer NOT NULL,
    categoria_cat_id2 integer NOT NULL
);


ALTER TABLE public.compatibilidad OWNER TO postgres;

--
-- Name: compatibilidad_comp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compatibilidad_comp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compatibilidad_comp_id_seq OWNER TO postgres;

--
-- Name: compatibilidad_comp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compatibilidad_comp_id_seq OWNED BY public.compatibilidad.comp_id;


--
-- Name: compra_btc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compra_btc (
    cbtc_id integer NOT NULL,
    cbtc_fecha_hora timestamp without time zone NOT NULL,
    cbtc_total numeric NOT NULL,
    cbtc_subtotal numeric NOT NULL,
    cbtc_numero_fact_compra character varying(100) NOT NULL,
    cbtc_estado character varying(50) NOT NULL,
    cbtc_velocidad character varying(50) NOT NULL,
    producto_final_pf_id integer
);


ALTER TABLE public.compra_btc OWNER TO postgres;

--
-- Name: compra_btc_cbtc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compra_btc_cbtc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compra_btc_cbtc_id_seq OWNER TO postgres;

--
-- Name: compra_btc_cbtc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compra_btc_cbtc_id_seq OWNED BY public.compra_btc.cbtc_id;


--
-- Name: control_calidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.control_calidad (
    cc_id integer NOT NULL,
    cc_fecha date NOT NULL,
    cc_muestras_inspeccionadas integer NOT NULL,
    cc_unidades_rechazadas integer NOT NULL,
    cc_unidades_aprobadas integer NOT NULL,
    cc_resultado character varying(50) NOT NULL,
    cc_observaciones character varying(500) NOT NULL,
    lote_produccion_lp_id integer NOT NULL
);


ALTER TABLE public.control_calidad OWNER TO postgres;

--
-- Name: control_calidad_cc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.control_calidad_cc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.control_calidad_cc_id_seq OWNER TO postgres;

--
-- Name: control_calidad_cc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.control_calidad_cc_id_seq OWNED BY public.control_calidad.cc_id;


--
-- Name: courier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courier (
    cou_id integer NOT NULL,
    cou_direccion character varying(250) NOT NULL,
    cou_nombre character varying(100) NOT NULL
);


ALTER TABLE public.courier OWNER TO postgres;

--
-- Name: courier_cou_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courier_cou_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courier_cou_id_seq OWNER TO postgres;

--
-- Name: courier_cou_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courier_cou_id_seq OWNED BY public.courier.cou_id;


--
-- Name: cryptomoneda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cryptomoneda (
    mp_id integer NOT NULL,
    cr_nombre character varying(50) NOT NULL
);


ALTER TABLE public.cryptomoneda OWNER TO postgres;

--
-- Name: defecto_calidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defecto_calidad (
    dc_id integer NOT NULL,
    dc_fecha_reporte date NOT NULL,
    dc_estado character varying(50) NOT NULL,
    dc_gravedad character varying(50) NOT NULL,
    dc_tipo character varying(100) NOT NULL
);


ALTER TABLE public.defecto_calidad OWNER TO postgres;

--
-- Name: defecto_calidad_dc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.defecto_calidad_dc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.defecto_calidad_dc_id_seq OWNER TO postgres;

--
-- Name: defecto_calidad_dc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.defecto_calidad_dc_id_seq OWNED BY public.defecto_calidad.dc_id;


--
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    de_id integer NOT NULL,
    de_nombre character varying(100) NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- Name: departamento_de_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamento_de_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamento_de_id_seq OWNER TO postgres;

--
-- Name: departamento_de_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamento_de_id_seq OWNED BY public.departamento.de_id;


--
-- Name: despacho_btb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.despacho_btb (
    desbtb_id integer NOT NULL,
    desbtb_fecha_hora timestamp without time zone NOT NULL,
    desbtb_cantidad_paletas integer NOT NULL,
    desbtb_direccion character varying(250) NOT NULL,
    orden_compra_oc_id integer NOT NULL,
    lugar_l_id integer NOT NULL,
    transportista_t_id integer NOT NULL
);


ALTER TABLE public.despacho_btb OWNER TO postgres;

--
-- Name: despacho_btb_desbtb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.despacho_btb_desbtb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.despacho_btb_desbtb_id_seq OWNER TO postgres;

--
-- Name: despacho_btb_desbtb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.despacho_btb_desbtb_id_seq OWNED BY public.despacho_btb.desbtb_id;


--
-- Name: despacho_btc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.despacho_btc (
    desbtc_id integer NOT NULL,
    desbtc_fecha_hora timestamp without time zone NOT NULL,
    desbtc_cantidad_paletas integer NOT NULL,
    desbtc_direccion character varying(250) NOT NULL,
    desbtc_peso numeric NOT NULL,
    desbtc_costo numeric NOT NULL,
    desbtc_numero_tracking character varying(100) NOT NULL,
    courier_cou_id integer NOT NULL,
    lugar_l_id integer NOT NULL
);


ALTER TABLE public.despacho_btc OWNER TO postgres;

--
-- Name: despacho_btc_desbtc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.despacho_btc_desbtc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.despacho_btc_desbtc_id_seq OWNER TO postgres;

--
-- Name: despacho_btc_desbtc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.despacho_btc_desbtc_id_seq OWNED BY public.despacho_btc.desbtc_id;


--
-- Name: diseño_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."diseño_producto" (
    dp_id integer NOT NULL,
    dp_nombre_comercial character varying(150) NOT NULL,
    dp_descripcion character varying(400) NOT NULL,
    dp_fecha_lanzamiento date NOT NULL,
    dp_precio_inicial numeric,
    dp_manual_instrucciones character varying(250),
    dp_ancho_cm numeric NOT NULL,
    dp_largo_cm numeric NOT NULL,
    dp_peso_volumetrico numeric NOT NULL,
    material_m_id integer NOT NULL
);


ALTER TABLE public."diseño_producto" OWNER TO postgres;

--
-- Name: diseño_producto_dp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."diseño_producto_dp_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."diseño_producto_dp_id_seq" OWNER TO postgres;

--
-- Name: diseño_producto_dp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."diseño_producto_dp_id_seq" OWNED BY public."diseño_producto".dp_id;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    em_id integer NOT NULL,
    em_p_nombre character varying(50) NOT NULL,
    em_s_nombre character varying(50),
    em_p_apellido character varying(50) NOT NULL,
    em_s_apellido character varying(50) NOT NULL,
    em_sueldo_actual numeric NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- Name: empleado_em_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_em_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_em_id_seq OWNER TO postgres;

--
-- Name: empleado_em_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_em_id_seq OWNED BY public.empleado.em_id;


--
-- Name: envio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.envio (
    e_id integer NOT NULL,
    e_numero character varying(100) NOT NULL,
    e_fecha_hora timestamp without time zone NOT NULL,
    courier_cou_id integer NOT NULL,
    transportista_t_id integer NOT NULL
);


ALTER TABLE public.envio OWNER TO postgres;

--
-- Name: envio_e_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.envio_e_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.envio_e_id_seq OWNER TO postgres;

--
-- Name: envio_e_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.envio_e_id_seq OWNED BY public.envio.e_id;


--
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    est_id integer NOT NULL,
    est_nombre character varying(50) NOT NULL,
    est_descripcion character varying(250) NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- Name: estado_compra_btc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_compra_btc (
    estado_est_id integer NOT NULL,
    compra_btc_cbtc_id integer NOT NULL
);


ALTER TABLE public.estado_compra_btc OWNER TO postgres;

--
-- Name: estado_despacho_btb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_despacho_btb (
    estado_est_id integer NOT NULL,
    despacho_btb_desbtb_id integer NOT NULL
);


ALTER TABLE public.estado_despacho_btb OWNER TO postgres;

--
-- Name: estado_despacho_btc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_despacho_btc (
    despacho_btc_desbtc_id integer NOT NULL,
    estado_est_id integer NOT NULL
);


ALTER TABLE public.estado_despacho_btc OWNER TO postgres;

--
-- Name: estado_envio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_envio (
    esten_fecha_inicio date NOT NULL,
    esten_fecha_fin date NOT NULL,
    envio_e_id integer NOT NULL,
    estado_est_id integer NOT NULL
);


ALTER TABLE public.estado_envio OWNER TO postgres;

--
-- Name: estado_est_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_est_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_est_id_seq OWNER TO postgres;

--
-- Name: estado_est_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_est_id_seq OWNED BY public.estado.est_id;


--
-- Name: estado_orden_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_orden_compra (
    estado_est_id integer NOT NULL,
    orden_compra_oc_id integer NOT NULL,
    eoc_fecha_cambio timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    eoc_comentario character varying(250)
);


ALTER TABLE public.estado_orden_compra OWNER TO postgres;

--
-- Name: exclusividad_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exclusividad_producto (
    ep_id integer NOT NULL,
    ep_nombre character varying(100) NOT NULL,
    ep_cantidad integer NOT NULL
);


ALTER TABLE public.exclusividad_producto OWNER TO postgres;

--
-- Name: exclusividad_producto_ep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exclusividad_producto_ep_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exclusividad_producto_ep_id_seq OWNER TO postgres;

--
-- Name: exclusividad_producto_ep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exclusividad_producto_ep_id_seq OWNED BY public.exclusividad_producto.ep_id;


--
-- Name: fase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase (
    f_id integer NOT NULL,
    f_nombre character varying(100) NOT NULL,
    f_descripcion character varying(400) NOT NULL
);


ALTER TABLE public.fase OWNER TO postgres;

--
-- Name: fase_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase_compra (
    fc_id integer NOT NULL,
    fc_fecha_hora_inicio timestamp without time zone NOT NULL,
    fc_fecha_hora_fin timestamp without time zone NOT NULL,
    departamento_de_id integer NOT NULL,
    orden_compra_oc_id integer,
    compra_btc_cbtc_id integer,
    fase_f_id integer DEFAULT 4,
    CONSTRAINT chk_arco_exclusivo_fase_compra CHECK ((((orden_compra_oc_id IS NOT NULL) AND (compra_btc_cbtc_id IS NULL)) OR ((orden_compra_oc_id IS NULL) AND (compra_btc_cbtc_id IS NOT NULL))))
);


ALTER TABLE public.fase_compra OWNER TO postgres;

--
-- Name: fase_compra_fc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_compra_fc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_compra_fc_id_seq OWNER TO postgres;

--
-- Name: fase_compra_fc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_compra_fc_id_seq OWNED BY public.fase_compra.fc_id;


--
-- Name: fase_diseno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase_diseno (
    fd_id integer NOT NULL,
    fd_fecha_hora_inicio timestamp without time zone NOT NULL,
    fd_fecha_hora_fin timestamp without time zone NOT NULL,
    fase_f_id integer NOT NULL,
    "diseño_producto_dp_id" integer NOT NULL,
    departamento_de_id integer NOT NULL
);


ALTER TABLE public.fase_diseno OWNER TO postgres;

--
-- Name: fase_diseno_fd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_diseno_fd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_diseno_fd_id_seq OWNER TO postgres;

--
-- Name: fase_diseno_fd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_diseno_fd_id_seq OWNED BY public.fase_diseno.fd_id;


--
-- Name: fase_f_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_f_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_f_id_seq OWNER TO postgres;

--
-- Name: fase_f_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_f_id_seq OWNED BY public.fase.f_id;


--
-- Name: fase_logistica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase_logistica (
    fl_id integer NOT NULL,
    fl_fecha_hora_inicio timestamp without time zone NOT NULL,
    fl_fecha_hora_fin timestamp without time zone NOT NULL,
    fase_f_id integer NOT NULL,
    departamento_de_id integer NOT NULL,
    despacho_btb_desbtb_id integer,
    despacho_btc_desbtc_id integer,
    CONSTRAINT chk_arco_exclusivo_despacho CHECK ((((despacho_btb_desbtb_id IS NOT NULL) AND (despacho_btc_desbtc_id IS NULL)) OR ((despacho_btb_desbtb_id IS NULL) AND (despacho_btc_desbtc_id IS NOT NULL))))
);


ALTER TABLE public.fase_logistica OWNER TO postgres;

--
-- Name: fase_logistica_fl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_logistica_fl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_logistica_fl_id_seq OWNER TO postgres;

--
-- Name: fase_logistica_fl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_logistica_fl_id_seq OWNED BY public.fase_logistica.fl_id;


--
-- Name: fase_operativa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase_operativa (
    fo_id integer NOT NULL,
    lote_produccion_lp_id integer NOT NULL,
    fase_f_id integer NOT NULL,
    departamento_de_id integer NOT NULL,
    fo_fecha_hora_inicio timestamp without time zone NOT NULL,
    fo_fecha_hora_fin timestamp without time zone NOT NULL
);


ALTER TABLE public.fase_operativa OWNER TO postgres;

--
-- Name: fase_operativa_fo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_operativa_fo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_operativa_fo_id_seq OWNER TO postgres;

--
-- Name: fase_operativa_fo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_operativa_fo_id_seq OWNED BY public.fase_operativa.fo_id;


--
-- Name: fase_post_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase_post_venta (
    fpv_id integer NOT NULL,
    fpv_fecha_hora_inicio timestamp without time zone NOT NULL,
    fpv_fecha_hora_fin timestamp without time zone NOT NULL,
    departamento_de_id integer NOT NULL,
    producto_final_pf_id integer NOT NULL,
    fase_f_id integer NOT NULL,
    fase_compra_fc_id integer NOT NULL
);


ALTER TABLE public.fase_post_venta OWNER TO postgres;

--
-- Name: fase_post_venta_fpv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_post_venta_fpv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_post_venta_fpv_id_seq OWNER TO postgres;

--
-- Name: fase_post_venta_fpv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_post_venta_fpv_id_seq OWNED BY public.fase_post_venta.fpv_id;


--
-- Name: historico_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historico_empleado (
    hem_id integer NOT NULL,
    hem_fecha_hora_inicio timestamp without time zone NOT NULL,
    hem_fecha_hora_fin timestamp without time zone NOT NULL,
    hem_sueldo numeric NOT NULL,
    empleado_em_id integer NOT NULL,
    cargo_car_id integer NOT NULL,
    departamento_de_id integer NOT NULL
);


ALTER TABLE public.historico_empleado OWNER TO postgres;

--
-- Name: historico_empleado_hem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historico_empleado_hem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historico_empleado_hem_id_seq OWNER TO postgres;

--
-- Name: historico_empleado_hem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historico_empleado_hem_id_seq OWNED BY public.historico_empleado.hem_id;


--
-- Name: historico_orden_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historico_orden_compra (
    hoc_id integer NOT NULL,
    hoc_estado character varying(50) NOT NULL,
    hoc_fecha_inicio date NOT NULL,
    hoc_fecha_fin date NOT NULL,
    orden_compra_oc_id integer NOT NULL
);


ALTER TABLE public.historico_orden_compra OWNER TO postgres;

--
-- Name: historico_orden_compra_hoc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historico_orden_compra_hoc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historico_orden_compra_hoc_id_seq OWNER TO postgres;

--
-- Name: historico_orden_compra_hoc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historico_orden_compra_hoc_id_seq OWNED BY public.historico_orden_compra.hoc_id;


--
-- Name: historico_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historico_producto (
    hp_id integer NOT NULL,
    hp_fecha_hora_lanzamiento timestamp without time zone NOT NULL,
    hp_precio numeric NOT NULL,
    producto_final_pf_id integer NOT NULL
);


ALTER TABLE public.historico_producto OWNER TO postgres;

--
-- Name: historico_producto_hp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historico_producto_hp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historico_producto_hp_id_seq OWNER TO postgres;

--
-- Name: historico_producto_hp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historico_producto_hp_id_seq OWNED BY public.historico_producto.hp_id;


--
-- Name: historico_profesion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historico_profesion (
    hprof_id integer NOT NULL,
    hprof_fecha_inicio date NOT NULL,
    hprof_fecha_fin date NOT NULL,
    "diseño_producto_dp_id" integer NOT NULL,
    profesion_prof_id integer NOT NULL
);


ALTER TABLE public.historico_profesion OWNER TO postgres;

--
-- Name: historico_profesion_hprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.historico_profesion_hprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.historico_profesion_hprof_id_seq OWNER TO postgres;

--
-- Name: historico_profesion_hprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.historico_profesion_hprof_id_seq OWNED BY public.historico_profesion.hprof_id;


--
-- Name: lote_produccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lote_produccion (
    lp_id integer NOT NULL,
    lp_fecha_hora timestamp without time zone NOT NULL,
    lp_cantidad_producida numeric NOT NULL,
    material_m_id integer NOT NULL,
    pieza_caracteristica_caracteristica_car_id integer NOT NULL,
    "pieza_caracteristica_caracteristica_diseño_producto_dp_id" integer NOT NULL,
    pieza_caracteristica_pieza_pie_id integer NOT NULL,
    pieza_caracteristica_pieza_categoria_cat_id integer NOT NULL,
    "pieza_caracteristica_pieza_diseño_producto_dp_id" integer NOT NULL,
    compatibilidad_comp_id integer NOT NULL,
    compatibilidad_categoria_cat_id integer NOT NULL,
    compatibilidad_categoria_cat_id2 integer NOT NULL
);


ALTER TABLE public.lote_produccion OWNER TO postgres;

--
-- Name: lote_produccion_lp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lote_produccion_lp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lote_produccion_lp_id_seq OWNER TO postgres;

--
-- Name: lote_produccion_lp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lote_produccion_lp_id_seq OWNED BY public.lote_produccion.lp_id;


--
-- Name: lugar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lugar (
    l_id integer NOT NULL,
    l_nombre character varying(100) NOT NULL,
    l_tipo character varying(50) NOT NULL,
    lugar_l_id integer
);


ALTER TABLE public.lugar OWNER TO postgres;

--
-- Name: lugar_l_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lugar_l_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lugar_l_id_seq OWNER TO postgres;

--
-- Name: lugar_l_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lugar_l_id_seq OWNED BY public.lugar.l_id;


--
-- Name: material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material (
    m_id integer NOT NULL,
    m_nombre character varying(100) NOT NULL,
    m_descripcion character varying(350) NOT NULL
);


ALTER TABLE public.material OWNER TO postgres;

--
-- Name: material_m_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_m_id_seq OWNER TO postgres;

--
-- Name: material_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_m_id_seq OWNED BY public.material.m_id;


--
-- Name: membresia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membresia (
    mem_id integer NOT NULL,
    mem_nombre character varying(100) NOT NULL,
    mem_descripcion character varying(250) NOT NULL,
    cliente_cl_id integer
);


ALTER TABLE public.membresia OWNER TO postgres;

--
-- Name: membresia_mem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.membresia_mem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.membresia_mem_id_seq OWNER TO postgres;

--
-- Name: membresia_mem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.membresia_mem_id_seq OWNED BY public.membresia.mem_id;


--
-- Name: mercado_secundario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mercado_secundario (
    ms_id integer NOT NULL,
    ms_condicion_fisica character varying(100) NOT NULL,
    ms_precio_actual numeric NOT NULL,
    producto_final_pf_id integer
);


ALTER TABLE public.mercado_secundario OWNER TO postgres;

--
-- Name: mercado_secundario_ms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mercado_secundario_ms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mercado_secundario_ms_id_seq OWNER TO postgres;

--
-- Name: mercado_secundario_ms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mercado_secundario_ms_id_seq OWNED BY public.mercado_secundario.ms_id;


--
-- Name: metodo_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metodo_pago (
    mp_id integer NOT NULL,
    mp_numero character varying(100) NOT NULL,
    cliente_cl_id integer NOT NULL
);


ALTER TABLE public.metodo_pago OWNER TO postgres;

--
-- Name: metodo_pago_mp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.metodo_pago_mp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metodo_pago_mp_id_seq OWNER TO postgres;

--
-- Name: metodo_pago_mp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.metodo_pago_mp_id_seq OWNED BY public.metodo_pago.mp_id;


--
-- Name: orden_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orden_compra (
    oc_id integer NOT NULL,
    oc_total numeric NOT NULL,
    oc_subtotal numeric NOT NULL,
    oc_numero_orden_compra character varying(100) NOT NULL,
    cliente_cl_id integer,
    producto_final_pf_id integer
);


ALTER TABLE public.orden_compra OWNER TO postgres;

--
-- Name: orden_compra_oc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orden_compra_oc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orden_compra_oc_id_seq OWNER TO postgres;

--
-- Name: orden_compra_oc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orden_compra_oc_id_seq OWNED BY public.orden_compra.oc_id;


--
-- Name: pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago (
    pa_monto numeric NOT NULL,
    pa_fecha_hora timestamp without time zone NOT NULL,
    metodo_pago_mp_id integer NOT NULL,
    orden_compra_oc_id integer NOT NULL,
    compra_btc_cbtc_id integer NOT NULL
);


ALTER TABLE public.pago OWNER TO postgres;

--
-- Name: pago_nomina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago_nomina (
    pan_monto numeric NOT NULL,
    empleado_em_id integer NOT NULL,
    pre_nomina_pn_id integer NOT NULL
);


ALTER TABLE public.pago_nomina OWNER TO postgres;

--
-- Name: paypal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paypal (
    mp_id integer NOT NULL,
    pap_correo character varying(100) NOT NULL
);


ALTER TABLE public.paypal OWNER TO postgres;

--
-- Name: pieza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pieza (
    pie_id integer NOT NULL,
    pie_fecha_inicio date NOT NULL,
    pie_fecha_fin date NOT NULL,
    categoria_cat_id integer NOT NULL,
    "diseño_producto_dp_id" integer NOT NULL
);


ALTER TABLE public.pieza OWNER TO postgres;

--
-- Name: pieza_caracteristica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pieza_caracteristica (
    pc_valor character varying(100) NOT NULL,
    caracteristica_car_id integer NOT NULL,
    "caracteristica_diseño_producto_dp_id" integer NOT NULL,
    pieza_pie_id integer NOT NULL,
    pieza_categoria_cat_id integer NOT NULL,
    "pieza_diseño_producto_dp_id" integer NOT NULL
);


ALTER TABLE public.pieza_caracteristica OWNER TO postgres;

--
-- Name: pieza_pie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pieza_pie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pieza_pie_id_seq OWNER TO postgres;

--
-- Name: pieza_pie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pieza_pie_id_seq OWNED BY public.pieza.pie_id;


--
-- Name: pre_nomina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pre_nomina (
    pn_id integer NOT NULL,
    pn_fecha_hora timestamp without time zone NOT NULL,
    pn_total numeric NOT NULL,
    pn_subtotal numeric NOT NULL,
    tabulador_oficial_to_id integer NOT NULL
);


ALTER TABLE public.pre_nomina OWNER TO postgres;

--
-- Name: pre_nomina_pn_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pre_nomina_pn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pre_nomina_pn_id_seq OWNER TO postgres;

--
-- Name: pre_nomina_pn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pre_nomina_pn_id_seq OWNED BY public.pre_nomina.pn_id;


--
-- Name: privilegio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.privilegio (
    pri_id integer NOT NULL,
    pri_nombre character varying(100) NOT NULL,
    pri_descripcion character varying(250) NOT NULL
);


ALTER TABLE public.privilegio OWNER TO postgres;

--
-- Name: privilegio_pri_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.privilegio_pri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.privilegio_pri_id_seq OWNER TO postgres;

--
-- Name: privilegio_pri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.privilegio_pri_id_seq OWNED BY public.privilegio.pri_id;


--
-- Name: producto_final; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto_final (
    pf_id integer NOT NULL,
    pf_nombre character varying(150) NOT NULL,
    pf_era character varying(50) NOT NULL,
    pf_estado character varying(50) NOT NULL,
    exclusividad_producto_ep_id integer NOT NULL,
    lote_produccion_lp_id integer NOT NULL,
    pf_precio_actual numeric DEFAULT 0.00 NOT NULL
);


ALTER TABLE public.producto_final OWNER TO postgres;

--
-- Name: producto_final_pf_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_final_pf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_final_pf_id_seq OWNER TO postgres;

--
-- Name: producto_final_pf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_final_pf_id_seq OWNED BY public.producto_final.pf_id;


--
-- Name: profesion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesion (
    prof_id integer NOT NULL,
    prof_nombre character varying(100) NOT NULL,
    prof_descripcion character varying(250) NOT NULL
);


ALTER TABLE public.profesion OWNER TO postgres;

--
-- Name: profesion_prof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesion_prof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profesion_prof_id_seq OWNER TO postgres;

--
-- Name: profesion_prof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesion_prof_id_seq OWNED BY public.profesion.prof_id;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    prov_id integer NOT NULL,
    prov_nombre character varying(100) NOT NULL,
    prov_direccion character varying(250) NOT NULL
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- Name: proveedor_material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor_material (
    proveedor_prov_id integer NOT NULL,
    material_m_id integer NOT NULL,
    pmat_id integer NOT NULL
);


ALTER TABLE public.proveedor_material OWNER TO postgres;

--
-- Name: proveedor_material_pmat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.proveedor_material ALTER COLUMN pmat_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.proveedor_material_pmat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: proveedor_prov_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedor_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedor_prov_id_seq OWNER TO postgres;

--
-- Name: proveedor_prov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedor_prov_id_seq OWNED BY public.proveedor.prov_id;


--
-- Name: prueba_calidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prueba_calidad (
    control_calidad_cc_id integer NOT NULL,
    defecto_calidad_dc_id integer NOT NULL
);


ALTER TABLE public.prueba_calidad OWNER TO postgres;

--
-- Name: puja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.puja (
    pu_id integer NOT NULL,
    pu_fecha_hora_milisegundo timestamp without time zone NOT NULL,
    pu_monto numeric NOT NULL,
    subasta_su_id integer NOT NULL,
    usuario_u_id integer NOT NULL
);


ALTER TABLE public.puja OWNER TO postgres;

--
-- Name: puja_pu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.puja_pu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.puja_pu_id_seq OWNER TO postgres;

--
-- Name: puja_pu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.puja_pu_id_seq OWNED BY public.puja.pu_id;


--
-- Name: responsable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.responsable (
    r_id integer NOT NULL,
    r_fecha_inicio date,
    r_fecha_fin date,
    empleado_em_id integer,
    fase_post_venta_fpv_id integer,
    fase_post_venta_pf_id integer,
    cargo_car_id integer,
    fase_operativa_fo_id integer,
    fase_operativa_lote_produccion_lp_id integer,
    fase_operativa_fase_f_id integer,
    fase_post_venta_f_id integer,
    fase_diseno_fd_id integer,
    fase_diseno_fase_f_id integer,
    fase_post_venta_fc_id integer,
    fase_compra_fc_id integer,
    fase_logistica_fl_id integer,
    fase_logistica_fase_f_id integer,
    fase_logistica_desbtb_id integer,
    fase_logistica_desbtc_id integer,
    fase_diseno_dp_id integer
);


ALTER TABLE public.responsable OWNER TO postgres;

--
-- Name: responsable_r_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.responsable_r_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.responsable_r_id_seq OWNER TO postgres;

--
-- Name: responsable_r_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.responsable_r_id_seq OWNED BY public.responsable.r_id;


--
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    r_id integer NOT NULL,
    r_nombre character varying(50) NOT NULL,
    r_descripcion character varying(250) NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- Name: rol_privilegio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol_privilegio (
    rol_r_id integer NOT NULL,
    privilegio_pri_id integer NOT NULL
);


ALTER TABLE public.rol_privilegio OWNER TO postgres;

--
-- Name: rol_r_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_r_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_r_id_seq OWNER TO postgres;

--
-- Name: rol_r_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_r_id_seq OWNED BY public.rol.r_id;


--
-- Name: sede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sede (
    s_id integer NOT NULL,
    s_nombre character varying(100) NOT NULL,
    s_direccion character varying(250) NOT NULL,
    lugar_l_id integer NOT NULL
);


ALTER TABLE public.sede OWNER TO postgres;

--
-- Name: sede_s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sede_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sede_s_id_seq OWNER TO postgres;

--
-- Name: sede_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sede_s_id_seq OWNED BY public.sede.s_id;


--
-- Name: subasta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subasta (
    su_id integer NOT NULL,
    su_precio_base numeric NOT NULL,
    su_fecha_hora_inicio timestamp without time zone NOT NULL,
    su_fecha_hora_cierre timestamp without time zone NOT NULL,
    producto_final_pf_id integer NOT NULL
);


ALTER TABLE public.subasta OWNER TO postgres;

--
-- Name: subasta_su_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subasta_su_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subasta_su_id_seq OWNER TO postgres;

--
-- Name: subasta_su_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subasta_su_id_seq OWNED BY public.subasta.su_id;


--
-- Name: tabulador_oficial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tabulador_oficial (
    to_id integer NOT NULL,
    to_sueldo_base_rol numeric NOT NULL,
    to_rol character varying(100) NOT NULL
);


ALTER TABLE public.tabulador_oficial OWNER TO postgres;

--
-- Name: tabulador_oficial_to_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tabulador_oficial_to_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tabulador_oficial_to_id_seq OWNER TO postgres;

--
-- Name: tabulador_oficial_to_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tabulador_oficial_to_id_seq OWNED BY public.tabulador_oficial.to_id;


--
-- Name: tarjeta_credito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarjeta_credito (
    mp_id integer NOT NULL,
    tc_fecha_vencimiento character varying(10) NOT NULL,
    tc_tipo character varying(50) NOT NULL
);


ALTER TABLE public.tarjeta_credito OWNER TO postgres;

--
-- Name: tarjeta_debito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarjeta_debito (
    mp_id integer NOT NULL,
    td_tipo_cuenta character varying(50) NOT NULL
);


ALTER TABLE public.tarjeta_debito OWNER TO postgres;

--
-- Name: transferencia_bancaria_internacional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transferencia_bancaria_internacional (
    mp_id integer NOT NULL,
    tbi_nombre character varying(100) NOT NULL,
    tbi_codigo_swift character varying(11) NOT NULL
);


ALTER TABLE public.transferencia_bancaria_internacional OWNER TO postgres;

--
-- Name: transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transportista (
    t_id integer NOT NULL,
    t_p_nombre character varying(50) NOT NULL,
    t_s_nombre character varying(50),
    t_p_apellido character varying(50) NOT NULL,
    t_s_apellido character varying(50) NOT NULL
);


ALTER TABLE public.transportista OWNER TO postgres;

--
-- Name: transportista_t_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transportista_t_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transportista_t_id_seq OWNER TO postgres;

--
-- Name: transportista_t_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transportista_t_id_seq OWNED BY public.transportista.t_id;


--
-- Name: turno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turno (
    tu_id integer NOT NULL,
    tu_dia character varying(15) NOT NULL,
    tu_hora_inicio timestamp without time zone NOT NULL,
    tu_hora_fin timestamp without time zone NOT NULL
);


ALTER TABLE public.turno OWNER TO postgres;

--
-- Name: turno_tu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.turno_tu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.turno_tu_id_seq OWNER TO postgres;

--
-- Name: turno_tu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.turno_tu_id_seq OWNED BY public.turno.tu_id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    u_id integer NOT NULL,
    "u_contraseña" character varying(100) NOT NULL,
    u_nombre character varying(100) NOT NULL,
    rol_r_id integer NOT NULL,
    cliente_cl_id integer,
    empleado_em_id integer,
    CONSTRAINT arc_usuario_exclusivo CHECK ((((cliente_cl_id IS NOT NULL) AND (empleado_em_id IS NULL)) OR ((cliente_cl_id IS NULL) AND (empleado_em_id IS NOT NULL))))
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_u_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_u_id_seq OWNER TO postgres;

--
-- Name: usuario_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_u_id_seq OWNED BY public.usuario.u_id;


--
-- Name: vinculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vinculo (
    vi_id integer NOT NULL,
    vi_nombre character varying(100) NOT NULL,
    vi_descripcion character varying(250) NOT NULL,
    producto_final_pf_id integer NOT NULL,
    producto_final_pf_id2 integer NOT NULL
);


ALTER TABLE public.vinculo OWNER TO postgres;

--
-- Name: vinculo_vi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vinculo_vi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vinculo_vi_id_seq OWNER TO postgres;

--
-- Name: vinculo_vi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vinculo_vi_id_seq OWNED BY public.vinculo.vi_id;


--
-- Name: messages; Type: TABLE; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    binary_payload bytea
)
PARTITION BY RANGE (inserted_at);


ALTER TABLE realtime.messages OWNER TO supabase_realtime_admin;

--
-- Name: schema_migrations; Type: TABLE; Schema: realtime; Owner: supabase_admin
--

CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);


ALTER TABLE realtime.schema_migrations OWNER TO supabase_admin;

--
-- Name: subscription; Type: TABLE; Schema: realtime; Owner: supabase_admin
--

CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    action_filter text DEFAULT '*'::text,
    selected_columns text[],
    CONSTRAINT subscription_action_filter_check CHECK ((action_filter = ANY (ARRAY['*'::text, 'INSERT'::text, 'UPDATE'::text, 'DELETE'::text])))
);


ALTER TABLE realtime.subscription OWNER TO supabase_admin;

--
-- Name: subscription_id_seq; Type: SEQUENCE; Schema: realtime; Owner: supabase_admin
--

ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: buckets; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text,
    type storage.buckettype DEFAULT 'STANDARD'::storage.buckettype NOT NULL
);


ALTER TABLE storage.buckets OWNER TO supabase_storage_admin;

--
-- Name: COLUMN buckets.owner; Type: COMMENT; Schema: storage; Owner: supabase_storage_admin
--

COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';


--
-- Name: buckets_analytics; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.buckets_analytics (
    name text NOT NULL,
    type storage.buckettype DEFAULT 'ANALYTICS'::storage.buckettype NOT NULL,
    format text DEFAULT 'ICEBERG'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    deleted_at timestamp with time zone
);


ALTER TABLE storage.buckets_analytics OWNER TO supabase_storage_admin;

--
-- Name: buckets_vectors; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.buckets_vectors (
    id text NOT NULL,
    type storage.buckettype DEFAULT 'VECTOR'::storage.buckettype NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE storage.buckets_vectors OWNER TO supabase_storage_admin;

--
-- Name: migrations; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE storage.migrations OWNER TO supabase_storage_admin;

--
-- Name: objects; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);


ALTER TABLE storage.objects OWNER TO supabase_storage_admin;

--
-- Name: COLUMN objects.owner; Type: COMMENT; Schema: storage; Owner: supabase_storage_admin
--

COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';


--
-- Name: s3_multipart_uploads; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb,
    metadata jsonb
);


ALTER TABLE storage.s3_multipart_uploads OWNER TO supabase_storage_admin;

--
-- Name: s3_multipart_uploads_parts; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE storage.s3_multipart_uploads_parts OWNER TO supabase_storage_admin;

--
-- Name: vector_indexes; Type: TABLE; Schema: storage; Owner: supabase_storage_admin
--

CREATE TABLE storage.vector_indexes (
    id text DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL COLLATE pg_catalog."C",
    bucket_id text NOT NULL,
    data_type text NOT NULL,
    dimension integer NOT NULL,
    distance_metric text NOT NULL,
    metadata_configuration jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE storage.vector_indexes OWNER TO supabase_storage_admin;

--
-- Name: refresh_tokens id; Type: DEFAULT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);


--
-- Name: asistencia a_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asistencia ALTER COLUMN a_id SET DEFAULT nextval('public.asistencia_a_id_seq'::regclass);


--
-- Name: bloqueo b_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloqueo ALTER COLUMN b_id SET DEFAULT nextval('public.bloqueo_b_id_seq'::regclass);


--
-- Name: caracteristica car_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica ALTER COLUMN car_id SET DEFAULT nextval('public.caracteristica_car_id_seq'::regclass);


--
-- Name: caracteristica_compatibilidad carcom_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica_compatibilidad ALTER COLUMN carcom_id SET DEFAULT nextval('public.caracteristica_compatibilidad_carcom_id_seq'::regclass);


--
-- Name: cargo car_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo ALTER COLUMN car_id SET DEFAULT nextval('public.cargo_car_id_seq'::regclass);


--
-- Name: categoria cat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN cat_id SET DEFAULT nextval('public.categoria_cat_id_seq'::regclass);


--
-- Name: cliente cl_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN cl_id SET DEFAULT nextval('public.cliente_cl_id_seq'::regclass);


--
-- Name: compatibilidad comp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compatibilidad ALTER COLUMN comp_id SET DEFAULT nextval('public.compatibilidad_comp_id_seq'::regclass);


--
-- Name: compra_btc cbtc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra_btc ALTER COLUMN cbtc_id SET DEFAULT nextval('public.compra_btc_cbtc_id_seq'::regclass);


--
-- Name: control_calidad cc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.control_calidad ALTER COLUMN cc_id SET DEFAULT nextval('public.control_calidad_cc_id_seq'::regclass);


--
-- Name: courier cou_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier ALTER COLUMN cou_id SET DEFAULT nextval('public.courier_cou_id_seq'::regclass);


--
-- Name: defecto_calidad dc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defecto_calidad ALTER COLUMN dc_id SET DEFAULT nextval('public.defecto_calidad_dc_id_seq'::regclass);


--
-- Name: departamento de_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento ALTER COLUMN de_id SET DEFAULT nextval('public.departamento_de_id_seq'::regclass);


--
-- Name: despacho_btb desbtb_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btb ALTER COLUMN desbtb_id SET DEFAULT nextval('public.despacho_btb_desbtb_id_seq'::regclass);


--
-- Name: despacho_btc desbtc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btc ALTER COLUMN desbtc_id SET DEFAULT nextval('public.despacho_btc_desbtc_id_seq'::regclass);


--
-- Name: diseño_producto dp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."diseño_producto" ALTER COLUMN dp_id SET DEFAULT nextval('public."diseño_producto_dp_id_seq"'::regclass);


--
-- Name: empleado em_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN em_id SET DEFAULT nextval('public.empleado_em_id_seq'::regclass);


--
-- Name: envio e_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio ALTER COLUMN e_id SET DEFAULT nextval('public.envio_e_id_seq'::regclass);


--
-- Name: estado est_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN est_id SET DEFAULT nextval('public.estado_est_id_seq'::regclass);


--
-- Name: exclusividad_producto ep_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exclusividad_producto ALTER COLUMN ep_id SET DEFAULT nextval('public.exclusividad_producto_ep_id_seq'::regclass);


--
-- Name: fase f_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase ALTER COLUMN f_id SET DEFAULT nextval('public.fase_f_id_seq'::regclass);


--
-- Name: fase_compra fc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_compra ALTER COLUMN fc_id SET DEFAULT nextval('public.fase_compra_fc_id_seq'::regclass);


--
-- Name: fase_diseno fd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_diseno ALTER COLUMN fd_id SET DEFAULT nextval('public.fase_diseno_fd_id_seq'::regclass);


--
-- Name: fase_logistica fl_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_logistica ALTER COLUMN fl_id SET DEFAULT nextval('public.fase_logistica_fl_id_seq'::regclass);


--
-- Name: fase_operativa fo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_operativa ALTER COLUMN fo_id SET DEFAULT nextval('public.fase_operativa_fo_id_seq'::regclass);


--
-- Name: fase_post_venta fpv_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_post_venta ALTER COLUMN fpv_id SET DEFAULT nextval('public.fase_post_venta_fpv_id_seq'::regclass);


--
-- Name: historico_empleado hem_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_empleado ALTER COLUMN hem_id SET DEFAULT nextval('public.historico_empleado_hem_id_seq'::regclass);


--
-- Name: historico_orden_compra hoc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_orden_compra ALTER COLUMN hoc_id SET DEFAULT nextval('public.historico_orden_compra_hoc_id_seq'::regclass);


--
-- Name: historico_producto hp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_producto ALTER COLUMN hp_id SET DEFAULT nextval('public.historico_producto_hp_id_seq'::regclass);


--
-- Name: historico_profesion hprof_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_profesion ALTER COLUMN hprof_id SET DEFAULT nextval('public.historico_profesion_hprof_id_seq'::regclass);


--
-- Name: lote_produccion lp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote_produccion ALTER COLUMN lp_id SET DEFAULT nextval('public.lote_produccion_lp_id_seq'::regclass);


--
-- Name: lugar l_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugar ALTER COLUMN l_id SET DEFAULT nextval('public.lugar_l_id_seq'::regclass);


--
-- Name: material m_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material ALTER COLUMN m_id SET DEFAULT nextval('public.material_m_id_seq'::regclass);


--
-- Name: membresia mem_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membresia ALTER COLUMN mem_id SET DEFAULT nextval('public.membresia_mem_id_seq'::regclass);


--
-- Name: mercado_secundario ms_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercado_secundario ALTER COLUMN ms_id SET DEFAULT nextval('public.mercado_secundario_ms_id_seq'::regclass);


--
-- Name: metodo_pago mp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metodo_pago ALTER COLUMN mp_id SET DEFAULT nextval('public.metodo_pago_mp_id_seq'::regclass);


--
-- Name: orden_compra oc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_compra ALTER COLUMN oc_id SET DEFAULT nextval('public.orden_compra_oc_id_seq'::regclass);


--
-- Name: pieza pie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza ALTER COLUMN pie_id SET DEFAULT nextval('public.pieza_pie_id_seq'::regclass);


--
-- Name: pre_nomina pn_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_nomina ALTER COLUMN pn_id SET DEFAULT nextval('public.pre_nomina_pn_id_seq'::regclass);


--
-- Name: privilegio pri_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privilegio ALTER COLUMN pri_id SET DEFAULT nextval('public.privilegio_pri_id_seq'::regclass);


--
-- Name: producto_final pf_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto_final ALTER COLUMN pf_id SET DEFAULT nextval('public.producto_final_pf_id_seq'::regclass);


--
-- Name: profesion prof_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesion ALTER COLUMN prof_id SET DEFAULT nextval('public.profesion_prof_id_seq'::regclass);


--
-- Name: proveedor prov_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN prov_id SET DEFAULT nextval('public.proveedor_prov_id_seq'::regclass);


--
-- Name: puja pu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puja ALTER COLUMN pu_id SET DEFAULT nextval('public.puja_pu_id_seq'::regclass);


--
-- Name: responsable r_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable ALTER COLUMN r_id SET DEFAULT nextval('public.responsable_r_id_seq'::regclass);


--
-- Name: rol r_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN r_id SET DEFAULT nextval('public.rol_r_id_seq'::regclass);


--
-- Name: sede s_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sede ALTER COLUMN s_id SET DEFAULT nextval('public.sede_s_id_seq'::regclass);


--
-- Name: subasta su_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta ALTER COLUMN su_id SET DEFAULT nextval('public.subasta_su_id_seq'::regclass);


--
-- Name: tabulador_oficial to_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tabulador_oficial ALTER COLUMN to_id SET DEFAULT nextval('public.tabulador_oficial_to_id_seq'::regclass);


--
-- Name: transportista t_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportista ALTER COLUMN t_id SET DEFAULT nextval('public.transportista_t_id_seq'::regclass);


--
-- Name: turno tu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turno ALTER COLUMN tu_id SET DEFAULT nextval('public.turno_tu_id_seq'::regclass);


--
-- Name: usuario u_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN u_id SET DEFAULT nextval('public.usuario_u_id_seq'::regclass);


--
-- Name: vinculo vi_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vinculo ALTER COLUMN vi_id SET DEFAULT nextval('public.vinculo_vi_id_seq'::regclass);


--
-- Name: mfa_amr_claims amr_id_pk; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);


--
-- Name: audit_log_entries audit_log_entries_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);


--
-- Name: custom_oauth_providers custom_oauth_providers_identifier_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.custom_oauth_providers
    ADD CONSTRAINT custom_oauth_providers_identifier_key UNIQUE (identifier);


--
-- Name: custom_oauth_providers custom_oauth_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.custom_oauth_providers
    ADD CONSTRAINT custom_oauth_providers_pkey PRIMARY KEY (id);


--
-- Name: flow_state flow_state_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- Name: identities identities_provider_id_provider_unique; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);


--
-- Name: instances instances_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);


--
-- Name: mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);


--
-- Name: mfa_challenges mfa_challenges_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);


--
-- Name: mfa_factors mfa_factors_last_challenged_at_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);


--
-- Name: mfa_factors mfa_factors_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);


--
-- Name: oauth_authorizations oauth_authorizations_authorization_code_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_authorization_code_key UNIQUE (authorization_code);


--
-- Name: oauth_authorizations oauth_authorizations_authorization_id_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_authorization_id_key UNIQUE (authorization_id);


--
-- Name: oauth_authorizations oauth_authorizations_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_pkey PRIMARY KEY (id);


--
-- Name: oauth_client_states oauth_client_states_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_client_states
    ADD CONSTRAINT oauth_client_states_pkey PRIMARY KEY (id);


--
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_consents oauth_consents_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_pkey PRIMARY KEY (id);


--
-- Name: oauth_consents oauth_consents_user_client_unique; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_user_client_unique UNIQUE (user_id, client_id);


--
-- Name: one_time_tokens one_time_tokens_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_token_unique; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);


--
-- Name: saml_providers saml_providers_entity_id_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);


--
-- Name: saml_providers saml_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);


--
-- Name: saml_relay_states saml_relay_states_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sso_domains sso_domains_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);


--
-- Name: sso_providers sso_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: webauthn_challenges webauthn_challenges_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_challenges
    ADD CONSTRAINT webauthn_challenges_pkey PRIMARY KEY (id);


--
-- Name: webauthn_credentials webauthn_credentials_pkey; Type: CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_credentials
    ADD CONSTRAINT webauthn_credentials_pkey PRIMARY KEY (id);


--
-- Name: asignacion_horario asignacion_horario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignacion_horario
    ADD CONSTRAINT asignacion_horario_pk PRIMARY KEY (responsable_r_id, turno_tu_id);


--
-- Name: asistencia asistencia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT asistencia_pk PRIMARY KEY (a_id, empleado_em_id);


--
-- Name: bloqueo bloqueo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloqueo
    ADD CONSTRAINT bloqueo_pk PRIMARY KEY (b_id);


--
-- Name: caracteristica_compatibilidad caracteristica_compatibilidad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica_compatibilidad
    ADD CONSTRAINT caracteristica_compatibilidad_pk PRIMARY KEY (carcom_id, caracteristica_car_id2, "caracteristica_diseño_producto_dp_id2", caracteristica_car_id, "caracteristica_diseño_producto_dp_id");


--
-- Name: caracteristica caracteristica_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica
    ADD CONSTRAINT caracteristica_pk PRIMARY KEY (car_id, "diseño_producto_dp_id");


--
-- Name: cargo cargo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pk PRIMARY KEY (car_id);


--
-- Name: categoria categoria_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pk PRIMARY KEY (cat_id);


--
-- Name: cheque cheque_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheque
    ADD CONSTRAINT cheque_pk PRIMARY KEY (mp_id);


--
-- Name: cliente_b2b cliente_b2b_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_b2b
    ADD CONSTRAINT cliente_b2b_pk PRIMARY KEY (cl_id);


--
-- Name: cliente_b2c cliente_b2c_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_b2c
    ADD CONSTRAINT cliente_b2c_pk PRIMARY KEY (cl_id);


--
-- Name: cliente cliente_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (cl_id);


--
-- Name: compatibilidad compatibilidad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compatibilidad
    ADD CONSTRAINT compatibilidad_pk PRIMARY KEY (comp_id, categoria_cat_id, categoria_cat_id2);


--
-- Name: compra_btc compra_btc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra_btc
    ADD CONSTRAINT compra_btc_pk PRIMARY KEY (cbtc_id);


--
-- Name: control_calidad control_calidad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.control_calidad
    ADD CONSTRAINT control_calidad_pk PRIMARY KEY (cc_id);


--
-- Name: courier courier_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier
    ADD CONSTRAINT courier_pk PRIMARY KEY (cou_id);


--
-- Name: cryptomoneda cryptomoneda_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cryptomoneda
    ADD CONSTRAINT cryptomoneda_pk PRIMARY KEY (mp_id);


--
-- Name: defecto_calidad defecto_calidad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defecto_calidad
    ADD CONSTRAINT defecto_calidad_pk PRIMARY KEY (dc_id);


--
-- Name: departamento departamento_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pk PRIMARY KEY (de_id);


--
-- Name: despacho_btb despacho_btb_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btb
    ADD CONSTRAINT despacho_btb_pk PRIMARY KEY (desbtb_id);


--
-- Name: despacho_btc despacho_btc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btc
    ADD CONSTRAINT despacho_btc_pk PRIMARY KEY (desbtc_id);


--
-- Name: diseño_producto diseño_producto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."diseño_producto"
    ADD CONSTRAINT "diseño_producto_pk" PRIMARY KEY (dp_id);


--
-- Name: empleado empleado_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pk PRIMARY KEY (em_id);


--
-- Name: envio envio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio
    ADD CONSTRAINT envio_pk PRIMARY KEY (e_id);


--
-- Name: estado_compra_btc estado_compra_btc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_compra_btc
    ADD CONSTRAINT estado_compra_btc_pk PRIMARY KEY (estado_est_id, compra_btc_cbtc_id);


--
-- Name: estado_despacho_btb estado_despacho_btb_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_despacho_btb
    ADD CONSTRAINT estado_despacho_btb_pk PRIMARY KEY (estado_est_id, despacho_btb_desbtb_id);


--
-- Name: estado_despacho_btc estado_despacho_btc_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_despacho_btc
    ADD CONSTRAINT estado_despacho_btc_pk PRIMARY KEY (despacho_btc_desbtc_id, estado_est_id);


--
-- Name: estado_envio estado_envio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_envio
    ADD CONSTRAINT estado_envio_pk PRIMARY KEY (envio_e_id, estado_est_id);


--
-- Name: estado_orden_compra estado_orden_compra_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_orden_compra
    ADD CONSTRAINT estado_orden_compra_pk PRIMARY KEY (estado_est_id, orden_compra_oc_id, eoc_fecha_cambio);


--
-- Name: estado estado_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pk PRIMARY KEY (est_id);


--
-- Name: exclusividad_producto exclusividad_producto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exclusividad_producto
    ADD CONSTRAINT exclusividad_producto_pk PRIMARY KEY (ep_id);


--
-- Name: fase_compra fase_compra_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_compra
    ADD CONSTRAINT fase_compra_pk PRIMARY KEY (fc_id);


--
-- Name: fase_diseno fase_diseno_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_diseno
    ADD CONSTRAINT fase_diseno_pk PRIMARY KEY (fd_id, fase_f_id, "diseño_producto_dp_id");


--
-- Name: fase_logistica fase_logistica_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_logistica
    ADD CONSTRAINT fase_logistica_pk PRIMARY KEY (fl_id);


--
-- Name: fase_operativa fase_operativa_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_operativa
    ADD CONSTRAINT fase_operativa_pk PRIMARY KEY (fo_id, lote_produccion_lp_id, fase_f_id);


--
-- Name: fase fase_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase
    ADD CONSTRAINT fase_pk PRIMARY KEY (f_id);


--
-- Name: fase_post_venta fase_post_venta_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_post_venta
    ADD CONSTRAINT fase_post_venta_pk PRIMARY KEY (fpv_id, producto_final_pf_id, fase_f_id, fase_compra_fc_id);


--
-- Name: historico_empleado historico_empleado_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_empleado
    ADD CONSTRAINT historico_empleado_pk PRIMARY KEY (hem_id, empleado_em_id, departamento_de_id);


--
-- Name: historico_orden_compra historico_orden_compra_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_orden_compra
    ADD CONSTRAINT historico_orden_compra_pk PRIMARY KEY (hoc_id, orden_compra_oc_id);


--
-- Name: historico_producto historico_producto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_producto
    ADD CONSTRAINT historico_producto_pk PRIMARY KEY (hp_id, producto_final_pf_id);


--
-- Name: historico_profesion historico_profesion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_profesion
    ADD CONSTRAINT historico_profesion_pk PRIMARY KEY (hprof_id, "diseño_producto_dp_id", profesion_prof_id);


--
-- Name: lote_produccion lote_produccion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote_produccion
    ADD CONSTRAINT lote_produccion_pk PRIMARY KEY (lp_id);


--
-- Name: lugar lugar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugar
    ADD CONSTRAINT lugar_pk PRIMARY KEY (l_id);


--
-- Name: material material_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pk PRIMARY KEY (m_id);


--
-- Name: membresia membresia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membresia
    ADD CONSTRAINT membresia_pk PRIMARY KEY (mem_id);


--
-- Name: mercado_secundario mercado_secundario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercado_secundario
    ADD CONSTRAINT mercado_secundario_pk PRIMARY KEY (ms_id);


--
-- Name: metodo_pago metodo_pago_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metodo_pago
    ADD CONSTRAINT metodo_pago_pk PRIMARY KEY (mp_id);


--
-- Name: orden_compra orden_compra_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_compra
    ADD CONSTRAINT orden_compra_pk PRIMARY KEY (oc_id);


--
-- Name: pago_nomina pago_nomina_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_nomina
    ADD CONSTRAINT pago_nomina_pk PRIMARY KEY (empleado_em_id, pre_nomina_pn_id);


--
-- Name: pago pago_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pk PRIMARY KEY (metodo_pago_mp_id, orden_compra_oc_id, compra_btc_cbtc_id);


--
-- Name: paypal paypal_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paypal
    ADD CONSTRAINT paypal_pk PRIMARY KEY (mp_id);


--
-- Name: pieza_caracteristica pieza_caracteristica_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza_caracteristica
    ADD CONSTRAINT pieza_caracteristica_pk PRIMARY KEY (caracteristica_car_id, "caracteristica_diseño_producto_dp_id", pieza_pie_id, pieza_categoria_cat_id, "pieza_diseño_producto_dp_id");


--
-- Name: pieza pieza_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza
    ADD CONSTRAINT pieza_pk PRIMARY KEY (pie_id, categoria_cat_id, "diseño_producto_dp_id");


--
-- Name: pre_nomina pre_nomina_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_nomina
    ADD CONSTRAINT pre_nomina_pk PRIMARY KEY (pn_id);


--
-- Name: privilegio privilegio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.privilegio
    ADD CONSTRAINT privilegio_pk PRIMARY KEY (pri_id);


--
-- Name: producto_final producto_final_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto_final
    ADD CONSTRAINT producto_final_pk PRIMARY KEY (pf_id);


--
-- Name: profesion profesion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesion
    ADD CONSTRAINT profesion_pk PRIMARY KEY (prof_id);


--
-- Name: proveedor_material proveedor_material_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_material
    ADD CONSTRAINT proveedor_material_pk PRIMARY KEY (proveedor_prov_id, material_m_id);


--
-- Name: proveedor_material proveedor_material_pmat_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_material
    ADD CONSTRAINT proveedor_material_pmat_id_unique UNIQUE (pmat_id);


--
-- Name: proveedor proveedor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pk PRIMARY KEY (prov_id);


--
-- Name: prueba_calidad prueba_calidad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prueba_calidad
    ADD CONSTRAINT prueba_calidad_pk PRIMARY KEY (control_calidad_cc_id, defecto_calidad_dc_id);


--
-- Name: puja puja_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puja
    ADD CONSTRAINT puja_pk PRIMARY KEY (pu_id, subasta_su_id, usuario_u_id);


--
-- Name: responsable responsable_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_pk PRIMARY KEY (r_id);


--
-- Name: rol rol_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pk PRIMARY KEY (r_id);


--
-- Name: rol_privilegio rol_privilegio_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_privilegio
    ADD CONSTRAINT rol_privilegio_pk PRIMARY KEY (rol_r_id, privilegio_pri_id);


--
-- Name: sede sede_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sede
    ADD CONSTRAINT sede_pk PRIMARY KEY (s_id, lugar_l_id);


--
-- Name: subasta subasta_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta
    ADD CONSTRAINT subasta_pk PRIMARY KEY (su_id);


--
-- Name: tabulador_oficial tabulador_oficial_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tabulador_oficial
    ADD CONSTRAINT tabulador_oficial_pk PRIMARY KEY (to_id);


--
-- Name: tarjeta_credito tarjeta_credito_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarjeta_credito
    ADD CONSTRAINT tarjeta_credito_pk PRIMARY KEY (mp_id);


--
-- Name: tarjeta_debito tarjeta_debito_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarjeta_debito
    ADD CONSTRAINT tarjeta_debito_pk PRIMARY KEY (mp_id);


--
-- Name: transferencia_bancaria_internacional transferencia_bancaria_internacional_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transferencia_bancaria_internacional
    ADD CONSTRAINT transferencia_bancaria_internacional_pk PRIMARY KEY (mp_id);


--
-- Name: transportista transportista_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportista
    ADD CONSTRAINT transportista_pk PRIMARY KEY (t_id);


--
-- Name: turno turno_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT turno_pk PRIMARY KEY (tu_id);


--
-- Name: usuario usuario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (u_id);


--
-- Name: vinculo vinculo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vinculo
    ADD CONSTRAINT vinculo_pk PRIMARY KEY (vi_id, producto_final_pf_id, producto_final_pf_id2);


--
-- Name: messages messages_payload_exclusive; Type: CHECK CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE realtime.messages
    ADD CONSTRAINT messages_payload_exclusive CHECK (((payload IS NULL) OR (binary_payload IS NULL))) NOT VALID;


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: subscription pk_subscription; Type: CONSTRAINT; Schema: realtime; Owner: supabase_admin
--

ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: realtime; Owner: supabase_admin
--

ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: buckets_analytics buckets_analytics_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.buckets_analytics
    ADD CONSTRAINT buckets_analytics_pkey PRIMARY KEY (id);


--
-- Name: buckets buckets_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);


--
-- Name: buckets_vectors buckets_vectors_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.buckets_vectors
    ADD CONSTRAINT buckets_vectors_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_name_key; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: objects objects_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);


--
-- Name: s3_multipart_uploads s3_multipart_uploads_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);


--
-- Name: vector_indexes vector_indexes_pkey; Type: CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.vector_indexes
    ADD CONSTRAINT vector_indexes_pkey PRIMARY KEY (id);


--
-- Name: audit_logs_instance_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);


--
-- Name: confirmation_token_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: custom_oauth_providers_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_created_at_idx ON auth.custom_oauth_providers USING btree (created_at);


--
-- Name: custom_oauth_providers_enabled_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_enabled_idx ON auth.custom_oauth_providers USING btree (enabled);


--
-- Name: custom_oauth_providers_identifier_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_identifier_idx ON auth.custom_oauth_providers USING btree (identifier);


--
-- Name: custom_oauth_providers_provider_type_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX custom_oauth_providers_provider_type_idx ON auth.custom_oauth_providers USING btree (provider_type);


--
-- Name: email_change_token_current_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);


--
-- Name: email_change_token_new_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);


--
-- Name: factor_id_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);


--
-- Name: flow_state_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);


--
-- Name: identities_email_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);


--
-- Name: INDEX identities_email_idx; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';


--
-- Name: identities_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);


--
-- Name: idx_auth_code; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);


--
-- Name: idx_oauth_client_states_created_at; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_oauth_client_states_created_at ON auth.oauth_client_states USING btree (created_at);


--
-- Name: idx_user_id_auth_method; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);


--
-- Name: idx_users_created_at_desc; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_created_at_desc ON auth.users USING btree (created_at DESC);


--
-- Name: idx_users_email; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_email ON auth.users USING btree (email);


--
-- Name: idx_users_last_sign_in_at_desc; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_last_sign_in_at_desc ON auth.users USING btree (last_sign_in_at DESC);


--
-- Name: idx_users_name; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX idx_users_name ON auth.users USING btree (((raw_user_meta_data ->> 'name'::text))) WHERE ((raw_user_meta_data ->> 'name'::text) IS NOT NULL);


--
-- Name: mfa_challenge_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);


--
-- Name: mfa_factors_user_friendly_name_unique; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);


--
-- Name: mfa_factors_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);


--
-- Name: oauth_auth_pending_exp_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_auth_pending_exp_idx ON auth.oauth_authorizations USING btree (expires_at) WHERE (status = 'pending'::auth.oauth_authorization_status);


--
-- Name: oauth_clients_deleted_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_clients_deleted_at_idx ON auth.oauth_clients USING btree (deleted_at);


--
-- Name: oauth_consents_active_client_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_consents_active_client_idx ON auth.oauth_consents USING btree (client_id) WHERE (revoked_at IS NULL);


--
-- Name: oauth_consents_active_user_client_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_consents_active_user_client_idx ON auth.oauth_consents USING btree (user_id, client_id) WHERE (revoked_at IS NULL);


--
-- Name: oauth_consents_user_order_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX oauth_consents_user_order_idx ON auth.oauth_consents USING btree (user_id, granted_at DESC);


--
-- Name: one_time_tokens_relates_to_hash_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);


--
-- Name: one_time_tokens_token_hash_hash_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);


--
-- Name: one_time_tokens_user_id_token_type_key; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);


--
-- Name: reauthentication_token_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: recovery_token_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: refresh_tokens_instance_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);


--
-- Name: refresh_tokens_instance_id_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);


--
-- Name: refresh_tokens_parent_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);


--
-- Name: refresh_tokens_session_id_revoked_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);


--
-- Name: refresh_tokens_updated_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);


--
-- Name: saml_providers_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);


--
-- Name: saml_relay_states_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);


--
-- Name: saml_relay_states_for_email_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);


--
-- Name: saml_relay_states_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);


--
-- Name: sessions_not_after_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);


--
-- Name: sessions_oauth_client_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sessions_oauth_client_id_idx ON auth.sessions USING btree (oauth_client_id);


--
-- Name: sessions_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);


--
-- Name: sso_domains_domain_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));


--
-- Name: sso_domains_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);


--
-- Name: sso_providers_resource_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));


--
-- Name: sso_providers_resource_id_pattern_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX sso_providers_resource_id_pattern_idx ON auth.sso_providers USING btree (resource_id text_pattern_ops);


--
-- Name: unique_phone_factor_per_user; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);


--
-- Name: user_id_created_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);


--
-- Name: users_email_partial_key; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);


--
-- Name: INDEX users_email_partial_key; Type: COMMENT; Schema: auth; Owner: supabase_auth_admin
--

COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';


--
-- Name: users_instance_id_email_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));


--
-- Name: users_instance_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);


--
-- Name: users_is_anonymous_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);


--
-- Name: webauthn_challenges_expires_at_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX webauthn_challenges_expires_at_idx ON auth.webauthn_challenges USING btree (expires_at);


--
-- Name: webauthn_challenges_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX webauthn_challenges_user_id_idx ON auth.webauthn_challenges USING btree (user_id);


--
-- Name: webauthn_credentials_credential_id_key; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE UNIQUE INDEX webauthn_credentials_credential_id_key ON auth.webauthn_credentials USING btree (credential_id);


--
-- Name: webauthn_credentials_user_id_idx; Type: INDEX; Schema: auth; Owner: supabase_auth_admin
--

CREATE INDEX webauthn_credentials_user_id_idx ON auth.webauthn_credentials USING btree (user_id);


--
-- Name: cliente__idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX cliente__idx ON public.cliente USING btree (membresia_mem_id);


--
-- Name: membresia__idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX membresia__idx ON public.membresia USING btree (cliente_cl_id);


--
-- Name: ix_realtime_subscription_entity; Type: INDEX; Schema: realtime; Owner: supabase_admin
--

CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING btree (entity);


--
-- Name: messages_inserted_at_topic_index; Type: INDEX; Schema: realtime; Owner: supabase_realtime_admin
--

CREATE INDEX messages_inserted_at_topic_index ON ONLY realtime.messages USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: subscription_subscription_id_entity_filters_action_filter_selec; Type: INDEX; Schema: realtime; Owner: supabase_admin
--

CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_action_filter_selec ON realtime.subscription USING btree (subscription_id, entity, filters, action_filter, COALESCE(selected_columns, '{}'::text[]));


--
-- Name: bname; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);


--
-- Name: bucketid_objname; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);


--
-- Name: buckets_analytics_unique_name_idx; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX buckets_analytics_unique_name_idx ON storage.buckets_analytics USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: idx_multipart_uploads_list; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);


--
-- Name: idx_objects_bucket_id_name; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");


--
-- Name: idx_objects_bucket_id_name_lower; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX idx_objects_bucket_id_name_lower ON storage.objects USING btree (bucket_id, lower(name) COLLATE "C");


--
-- Name: name_prefix_search; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);


--
-- Name: vector_indexes_name_bucket_id_idx; Type: INDEX; Schema: storage; Owner: supabase_storage_admin
--

CREATE UNIQUE INDEX vector_indexes_name_bucket_id_idx ON storage.vector_indexes USING btree (name, bucket_id);


--
-- Name: subscription tr_check_filters; Type: TRIGGER; Schema: realtime; Owner: supabase_admin
--

CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();


--
-- Name: buckets enforce_bucket_name_length_trigger; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER enforce_bucket_name_length_trigger BEFORE INSERT OR UPDATE OF name ON storage.buckets FOR EACH ROW EXECUTE FUNCTION storage.enforce_bucket_name_length();


--
-- Name: buckets protect_buckets_delete; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER protect_buckets_delete BEFORE DELETE ON storage.buckets FOR EACH STATEMENT EXECUTE FUNCTION storage.protect_delete();


--
-- Name: objects protect_objects_delete; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER protect_objects_delete BEFORE DELETE ON storage.objects FOR EACH STATEMENT EXECUTE FUNCTION storage.protect_delete();


--
-- Name: objects update_objects_updated_at; Type: TRIGGER; Schema: storage; Owner: supabase_storage_admin
--

CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();


--
-- Name: identities identities_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: mfa_amr_claims mfa_amr_claims_session_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;


--
-- Name: mfa_challenges mfa_challenges_auth_factor_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;


--
-- Name: mfa_factors mfa_factors_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: oauth_authorizations oauth_authorizations_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_client_id_fkey FOREIGN KEY (client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_authorizations oauth_authorizations_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: oauth_consents oauth_consents_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_client_id_fkey FOREIGN KEY (client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_consents oauth_consents_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: one_time_tokens one_time_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: refresh_tokens refresh_tokens_session_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;


--
-- Name: saml_providers saml_providers_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: saml_relay_states saml_relay_states_flow_state_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;


--
-- Name: saml_relay_states saml_relay_states_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: sessions sessions_oauth_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_oauth_client_id_fkey FOREIGN KEY (oauth_client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: sso_domains sso_domains_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: webauthn_challenges webauthn_challenges_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_challenges
    ADD CONSTRAINT webauthn_challenges_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: webauthn_credentials webauthn_credentials_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE ONLY auth.webauthn_credentials
    ADD CONSTRAINT webauthn_credentials_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: asignacion_horario asignacion_horario_responsable_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignacion_horario
    ADD CONSTRAINT asignacion_horario_responsable_fk FOREIGN KEY (responsable_r_id) REFERENCES public.responsable(r_id);


--
-- Name: asignacion_horario asignacion_horario_turno_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignacion_horario
    ADD CONSTRAINT asignacion_horario_turno_fk FOREIGN KEY (turno_tu_id) REFERENCES public.turno(tu_id);


--
-- Name: asistencia asistencia_empleado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT asistencia_empleado_fk FOREIGN KEY (empleado_em_id) REFERENCES public.empleado(em_id);


--
-- Name: bloqueo bloqueo_cl_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloqueo
    ADD CONSTRAINT bloqueo_cl_id_fkey FOREIGN KEY (cl_id) REFERENCES public.cliente(cl_id) ON DELETE CASCADE;


--
-- Name: caracteristica_compatibilidad caracteristica_compatibilidad_caracteristica_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica_compatibilidad
    ADD CONSTRAINT caracteristica_compatibilidad_caracteristica_fk FOREIGN KEY (caracteristica_car_id, "caracteristica_diseño_producto_dp_id") REFERENCES public.caracteristica(car_id, "diseño_producto_dp_id");


--
-- Name: caracteristica_compatibilidad caracteristica_compatibilidad_caracteristica_fkv2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica_compatibilidad
    ADD CONSTRAINT caracteristica_compatibilidad_caracteristica_fkv2 FOREIGN KEY (caracteristica_car_id2, "caracteristica_diseño_producto_dp_id2") REFERENCES public.caracteristica(car_id, "diseño_producto_dp_id");


--
-- Name: caracteristica caracteristica_diseño_producto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica
    ADD CONSTRAINT "caracteristica_diseño_producto_fk" FOREIGN KEY ("diseño_producto_dp_id") REFERENCES public."diseño_producto"(dp_id);


--
-- Name: categoria categoria_categoria_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_categoria_fk FOREIGN KEY (categoria_cat_id) REFERENCES public.categoria(cat_id);


--
-- Name: cheque cheque_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheque
    ADD CONSTRAINT cheque_metodo_pago_fk FOREIGN KEY (mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: cliente_b2b cliente_b2b_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_b2b
    ADD CONSTRAINT cliente_b2b_cliente_fk FOREIGN KEY (cl_id) REFERENCES public.cliente(cl_id);


--
-- Name: cliente_b2c cliente_b2c_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_b2c
    ADD CONSTRAINT cliente_b2c_cliente_fk FOREIGN KEY (cl_id) REFERENCES public.cliente(cl_id);


--
-- Name: cliente cliente_l_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_l_id_fkey FOREIGN KEY (l_id) REFERENCES public.lugar(l_id) ON DELETE SET NULL;


--
-- Name: cliente cliente_membresia_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_membresia_fk FOREIGN KEY (membresia_mem_id) REFERENCES public.membresia(mem_id);


--
-- Name: compatibilidad compatibilidad_categoria_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compatibilidad
    ADD CONSTRAINT compatibilidad_categoria_fk FOREIGN KEY (categoria_cat_id) REFERENCES public.categoria(cat_id);


--
-- Name: compatibilidad compatibilidad_categoria_fkv2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compatibilidad
    ADD CONSTRAINT compatibilidad_categoria_fkv2 FOREIGN KEY (categoria_cat_id2) REFERENCES public.categoria(cat_id);


--
-- Name: control_calidad control_calidad_lote_produccion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.control_calidad
    ADD CONSTRAINT control_calidad_lote_produccion_fk FOREIGN KEY (lote_produccion_lp_id) REFERENCES public.lote_produccion(lp_id);


--
-- Name: cryptomoneda cryptomoneda_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cryptomoneda
    ADD CONSTRAINT cryptomoneda_metodo_pago_fk FOREIGN KEY (mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: despacho_btb despacho_btb_lugar_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btb
    ADD CONSTRAINT despacho_btb_lugar_fk FOREIGN KEY (lugar_l_id) REFERENCES public.lugar(l_id);


--
-- Name: despacho_btb despacho_btb_orden_compra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btb
    ADD CONSTRAINT despacho_btb_orden_compra_fk FOREIGN KEY (orden_compra_oc_id) REFERENCES public.orden_compra(oc_id);


--
-- Name: despacho_btb despacho_btb_transportista_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btb
    ADD CONSTRAINT despacho_btb_transportista_fk FOREIGN KEY (transportista_t_id) REFERENCES public.transportista(t_id);


--
-- Name: despacho_btc despacho_btc_courier_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btc
    ADD CONSTRAINT despacho_btc_courier_fk FOREIGN KEY (courier_cou_id) REFERENCES public.courier(cou_id);


--
-- Name: despacho_btc despacho_btc_lugar_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despacho_btc
    ADD CONSTRAINT despacho_btc_lugar_fk FOREIGN KEY (lugar_l_id) REFERENCES public.lugar(l_id);


--
-- Name: diseño_producto diseño_producto_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."diseño_producto"
    ADD CONSTRAINT "diseño_producto_material_fk" FOREIGN KEY (material_m_id) REFERENCES public.material(m_id);


--
-- Name: envio envio_courier_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio
    ADD CONSTRAINT envio_courier_fk FOREIGN KEY (courier_cou_id) REFERENCES public.courier(cou_id);


--
-- Name: envio envio_transportista_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.envio
    ADD CONSTRAINT envio_transportista_fk FOREIGN KEY (transportista_t_id) REFERENCES public.transportista(t_id);


--
-- Name: estado_compra_btc estado_compra_btc_compra_btc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_compra_btc
    ADD CONSTRAINT estado_compra_btc_compra_btc_fk FOREIGN KEY (compra_btc_cbtc_id) REFERENCES public.compra_btc(cbtc_id);


--
-- Name: estado_compra_btc estado_compra_btc_estado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_compra_btc
    ADD CONSTRAINT estado_compra_btc_estado_fk FOREIGN KEY (estado_est_id) REFERENCES public.estado(est_id);


--
-- Name: estado_despacho_btb estado_despacho_btb_despacho_btb_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_despacho_btb
    ADD CONSTRAINT estado_despacho_btb_despacho_btb_fk FOREIGN KEY (despacho_btb_desbtb_id) REFERENCES public.despacho_btb(desbtb_id);


--
-- Name: estado_despacho_btb estado_despacho_btb_estado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_despacho_btb
    ADD CONSTRAINT estado_despacho_btb_estado_fk FOREIGN KEY (estado_est_id) REFERENCES public.estado(est_id);


--
-- Name: estado_despacho_btc estado_despacho_btc_despacho_btc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_despacho_btc
    ADD CONSTRAINT estado_despacho_btc_despacho_btc_fk FOREIGN KEY (despacho_btc_desbtc_id) REFERENCES public.despacho_btc(desbtc_id);


--
-- Name: estado_despacho_btc estado_despacho_btc_estado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_despacho_btc
    ADD CONSTRAINT estado_despacho_btc_estado_fk FOREIGN KEY (estado_est_id) REFERENCES public.estado(est_id);


--
-- Name: estado_envio estado_envio_envio_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_envio
    ADD CONSTRAINT estado_envio_envio_fk FOREIGN KEY (envio_e_id) REFERENCES public.envio(e_id);


--
-- Name: estado_envio estado_envio_estado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_envio
    ADD CONSTRAINT estado_envio_estado_fk FOREIGN KEY (estado_est_id) REFERENCES public.estado(est_id);


--
-- Name: estado_orden_compra estado_orden_compra_estado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_orden_compra
    ADD CONSTRAINT estado_orden_compra_estado_fk FOREIGN KEY (estado_est_id) REFERENCES public.estado(est_id);


--
-- Name: estado_orden_compra estado_orden_compra_orden_compra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_orden_compra
    ADD CONSTRAINT estado_orden_compra_orden_compra_fk FOREIGN KEY (orden_compra_oc_id) REFERENCES public.orden_compra(oc_id);


--
-- Name: fase_compra fase_compra_compra_btc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_compra
    ADD CONSTRAINT fase_compra_compra_btc_fk FOREIGN KEY (compra_btc_cbtc_id) REFERENCES public.compra_btc(cbtc_id);


--
-- Name: fase_compra fase_compra_departamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_compra
    ADD CONSTRAINT fase_compra_departamento_fk FOREIGN KEY (departamento_de_id) REFERENCES public.departamento(de_id);


--
-- Name: fase_compra fase_compra_fase_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_compra
    ADD CONSTRAINT fase_compra_fase_fk FOREIGN KEY (fase_f_id) REFERENCES public.fase(f_id);


--
-- Name: fase_compra fase_compra_orden_compra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_compra
    ADD CONSTRAINT fase_compra_orden_compra_fk FOREIGN KEY (orden_compra_oc_id) REFERENCES public.orden_compra(oc_id);


--
-- Name: fase_diseno fase_diseno_departamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_diseno
    ADD CONSTRAINT fase_diseno_departamento_fk FOREIGN KEY (departamento_de_id) REFERENCES public.departamento(de_id);


--
-- Name: fase_diseno fase_diseno_diseño_producto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_diseno
    ADD CONSTRAINT "fase_diseno_diseño_producto_fk" FOREIGN KEY ("diseño_producto_dp_id") REFERENCES public."diseño_producto"(dp_id);


--
-- Name: fase_diseno fase_diseno_fase_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_diseno
    ADD CONSTRAINT fase_diseno_fase_fk FOREIGN KEY (fase_f_id) REFERENCES public.fase(f_id);


--
-- Name: fase_logistica fase_logistica_departamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_logistica
    ADD CONSTRAINT fase_logistica_departamento_fk FOREIGN KEY (departamento_de_id) REFERENCES public.departamento(de_id);


--
-- Name: fase_logistica fase_logistica_despacho_btb_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_logistica
    ADD CONSTRAINT fase_logistica_despacho_btb_fk FOREIGN KEY (despacho_btb_desbtb_id) REFERENCES public.despacho_btb(desbtb_id);


--
-- Name: fase_logistica fase_logistica_despacho_btc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_logistica
    ADD CONSTRAINT fase_logistica_despacho_btc_fk FOREIGN KEY (despacho_btc_desbtc_id) REFERENCES public.despacho_btc(desbtc_id);


--
-- Name: fase_logistica fase_logistica_fase_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_logistica
    ADD CONSTRAINT fase_logistica_fase_fk FOREIGN KEY (fase_f_id) REFERENCES public.fase(f_id);


--
-- Name: fase_operativa fase_operativa_departamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_operativa
    ADD CONSTRAINT fase_operativa_departamento_fk FOREIGN KEY (departamento_de_id) REFERENCES public.departamento(de_id);


--
-- Name: fase_operativa fase_operativa_fase_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_operativa
    ADD CONSTRAINT fase_operativa_fase_fk FOREIGN KEY (fase_f_id) REFERENCES public.fase(f_id);


--
-- Name: fase_operativa fase_operativa_lote_produccion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_operativa
    ADD CONSTRAINT fase_operativa_lote_produccion_fk FOREIGN KEY (lote_produccion_lp_id) REFERENCES public.lote_produccion(lp_id);


--
-- Name: fase_post_venta fase_post_venta_departamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_post_venta
    ADD CONSTRAINT fase_post_venta_departamento_fk FOREIGN KEY (departamento_de_id) REFERENCES public.departamento(de_id);


--
-- Name: fase_post_venta fase_post_venta_fase_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_post_venta
    ADD CONSTRAINT fase_post_venta_fase_fk FOREIGN KEY (fase_f_id) REFERENCES public.fase(f_id);


--
-- Name: fase_post_venta fase_post_venta_producto_final_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase_post_venta
    ADD CONSTRAINT fase_post_venta_producto_final_fk FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: compra_btc fk_btc_producto_final; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compra_btc
    ADD CONSTRAINT fk_btc_producto_final FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: orden_compra fk_orden_producto_final; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_compra
    ADD CONSTRAINT fk_orden_producto_final FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: historico_empleado historico_empleado_cargo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_empleado
    ADD CONSTRAINT historico_empleado_cargo_fk FOREIGN KEY (cargo_car_id) REFERENCES public.cargo(car_id);


--
-- Name: historico_empleado historico_empleado_departamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_empleado
    ADD CONSTRAINT historico_empleado_departamento_fk FOREIGN KEY (departamento_de_id) REFERENCES public.departamento(de_id);


--
-- Name: historico_empleado historico_empleado_empleado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_empleado
    ADD CONSTRAINT historico_empleado_empleado_fk FOREIGN KEY (empleado_em_id) REFERENCES public.empleado(em_id);


--
-- Name: historico_orden_compra historico_orden_compra_orden_compra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_orden_compra
    ADD CONSTRAINT historico_orden_compra_orden_compra_fk FOREIGN KEY (orden_compra_oc_id) REFERENCES public.orden_compra(oc_id);


--
-- Name: historico_producto historico_producto_producto_final_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_producto
    ADD CONSTRAINT historico_producto_producto_final_fk FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: historico_profesion historico_profesion_diseño_producto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_profesion
    ADD CONSTRAINT "historico_profesion_diseño_producto_fk" FOREIGN KEY ("diseño_producto_dp_id") REFERENCES public."diseño_producto"(dp_id);


--
-- Name: historico_profesion historico_profesion_profesion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.historico_profesion
    ADD CONSTRAINT historico_profesion_profesion_fk FOREIGN KEY (profesion_prof_id) REFERENCES public.profesion(prof_id);


--
-- Name: lote_produccion lote_produccion_compatibilidad_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote_produccion
    ADD CONSTRAINT lote_produccion_compatibilidad_fk FOREIGN KEY (compatibilidad_comp_id, compatibilidad_categoria_cat_id, compatibilidad_categoria_cat_id2) REFERENCES public.compatibilidad(comp_id, categoria_cat_id, categoria_cat_id2);


--
-- Name: lote_produccion lote_produccion_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote_produccion
    ADD CONSTRAINT lote_produccion_material_fk FOREIGN KEY (material_m_id) REFERENCES public.material(m_id);


--
-- Name: lote_produccion lote_produccion_pieza_caracteristica_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote_produccion
    ADD CONSTRAINT lote_produccion_pieza_caracteristica_fk FOREIGN KEY (pieza_caracteristica_caracteristica_car_id, "pieza_caracteristica_caracteristica_diseño_producto_dp_id", pieza_caracteristica_pieza_pie_id, pieza_caracteristica_pieza_categoria_cat_id, "pieza_caracteristica_pieza_diseño_producto_dp_id") REFERENCES public.pieza_caracteristica(caracteristica_car_id, "caracteristica_diseño_producto_dp_id", pieza_pie_id, pieza_categoria_cat_id, "pieza_diseño_producto_dp_id");


--
-- Name: lugar lugar_lugar_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugar
    ADD CONSTRAINT lugar_lugar_fk FOREIGN KEY (lugar_l_id) REFERENCES public.lugar(l_id);


--
-- Name: membresia membresia_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membresia
    ADD CONSTRAINT membresia_cliente_fk FOREIGN KEY (cliente_cl_id) REFERENCES public.cliente(cl_id);


--
-- Name: mercado_secundario mercado_secundario_producto_final_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercado_secundario
    ADD CONSTRAINT mercado_secundario_producto_final_fk FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: metodo_pago metodo_pago_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metodo_pago
    ADD CONSTRAINT metodo_pago_cliente_fk FOREIGN KEY (cliente_cl_id) REFERENCES public.cliente(cl_id);


--
-- Name: orden_compra orden_compra_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_compra
    ADD CONSTRAINT orden_compra_cliente_fk FOREIGN KEY (cliente_cl_id) REFERENCES public.cliente(cl_id);


--
-- Name: pago pago_compra_btc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_compra_btc_fk FOREIGN KEY (compra_btc_cbtc_id) REFERENCES public.compra_btc(cbtc_id);


--
-- Name: pago pago_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_metodo_pago_fk FOREIGN KEY (metodo_pago_mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: pago_nomina pago_nomina_empleado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_nomina
    ADD CONSTRAINT pago_nomina_empleado_fk FOREIGN KEY (empleado_em_id) REFERENCES public.empleado(em_id);


--
-- Name: pago_nomina pago_nomina_pre_nomina_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago_nomina
    ADD CONSTRAINT pago_nomina_pre_nomina_fk FOREIGN KEY (pre_nomina_pn_id) REFERENCES public.pre_nomina(pn_id);


--
-- Name: pago pago_orden_compra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_orden_compra_fk FOREIGN KEY (orden_compra_oc_id) REFERENCES public.orden_compra(oc_id);


--
-- Name: paypal paypal_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paypal
    ADD CONSTRAINT paypal_metodo_pago_fk FOREIGN KEY (mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: pieza_caracteristica pieza_caracteristica_caracteristica_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza_caracteristica
    ADD CONSTRAINT pieza_caracteristica_caracteristica_fk FOREIGN KEY (caracteristica_car_id, "caracteristica_diseño_producto_dp_id") REFERENCES public.caracteristica(car_id, "diseño_producto_dp_id");


--
-- Name: pieza_caracteristica pieza_caracteristica_pieza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza_caracteristica
    ADD CONSTRAINT pieza_caracteristica_pieza_fk FOREIGN KEY (pieza_pie_id, pieza_categoria_cat_id, "pieza_diseño_producto_dp_id") REFERENCES public.pieza(pie_id, categoria_cat_id, "diseño_producto_dp_id");


--
-- Name: pieza pieza_categoria_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza
    ADD CONSTRAINT pieza_categoria_fk FOREIGN KEY (categoria_cat_id) REFERENCES public.categoria(cat_id);


--
-- Name: pieza pieza_diseño_producto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pieza
    ADD CONSTRAINT "pieza_diseño_producto_fk" FOREIGN KEY ("diseño_producto_dp_id") REFERENCES public."diseño_producto"(dp_id);


--
-- Name: pre_nomina pre_nomina_tabulador_oficial_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_nomina
    ADD CONSTRAINT pre_nomina_tabulador_oficial_fk FOREIGN KEY (tabulador_oficial_to_id) REFERENCES public.tabulador_oficial(to_id);


--
-- Name: producto_final producto_final_exclusividad_producto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto_final
    ADD CONSTRAINT producto_final_exclusividad_producto_fk FOREIGN KEY (exclusividad_producto_ep_id) REFERENCES public.exclusividad_producto(ep_id);


--
-- Name: producto_final producto_final_lote_produccion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto_final
    ADD CONSTRAINT producto_final_lote_produccion_fk FOREIGN KEY (lote_produccion_lp_id) REFERENCES public.lote_produccion(lp_id);


--
-- Name: proveedor_material proveedor_material_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_material
    ADD CONSTRAINT proveedor_material_material_fk FOREIGN KEY (material_m_id) REFERENCES public.material(m_id);


--
-- Name: proveedor_material proveedor_material_proveedor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor_material
    ADD CONSTRAINT proveedor_material_proveedor_fk FOREIGN KEY (proveedor_prov_id) REFERENCES public.proveedor(prov_id);


--
-- Name: prueba_calidad prueba_calidad_control_calidad_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prueba_calidad
    ADD CONSTRAINT prueba_calidad_control_calidad_fk FOREIGN KEY (control_calidad_cc_id) REFERENCES public.control_calidad(cc_id);


--
-- Name: prueba_calidad prueba_calidad_defecto_calidad_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prueba_calidad
    ADD CONSTRAINT prueba_calidad_defecto_calidad_fk FOREIGN KEY (defecto_calidad_dc_id) REFERENCES public.defecto_calidad(dc_id);


--
-- Name: puja puja_subasta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puja
    ADD CONSTRAINT puja_subasta_fk FOREIGN KEY (subasta_su_id) REFERENCES public.subasta(su_id);


--
-- Name: puja puja_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puja
    ADD CONSTRAINT puja_usuario_fk FOREIGN KEY (usuario_u_id) REFERENCES public.usuario(u_id);


--
-- Name: responsable responsable_cargo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_cargo_fk FOREIGN KEY (cargo_car_id) REFERENCES public.cargo(car_id);


--
-- Name: responsable responsable_empleado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_empleado_fk FOREIGN KEY (empleado_em_id) REFERENCES public.empleado(em_id);


--
-- Name: responsable responsable_fase_diseno_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_fase_diseno_fk FOREIGN KEY (fase_diseno_fd_id, fase_diseno_fase_f_id, fase_diseno_dp_id) REFERENCES public.fase_diseno(fd_id, fase_f_id, "diseño_producto_dp_id");


--
-- Name: responsable responsable_fase_operativa_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_fase_operativa_fk FOREIGN KEY (fase_operativa_fo_id, fase_operativa_lote_produccion_lp_id, fase_operativa_fase_f_id) REFERENCES public.fase_operativa(fo_id, lote_produccion_lp_id, fase_f_id);


--
-- Name: responsable responsable_fase_post_venta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsable
    ADD CONSTRAINT responsable_fase_post_venta_fk FOREIGN KEY (fase_post_venta_fpv_id, fase_post_venta_pf_id, fase_post_venta_f_id, fase_post_venta_fc_id) REFERENCES public.fase_post_venta(fpv_id, producto_final_pf_id, fase_f_id, fase_compra_fc_id);


--
-- Name: rol_privilegio rol_privilegio_privilegio_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_privilegio
    ADD CONSTRAINT rol_privilegio_privilegio_fk FOREIGN KEY (privilegio_pri_id) REFERENCES public.privilegio(pri_id);


--
-- Name: rol_privilegio rol_privilegio_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_privilegio
    ADD CONSTRAINT rol_privilegio_rol_fk FOREIGN KEY (rol_r_id) REFERENCES public.rol(r_id);


--
-- Name: sede sede_lugar_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sede
    ADD CONSTRAINT sede_lugar_fk FOREIGN KEY (lugar_l_id) REFERENCES public.lugar(l_id);


--
-- Name: subasta subasta_producto_final_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta
    ADD CONSTRAINT subasta_producto_final_fk FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: tarjeta_credito tarjeta_credito_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarjeta_credito
    ADD CONSTRAINT tarjeta_credito_metodo_pago_fk FOREIGN KEY (mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: tarjeta_debito tarjeta_debito_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarjeta_debito
    ADD CONSTRAINT tarjeta_debito_metodo_pago_fk FOREIGN KEY (mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: transferencia_bancaria_internacional transferencia_bancaria_internacional_metodo_pago_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transferencia_bancaria_internacional
    ADD CONSTRAINT transferencia_bancaria_internacional_metodo_pago_fk FOREIGN KEY (mp_id) REFERENCES public.metodo_pago(mp_id);


--
-- Name: usuario usuario_cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_cliente_fk FOREIGN KEY (cliente_cl_id) REFERENCES public.cliente(cl_id);


--
-- Name: usuario usuario_empleado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_empleado_fk FOREIGN KEY (empleado_em_id) REFERENCES public.empleado(em_id);


--
-- Name: usuario usuario_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_rol_fk FOREIGN KEY (rol_r_id) REFERENCES public.rol(r_id);


--
-- Name: vinculo vinculo_producto_final_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vinculo
    ADD CONSTRAINT vinculo_producto_final_fk FOREIGN KEY (producto_final_pf_id) REFERENCES public.producto_final(pf_id);


--
-- Name: vinculo vinculo_producto_final_fkv2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vinculo
    ADD CONSTRAINT vinculo_producto_final_fkv2 FOREIGN KEY (producto_final_pf_id2) REFERENCES public.producto_final(pf_id);


--
-- Name: objects objects_bucketId_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;


--
-- Name: vector_indexes vector_indexes_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE ONLY storage.vector_indexes
    ADD CONSTRAINT vector_indexes_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets_vectors(id);


--
-- Name: audit_log_entries; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;

--
-- Name: flow_state; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;

--
-- Name: identities; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;

--
-- Name: instances; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_amr_claims; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_challenges; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_factors; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;

--
-- Name: one_time_tokens; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;

--
-- Name: refresh_tokens; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;

--
-- Name: saml_providers; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;

--
-- Name: saml_relay_states; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;

--
-- Name: schema_migrations; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;

--
-- Name: sessions; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;

--
-- Name: sso_domains; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;

--
-- Name: sso_providers; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;

--
-- Name: users; Type: ROW SECURITY; Schema: auth; Owner: supabase_auth_admin
--

ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;

--
-- Name: usuario Enable; Type: POLICY; Schema: public; Owner: postgres
--

CREATE POLICY "Enable" ON public.usuario USING (true);


--
-- Name: asignacion_horario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.asignacion_horario ENABLE ROW LEVEL SECURITY;

--
-- Name: asistencia; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.asistencia ENABLE ROW LEVEL SECURITY;

--
-- Name: bloqueo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.bloqueo ENABLE ROW LEVEL SECURITY;

--
-- Name: caracteristica; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.caracteristica ENABLE ROW LEVEL SECURITY;

--
-- Name: caracteristica_compatibilidad; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.caracteristica_compatibilidad ENABLE ROW LEVEL SECURITY;

--
-- Name: cargo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.cargo ENABLE ROW LEVEL SECURITY;

--
-- Name: categoria; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.categoria ENABLE ROW LEVEL SECURITY;

--
-- Name: cheque; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.cheque ENABLE ROW LEVEL SECURITY;

--
-- Name: compatibilidad; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.compatibilidad ENABLE ROW LEVEL SECURITY;

--
-- Name: compra_btc; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.compra_btc ENABLE ROW LEVEL SECURITY;

--
-- Name: courier; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.courier ENABLE ROW LEVEL SECURITY;

--
-- Name: cryptomoneda; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.cryptomoneda ENABLE ROW LEVEL SECURITY;

--
-- Name: defecto_calidad; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.defecto_calidad ENABLE ROW LEVEL SECURITY;

--
-- Name: departamento; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.departamento ENABLE ROW LEVEL SECURITY;

--
-- Name: despacho_btb; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.despacho_btb ENABLE ROW LEVEL SECURITY;

--
-- Name: despacho_btc; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.despacho_btc ENABLE ROW LEVEL SECURITY;

--
-- Name: envio; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.envio ENABLE ROW LEVEL SECURITY;

--
-- Name: estado; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.estado ENABLE ROW LEVEL SECURITY;

--
-- Name: estado_compra_btc; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.estado_compra_btc ENABLE ROW LEVEL SECURITY;

--
-- Name: estado_despacho_btb; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.estado_despacho_btb ENABLE ROW LEVEL SECURITY;

--
-- Name: estado_despacho_btc; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.estado_despacho_btc ENABLE ROW LEVEL SECURITY;

--
-- Name: estado_envio; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.estado_envio ENABLE ROW LEVEL SECURITY;

--
-- Name: estado_orden_compra; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.estado_orden_compra ENABLE ROW LEVEL SECURITY;

--
-- Name: fase; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fase ENABLE ROW LEVEL SECURITY;

--
-- Name: fase_compra; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fase_compra ENABLE ROW LEVEL SECURITY;

--
-- Name: fase_diseno; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fase_diseno ENABLE ROW LEVEL SECURITY;

--
-- Name: fase_logistica; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fase_logistica ENABLE ROW LEVEL SECURITY;

--
-- Name: fase_operativa; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fase_operativa ENABLE ROW LEVEL SECURITY;

--
-- Name: fase_post_venta; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.fase_post_venta ENABLE ROW LEVEL SECURITY;

--
-- Name: historico_empleado; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.historico_empleado ENABLE ROW LEVEL SECURITY;

--
-- Name: historico_orden_compra; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.historico_orden_compra ENABLE ROW LEVEL SECURITY;

--
-- Name: historico_producto; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.historico_producto ENABLE ROW LEVEL SECURITY;

--
-- Name: historico_profesion; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.historico_profesion ENABLE ROW LEVEL SECURITY;

--
-- Name: lote_produccion; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.lote_produccion ENABLE ROW LEVEL SECURITY;

--
-- Name: membresia; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.membresia ENABLE ROW LEVEL SECURITY;

--
-- Name: mercado_secundario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.mercado_secundario ENABLE ROW LEVEL SECURITY;

--
-- Name: metodo_pago; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.metodo_pago ENABLE ROW LEVEL SECURITY;

--
-- Name: orden_compra; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.orden_compra ENABLE ROW LEVEL SECURITY;

--
-- Name: pago; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.pago ENABLE ROW LEVEL SECURITY;

--
-- Name: pago_nomina; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.pago_nomina ENABLE ROW LEVEL SECURITY;

--
-- Name: paypal; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.paypal ENABLE ROW LEVEL SECURITY;

--
-- Name: pieza; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.pieza ENABLE ROW LEVEL SECURITY;

--
-- Name: pieza_caracteristica; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.pieza_caracteristica ENABLE ROW LEVEL SECURITY;

--
-- Name: pre_nomina; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.pre_nomina ENABLE ROW LEVEL SECURITY;

--
-- Name: profesion; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.profesion ENABLE ROW LEVEL SECURITY;

--
-- Name: proveedor; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.proveedor ENABLE ROW LEVEL SECURITY;

--
-- Name: proveedor_material; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.proveedor_material ENABLE ROW LEVEL SECURITY;

--
-- Name: prueba_calidad; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.prueba_calidad ENABLE ROW LEVEL SECURITY;

--
-- Name: puja; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.puja ENABLE ROW LEVEL SECURITY;

--
-- Name: responsable; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.responsable ENABLE ROW LEVEL SECURITY;

--
-- Name: sede; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.sede ENABLE ROW LEVEL SECURITY;

--
-- Name: subasta; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.subasta ENABLE ROW LEVEL SECURITY;

--
-- Name: tabulador_oficial; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.tabulador_oficial ENABLE ROW LEVEL SECURITY;

--
-- Name: tarjeta_credito; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.tarjeta_credito ENABLE ROW LEVEL SECURITY;

--
-- Name: tarjeta_debito; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.tarjeta_debito ENABLE ROW LEVEL SECURITY;

--
-- Name: transferencia_bancaria_internacional; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.transferencia_bancaria_internacional ENABLE ROW LEVEL SECURITY;

--
-- Name: transportista; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.transportista ENABLE ROW LEVEL SECURITY;

--
-- Name: turno; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.turno ENABLE ROW LEVEL SECURITY;

--
-- Name: usuario; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.usuario ENABLE ROW LEVEL SECURITY;

--
-- Name: vinculo; Type: ROW SECURITY; Schema: public; Owner: postgres
--

ALTER TABLE public.vinculo ENABLE ROW LEVEL SECURITY;

--
-- Name: messages; Type: ROW SECURITY; Schema: realtime; Owner: supabase_realtime_admin
--

ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets_analytics; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.buckets_analytics ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets_vectors; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.buckets_vectors ENABLE ROW LEVEL SECURITY;

--
-- Name: migrations; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;

--
-- Name: objects; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;

--
-- Name: s3_multipart_uploads; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;

--
-- Name: s3_multipart_uploads_parts; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;

--
-- Name: vector_indexes; Type: ROW SECURITY; Schema: storage; Owner: supabase_storage_admin
--

ALTER TABLE storage.vector_indexes ENABLE ROW LEVEL SECURITY;

--
-- Name: supabase_realtime; Type: PUBLICATION; Schema: -; Owner: postgres
--

CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');


ALTER PUBLICATION supabase_realtime OWNER TO postgres;

--
-- Name: SCHEMA auth; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT USAGE ON SCHEMA auth TO postgres;


--
-- Name: SCHEMA extensions; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;


--
-- Name: SCHEMA realtime; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;


--
-- Name: SCHEMA storage; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA storage TO postgres WITH GRANT OPTION;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin WITH GRANT OPTION;
GRANT ALL ON SCHEMA storage TO dashboard_user;


--
-- Name: SCHEMA vault; Type: ACL; Schema: -; Owner: supabase_admin
--

GRANT USAGE ON SCHEMA vault TO postgres WITH GRANT OPTION;
GRANT USAGE ON SCHEMA vault TO service_role;


--
-- Name: FUNCTION email(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.email() TO dashboard_user;


--
-- Name: FUNCTION jwt(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;


--
-- Name: FUNCTION role(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.role() TO dashboard_user;


--
-- Name: FUNCTION uid(); Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;


--
-- Name: FUNCTION armor(bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;


--
-- Name: FUNCTION armor(bytea, text[], text[]); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;


--
-- Name: FUNCTION crypt(text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;


--
-- Name: FUNCTION dearmor(text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;


--
-- Name: FUNCTION decrypt(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION decrypt_iv(bytea, bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION digest(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION digest(text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;


--
-- Name: FUNCTION encrypt(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION encrypt_iv(bytea, bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION gen_random_bytes(integer); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;


--
-- Name: FUNCTION gen_random_uuid(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;


--
-- Name: FUNCTION gen_salt(text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;


--
-- Name: FUNCTION gen_salt(text, integer); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;


--
-- Name: FUNCTION grant_pg_cron_access(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM supabase_admin;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO supabase_admin WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;


--
-- Name: FUNCTION grant_pg_graphql_access(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION grant_pg_net_access(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM supabase_admin;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO supabase_admin WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;


--
-- Name: FUNCTION hmac(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION hmac(text, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;


--
-- Name: FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT shared_blk_read_time double precision, OUT shared_blk_write_time double precision, OUT local_blk_read_time double precision, OUT local_blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision, OUT jit_deform_count bigint, OUT jit_deform_time double precision, OUT stats_since timestamp with time zone, OUT minmax_stats_since timestamp with time zone) TO dashboard_user;


--
-- Name: FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;


--
-- Name: FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint, minmax_only boolean) TO dashboard_user;


--
-- Name: FUNCTION pgp_armor_headers(text, OUT key text, OUT value text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;


--
-- Name: FUNCTION pgp_key_id(bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt(bytea, bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt(text, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt(text, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt_bytea(bytea, bytea); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;


--
-- Name: FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt(bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt_bytea(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_decrypt_bytea(bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt(text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt(text, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt_bytea(bytea, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;


--
-- Name: FUNCTION pgp_sym_encrypt_bytea(bytea, text, text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;


--
-- Name: FUNCTION pgrst_ddl_watch(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION pgrst_drop_watch(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION set_graphql_placeholder(); Type: ACL; Schema: extensions; Owner: supabase_admin
--

GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION uuid_generate_v1(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v1() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v1mc(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v1mc() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v3(namespace uuid, name text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v4(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v4() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;


--
-- Name: FUNCTION uuid_generate_v5(namespace uuid, name text); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;


--
-- Name: FUNCTION uuid_nil(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_nil() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_dns(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_dns() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_oid(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_oid() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_url(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_url() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;


--
-- Name: FUNCTION uuid_ns_x500(); Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON FUNCTION extensions.uuid_ns_x500() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;


--
-- Name: FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb); Type: ACL; Schema: graphql_public; Owner: supabase_admin
--

GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;


--
-- Name: FUNCTION pg_reload_conf(); Type: ACL; Schema: pg_catalog; Owner: supabase_admin
--

GRANT ALL ON FUNCTION pg_catalog.pg_reload_conf() TO postgres WITH GRANT OPTION;


--
-- Name: FUNCTION get_auth(p_usename text); Type: ACL; Schema: pgbouncer; Owner: supabase_admin
--

REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;


--
-- Name: FUNCTION rls_auto_enable(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.rls_auto_enable() TO anon;
GRANT ALL ON FUNCTION public.rls_auto_enable() TO authenticated;
GRANT ALL ON FUNCTION public.rls_auto_enable() TO service_role;


--
-- Name: FUNCTION validarcredenciales(p_username character varying, p_password character varying); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.validarcredenciales(p_username character varying, p_password character varying) TO anon;
GRANT ALL ON FUNCTION public.validarcredenciales(p_username character varying, p_password character varying) TO authenticated;
GRANT ALL ON FUNCTION public.validarcredenciales(p_username character varying, p_password character varying) TO service_role;


--
-- Name: FUNCTION apply_rls(wal jsonb, max_record_bytes integer); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;


--
-- Name: FUNCTION broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO postgres;
GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO dashboard_user;


--
-- Name: FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;


--
-- Name: FUNCTION "cast"(val text, type_ regtype); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;


--
-- Name: FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;


--
-- Name: FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;


--
-- Name: FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;


--
-- Name: FUNCTION quote_wal2json(entity regclass); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;


--
-- Name: FUNCTION send(payload jsonb, event text, topic text, private boolean); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO dashboard_user;


--
-- Name: FUNCTION send_binary(payload bytea, event text, topic text, private boolean); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send_binary(payload bytea, event text, topic text, private boolean) TO dashboard_user;


--
-- Name: FUNCTION subscription_check_filters(); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;


--
-- Name: FUNCTION to_regrole(role_name text); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;


--
-- Name: FUNCTION topic(); Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;


--
-- Name: FUNCTION wal2json_escape_identifier(name text); Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON FUNCTION realtime.wal2json_escape_identifier(name text) TO postgres;
GRANT ALL ON FUNCTION realtime.wal2json_escape_identifier(name text) TO dashboard_user;


--
-- Name: FUNCTION _crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea); Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT ALL ON FUNCTION vault._crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION vault._crypto_aead_det_decrypt(message bytea, additional bytea, key_id bigint, context bytea, nonce bytea) TO service_role;


--
-- Name: FUNCTION create_secret(new_secret text, new_name text, new_description text, new_key_id uuid); Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT ALL ON FUNCTION vault.create_secret(new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION vault.create_secret(new_secret text, new_name text, new_description text, new_key_id uuid) TO service_role;


--
-- Name: FUNCTION update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid); Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT ALL ON FUNCTION vault.update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION vault.update_secret(secret_id uuid, new_secret text, new_name text, new_description text, new_key_id uuid) TO service_role;


--
-- Name: TABLE audit_log_entries; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;


--
-- Name: TABLE custom_oauth_providers; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.custom_oauth_providers TO postgres;
GRANT ALL ON TABLE auth.custom_oauth_providers TO dashboard_user;


--
-- Name: TABLE flow_state; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.flow_state TO dashboard_user;


--
-- Name: TABLE identities; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.identities TO dashboard_user;


--
-- Name: TABLE instances; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;


--
-- Name: TABLE mfa_amr_claims; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_amr_claims TO dashboard_user;


--
-- Name: TABLE mfa_challenges; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_challenges TO dashboard_user;


--
-- Name: TABLE mfa_factors; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_factors TO dashboard_user;


--
-- Name: TABLE oauth_authorizations; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_authorizations TO postgres;
GRANT ALL ON TABLE auth.oauth_authorizations TO dashboard_user;


--
-- Name: TABLE oauth_client_states; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_client_states TO postgres;
GRANT ALL ON TABLE auth.oauth_client_states TO dashboard_user;


--
-- Name: TABLE oauth_clients; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_clients TO postgres;
GRANT ALL ON TABLE auth.oauth_clients TO dashboard_user;


--
-- Name: TABLE oauth_consents; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.oauth_consents TO postgres;
GRANT ALL ON TABLE auth.oauth_consents TO dashboard_user;


--
-- Name: TABLE one_time_tokens; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.one_time_tokens TO dashboard_user;


--
-- Name: TABLE refresh_tokens; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;


--
-- Name: SEQUENCE refresh_tokens_id_seq; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;


--
-- Name: TABLE saml_providers; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_providers TO dashboard_user;


--
-- Name: TABLE saml_relay_states; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_relay_states TO dashboard_user;


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;


--
-- Name: TABLE sessions; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sessions TO dashboard_user;


--
-- Name: TABLE sso_domains; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_domains TO dashboard_user;


--
-- Name: TABLE sso_providers; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_providers TO dashboard_user;


--
-- Name: TABLE users; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,MAINTAIN,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;


--
-- Name: TABLE webauthn_challenges; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.webauthn_challenges TO postgres;
GRANT ALL ON TABLE auth.webauthn_challenges TO dashboard_user;


--
-- Name: TABLE webauthn_credentials; Type: ACL; Schema: auth; Owner: supabase_auth_admin
--

GRANT ALL ON TABLE auth.webauthn_credentials TO postgres;
GRANT ALL ON TABLE auth.webauthn_credentials TO dashboard_user;


--
-- Name: TABLE pg_stat_statements; Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT ALL ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements TO dashboard_user;


--
-- Name: TABLE pg_stat_statements_info; Type: ACL; Schema: extensions; Owner: postgres
--

REVOKE ALL ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO dashboard_user;


--
-- Name: TABLE asignacion_horario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.asignacion_horario TO anon;
GRANT ALL ON TABLE public.asignacion_horario TO authenticated;
GRANT ALL ON TABLE public.asignacion_horario TO service_role;


--
-- Name: TABLE asistencia; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.asistencia TO anon;
GRANT ALL ON TABLE public.asistencia TO authenticated;
GRANT ALL ON TABLE public.asistencia TO service_role;


--
-- Name: SEQUENCE asistencia_a_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.asistencia_a_id_seq TO anon;
GRANT ALL ON SEQUENCE public.asistencia_a_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.asistencia_a_id_seq TO service_role;


--
-- Name: TABLE bloqueo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.bloqueo TO anon;
GRANT ALL ON TABLE public.bloqueo TO authenticated;
GRANT ALL ON TABLE public.bloqueo TO service_role;


--
-- Name: SEQUENCE bloqueo_b_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.bloqueo_b_id_seq TO anon;
GRANT ALL ON SEQUENCE public.bloqueo_b_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.bloqueo_b_id_seq TO service_role;


--
-- Name: TABLE caracteristica; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.caracteristica TO anon;
GRANT ALL ON TABLE public.caracteristica TO authenticated;
GRANT ALL ON TABLE public.caracteristica TO service_role;


--
-- Name: SEQUENCE caracteristica_car_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.caracteristica_car_id_seq TO anon;
GRANT ALL ON SEQUENCE public.caracteristica_car_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.caracteristica_car_id_seq TO service_role;


--
-- Name: TABLE caracteristica_compatibilidad; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.caracteristica_compatibilidad TO anon;
GRANT ALL ON TABLE public.caracteristica_compatibilidad TO authenticated;
GRANT ALL ON TABLE public.caracteristica_compatibilidad TO service_role;


--
-- Name: SEQUENCE caracteristica_compatibilidad_carcom_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.caracteristica_compatibilidad_carcom_id_seq TO anon;
GRANT ALL ON SEQUENCE public.caracteristica_compatibilidad_carcom_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.caracteristica_compatibilidad_carcom_id_seq TO service_role;


--
-- Name: TABLE cargo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cargo TO anon;
GRANT ALL ON TABLE public.cargo TO authenticated;
GRANT ALL ON TABLE public.cargo TO service_role;


--
-- Name: SEQUENCE cargo_car_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.cargo_car_id_seq TO anon;
GRANT ALL ON SEQUENCE public.cargo_car_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.cargo_car_id_seq TO service_role;


--
-- Name: TABLE categoria; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.categoria TO anon;
GRANT ALL ON TABLE public.categoria TO authenticated;
GRANT ALL ON TABLE public.categoria TO service_role;


--
-- Name: SEQUENCE categoria_cat_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.categoria_cat_id_seq TO anon;
GRANT ALL ON SEQUENCE public.categoria_cat_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.categoria_cat_id_seq TO service_role;


--
-- Name: TABLE cheque; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cheque TO anon;
GRANT ALL ON TABLE public.cheque TO authenticated;
GRANT ALL ON TABLE public.cheque TO service_role;


--
-- Name: TABLE cliente; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cliente TO anon;
GRANT ALL ON TABLE public.cliente TO authenticated;
GRANT ALL ON TABLE public.cliente TO service_role;


--
-- Name: TABLE cliente_b2b; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cliente_b2b TO anon;
GRANT ALL ON TABLE public.cliente_b2b TO authenticated;
GRANT ALL ON TABLE public.cliente_b2b TO service_role;


--
-- Name: TABLE cliente_b2c; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cliente_b2c TO anon;
GRANT ALL ON TABLE public.cliente_b2c TO authenticated;
GRANT ALL ON TABLE public.cliente_b2c TO service_role;


--
-- Name: SEQUENCE cliente_cl_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.cliente_cl_id_seq TO anon;
GRANT ALL ON SEQUENCE public.cliente_cl_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.cliente_cl_id_seq TO service_role;


--
-- Name: TABLE compatibilidad; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.compatibilidad TO anon;
GRANT ALL ON TABLE public.compatibilidad TO authenticated;
GRANT ALL ON TABLE public.compatibilidad TO service_role;


--
-- Name: SEQUENCE compatibilidad_comp_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.compatibilidad_comp_id_seq TO anon;
GRANT ALL ON SEQUENCE public.compatibilidad_comp_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.compatibilidad_comp_id_seq TO service_role;


--
-- Name: TABLE compra_btc; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.compra_btc TO anon;
GRANT ALL ON TABLE public.compra_btc TO authenticated;
GRANT ALL ON TABLE public.compra_btc TO service_role;


--
-- Name: SEQUENCE compra_btc_cbtc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.compra_btc_cbtc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.compra_btc_cbtc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.compra_btc_cbtc_id_seq TO service_role;


--
-- Name: TABLE control_calidad; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.control_calidad TO anon;
GRANT ALL ON TABLE public.control_calidad TO authenticated;
GRANT ALL ON TABLE public.control_calidad TO service_role;


--
-- Name: SEQUENCE control_calidad_cc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.control_calidad_cc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.control_calidad_cc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.control_calidad_cc_id_seq TO service_role;


--
-- Name: TABLE courier; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.courier TO anon;
GRANT ALL ON TABLE public.courier TO authenticated;
GRANT ALL ON TABLE public.courier TO service_role;


--
-- Name: SEQUENCE courier_cou_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.courier_cou_id_seq TO anon;
GRANT ALL ON SEQUENCE public.courier_cou_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.courier_cou_id_seq TO service_role;


--
-- Name: TABLE cryptomoneda; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.cryptomoneda TO anon;
GRANT ALL ON TABLE public.cryptomoneda TO authenticated;
GRANT ALL ON TABLE public.cryptomoneda TO service_role;


--
-- Name: TABLE defecto_calidad; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.defecto_calidad TO anon;
GRANT ALL ON TABLE public.defecto_calidad TO authenticated;
GRANT ALL ON TABLE public.defecto_calidad TO service_role;


--
-- Name: SEQUENCE defecto_calidad_dc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.defecto_calidad_dc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.defecto_calidad_dc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.defecto_calidad_dc_id_seq TO service_role;


--
-- Name: TABLE departamento; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.departamento TO anon;
GRANT ALL ON TABLE public.departamento TO authenticated;
GRANT ALL ON TABLE public.departamento TO service_role;


--
-- Name: SEQUENCE departamento_de_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.departamento_de_id_seq TO anon;
GRANT ALL ON SEQUENCE public.departamento_de_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.departamento_de_id_seq TO service_role;


--
-- Name: TABLE despacho_btb; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.despacho_btb TO anon;
GRANT ALL ON TABLE public.despacho_btb TO authenticated;
GRANT ALL ON TABLE public.despacho_btb TO service_role;


--
-- Name: SEQUENCE despacho_btb_desbtb_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.despacho_btb_desbtb_id_seq TO anon;
GRANT ALL ON SEQUENCE public.despacho_btb_desbtb_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.despacho_btb_desbtb_id_seq TO service_role;


--
-- Name: TABLE despacho_btc; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.despacho_btc TO anon;
GRANT ALL ON TABLE public.despacho_btc TO authenticated;
GRANT ALL ON TABLE public.despacho_btc TO service_role;


--
-- Name: SEQUENCE despacho_btc_desbtc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.despacho_btc_desbtc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.despacho_btc_desbtc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.despacho_btc_desbtc_id_seq TO service_role;


--
-- Name: TABLE "diseño_producto"; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public."diseño_producto" TO anon;
GRANT ALL ON TABLE public."diseño_producto" TO authenticated;
GRANT ALL ON TABLE public."diseño_producto" TO service_role;


--
-- Name: SEQUENCE "diseño_producto_dp_id_seq"; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public."diseño_producto_dp_id_seq" TO anon;
GRANT ALL ON SEQUENCE public."diseño_producto_dp_id_seq" TO authenticated;
GRANT ALL ON SEQUENCE public."diseño_producto_dp_id_seq" TO service_role;


--
-- Name: TABLE empleado; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.empleado TO anon;
GRANT ALL ON TABLE public.empleado TO authenticated;
GRANT ALL ON TABLE public.empleado TO service_role;


--
-- Name: SEQUENCE empleado_em_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.empleado_em_id_seq TO anon;
GRANT ALL ON SEQUENCE public.empleado_em_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.empleado_em_id_seq TO service_role;


--
-- Name: TABLE envio; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.envio TO anon;
GRANT ALL ON TABLE public.envio TO authenticated;
GRANT ALL ON TABLE public.envio TO service_role;


--
-- Name: SEQUENCE envio_e_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.envio_e_id_seq TO anon;
GRANT ALL ON SEQUENCE public.envio_e_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.envio_e_id_seq TO service_role;


--
-- Name: TABLE estado; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estado TO anon;
GRANT ALL ON TABLE public.estado TO authenticated;
GRANT ALL ON TABLE public.estado TO service_role;


--
-- Name: TABLE estado_compra_btc; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estado_compra_btc TO anon;
GRANT ALL ON TABLE public.estado_compra_btc TO authenticated;
GRANT ALL ON TABLE public.estado_compra_btc TO service_role;


--
-- Name: TABLE estado_despacho_btb; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estado_despacho_btb TO anon;
GRANT ALL ON TABLE public.estado_despacho_btb TO authenticated;
GRANT ALL ON TABLE public.estado_despacho_btb TO service_role;


--
-- Name: TABLE estado_despacho_btc; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estado_despacho_btc TO anon;
GRANT ALL ON TABLE public.estado_despacho_btc TO authenticated;
GRANT ALL ON TABLE public.estado_despacho_btc TO service_role;


--
-- Name: TABLE estado_envio; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estado_envio TO anon;
GRANT ALL ON TABLE public.estado_envio TO authenticated;
GRANT ALL ON TABLE public.estado_envio TO service_role;


--
-- Name: SEQUENCE estado_est_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.estado_est_id_seq TO anon;
GRANT ALL ON SEQUENCE public.estado_est_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.estado_est_id_seq TO service_role;


--
-- Name: TABLE estado_orden_compra; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.estado_orden_compra TO anon;
GRANT ALL ON TABLE public.estado_orden_compra TO authenticated;
GRANT ALL ON TABLE public.estado_orden_compra TO service_role;


--
-- Name: TABLE exclusividad_producto; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.exclusividad_producto TO anon;
GRANT ALL ON TABLE public.exclusividad_producto TO authenticated;
GRANT ALL ON TABLE public.exclusividad_producto TO service_role;


--
-- Name: SEQUENCE exclusividad_producto_ep_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.exclusividad_producto_ep_id_seq TO anon;
GRANT ALL ON SEQUENCE public.exclusividad_producto_ep_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.exclusividad_producto_ep_id_seq TO service_role;


--
-- Name: TABLE fase; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fase TO anon;
GRANT ALL ON TABLE public.fase TO authenticated;
GRANT ALL ON TABLE public.fase TO service_role;


--
-- Name: TABLE fase_compra; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fase_compra TO anon;
GRANT ALL ON TABLE public.fase_compra TO authenticated;
GRANT ALL ON TABLE public.fase_compra TO service_role;


--
-- Name: SEQUENCE fase_compra_fc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.fase_compra_fc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.fase_compra_fc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.fase_compra_fc_id_seq TO service_role;


--
-- Name: TABLE fase_diseno; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fase_diseno TO anon;
GRANT ALL ON TABLE public.fase_diseno TO authenticated;
GRANT ALL ON TABLE public.fase_diseno TO service_role;


--
-- Name: SEQUENCE fase_diseno_fd_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.fase_diseno_fd_id_seq TO anon;
GRANT ALL ON SEQUENCE public.fase_diseno_fd_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.fase_diseno_fd_id_seq TO service_role;


--
-- Name: SEQUENCE fase_f_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.fase_f_id_seq TO anon;
GRANT ALL ON SEQUENCE public.fase_f_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.fase_f_id_seq TO service_role;


--
-- Name: TABLE fase_logistica; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fase_logistica TO anon;
GRANT ALL ON TABLE public.fase_logistica TO authenticated;
GRANT ALL ON TABLE public.fase_logistica TO service_role;


--
-- Name: SEQUENCE fase_logistica_fl_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.fase_logistica_fl_id_seq TO anon;
GRANT ALL ON SEQUENCE public.fase_logistica_fl_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.fase_logistica_fl_id_seq TO service_role;


--
-- Name: TABLE fase_operativa; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fase_operativa TO anon;
GRANT ALL ON TABLE public.fase_operativa TO authenticated;
GRANT ALL ON TABLE public.fase_operativa TO service_role;


--
-- Name: SEQUENCE fase_operativa_fo_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.fase_operativa_fo_id_seq TO anon;
GRANT ALL ON SEQUENCE public.fase_operativa_fo_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.fase_operativa_fo_id_seq TO service_role;


--
-- Name: TABLE fase_post_venta; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.fase_post_venta TO anon;
GRANT ALL ON TABLE public.fase_post_venta TO authenticated;
GRANT ALL ON TABLE public.fase_post_venta TO service_role;


--
-- Name: SEQUENCE fase_post_venta_fpv_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.fase_post_venta_fpv_id_seq TO anon;
GRANT ALL ON SEQUENCE public.fase_post_venta_fpv_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.fase_post_venta_fpv_id_seq TO service_role;


--
-- Name: TABLE historico_empleado; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.historico_empleado TO anon;
GRANT ALL ON TABLE public.historico_empleado TO authenticated;
GRANT ALL ON TABLE public.historico_empleado TO service_role;


--
-- Name: SEQUENCE historico_empleado_hem_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.historico_empleado_hem_id_seq TO anon;
GRANT ALL ON SEQUENCE public.historico_empleado_hem_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.historico_empleado_hem_id_seq TO service_role;


--
-- Name: TABLE historico_orden_compra; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.historico_orden_compra TO anon;
GRANT ALL ON TABLE public.historico_orden_compra TO authenticated;
GRANT ALL ON TABLE public.historico_orden_compra TO service_role;


--
-- Name: SEQUENCE historico_orden_compra_hoc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.historico_orden_compra_hoc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.historico_orden_compra_hoc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.historico_orden_compra_hoc_id_seq TO service_role;


--
-- Name: TABLE historico_producto; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.historico_producto TO anon;
GRANT ALL ON TABLE public.historico_producto TO authenticated;
GRANT ALL ON TABLE public.historico_producto TO service_role;


--
-- Name: SEQUENCE historico_producto_hp_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.historico_producto_hp_id_seq TO anon;
GRANT ALL ON SEQUENCE public.historico_producto_hp_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.historico_producto_hp_id_seq TO service_role;


--
-- Name: TABLE historico_profesion; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.historico_profesion TO anon;
GRANT ALL ON TABLE public.historico_profesion TO authenticated;
GRANT ALL ON TABLE public.historico_profesion TO service_role;


--
-- Name: SEQUENCE historico_profesion_hprof_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.historico_profesion_hprof_id_seq TO anon;
GRANT ALL ON SEQUENCE public.historico_profesion_hprof_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.historico_profesion_hprof_id_seq TO service_role;


--
-- Name: TABLE lote_produccion; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.lote_produccion TO anon;
GRANT ALL ON TABLE public.lote_produccion TO authenticated;
GRANT ALL ON TABLE public.lote_produccion TO service_role;


--
-- Name: SEQUENCE lote_produccion_lp_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.lote_produccion_lp_id_seq TO anon;
GRANT ALL ON SEQUENCE public.lote_produccion_lp_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.lote_produccion_lp_id_seq TO service_role;


--
-- Name: TABLE lugar; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.lugar TO anon;
GRANT ALL ON TABLE public.lugar TO authenticated;
GRANT ALL ON TABLE public.lugar TO service_role;


--
-- Name: SEQUENCE lugar_l_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.lugar_l_id_seq TO anon;
GRANT ALL ON SEQUENCE public.lugar_l_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.lugar_l_id_seq TO service_role;


--
-- Name: TABLE material; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.material TO anon;
GRANT ALL ON TABLE public.material TO authenticated;
GRANT ALL ON TABLE public.material TO service_role;


--
-- Name: SEQUENCE material_m_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.material_m_id_seq TO anon;
GRANT ALL ON SEQUENCE public.material_m_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.material_m_id_seq TO service_role;


--
-- Name: TABLE membresia; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.membresia TO anon;
GRANT ALL ON TABLE public.membresia TO authenticated;
GRANT ALL ON TABLE public.membresia TO service_role;


--
-- Name: SEQUENCE membresia_mem_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.membresia_mem_id_seq TO anon;
GRANT ALL ON SEQUENCE public.membresia_mem_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.membresia_mem_id_seq TO service_role;


--
-- Name: TABLE mercado_secundario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.mercado_secundario TO anon;
GRANT ALL ON TABLE public.mercado_secundario TO authenticated;
GRANT ALL ON TABLE public.mercado_secundario TO service_role;


--
-- Name: SEQUENCE mercado_secundario_ms_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.mercado_secundario_ms_id_seq TO anon;
GRANT ALL ON SEQUENCE public.mercado_secundario_ms_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.mercado_secundario_ms_id_seq TO service_role;


--
-- Name: TABLE metodo_pago; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.metodo_pago TO anon;
GRANT ALL ON TABLE public.metodo_pago TO authenticated;
GRANT ALL ON TABLE public.metodo_pago TO service_role;


--
-- Name: SEQUENCE metodo_pago_mp_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.metodo_pago_mp_id_seq TO anon;
GRANT ALL ON SEQUENCE public.metodo_pago_mp_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.metodo_pago_mp_id_seq TO service_role;


--
-- Name: TABLE orden_compra; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.orden_compra TO anon;
GRANT ALL ON TABLE public.orden_compra TO authenticated;
GRANT ALL ON TABLE public.orden_compra TO service_role;


--
-- Name: SEQUENCE orden_compra_oc_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.orden_compra_oc_id_seq TO anon;
GRANT ALL ON SEQUENCE public.orden_compra_oc_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.orden_compra_oc_id_seq TO service_role;


--
-- Name: TABLE pago; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pago TO anon;
GRANT ALL ON TABLE public.pago TO authenticated;
GRANT ALL ON TABLE public.pago TO service_role;


--
-- Name: TABLE pago_nomina; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pago_nomina TO anon;
GRANT ALL ON TABLE public.pago_nomina TO authenticated;
GRANT ALL ON TABLE public.pago_nomina TO service_role;


--
-- Name: TABLE paypal; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.paypal TO anon;
GRANT ALL ON TABLE public.paypal TO authenticated;
GRANT ALL ON TABLE public.paypal TO service_role;


--
-- Name: TABLE pieza; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pieza TO anon;
GRANT ALL ON TABLE public.pieza TO authenticated;
GRANT ALL ON TABLE public.pieza TO service_role;


--
-- Name: TABLE pieza_caracteristica; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pieza_caracteristica TO anon;
GRANT ALL ON TABLE public.pieza_caracteristica TO authenticated;
GRANT ALL ON TABLE public.pieza_caracteristica TO service_role;


--
-- Name: SEQUENCE pieza_pie_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.pieza_pie_id_seq TO anon;
GRANT ALL ON SEQUENCE public.pieza_pie_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.pieza_pie_id_seq TO service_role;


--
-- Name: TABLE pre_nomina; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pre_nomina TO anon;
GRANT ALL ON TABLE public.pre_nomina TO authenticated;
GRANT ALL ON TABLE public.pre_nomina TO service_role;


--
-- Name: SEQUENCE pre_nomina_pn_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.pre_nomina_pn_id_seq TO anon;
GRANT ALL ON SEQUENCE public.pre_nomina_pn_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.pre_nomina_pn_id_seq TO service_role;


--
-- Name: TABLE privilegio; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.privilegio TO anon;
GRANT ALL ON TABLE public.privilegio TO authenticated;
GRANT ALL ON TABLE public.privilegio TO service_role;


--
-- Name: SEQUENCE privilegio_pri_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.privilegio_pri_id_seq TO anon;
GRANT ALL ON SEQUENCE public.privilegio_pri_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.privilegio_pri_id_seq TO service_role;


--
-- Name: TABLE producto_final; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.producto_final TO anon;
GRANT ALL ON TABLE public.producto_final TO authenticated;
GRANT ALL ON TABLE public.producto_final TO service_role;


--
-- Name: SEQUENCE producto_final_pf_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.producto_final_pf_id_seq TO anon;
GRANT ALL ON SEQUENCE public.producto_final_pf_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.producto_final_pf_id_seq TO service_role;


--
-- Name: TABLE profesion; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.profesion TO anon;
GRANT ALL ON TABLE public.profesion TO authenticated;
GRANT ALL ON TABLE public.profesion TO service_role;


--
-- Name: SEQUENCE profesion_prof_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.profesion_prof_id_seq TO anon;
GRANT ALL ON SEQUENCE public.profesion_prof_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.profesion_prof_id_seq TO service_role;


--
-- Name: TABLE proveedor; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.proveedor TO anon;
GRANT ALL ON TABLE public.proveedor TO authenticated;
GRANT ALL ON TABLE public.proveedor TO service_role;


--
-- Name: TABLE proveedor_material; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.proveedor_material TO anon;
GRANT ALL ON TABLE public.proveedor_material TO authenticated;
GRANT ALL ON TABLE public.proveedor_material TO service_role;


--
-- Name: SEQUENCE proveedor_material_pmat_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.proveedor_material_pmat_id_seq TO anon;
GRANT ALL ON SEQUENCE public.proveedor_material_pmat_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.proveedor_material_pmat_id_seq TO service_role;


--
-- Name: SEQUENCE proveedor_prov_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.proveedor_prov_id_seq TO anon;
GRANT ALL ON SEQUENCE public.proveedor_prov_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.proveedor_prov_id_seq TO service_role;


--
-- Name: TABLE prueba_calidad; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.prueba_calidad TO anon;
GRANT ALL ON TABLE public.prueba_calidad TO authenticated;
GRANT ALL ON TABLE public.prueba_calidad TO service_role;


--
-- Name: TABLE puja; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.puja TO anon;
GRANT ALL ON TABLE public.puja TO authenticated;
GRANT ALL ON TABLE public.puja TO service_role;


--
-- Name: SEQUENCE puja_pu_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.puja_pu_id_seq TO anon;
GRANT ALL ON SEQUENCE public.puja_pu_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.puja_pu_id_seq TO service_role;


--
-- Name: TABLE responsable; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.responsable TO anon;
GRANT ALL ON TABLE public.responsable TO authenticated;
GRANT ALL ON TABLE public.responsable TO service_role;


--
-- Name: SEQUENCE responsable_r_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.responsable_r_id_seq TO anon;
GRANT ALL ON SEQUENCE public.responsable_r_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.responsable_r_id_seq TO service_role;


--
-- Name: TABLE rol; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.rol TO anon;
GRANT ALL ON TABLE public.rol TO authenticated;
GRANT ALL ON TABLE public.rol TO service_role;


--
-- Name: TABLE rol_privilegio; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.rol_privilegio TO anon;
GRANT ALL ON TABLE public.rol_privilegio TO authenticated;
GRANT ALL ON TABLE public.rol_privilegio TO service_role;


--
-- Name: SEQUENCE rol_r_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.rol_r_id_seq TO anon;
GRANT ALL ON SEQUENCE public.rol_r_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.rol_r_id_seq TO service_role;


--
-- Name: TABLE sede; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.sede TO anon;
GRANT ALL ON TABLE public.sede TO authenticated;
GRANT ALL ON TABLE public.sede TO service_role;


--
-- Name: SEQUENCE sede_s_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.sede_s_id_seq TO anon;
GRANT ALL ON SEQUENCE public.sede_s_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.sede_s_id_seq TO service_role;


--
-- Name: TABLE subasta; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.subasta TO anon;
GRANT ALL ON TABLE public.subasta TO authenticated;
GRANT ALL ON TABLE public.subasta TO service_role;


--
-- Name: SEQUENCE subasta_su_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.subasta_su_id_seq TO anon;
GRANT ALL ON SEQUENCE public.subasta_su_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.subasta_su_id_seq TO service_role;


--
-- Name: TABLE tabulador_oficial; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.tabulador_oficial TO anon;
GRANT ALL ON TABLE public.tabulador_oficial TO authenticated;
GRANT ALL ON TABLE public.tabulador_oficial TO service_role;


--
-- Name: SEQUENCE tabulador_oficial_to_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.tabulador_oficial_to_id_seq TO anon;
GRANT ALL ON SEQUENCE public.tabulador_oficial_to_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.tabulador_oficial_to_id_seq TO service_role;


--
-- Name: TABLE tarjeta_credito; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.tarjeta_credito TO anon;
GRANT ALL ON TABLE public.tarjeta_credito TO authenticated;
GRANT ALL ON TABLE public.tarjeta_credito TO service_role;


--
-- Name: TABLE tarjeta_debito; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.tarjeta_debito TO anon;
GRANT ALL ON TABLE public.tarjeta_debito TO authenticated;
GRANT ALL ON TABLE public.tarjeta_debito TO service_role;


--
-- Name: TABLE transferencia_bancaria_internacional; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.transferencia_bancaria_internacional TO anon;
GRANT ALL ON TABLE public.transferencia_bancaria_internacional TO authenticated;
GRANT ALL ON TABLE public.transferencia_bancaria_internacional TO service_role;


--
-- Name: TABLE transportista; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.transportista TO anon;
GRANT ALL ON TABLE public.transportista TO authenticated;
GRANT ALL ON TABLE public.transportista TO service_role;


--
-- Name: SEQUENCE transportista_t_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.transportista_t_id_seq TO anon;
GRANT ALL ON SEQUENCE public.transportista_t_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.transportista_t_id_seq TO service_role;


--
-- Name: TABLE turno; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.turno TO anon;
GRANT ALL ON TABLE public.turno TO authenticated;
GRANT ALL ON TABLE public.turno TO service_role;


--
-- Name: SEQUENCE turno_tu_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.turno_tu_id_seq TO anon;
GRANT ALL ON SEQUENCE public.turno_tu_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.turno_tu_id_seq TO service_role;


--
-- Name: TABLE usuario; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.usuario TO anon;
GRANT ALL ON TABLE public.usuario TO authenticated;
GRANT ALL ON TABLE public.usuario TO service_role;


--
-- Name: SEQUENCE usuario_u_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.usuario_u_id_seq TO anon;
GRANT ALL ON SEQUENCE public.usuario_u_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.usuario_u_id_seq TO service_role;


--
-- Name: TABLE vinculo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.vinculo TO anon;
GRANT ALL ON TABLE public.vinculo TO authenticated;
GRANT ALL ON TABLE public.vinculo TO service_role;


--
-- Name: SEQUENCE vinculo_vi_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.vinculo_vi_id_seq TO anon;
GRANT ALL ON SEQUENCE public.vinculo_vi_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.vinculo_vi_id_seq TO service_role;


--
-- Name: TABLE messages; Type: ACL; Schema: realtime; Owner: supabase_realtime_admin
--

GRANT ALL ON TABLE realtime.messages TO postgres;
GRANT ALL ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON TABLE realtime.schema_migrations TO postgres;
GRANT ALL ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT ALL ON TABLE realtime.schema_migrations TO supabase_realtime_admin;


--
-- Name: TABLE subscription; Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON TABLE realtime.subscription TO postgres;
GRANT ALL ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT ALL ON TABLE realtime.subscription TO supabase_realtime_admin;


--
-- Name: SEQUENCE subscription_id_seq; Type: ACL; Schema: realtime; Owner: supabase_admin
--

GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;


--
-- Name: TABLE buckets; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

REVOKE ALL ON TABLE storage.buckets FROM supabase_storage_admin;
GRANT ALL ON TABLE storage.buckets TO supabase_storage_admin WITH GRANT OPTION;
GRANT ALL ON TABLE storage.buckets TO service_role;
GRANT ALL ON TABLE storage.buckets TO authenticated;
GRANT ALL ON TABLE storage.buckets TO anon;
GRANT ALL ON TABLE storage.buckets TO postgres WITH GRANT OPTION;


--
-- Name: TABLE buckets_analytics; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT ALL ON TABLE storage.buckets_analytics TO service_role;
GRANT ALL ON TABLE storage.buckets_analytics TO authenticated;
GRANT ALL ON TABLE storage.buckets_analytics TO anon;


--
-- Name: TABLE buckets_vectors; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT SELECT ON TABLE storage.buckets_vectors TO service_role;
GRANT SELECT ON TABLE storage.buckets_vectors TO authenticated;
GRANT SELECT ON TABLE storage.buckets_vectors TO anon;


--
-- Name: TABLE objects; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

REVOKE ALL ON TABLE storage.objects FROM supabase_storage_admin;
GRANT ALL ON TABLE storage.objects TO supabase_storage_admin WITH GRANT OPTION;
GRANT ALL ON TABLE storage.objects TO service_role;
GRANT ALL ON TABLE storage.objects TO authenticated;
GRANT ALL ON TABLE storage.objects TO anon;
GRANT ALL ON TABLE storage.objects TO postgres WITH GRANT OPTION;


--
-- Name: TABLE s3_multipart_uploads; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT ALL ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;


--
-- Name: TABLE s3_multipart_uploads_parts; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT ALL ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;


--
-- Name: TABLE vector_indexes; Type: ACL; Schema: storage; Owner: supabase_storage_admin
--

GRANT SELECT ON TABLE storage.vector_indexes TO service_role;
GRANT SELECT ON TABLE storage.vector_indexes TO authenticated;
GRANT SELECT ON TABLE storage.vector_indexes TO anon;


--
-- Name: TABLE secrets; Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT SELECT,REFERENCES,DELETE,TRUNCATE ON TABLE vault.secrets TO postgres WITH GRANT OPTION;
GRANT SELECT,DELETE ON TABLE vault.secrets TO service_role;


--
-- Name: TABLE decrypted_secrets; Type: ACL; Schema: vault; Owner: supabase_admin
--

GRANT SELECT,REFERENCES,DELETE,TRUNCATE ON TABLE vault.decrypted_secrets TO postgres WITH GRANT OPTION;
GRANT SELECT,DELETE ON TABLE vault.decrypted_secrets TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: auth; Owner: supabase_auth_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: auth; Owner: supabase_auth_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: auth; Owner: supabase_auth_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: extensions; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: extensions; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: extensions; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON TABLES TO postgres WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: graphql; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: graphql; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: graphql; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: graphql_public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: graphql_public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: graphql_public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: realtime; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: realtime; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: realtime; Owner: supabase_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES TO dashboard_user;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: storage; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: storage; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: storage; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO service_role;


--
-- Name: ensure_rls; Type: EVENT TRIGGER; Schema: -; Owner: postgres
--

CREATE EVENT TRIGGER ensure_rls ON ddl_command_end
         WHEN TAG IN ('CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO')
   EXECUTE FUNCTION public.rls_auto_enable();


ALTER EVENT TRIGGER ensure_rls OWNER TO postgres;

--
-- Name: issue_graphql_placeholder; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();


ALTER EVENT TRIGGER issue_graphql_placeholder OWNER TO supabase_admin;

--
-- Name: issue_pg_cron_access; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();


ALTER EVENT TRIGGER issue_pg_cron_access OWNER TO supabase_admin;

--
-- Name: issue_pg_graphql_access; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();


ALTER EVENT TRIGGER issue_pg_graphql_access OWNER TO supabase_admin;

--
-- Name: issue_pg_net_access; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();


ALTER EVENT TRIGGER issue_pg_net_access OWNER TO supabase_admin;

--
-- Name: pgrst_ddl_watch; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();


ALTER EVENT TRIGGER pgrst_ddl_watch OWNER TO supabase_admin;

--
-- Name: pgrst_drop_watch; Type: EVENT TRIGGER; Schema: -; Owner: supabase_admin
--

CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();


ALTER EVENT TRIGGER pgrst_drop_watch OWNER TO supabase_admin;

--
-- PostgreSQL database dump complete
--

\unrestrict mfXEQj3EScpFnDfIPd2f4c0d2I5Z9CPgNhvXFMKc58tQIznSXILEMfcmYqE2VuL

