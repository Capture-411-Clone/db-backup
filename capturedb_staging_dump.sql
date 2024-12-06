Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+1)

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

--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id bigint NOT NULL,
    name text,
    full_name text,
    phone_number text,
    address text,
    town_city text,
    state text,
    zip_code text,
    country text,
    "default" boolean,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addresses_id_seq OWNER TO postgres;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: agencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agencies (
    id bigint NOT NULL,
    name character varying(200),
    acronym character varying(10),
    department_id bigint,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.agencies OWNER TO postgres;

--
-- Name: agencies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.agencies_id_seq OWNER TO postgres;

--
-- Name: agencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agencies_id_seq OWNED BY public.agencies.id;


--
-- Name: attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attachments (
    id bigint NOT NULL,
    path text,
    document_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.attachments OWNER TO postgres;

--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attachments_id_seq OWNER TO postgres;

--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- Name: capture_costs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.capture_costs (
    id bigint NOT NULL,
    company_name text,
    full_name text,
    email text,
    manager_count bigint,
    hourly_rate bigint,
    annual_pipeline_time bigint,
    company_annual_cost bigint,
    company_capture411_cost bigint,
    company_savings bigint,
    company_hours_saved bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.capture_costs OWNER TO postgres;

--
-- Name: capture_costs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.capture_costs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.capture_costs_id_seq OWNER TO postgres;

--
-- Name: capture_costs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.capture_costs_id_seq OWNED BY public.capture_costs.id;


--
-- Name: contract_vehicles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contract_vehicles (
    id bigint NOT NULL,
    name character varying(200),
    acronym character varying(10),
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.contract_vehicles OWNER TO postgres;

--
-- Name: contract_vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contract_vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contract_vehicles_id_seq OWNER TO postgres;

--
-- Name: contract_vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contract_vehicles_id_seq OWNED BY public.contract_vehicles.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying(200),
    acronym character varying(10),
    market_id bigint,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_id_seq OWNER TO postgres;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documents (
    id bigint NOT NULL,
    title character varying(200),
    file_path character varying(200),
    priority bigint,
    link_type text,
    user_id bigint,
    staff_id bigint,
    owner_id bigint,
    owner_type text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.documents OWNER TO postgres;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documents_id_seq OWNER TO postgres;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: entity_hunts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_hunts (
    id bigint NOT NULL,
    details jsonb,
    solicitation_number text,
    year character varying(4),
    file_name text,
    file_path text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.entity_hunts OWNER TO postgres;

--
-- Name: entity_hunts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.entity_hunts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.entity_hunts_id_seq OWNER TO postgres;

--
-- Name: entity_hunts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.entity_hunts_id_seq OWNED BY public.entity_hunts.id;


--
-- Name: fiscal_years; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fiscal_years (
    id bigint NOT NULL,
    user_id bigint,
    year character varying(4),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.fiscal_years OWNER TO postgres;

--
-- Name: fiscal_years_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fiscal_years_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fiscal_years_id_seq OWNER TO postgres;

--
-- Name: fiscal_years_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fiscal_years_id_seq OWNED BY public.fiscal_years.id;


--
-- Name: invites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invites (
    id bigint NOT NULL,
    code text,
    "limit" bigint,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.invites OWNER TO postgres;

--
-- Name: invites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.invites_id_seq OWNER TO postgres;

--
-- Name: invites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invites_id_seq OWNED BY public.invites.id;


--
-- Name: markets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.markets (
    id bigint NOT NULL,
    name character varying(200),
    acronym character varying(10),
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.markets OWNER TO postgres;

--
-- Name: markets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.markets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.markets_id_seq OWNER TO postgres;

--
-- Name: markets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.markets_id_seq OWNED BY public.markets.id;


--
-- Name: naics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.naics (
    id bigint NOT NULL,
    name character varying(200),
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.naics OWNER TO postgres;

--
-- Name: naics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.naics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.naics_id_seq OWNER TO postgres;

--
-- Name: naics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.naics_id_seq OWNED BY public.naics.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    body character varying(2000),
    recipient character varying(1000),
    driver text,
    seen boolean,
    sender_user_id bigint,
    target_user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint,
    subject character varying(2000)
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notifications_id_seq OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offices (
    id bigint NOT NULL,
    name character varying(200),
    acronym character varying(10),
    parent_id bigint,
    agency_id bigint,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.offices OWNER TO postgres;

--
-- Name: offices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.offices_id_seq OWNER TO postgres;

--
-- Name: offices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.offices_id_seq OWNED BY public.offices.id;


--
-- Name: opportunities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opportunities (
    id bigint NOT NULL,
    title character varying(2000),
    description text,
    user_knows_contract_value boolean,
    user_contract_value text,
    crawler_contract_value text,
    solicitation_number text,
    multi_award boolean,
    user_id bigint,
    staff_id bigint,
    approved_at timestamp with time zone,
    requested boolean,
    duplicated boolean,
    deprecated boolean,
    need_to_review boolean,
    market text,
    department text,
    agency text,
    office text,
    naics text,
    fiscal_year text,
    set_aside text,
    contract_vehicle text,
    is_draft boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.opportunities OWNER TO postgres;

--
-- Name: opportunities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opportunities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.opportunities_id_seq OWNER TO postgres;

--
-- Name: opportunities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opportunities_id_seq OWNED BY public.opportunities.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    failed_reason character varying(200),
    price_amount numeric,
    paid_at timestamp with time zone,
    opportunity_id bigint,
    stripe_event_id text,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint,
    refunded_at timestamp with time zone
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: passive_revenues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.passive_revenues (
    id bigint NOT NULL,
    company_name text,
    full_name text,
    email text,
    level_one_count bigint,
    level_two_count bigint,
    level_three_count bigint,
    level_four_count bigint,
    level_five_count bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.passive_revenues OWNER TO postgres;

--
-- Name: passive_revenues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.passive_revenues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.passive_revenues_id_seq OWNER TO postgres;

--
-- Name: passive_revenues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.passive_revenues_id_seq OWNED BY public.passive_revenues.id;


--
-- Name: register_invites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register_invites (
    id bigint NOT NULL,
    host_id bigint,
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.register_invites OWNER TO postgres;

--
-- Name: register_invites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.register_invites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.register_invites_id_seq OWNER TO postgres;

--
-- Name: register_invites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.register_invites_id_seq OWNED BY public.register_invites.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    title character varying(100),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: set_asides; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.set_asides (
    id bigint NOT NULL,
    name character varying(200),
    acronym character varying(10),
    user_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.set_asides OWNER TO postgres;

--
-- Name: set_asides_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.set_asides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.set_asides_id_seq OWNER TO postgres;

--
-- Name: set_asides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.set_asides_id_seq OWNED BY public.set_asides.id;


--
-- Name: site_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.site_infos (
    id bigint NOT NULL,
    company_name text,
    mission_statement text,
    history text,
    goal text,
    value text,
    achievement text,
    member text,
    general_contact text,
    address text,
    social_media text,
    phone_number text,
    email_address text,
    office_hours text,
    physical_address text,
    map_or_directions text,
    emergency_contact text,
    feedback_link text,
    support_link text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.site_infos OWNER TO postgres;

--
-- Name: site_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.site_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.site_infos_id_seq OWNER TO postgres;

--
-- Name: site_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.site_infos_id_seq OWNED BY public.site_infos.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tokens (
    id bigint NOT NULL,
    user_id bigint,
    access_token text,
    refresh_token text,
    created_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.tokens OWNER TO postgres;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tokens_id_seq OWNER TO postgres;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_role (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    title character varying(100),
    name character varying(100),
    email character varying(256),
    phone character varying(20),
    id_code character varying(100),
    password character varying(256),
    last_name character varying(100),
    username character varying(100),
    date_of_birth timestamp with time zone,
    gender text,
    address text,
    town_city text,
    state text,
    zip_code text,
    country text,
    company_name text,
    suspended_at timestamp with time zone,
    phone_verified_at timestamp with time zone,
    email_verified_at timestamp with time zone,
    profile_completed_at timestamp with time zone,
    policy_approved_at timestamp with time zone,
    contributor_id bigint,
    referral_code character varying(100),
    referred_with_code character varying(100),
    should_change_password boolean DEFAULT false,
    stripe_customer_id character varying(100),
    subscription_id character varying(100),
    subscription jsonb,
    credits bigint DEFAULT 0,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint,
    sam_uei_code character varying(100)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: verifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verifications (
    id bigint NOT NULL,
    phone character varying(20),
    email character varying(256),
    code character varying(10),
    session_code character varying(256),
    exchanged_at timestamp with time zone,
    expires_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.verifications OWNER TO postgres;

--
-- Name: verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.verifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.verifications_id_seq OWNER TO postgres;

--
-- Name: verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.verifications_id_seq OWNED BY public.verifications.id;


--
-- Name: wishlists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wishlists (
    id bigint NOT NULL,
    user_id bigint,
    opportunity_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at bigint
);


ALTER TABLE public.wishlists OWNER TO postgres;

--
-- Name: wishlists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wishlists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wishlists_id_seq OWNER TO postgres;

--
-- Name: wishlists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wishlists_id_seq OWNED BY public.wishlists.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: agencies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencies ALTER COLUMN id SET DEFAULT nextval('public.agencies_id_seq'::regclass);


--
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- Name: capture_costs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capture_costs ALTER COLUMN id SET DEFAULT nextval('public.capture_costs_id_seq'::regclass);


--
-- Name: contract_vehicles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_vehicles ALTER COLUMN id SET DEFAULT nextval('public.contract_vehicles_id_seq'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: entity_hunts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_hunts ALTER COLUMN id SET DEFAULT nextval('public.entity_hunts_id_seq'::regclass);


--
-- Name: fiscal_years id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiscal_years ALTER COLUMN id SET DEFAULT nextval('public.fiscal_years_id_seq'::regclass);


--
-- Name: invites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invites ALTER COLUMN id SET DEFAULT nextval('public.invites_id_seq'::regclass);


--
-- Name: markets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.markets ALTER COLUMN id SET DEFAULT nextval('public.markets_id_seq'::regclass);


--
-- Name: naics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.naics ALTER COLUMN id SET DEFAULT nextval('public.naics_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: offices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices ALTER COLUMN id SET DEFAULT nextval('public.offices_id_seq'::regclass);


--
-- Name: opportunities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opportunities ALTER COLUMN id SET DEFAULT nextval('public.opportunities_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: passive_revenues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passive_revenues ALTER COLUMN id SET DEFAULT nextval('public.passive_revenues_id_seq'::regclass);


--
-- Name: register_invites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_invites ALTER COLUMN id SET DEFAULT nextval('public.register_invites_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: set_asides id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.set_asides ALTER COLUMN id SET DEFAULT nextval('public.set_asides_id_seq'::regclass);


--
-- Name: site_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site_infos ALTER COLUMN id SET DEFAULT nextval('public.site_infos_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: verifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications ALTER COLUMN id SET DEFAULT nextval('public.verifications_id_seq'::regclass);


--
-- Name: wishlists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlists ALTER COLUMN id SET DEFAULT nextval('public.wishlists_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addresses (id, name, full_name, phone_number, address, town_city, state, zip_code, country, "default", user_id, created_at, updated_at, deleted_at) FROM stdin;
1		Melody Kuphal	(283) 892-6806	373 Rosalee Motorway Apt. 621	Emilioburgh	Washington	09173-4875	USA	t	1	2024-05-28 09:13:29.120462+00	2024-05-28 09:13:29.120462+00	0
2		Beverly O'Conner	(474) 815-5344	1192 Liliana Meadows Suite 759	New Sandyside	CA	12345	USA	t	1	2024-05-28 09:13:29.120462+00	2024-05-28 09:13:29.120462+00	0
3		John Doe	(867)-586-9884	7502 Spencer Parkway Apt. 369	New Alice	New Jersey	02800-3919	USA	t	1	2024-05-28 09:13:29.120462+00	2024-05-28 09:13:29.120462+00	0
\.


--
-- Data for Name: agencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agencies (id, name, acronym, department_id, user_id, created_at, updated_at, deleted_at) FROM stdin;
55	ARMY RESERVE COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
56	ARMY SOUTH		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
1	AIR COMBAT COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
2	AIR EDUCATION AND TRAINING COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
3	AIR FORCE ACADEMY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
4	AIR FORCE AGENCY FOR MODELING AND SIMULATION		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
5	AIR FORCE COST ANALYSIS AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
6	AIR FORCE DISTRICT OF WASHINGTON		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
7	AIR FORCE GLOBAL STRIKE COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
8	AIR FORCE INSPECTION AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
9	AIR FORCE LEGAL OPERATIONS AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
10	AIR FORCE LOGISTICS MANAGEMENT AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
11	AIR FORCE MATERIEL COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
12	AIR FORCE MEDICAL SERVICE		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
13	AIR FORCE OFFICE OF SPECIAL INVESTIGATIONS		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
14	AIR FORCE OPERATIONS GROUP		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
15	AIR FORCE PERSONNEL CENTER		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
16	AIR FORCE PERSONNEL OPERATIONS AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
17	AIR FORCE PROGRAM EXECUTIVE OFFICE		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
18	AIR FORCE RESERVE COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
19	AIR FORCE REVIEW BOARDS AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
20	AIR FORCE SAFETY CENTER		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
21	AIR FORCES EUROPE AND AIR FORCES AFRICA		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
22	AIR MOBILITY COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
23	AIR NATIONAL GUARD		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
24	AIR NATIONAL READINESS CENTER		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
25	CIVIL AIR PATROL		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
26	FLIGHT STANDARDS AGENCY		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
27	LOGISTICS INSTALLATION AND MISSION SUPPORT		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
28	NATIONAL AIR AND SPACE INTELLIGENCE CENTER		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
29	NORTH AMERICAN AEROSPACE DEFENSE COMMAND (NORAD)		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
30	OFFICE OF THE CHIEF OF STAFF OF THE AIR FORCE		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
31	OFFICE OF THE DEPUTY CHIEF OF STAFF FOR THE AIR SPACE AND INFORMATION OPERATION PLANS AND REQUIREMENTS		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
32	OFFICE OF THE INSPECTOR GENERAL		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
33	OFFICE OF THE SECRETARY OF THE AIR FORCE		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
34	OFFICE OF WARFIGHTING INTEGRATION AND CHIEF INFORMATION OFFICER		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
35	OPERATIONAL TEST AND EVALUATION CENTER		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
36	PACIFIC AIR FORCES		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
37	SPECIAL OPERATIONS COMMAND		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
38	US SPACE FORCE		1	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
39	ARLINGTON NATIONAL CEMETERY		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
40	ARMY CENTRAL		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
41	ARMY CORPS OF ENGINEERS		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
42	ARMY CRIMINAL INVESTIGATION COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
43	ARMY CYBER COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
44	ARMY EUROPE		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
45	ARMY FORCES COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
46	ARMY FUTURES COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
47	ARMY HUMAN RESOURCES COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
48	ARMY INTELLIGENCE AND SECURITY COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
49	ARMY JUDGE ADVOCATE GENERAL'S CORPS		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
50	ARMY MATERIEL COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
51	ARMY MEDICAL COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
52	ARMY MILITARY DISTRICT OF WASHINGTON		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
53	ARMY NORTH		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
54	ARMY PACIFIC		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
575	OFFICE OF MANAGEMENT		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
57	ARMY SPACE & MISSILE DEFENSE COMMAND/ARMY FORCES STRATEGIC COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
58	ARMY SPECIAL OPERATIONS COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
59	ARMY TEST AND EVALUATION COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
60	ARMY TRAINING AND DOCTRINE COMMAND		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
61	ARMY WAR COLLEGE		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
62	ASA ACQUISITION, LOGISTICS AND TECHNOLOGY		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
63	CHIEF INFORMATION OFFICER/G-6		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
64	CHIEF OF STAFF OF THE ARMY		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
65	COMMAND AND CONTROL SUPPORT AGENCY		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
66	EIGHTH ARMY KOREA		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
67	NATIONAL GUARD BUREAU		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
68	SECRETARY OF THE ARMY		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
69	SUPREME HEADQUARTERS, ALLIED POWERS EUROPE (SHAPE)		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
70	US MILITARY ACADEMY		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
71	US MILITARY OBSERVERS GROUP		2	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
72	ARMY/AIR FORCE EXCHANGE SERVICE		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
73	DEFENSE ACQUISITION UNIVERSITY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
74	DEFENSE ADVANCED RESEARCH PROJECTS AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
75	DEFENSE COMMISSARY AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
76	DEFENSE CONTRACT AUDIT AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
77	DEFENSE CONTRACT MANAGEMENT AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
78	DEFENSE COUNTERINTELLIGENCE AND SECURITY AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
79	DEFENSE CRIMINAL INVESTIGATIVE SERVICE		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
80	DEFENSE FINANCE AND ACCOUNTING SERVICE		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
81	DEFENSE HEALTH AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
82	DEFENSE INFORMATION SYSTEMS AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
83	DEFENSE INTELLIGENCE AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
84	DEFENSE LEGAL SERVICES AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
85	DEFENSE LOGISTICS AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
86	DEFENSE SECURITY COOPERATION AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
87	DEFENSE THREAT REDUCTION AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
88	DOD EDUCATION ACTIVITY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
89	JOINT CHIEFS OF STAFF		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
90	MISSILE DEFENSE AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
91	NATIONAL GEOSPATIAL-INTELLIGENCE AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
92	NATIONAL RECONNAISSANCE OFFICE		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
93	NATIONAL SECURITY AGENCY		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
94	OFFICE OF THE SECRETARY OF DEFENSE		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
95	UNDERSECRETARY FOR RESEARCH & ENGINEERING (R&E)		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
96	US AFRICA COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
97	US CENTRAL COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
98	US CYBER COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
99	US EUROPEAN COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
100	US INDO-PACIFIC COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
101	US NORTHERN COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
102	US SOUTHERN COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
103	US SPACE COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
104	US SPECIAL OPERATIONS COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
105	US STRATEGIC COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
106	US TRANSPORTATION COMMAND		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
107	WASHINGTON HEADQUARTERS SERVICE		3	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
108	AVIATION DEPARTMENT		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
109	COMMAND, CONTROL, COMMUNICATIONS AND COMPUTERS		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
110	COMMANDANT OF THE MARINE CORPS		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
111	HEADQUARTERS BATTALION		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
112	INSTALLATIONS AND LOGISTICS DEPARTMENT		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
113	INTELLIGENCE DEPARTMENT		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
114	MANPOWER AND RESERVE AFFAIRS		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
115	MARINE CORPS COMBAT DEVELOPMENT COMMAND, COMBAT DEVELOPMENT & INTEGRATION		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
116	MARINE CORPS COMMUNITY SERVICES		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
117	MARINE CORPS LOGISTICS COMMAND		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
118	MARINE CORPS RECRUITING COMMAND		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
119	MARINE CORPS SYSTEMS COMMAND		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
120	MARINE CORPS UNIFORM BOARD		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
121	MARINE FORCES COMMAND		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
122	PROGRAMS AND RESOURCES		4	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
123	ASST SEC OF THE NAVY (ENERGY, INSTALLATIONS AND ENVIRONMENT)		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
124	ASST SEC OF THE NAVY (FINANCIAL MANAGEMENT AND COMPTROLLER)		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
125	ASST SEC OF THE NAVY (MANPOWER AND RESERVE AFFAIRS)		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
126	ASST SEC OF THE NAVY (RESEARCH, DEVELOPMENT AND ACQUISITION)		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
127	BUREAU OF MEDICINE AND SURGERY		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
128	CHIEF OF NAVAL OPERATIONS		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
129	COMMANDER NAVY INSTALLATIONS COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
130	MILITARY SEALIFT COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
131	NAVAL AIR SYSTEMS COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
132	NAVAL AVIATION WARFIGHTING DEVELOPMENT CENTER		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
133	NAVAL EDUCATION AND TRAINING COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
134	NAVAL FACILITIES ENGINEERING SYSTEMS COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
135	NAVAL FORCES SOUTHERN COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
136	NAVAL INFORMATION WARFARE SYSTEMS COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
137	NAVAL NETWORK WARFARE COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
138	NAVAL SEA SYSTEMS COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
139	NAVAL SPECIAL WARFARE COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
140	NAVAL SUPPLY SYSTEMS COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
141	NAVY PERSONNEL COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
142	NAVY RESERVE FORCE		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
143	OFFICE OF NAVAL INTELLIGENCE		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
144	OFFICE OF NAVAL RESEARCH		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
145	SECRETARY OF THE NAVY		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
146	STRATEGIC SYSTEMS PROGRAMS		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
147	US FLEET FORCES COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
148	US NAVAL FORCES CENTRAL COMMAND		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
149	US NAVAL FORCES EUROPE AFRICA/US 6TH FLEET		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
150	US PACIFIC FLEET		5	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
151	BUREAU FOR AFRICA		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
152	BUREAU FOR ASIA		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
153	BUREAU FOR CONFLICT PREVENTION AND STABILIZATION		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
154	BUREAU FOR DEVELOPMENT, DEMOCRACY, AND INNOVATION		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
155	BUREAU FOR EUROPE AND EURASIA		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
156	BUREAU FOR FOREIGN ASSISTANCE (CODE FA)		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
157	BUREAU FOR GLOBAL HEALTH		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
158	BUREAU FOR HUMANITARIAN ASSISTANCE		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
159	BUREAU FOR LATIN AMERICA AND THE CARIBBEAN		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
160	BUREAU FOR LEGISLATIVE AND PUBLIC AFFAIRS		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
161	BUREAU FOR MANAGEMENT (CODE M)		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
162	BUREAU FOR MIDDLE EAST		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
163	BUREAU FOR POLICY, PLANNING AND LEARNING		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
164	BUREAU FOR RESILIENCE FOOD SECURITY		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
165	OFFICE OF SECURITY (CODE SEC)		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
166	OFFICE OF THE ADMINISTRATOR (CODE A/AID)		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
167	OFFICE OF THE CHIEF OPERATING OFFICER (CODE A/AID/COO)		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
168	OFFICE OF THE EXECUTIVE SECRETARIAT (CODE ES)		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
169	OFFICE OF THE SMALL AND DISADVANTAGED BUSINESS UTILIZATION		8	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
170	AGRICULTURAL MARKETING SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
171	AGRICULTURAL RESEARCH SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
172	ANIMAL AND PLANT HEALTH INSPECTION SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
173	COMMODITY CREDIT CORP		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
174	DEPARTMENTAL ADMINISTRATION		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
175	ECONOMIC RESEARCH SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
176	FARM PRODUCTION AND CONSERVATION BUSINESS CENTER		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
177	FARM SERVICE AGENCY		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
178	FOOD AND NUTRITION SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
179	FOOD SAFETY AND INSPECTION SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
180	FOREIGN AGRICULTURAL SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
181	FOREST SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
182	NATIONAL AGRICULTURAL LIBRARY		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
183	NATIONAL AGRICULTURAL STATISTICS SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
184	NATIONAL INSTITUTE OF FOOD AND AGRICULTURE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
185	NATURAL RESOURCES CONSERVATION SERVICE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
186	OFFICE OF COMMUNICATIONS		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
187	OFFICE OF THE CHIEF FINANCIAL OFFICER		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
188	OFFICE OF THE CHIEF INFORMATION OFFICER		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
189	OFFICE OF THE EXECUTIVE SECRETARIAT		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
190	OFFICE OF THE GENERAL COUNSEL		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
191	OFFICE OF THE INSPECTOR GENERAL		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
192	RISK MANAGEMENT AGENCY		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
193	RURAL DEVELOPMENT		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
194	SECRETARY OF AGRICULTURE		9	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
195	US NAVAL HOME		13	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
196	CHIEF INFORMATION OFFICER		15	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
197	ASSISTANT SECRETARY FOR LEGISLATIVE AND INTERGOVERNMENTAL AFFAIRS		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
198	BUREAU OF INDUSTRY AND SECURITY		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
199	CHIEF FINANCIAL OFFICER AND ASSISTANT SECRETARY FOR ADMINISTRATION		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
200	CHIEF INFORMATION OFFICER		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
201	ECONOMIC DEVELOPMENT ADMINISTRATION		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
202	ECONOMICS AND STATISTICS ADMINISTRATION		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
203	GENERAL COUNSEL		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
204	INSPECTOR GENERAL		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
205	INTERNATIONAL TRADE ADMINISTRATION		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
206	MINORITY BUSINESS DEVELOPMENT AGENCY		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
207	NATIONAL INSTITUTE OF STANDARDS AND TECHNOLOGY		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
208	NATIONAL OCEANIC AND ATMOSPHERIC ADMINISTRATION		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
209	NATIONAL TECHNICAL INFORMATION SERVICE		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
210	NATIONAL TELECOMMUNICATIONS AND INFORMATION ADMINISTRATION		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
211	PATENT AND TRADEMARK OFFICE		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
212	SECRETARY OF COMMERCE		17	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
213	ARCHITECT OF THE CAPITOL		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
214	CONGRESSIONAL BUDGET OFFICE		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
215	GOVERNMENT ACCOUNTABILITY OFFICE		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
216	GOVERNMENT PUBLISHING OFFICE		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
217	HOUSE OF REPRESENTATIVES		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
218	LIBRARY OF CONGRESS		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
219	MEDICARE PAYMENT ADVISORY COMMISSION		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
220	SENATE		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
221	US CAPITOL PRESERVATION COMMISSION		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
222	US TAX COURT		21	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
223	DISTRICT OF COLUMBIA PRETRIAL SERVICES AGENCY		25	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
224	OFFICE OF THE DIRECTOR		25	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
225	CHIEF FINANCIAL OFFICER		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
226	CHIEF INFORMATION OFFICER		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
227	ENGLISH LANGUAGE ACQUISITION		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
228	FEDERAL STUDENT AID		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
229	GENERAL COUNSEL		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
230	INNOVATION AND IMPROVEMENT		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
231	INSPECTOR GENERAL		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
232	OFFICE FOR CIVIL RIGHTS		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
233	OFFICE OF ELEMENTARY AND SECONDARY EDUCATION		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
234	OFFICE OF MANAGEMENT		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
235	OFFICE OF SPECIAL EDUCATION AND REHABILITATIVE SERVICES		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
236	OFFICE OF VOCATIONAL AND ADULT EDUCATION		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
237	POSTSECONDARY EDUCATION		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
238	SECRETARY OF EDUCATION		29	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
239	FEDERAL ENERGY REGULATORY COMMISSION		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
240	KNOLLS ATOMIC POWER LABORATORY		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
241	NATIONAL ENERGY TECHNOLOGY LABORATORY		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
242	NATIONAL NUCLEAR SECURITY ADMINISTRATION		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
243	OFFICE OF THE UNDER SECRETARY FOR INFRASTRUCTURE		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
244	SECRETARY OF ENERGY		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
245	UNDER SECRETARY FOR SCIENCE AND INNOVATION		31	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
246	ADMINISTRATOR		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
247	ENVIRONMENTAL INFORMATION		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
248	OFFICE OF AIR AND RADIATION		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
249	OFFICE OF CHEMICAL SAFETY AND POLLUTION PREVENTION		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
250	OFFICE OF ENFORCEMENT AND COMPLIANCE ASSURANCE		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
251	OFFICE OF GENERAL COUNSEL		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
252	OFFICE OF LAND AND EMERGENCY MANAGEMENT		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
253	OFFICE OF MISSION SUPPORT		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
254	OFFICE OF RESEARCH AND DEVELOPMENT		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
255	OFFICE OF THE CHIEF FINANCIAL OFFICER		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
256	OFFICE OF WATER		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
257	REGIONAL OPERATIONS AND STATE/LOCAL RELATIONS		32	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
258	INTERAGENCY COMMITTEE ON EMPLOYMENT OF PEOPLE WITH DISABILITIES		33	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
259	OFFICE OF ADMINISTRATION		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
260	OFFICE OF MANAGEMENT AND BUDGET		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
261	OFFICE OF THE DIRECTOR OF NATIONAL INTELLIGENCE		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
262	OFFICE OF THE NATIONAL DRUG CONTROL POLICY		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
263	OFFICE OF THE US TRADE REPRESENTATIVE		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
264	RECOVERY ACCOUNTABILITY AND TRANSPARENCY BOARD		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
265	WHITE HOUSE OFFICE		34	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
266	CONSUMER AND GOVERNMENTAL AFFAIRS BUREAU		37	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
267	MANAGING DIRECTOR		37	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
268	OFFICE OF ENGINEERING AND TECHNOLOGY (OET)		37	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
269	PUBLIC SAFETY AND HOMELAND SECURITY BUREAU		37	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
270	DIVISION OF ADMINISTRATION		38	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
271	DIVISION OF INFORMATION TECHNOLOGY		38	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
272	DIVISION OF RESOLUTIONS AND RECEIVERSHIPS		38	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
273	HEADQUARTERS		38	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
274	BUREAU OF CONSUMER PROTECTION		48	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
275	FEDERAL ACQUISITION SERVICE		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
276	GENERAL SERVICES ADMINISTRATION INFORMATION TECHNOLOGY (GSA IT)		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
277	OFFICE OF ADMINISTRATIVE SERVICES		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
278	OFFICE OF CIVIL RIGHTS		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
279	OFFICE OF EMERGENCY RESPONSE AND RECOVERY		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
280	OFFICE OF GENERAL COUNSEL		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
281	OFFICE OF GOVERNMENTWIDE POLICY		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
282	OFFICE OF HUMAN RESOURCES MANAGEMENT		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
283	OFFICE OF INSPECTOR GENERAL		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
284	OFFICE OF SMALL AND DISADVANTAGED BUSINESS UTILIZATION		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
285	OFFICE OF THE ADMINISTRATOR		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
286	OFFICE OF THE CHIEF FINANCIAL OFFICER		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
287	PUBLIC BUILDINGS SERVICE		49	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
288	ADMINISTRATION FOR CHILDREN AND FAMILIES		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
361	US GEOLOGICAL SURVEY		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
289	ADMINISTRATION FOR COMMUNITY LIVING		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
290	AGENCY FOR HEALTHCARE RESEARCH AND QUALITY		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
291	CENTERS FOR DISEASE CONTROL AND PREVENTION		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
292	CENTERS FOR MEDICARE AND MEDICAID SERVICES		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
293	FOOD AND DRUG ADMINISTRATION		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
294	HEALTH RESOURCES AND SERVICES ADMINISTRATION		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
295	INDIAN HEALTH SERVICE		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
296	NATIONAL INSTITUTES OF HEALTH		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
297	OFFICE OF ACQUISITION MANAGEMENT AND POLICY		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
298	OFFICE OF THE SECRETARY OF HEALTH AND HUMAN SERVICES		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
299	PROGRAM SUPPORT CENTER		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
300	SUBSTANCE ABUSE AND MENTAL HEALTH SERVICES ADMINISTRATION		52	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
301	COUNTERING WEAPONS OF MASS DESTRUCTION OFFICE		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
302	CUSTOMS AND BORDER PROTECTION		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
303	CYBERSECURITY AND INFRASTRUCTURE SECURITY AGENCY		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
304	FEDERAL EMERGENCY MANAGEMENT AGENCY		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
305	FEDERAL LAW ENFORCEMENT TRAINING CENTER		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
306	IMMIGRATION AND CUSTOMS ENFORCEMENT		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
307	MANAGEMENT DIRECTORATE		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
308	OFFICE OF INTELLIGENCE AND ANALYSIS		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
309	OFFICE OF OPERATIONS COORDINATION		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
310	OFFICE OF STRATEGY, POLICY, AND PLANS		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
311	OFFICE OF THE SECRETARY		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
312	SCIENCE AND TECHNOLOGY DIRECTORATE		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
313	TRANSPORTATION SECURITY ADMINISTRATION		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
314	US CITIZENSHIP AND IMMIGRATION SERVICES		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
315	US COAST GUARD		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
316	US SECRET SERVICE		53	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
317	ADMINISTRATION		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
318	CHIEF FINANCIAL OFFICER		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
319	CHIEF INFORMATION OFFICER		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
320	CHIEF PROCUREMENT OFFICER		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
321	COMMUNITY PLANNING AND DEVELOPMENT		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
322	DEPARTMENTAL ENFORCEMENT CENTER		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
323	DEPARTMENTAL REAL ESTATE ASSESSMENT CENTER		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
324	FAIR HOUSING AND EQUAL OPPORTUNITY		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
325	FEDERAL HOUSING ENTERPRISE OVERSIGHT		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
326	GENERAL COUNSEL		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
327	GOVERNMENT NATIONAL MORTGAGE ASSOCIATION (GINNIE MAE)		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
328	HEALTHY HOMES AND LEAD HAZARD CONTROL		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
329	HOUSING/FEDERAL HOUSING COMMISSIONER		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
330	INSPECTOR GENERAL		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
331	MULTIFAMILY HOUSING ASSISTANCE RESTRUCTURING		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
332	POLICY DEVELOPMENT AND RESEARCH		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
333	PUBLIC AFFAIRS		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
334	PUBLIC AND INDIAN HOUSING		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
335	REGION 1 -- NEW ENGLAND		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
336	REGION 2 -- NEW YORK/NEW JERSEY		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
337	REGION 3 -- MID-ATLANTIC		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
338	REGION 5 -- MIDWEST		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
339	REGION 8 -- ROCKY MOUNTAINS		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
340	SECRETARY OF HOUSING AND URBAN DEVELOPMENT		54	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
341	OPERATIONS		56	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
342	BUREAU OF INDIAN AFFAIRS		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
343	BUREAU OF LAND MANAGEMENT		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
344	BUREAU OF OCEAN ENERGY MANAGEMENT		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
345	BUREAU OF RECLAMATION		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
346	BUREAU OF SAFETY AND ENVIRONMENTAL ENFORCEMENT		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
347	FISH AND WILDLIFE SERVICE		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
348	INDIAN ARTS AND CRAFTS BOARD		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
349	INTERIOR BUSINESS CENTER		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
350	NATIONAL INDIAN GAMING COMMISSION		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
351	NATIONAL PARK SERVICE		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
352	OFFICE OF HEARINGS AND APPEALS		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
353	OFFICE OF INSULAR AFFAIRS		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
354	OFFICE OF NATURAL RESOURCES REVENUE		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
355	OFFICE OF POLICY MANAGEMENT AND BUDGET		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
356	OFFICE OF SURFACE MINING RECLAMATION AND ENFORCEMENT		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
357	OFFICE OF THE CHIEF INFORMATION OFFICER		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
358	OFFICE OF THE INSPECTOR GENERAL		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
359	OFFICE OF THE SECRETARY OF INTERIOR		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
360	OFFICE OF THE SOLICITOR		57	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
362	ASSOCIATE ATTORNEY GENERAL		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
363	ATTORNEY GENERAL		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
364	BUREAU OF ALCOHOL, TOBACCO, FIREARMS AND EXPLOSIVES		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
365	BUREAU OF PRISONS		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
366	COMMUNITY CORRECTIONS AND DETENTION DIVISION		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
367	CRIMINAL DIVISION		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
368	DRUG ENFORCEMENT ADMINISTRATION		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
369	EXECUTIVE OFFICE FOR IMMIGRATION REVIEW		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
370	EXECUTIVE OFFICE FOR US ATTORNEYS		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
371	FEDERAL BUREAU OF INVESTIGATION		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
372	FEDERAL PRISON INDUSTRIES (UNICOR)		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
373	INSPECTOR GENERAL		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
374	INTERGOVERNMENTAL AND PUBLIC LIAISON		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
375	JUSTICE MANAGEMENT DIVISION		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
376	NATIONAL INSTITUTE OF CORRECTIONS		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
377	NATIONAL SECURITY DIVISION		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
378	US ATTORNEYS		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
379	US MARSHALS SERVICE		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
380	US TRUSTEE PROGRAM		60	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
381	BUREAU OF INTERNATIONAL LABOR AFFAIRS		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
382	BUREAU OF LABOR STATISTICS		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
383	EMPLOYEE BENEFITS SECURITY ADMINISTRATION		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
384	EMPLOYMENT AND TRAINING ADMINISTRATION		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
385	MINE SAFETY AND HEALTH ADMINISTRATION		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
386	OCCUPATIONAL SAFETY AND HEALTH ADMINISTRATION		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
387	OFFICE OF DISABILITY EMPLOYMENT POLICY		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
388	OFFICE OF LABOR MANAGEMENT STANDARDS		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
389	OFFICE OF PUBLIC LIAISON		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
390	OFFICE OF THE ASSISTANT SECRETARY FOR ADMINISTRATION AND MANAGEMENT		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
391	OFFICE OF THE ASSISTANT SECRETARY FOR POLICY		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
392	OFFICE OF THE CHIEF FINANCIAL OFFICER		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
393	OFFICE OF THE SECRETARY		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
394	OFFICE OF THE SOLICITOR		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
395	OFFICE OF WORKERS' COMPENSATION PROGRAMS		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
396	VETERANS' EMPLOYMENT AND TRAINING SERVICE		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
397	WAGE AND HOUR DIVISION		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
398	WOMEN'S BUREAU		61	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
399	ADMINISTRATOR		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
400	AERONAUTICS RESEARCH MISSION DIRECTORATE		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
401	AMES RESEARCH CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
402	ARMSTRONG FLIGHT RESEARCH CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
403	GLENN RESEARCH CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
404	GODDARD SPACE FLIGHT CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
405	JET PROPULSION LABORATORY		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
406	JOHNSON SPACE CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
407	KENNEDY SPACE CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
408	LANGLEY RESEARCH CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
409	LEWIS RESEARCH CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
410	MARSHALL SPACE FLIGHT CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
411	MISSION SUPPORT DIRECTORATE		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
412	SCIENCE MISSION DIRECTORATE		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
413	SPACE OPERATIONS MISSION DIRECTORATE		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
414	SPACE TECHNOLOGY MISSION DIRECTORATE		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
415	STENNIS SPACE CENTER		68	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
416	INFORMATION SECURITY OVERSIGHT OFFICE		69	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
417	LEGISLATIVE ARCHIVES, PRESIDENTIAL LIBRARIES AND MUSEUM SERVICES		69	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
418	OFFICE OF ADMINISTRATIVE SERVICES		69	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
419	OFFICE OF INFORMATION SERVICES		69	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
420	OFFICE OF RECORDS SERVICES-WASHINGTON		69	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
421	NATIONAL COUNCIL ON THE ARTS		72	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
422	NATIONAL ENDOWMENT FOR THE ARTS		72	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
423	NATIONAL ENDOWMENT FOR THE HUMANITIES		72	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
424	DIRECTORATE FOR BIOLOGICAL SCIENCES		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
425	DIRECTORATE FOR COMPUTER, INFORMATION SCIENCE AND ENGINEERING		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
426	DIRECTORATE FOR EDUCATION AND HUMAN RESOURCES		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
427	DIRECTORATE FOR ENGINEERING		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
428	DIRECTORATE FOR GEOSCIENCES		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
429	DIRECTORATE FOR MATHEMATICAL AND PHYSICAL SCIENCES		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
430	DIRECTORATE FOR SOCIAL, BEHAVIORAL AND ECONOMIC SCIENCES		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
431	NATIONAL SCIENCE BOARD		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
432	OFFICE OF BUDGET, FINANCE AND AWARD MANAGEMENT		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
433	OFFICE OF INFORMATION AND RESOURCE MANAGEMENT		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
434	OFFICE OF THE DIRECTOR		76	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
435	ATOMIC SAFETY AND LICENSING BOARD PANEL		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
436	CHAIRMAN		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
437	CHIEF FINANCIAL OFFICER		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
438	EXECUTIVE DIRECTOR FOR OPERATIONS		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
439	HUMAN RESOURCES		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
440	INSPECTOR GENERAL		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
441	INTERNATIONAL PROGRAMS		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
442	OPERATIONS		78	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
443	FEDERAL EXECUTIVE BOARD-ALBUQUERQUE		81	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
444	FEDERAL EXECUTIVE BOARD-ATLANTA		81	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
445	GENERAL COUNSEL		81	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
446	HUMAN RESOURCES PRODUCTS AND SERVICES DIVISION		81	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
447	MANAGEMENT SERVICES DIVISION		81	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
448	OFFICE OF THE DIRECTOR		84	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
449	CHIEF INFORMATION OFFICER		87	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
450	OFFICE OF ADMINISTRATION		87	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
451	OFFICE OF GENERAL COUNSEL		87	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
452	DIVISION OF CORPORATE FINANCE		89	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
453	DIVISION OF ECONOMIC AND RISK ANALYSIS		89	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
454	DIVISION OF ENFORCEMENT		89	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
455	INVESTMENT MANAGEMENT DIVISION		89	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
456	OFFICE OF THE CHIEF OPERATING OFFICER		89	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
457	OFFICE OF CREDIT RISK MANAGEMENT		91	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
458	OFFICE OF GOVERNMENT CONTRACTING & BUSINESS DEVELOPMENT		91	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
459	OFFICE OF PERFORMANCE, PLANNING AND CHIEF FINANCIAL OFFICER		91	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
460	OFFICE OF THE ADMINISTRATOR		91	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
461	OFFICE OF THE CHIEF INFORMATION OFFICER		91	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
462	COOPER-HEWITT NATIONAL DESIGN MUSEUM		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
463	FACILITIES ENGINEERING AND OPERATIONS		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
464	J.F. KENNEDY CENTER FOR THE PERFORMING ARTS		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
465	NATIONAL AIR AND SPACE MUSEUM		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
466	NATIONAL MUSEUM OF NATURAL HISTORY		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
467	NATIONAL ZOOLOGICAL PARK		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
468	OFFICE OF THE CHIEF FINANCIAL OFFICER		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
469	OFFICE OF THE CHIEF INFORMATION OFFICER		92	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
470	BUDGET FINANCE AND MANAGEMENT		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
471	CHIEF INFORMATION OFFICER		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
472	COMMISSIONER		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
473	COMMUNICATIONS		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
474	DISABILITY ADJUDICATION AND REVIEW		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
475	HUMAN RESOURCES		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
476	INSPECTOR GENERAL		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
477	OPERATIONS		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
478	RETIREMENT AND DISABILITY POLICY		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
479	SYSTEMS		93	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
480	BUREAU OF ADMINISTRATION (A)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
481	BUREAU OF AFRICAN AFFAIRS (CODE AF)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
482	BUREAU OF ARMS CONTROL, VERIFICATION AND COMPLIANCE (AVC)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
483	BUREAU OF BUDGET AND PLANNING (BP)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
484	BUREAU OF CONFLICT AND STABILIZATION OPERATIONS		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
485	BUREAU OF CONSULAR AFFAIRS (CODE CA)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
486	BUREAU OF DEMOCRACY, HUMAN RIGHTS, AND LABOR (CODE DRL)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
487	BUREAU OF DIPLOMATIC SECURITY (CODE DS)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
488	BUREAU OF EAST ASIAN AND PACIFIC AFFAIRS (CODE EAP)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
489	BUREAU OF EDUCATIONAL AND CULTURAL AFFAIRS (CODE ECA)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
490	BUREAU OF EUROPEAN AND EURASIAN AFFAIRS (CODE EUR)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
491	BUREAU OF GLOBAL PUBLIC AFFAIRS (GPA)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
492	BUREAU OF INFORMATION RESOURCE MANAGEMENT (IRM)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
493	BUREAU OF INTELLIGENCE AND RESEARCH (CODE INR)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
494	BUREAU OF INTERNATIONAL INFORMATION PROGRAMS (CODE IIP)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
495	BUREAU OF INTERNATIONAL NARCOTICS AND LAW ENFORCEMENT AFFAIRS (CODE INL)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
496	BUREAU OF INTERNATIONAL ORGANIZATION AFFAIRS (CODE IO)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
497	BUREAU OF INTERNATIONAL SECURITY AND NONPROLIFERATION (CODE ISN)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
498	BUREAU OF MEDICAL SERVICES		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
499	BUREAU OF NEAR EASTERN AFFAIRS (CODE NEA)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
500	BUREAU OF OCEANS AND INTERNATIONAL ENVIRONMENTAL AND SCIENTIFIC AFFAIRS (CODE OES)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
501	BUREAU OF OVERSEAS BUILDING OPERATIONS (CODE OBO)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
502	BUREAU OF POLITICAL-MILITARY AFFAIRS (CODE PM)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
503	BUREAU OF POPULATION, REFUGEES, AND MIGRATION (CODE PRM)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
504	BUREAU OF SOUTH AND CENTRAL ASIAN AFFAIRS (CODE SCA)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
505	BUREAU OF THE COMPTROLLER AND OF GLOBAL FINANCIAL SERVICES (CGFS)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
506	BUREAU OF WESTERN HEMISPHERE AFFAIRS		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
507	FOREIGN SERVICE AND PERSONNEL		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
508	FOREIGN SERVICE INSTITUTE (CODE FSI)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
509	GLOBAL TALENT MANAGEMENT (GTM)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
510	OFFICE OF FOREIGN MISSIONS (OFM)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
511	OFFICE OF THE INSPECTOR GENERAL (CODE OIG)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
512	OFFICE OF THE LEGAL ADVISER (CODE L)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
513	OFFICE OF THE SECRETARY OF STATE		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
514	OFFICE OF THE UNDER SECRETARY FOR PUBLIC DIPLOMACY AND PUBLIC AFFAIRS (R)		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
515	U.S. MISSION TO THE UNITED NATIONS		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
516	UNDER SECRETARY FOR MANAGEMENT		94	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
517	CHIEF INFORMATION OFFICER		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
518	FEDERAL AVIATION ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
519	FEDERAL HIGHWAY ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
520	FEDERAL MOTOR CARRIER SAFETY ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
521	FEDERAL RAILROAD ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
522	FEDERAL TRANSIT ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
523	INSPECTOR GENERAL		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
524	MARITIME ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
525	NATIONAL HIGHWAY TRAFFIC SAFETY ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
526	NATIONAL RAILROAD PASSENGER CORP (AMTRAK)		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
527	PIPELINE AND HAZARDOUS MATERIALS SAFETY ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
528	RESEARCH AND INNOVATIVE TECHNOLOGY ADMINISTRATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
529	SECRETARY OF TRANSPORTATION		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
530	ST LAWRENCE SEAWAY DEVELOPMENT CORP		98	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
531	ALCOHOL, TOBACCO, TAX AND TRADE BUREAU		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
532	BUREAU OF ENGRAVING AND PRINTING		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
533	BUREAU OF THE FISCAL SERVICE		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
534	COMMUNITY DEVELOPMENT FINANCIAL INSTITUTIONS		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
535	FEDERAL FINANCING BANK		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
536	FINANCIAL CRIMES ENFORCEMENT NETWORK		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
537	INTERNAL REVENUE SERVICE		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
538	OFFICE OF DOMESTIC FINANCE		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
539	OFFICE OF MANAGEMENT		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
540	OFFICE OF THE COMPTROLLER OF THE CURRENCY		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
541	OFFICE OF THE INSPECTOR GENERAL		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
542	OFFICE OF THE SECRETARY OF THE TREASURY		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
543	TREASURY INSPECTOR GENERAL FOR TAX ADMINISTRATION		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
544	US MINT		99	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
545	EXECUTIVE DIRECTOR		101	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
546	INTERNATIONAL BROADCASTING BUREAU		101	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
547	MIDDLE EAST TELEVISION NETWORK		101	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
548	OFFICE OF CHIEF FINANCIAL OFFICER		101	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
549	OFFICE OF PUBLIC AFFAIRS		101	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
550	ADMINISTRATIVE OFFICE OF THE US COURTS		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
551	BANKRUPTCY COURTS		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
552	FEDERAL JUDICIAL CENTER		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
553	FEDERAL PUBLIC DEFENDERS		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
554	US COURT OF APPEALS FOR THE FEDERAL CIRCUIT		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
555	US COURTS OF APPEALS-JUDICIAL CIRCUITS		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
556	US DISTRICT AND TERRITORIAL COURTS		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
557	US SENTENCING COMMISSION		104	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
558	CHIEF COMMERCE & BUSINESS SOLUTIONS OFFICER		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
559	CHIEF HUMAN RESOURCES OFFICER		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
560	CHIEF INFORMATION OFFICER		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
561	CHIEF LOGISTICS & PROCESSING OPERATIONS OFFICER		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
562	CHIEF POSTAL INSPECTOR		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
563	CHIEF RETAIL & DELIVERY OFFICER		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
564	CORPORATE AFFAIRS		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
565	GOVERNMENT RELATIONS AND PUBLIC POLICY		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
566	INSPECTOR GENERAL		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
567	POSTMASTER GENERAL		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
568	SUPPLY MANAGEMENT		109	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
569	BOARD OF VETERANS APPEALS		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
570	NATIONAL CEMETERY ADMINISTRATION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
571	OFFICE OF ACQUISITION, LOGISTICS, AND CONSTRUCTION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
572	OFFICE OF ENTERPRISE INTEGRATION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
573	OFFICE OF HUMAN RESOURCES AND ADMINISTRATION / OPERATIONS, SECURITY, AND PREPAREDNESS		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
574	OFFICE OF INFORMATION AND TECHNOLOGY		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
576	OFFICE OF PUBLIC AND INTERGOVERNMENTAL AFFAIRS		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
577	OFFICE OF THE GENERAL COUNSEL		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
578	OFFICE OF THE INSPECTOR GENERAL		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
579	OFFICE OF THE SECRETARY		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
580	BOARD OF VETERANS APPEALS		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
581	NATIONAL CEMETERY ADMINISTRATION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
582	OFFICE OF ACQUISITION, LOGISTICS, AND CONSTRUCTION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
583	OFFICE OF ENTERPRISE INTEGRATION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
584	OFFICE OF HUMAN RESOURCES AND ADMINISTRATION / OPERATIONS, SECURITY, AND PREPAREDNESS		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
585	OFFICE OF INFORMATION AND TECHNOLOGY		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
586	OFFICE OF MANAGEMENT		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
587	OFFICE OF PUBLIC AND INTERGOVERNMENTAL AFFAIRS		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
588	OFFICE OF THE GENERAL COUNSEL		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
589	OFFICE OF THE INSPECTOR GENERAL		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
590	OFFICE OF THE SECRETARY		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
591	VETERANS BENEFITS ADMINISTRATION		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
592	VETERANS EXPERIENCE OFFICE		112	\N	2024-09-29 15:49:18.036621+00	2024-09-29 15:49:18.036621+00	0
593	VETERANS HEALTH ADMINISTRATION		112	\N	2024-09-29 15:49:18.036621+00	2024-10-17 08:24:55.687274+00	0
\.


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, path, document_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: capture_costs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.capture_costs (id, company_name, full_name, email, manager_count, hourly_rate, annual_pipeline_time, company_annual_cost, company_capture411_cost, company_savings, company_hours_saved, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: contract_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contract_vehicles (id, name, acronym, user_id, created_at, updated_at, deleted_at) FROM stdin;
5	A2SB - ALLIANT 2 SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
72	ENCORE III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
1	A&AS (CATS) (AFMSCC - MEDICAL FIELD CONSULTANT ADVISORY AND TECHNICAL SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
2	A&AS SETA - ADVISORY AND ASSISTANCE SERVICES FOR SYSTEMS ENGINEERING AND TECHNICAL ASSISTANCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
3	A&E II IDIQ - AEC GLOBAL ARCHITECT ENGINEER SERVICES II INDEFINITE DELIVERY INDEFINITE QUANTITY		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
4	A-E13 DCS - AEC ARCHITECT ENGINEERING 2013 DESIGN AND CONSTRUCTION SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
6	ABMS JADC2 - BROAD AGENCY ANNOUNCEMENT FOR ADVANCED BATTLE MANAGEMENT SYSTEMS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
7	ACCENT - ARMY CLOUD COMPUTING ENTERPRISE TRANSFORMATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
8	ACES - AIRCRAFT MAINTENANCE ENTERPRISE SOLUTION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
9	ADVISOR - AGILE DELIVERY OF VA IMMINENT STRATEGIC AND OPERATIONAL REQUIREMENTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
10	AEC ARCHITECT ENGINEER INDEFINITE DELIVERY INDEFINITE QUANTITY FOR VA NEW ENGLAND HEALTHCARE SYSTEM VISN 1		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
11	AEC ARCHITECT ENGINEER SERVICES FOR THE DESIGN AND OTHER PROFESSIONAL SERVICES NECESSARY TO REHABILITATE MODERNIZE AND DEVELOP NEW OR EXISTING MECHANICAL SYSTEMS FOR FACILITIES AND GROUND SUPPORT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
12	AEC DEPARTMENT OF HOMELAND SECURITY NATIONAL MULTIPLE AWARD GENERAL ARCHITECT ENGINEERING SERVICES IDIQ CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
13	AEC GENERAL CONSTRUCTION MATOC		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
14	AEC LARGE MACC NAVFAC SOUTHEAST AREA OF RESPONSIBILITY		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
15	AEC NCR MULTIDISCIPLINARY AE DESIGN SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
16	AEWD - ADVANCED EXPEDITIONARY WARFARE DEVELOPMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
17	AFCAP IV - AIR FORCE CONTRACT AUGMENTATION PROGRAM IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
18	AFICA TRANSIENT ALERT SERVICES MULTIPLE AWARD TASK ORDER CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
19	AFMSA - FACILITY MAINTENANCE SERVICES IN SUPPORT OF AIR FORCE MEDICAL SUPPORT AGENCY		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
20	AIR 6.6 - AIR 6 6 LOGISTICS SUPPORT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
21	ALLIANT - ALLIANT FULL AND OPEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
22	ALLIANT 2 - ALLIANT 2 UNRESTRICTED		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
23	ALLIANT SB - ALLIANT SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
24	AMCOM EXPRESS - AMCOM EXPEDITED PROFESSIONAL AND ENGINEERING SUPPORT SERVICES 2004 UMBRELLA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
25	ASSET FORFEITURE PROGRAM ADMINISTRATIVE SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
26	ASTRO		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
27	ATSP3 - ADVANCED TECHNOLOGY SUPPORT PROGRAM III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
28	ATSP4 - ADVANCED TECHNOLOGY SUPPORT PROGRAM IV FULL AND OPEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
29	BAPSLE - BUSINESS AND PROGRAM SOLUTIONS FOR LAW ENFORCEMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
30	C2AD - COMMAND AND CONTROL APPLICATIONS AND INFORMATION SERVICES DEVELOPMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
31	CAAS III - CONTRACTED ADVISORY AND ASSISTANCE SERVICES III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
32	CAAS IV - CONTRACTED ADVISORY AND ASSISTANCE SERVICES IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
33	CDM CMAAS - CONTINUOUS DIAGNOSTICS AND MITIGATION PROGRAM TOOLS AND CONTINUOUS MONITORING AS A SERVICE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
34	CFT - CONTRACT FIELD TEAM MAINTENANCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
35	CHS 4 - COMMON HARDWARE SYSTEMS 4		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
36	CIMS - CENTERS FOR DISEASE CONTROL AND PREVENTION INFORMATION MANAGEMENT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
37	CIO-CS - CHIEF INFORMATION OFFICER COMMODITY SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
38	CIO-SP2i - CHIEF INFORMATION OFFICER SOLUTIONS AND PARTNER 2 INNOVATIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
39	CIO-SP3 - CHIEF INFORMATION OFFICER SOLUTIONS AND PARTNERS 3 ON RAMP		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
40	CIO-SP3 SB - CHIEF INFORMATION OFFICER SOLUTIONS AND PARTNERS 3 SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
41	CIO-SP3 UNRESTRICTED - CHIEF INFORMATION OFFICER SOLUTIONS AND PARTNERS 3 UNRESTRICTED		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
42	CLASS)(AFMSCC - CLINICAL ACQUISITION FOR SUPPORT SERVICES PROGRAM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
43	CLEAN ENERGY FOR NON CRITICAL PRIORITY COUNTRIES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
44	CME - CYBER MISSION ENGINEERING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
45	CMMARS - CONTRACTED MAINTENANCE MODIFICATION AIRCREW AND RELATED SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
46	CNGT O&L - COUNTER NARCOTICS AND GLOBAL THREATS OPERATIONS AND LOGISTICS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
47	CNX II - CONNECTIONS II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
48	COMMIT - CENTRALIZED OPERATIONS AND MAINTENANCE INFORMATION TECHNOLOGY SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
49	CRC - CONSUMER RESEARCH AND COMMUNICATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
50	CS TATS - CYBER SECURITY AND INFORMATION SYSTEMS TECHNICAL AREA TASKS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
51	CS2SB - END TO END SOLUTIONS FOR THE FUTURE COMMERCIAL SATCOM ACQUISITION SMALL BUSINESS SET ASIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
52	CS3 - CUSTOM SATCOM SOLUTIONS FULL AND OPEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
53	CTRIC III - COOPERATIVE THREAT REDUCTION PROGRAM SUPPORT CONTRACT III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
54	CWMD - COMBATING WEAPONS OF MASS DESTRUCTION RESEARCH AND TECHNOLOGY		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
55	DESP III - DESIGN AND ENGINEERING SUPPORT PROGRAM III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
56	DESS - DISA INFORMATION TECHNOLOGY ENTERPRISE SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
57	DEVSECOPS BOA - PLATFORM ONE BASIC ORDERING AGREEMENT DEVSECOPS SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
58	DHA MEDICAL SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
59	DISN GSM-O - GLOBAL INFORMATION GRID SERVICES MANAGEMENT OPERATIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
60	DLAE BOA - USACE AEC PETROLEUM FACILITIES MAINTENANCE AND REPAIR SERVICES FOR THE DEFENSE LOGISTICS AGENCY ENERGY PROGRAM BASIC ORDERING AGREEMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
61	DLITE II - DEPARTMENT OF DEFENSE LANGUAGE INTERPRETATION AND TRANSLATION ENTERPRISES II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
62	DSIDDOMS III - DEFENSE SYSTEMS INTEGRATION DESIGN DEVELOPMENT OPERATION AND MAINTENANCE SUPPORT III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
63	EAGLE - ENTERPRISE ACQUISITION GATEWAY FOR LEADING EDGE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
64	EAGLE II - ENHANCED ARMY GLOBAL LOGISTICS ENTERPRISE II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
65	EAGLE II - ENTERPRISE ACQUISITION GATEWAY FOR LEADING EDGE II FOR SMALL BUSINESSES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
66	EAGLE II - ENTERPRISE ACQUISITION GATEWAY FOR LEADING EDGE II UNRESTRICTED		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
67	EAGLE) (BOA #1 - ENHANCED ARMY GLOBAL LOGISTICS ENTERPRISE PROGRAM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
68	EAGLE BOA #7 - ENHANCED ARMY GLOBAL LOGISTICS ENTERPRISE STEP 2		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
69	EIS - ENTERPRISE INFRASTRUCTURE SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
70	EISM NC2 - NETCENTS II ENTERPRISE INTEGRATION AND SERVICES MANAGEMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
71	ENCORE II - ENCORE II INFORMATION TECHNOLOGY SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
73	ENTERPRISE SOFTWARE SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
74	ERP - ARMY ENTERPRISE RESOURCE PLANNING SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
75	ESPC - ENERGY SAVING PERFORMANCE CONTRACTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
76	ESPC - ENERGY SAVINGS PERFORMANCE CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
77	ETS2 - E GOV TRAVEL SERVICES 2		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
78	ETSC - ENTERPRISE TRAINING SERVICES CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
79	EVAL-ME - USAID PPL MONITORING AND EVALUATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
80	EVAL-ME - USAID PPL MONITORING EVALUATION AND LEARNING IDIQ		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
81	EWAAC - EGLIN WIDE AGILE ACQUISITION CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
82	F2AST - FUTURE FLEXIBLE ACQUISITION AND SUSTAINMENT TOOL		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
83	FAS - FLEXIBLE ACQUISITION AND SUSTAINMENT FOR THE B 52 WEAPON SYSTEM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
84	FEDERAL INSURANCE AND MITIGATION ADMINISTRATION NON A AND E SERVICE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
85	FEDLINK INFORMATION RETRIEVAL SERVICES STRATEGIC SOURCING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
86	FIA2T - FLEXIBLE INFORMATION ASSURANCE ACQUISITION TOOL		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
87	FIRST - FIELD AND INSTALLATION READINESS SUPPORT TEAM UNRESTRICTED		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
88	FIRSTSOURCE - FIRST SOURCE INFORMATION TECHNOLOGY COMMODITY SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
89	FIRSTSOURCE II - FIRST SOURCE INFORMATION TECHNOLOGY COMMODITY SOLUTIONS II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
90	FPS3 - FORCE PROTECTION SECURITY SYSTEMS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
91	FSSI BMO FO - AEC FEDERAL STRATEGIC SOURCING INITIATIVE BUILDING MAINTENANCE AND OPERATIONS UNRESTRICTED PHASE II ZONES 2 THROUGH 6		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
92	FSSI BMO SB - AEC FEDERAL STRATEGIC SOURCING INITIATIVE BUILDING MAINTENANCE AND OPERATIONS SMALL BUSINESS PHASE II ZONES 2 THROUGH 6		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
93	FSSI BMOS1 - AEC FEDERAL STRATEGIC SOURCING INITIATIVE BUILDING MAINTENANCE AND OPERATIONS PHASE I SMALL BUSINESS ZONE 1 ON RAMP		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
94	FSSI BMOS1 - AEC FEDERAL STRATEGIC SOURCING INITIATIVE BUILDING MAINTENANCE AND OPERATIONS SMALL BUSINESS ZONE 1		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
95	FSSI BMOU1 - AEC FEDERAL STRATEGIC SOURCING INITIATIVE BUILDING MAINTENANCE AND OPERATIONS UNRESTRICTED ZONE 1		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
96	FTSS III - FIELDED TRAINING SYSTEMS SUPPORT III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
97	FTSS IV - FIELDED TRAINING SYSTEMS SUPPORT IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
98	FTSS V - FIELDED TRAINING SYSTEMS SUPPORT V		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
99	GASC COS - GENERAL CONSTRUCTION MATOC SOUTH ATLANTIC DIVISION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
100	GCSS-AF 2 - GLOBAL COMBAT SUPPORT SYSTEM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
101	GIG DISN GSM-ETI - GLOBAL INFORMATION GRID SERVICES MANAGEMENT ENGINEERING TRANSITION AND IMPLEMENTATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
102	GISS - INSCOM GLOBAL INTELLIGENCE SUPPORT SERVICE IDIQ		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
103	GNS - GLOBAL NETWORK SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
104	GSA CONSOLIDATED MULTIPLE AWARD SCHEDULE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
105	GSA SCHEDULE 00CORP PSS PROFESSIONAL SERVICES SCHEDULE (AIMS, FABS, ENVIRONMENTAL SERVICES, LANGUAGE SERVICES, LOGWORLD, MOBIS, PES)		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
106	GSA SCHEDULE 03FAC FACILITIES MAINTENANCE AND MANAGEMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
107	GSA SCHEDULE 36 OFFICE IMAGE AND DOCUMENT SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
108	GSA SCHEDULE 48 TRANSPORTATION DELIVERY AND RELOCATION SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
109	GSA SCHEDULE 51 V HARDWARE SUPERSTORE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
110	GSA SCHEDULE 520 FABS FINANCIAL AND BUSINESS SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
111	GSA SCHEDULE 541 AIMS ADVERTISING AND INTEGRATED MARKETING SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
112	GSA SCHEDULE 56 BUILDINGS AND BUILDING MATERIALS INDUSTRIAL SERVICES AND SUPPLIES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
113	GSA SCHEDULE 58 I PROFESSIONAL AUDIO VIDEO TELEMETRY TRACKING RECORDING REPRODUCING AND SIGNAL DATA SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
114	GSA SCHEDULE 599 TRAVEL SERVICES SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
115	GSA SCHEDULE 621 I PROFESSIONAL AND ALLIED HEALTHCARE STAFFING SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
116	GSA SCHEDULE 621 II MEDICAL LABORATORY TESTING AND ANALYSIS SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
117	GSA SCHEDULE 65 II A MEDICAL EQUIPMENT AND SUPPLIES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
118	GSA SCHEDULE 66 SCIENTIFIC EQUIPMENT AND SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
119	GSA SCHEDULE 70 IT EQUIPMENT SOFTWARE AND SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
120	GSA SCHEDULE 71 II K COMPREHENSIVE FURNITURE MANAGEMENT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
121	GSA SCHEDULE 73 FOOD SERVICE HOSPITALITY CLEANING EQUIPMENT AND SUPPLIES CHEMICALS AND SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
122	GSA SCHEDULE 736 TAPS TEMPORARY ADMINISTRATIVE AND PROFESSIONAL STAFFING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
123	GSA SCHEDULE 738X HUMAN RESOURCES AND EQUAL EMPLOYMENT OPPORTUNITY SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
124	GSA SCHEDULE 76 PUBLICATION MEDIA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
125	GSA SCHEDULE 78 SPORTS PROMOTIONAL OUTDOOR RECREATION TROPHIES AND SIGNS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
126	GSA SCHEDULE 84 LAW ENFORCEMENT SECURITY MARINE CRAFT FIRE RESCUE AND SPECIAL PURPOSE CLOTHING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
127	GSA SCHEDULE 871 PES PROFESSIONAL ENGINEERING SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
128	GSA SCHEDULE 874 MOBIS MISSION ORIENTED BUSINESS INTEGRATED SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
129	GSA SCHEDULE 874 V LOGWORLD LOGISTICS WORLDWIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
130	GSA SCHEDULE 899 ENVIRONMENTAL ADVISORY SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
131	GTACS WTCSS - GLOBAL TACTICAL ADVANCED COMMUNICATION SYSTEMS AND SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
132	GTSS - GEOSPATIAL TECHNICAL SUPPORT SERVICES DHS WIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
133	HCATS - HUMAN CAPITAL AND TRAINING SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
134	HCATS SB - HUMAN CAPITAL AND TRAINING SOLUTIONS SMALL BUSINESS SET ASIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
135	HCATS SB 8A - HUMAN CAPITAL AND TRAINING SOLUTIONS 8A SMALL BUSINESS POOL 1 AND POOL 2 ON RAMP		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
136	HICDpro - HUMAN INSTITUTIONAL CAPACITY DEVELOPMENT PARTICIPANT TRAINING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
137	HITSS - HYBRID INFORMATION TECHNOLOGY SERVICES FOR STATE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
138	HSOAC FFRDC - HOMELAND SECURITY OPERATIONAL ANALYSIS CENTER FEDERALLY FUNDED RESEARCH AND DEVELOPMENT CENTER		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
139	IAC MAC - DTIC INFORMATION ANALYSIS CENTERS MULTIPLE AWARD CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
140	IDIQ - SAMHSA INDEFINITE DELIVERY INDEFINITE QUANTITY		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
141	ILMS - INSTALLATION AND LOGISTICS MANAGEMENT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
142	IMCS 2 - INFORMATION MANAGEMENT COMMUNICATIONS SERVICES 2		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
143	IMCS III - INFORMATION MANAGEMENT COMMUNICATIONS SERVICES III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
144	ITES 2S - INFORMATION TECHNOLOGY ENTERPRISE SOLUTIONS 2 SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
145	ITES 3H - INFORMATION TECHNOLOGY ENTERPRISE SOLUTIONS 3 HARDWARE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
146	ITES 3S - INFORMATION TECHNOLOGY ENTERPRISE SOLUTIONS 3 SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
147	ITS-SB - INFORMATION TECHNOLOGY SERVICES SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
148	ITSC - INFORMATION TECHNOLOGY SERVICES CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
149	ITSS - INFORMATION TECHNOLOGIES SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
150	JETS - DLA J6 ENTERPRISE TECHNOLOGY SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
151	LOGCAP IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
152	MACC - AEC 8A MULTIPLE AWARD CONSTRUCTION CONTRACT IN NAVFAC WASHINGTON		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
153	MACC II - AEC MULTIPLE AWARD CONSTRUCTION CONTRACT II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
154	MACC IDIQ - AEC MECHANICAL MULTIPLE AWARD CONSTRUCTION CONTRACT MECHANICAL CONSTRUCTION PROJECTS NORTH CAROLINA AREA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
155	MACC IDIQ - AEC MULTIPLE AWARD CONSTRUCTION CONTRACT AT HOLLOMAN AFB NEW MEXICO		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
156	MARCORSYSCOM ELECTRONIC AND COMMUNICATION SYSTEMS ECS MATOC		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
157	MATOC - USACE AEC CONSTRUCTION AND INCIDENTAL SERVICE PROJECTS SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
158	MATOC)(Group IV - AEC REGIONAL INDEFINITE DELIVERY INDEFINITE QUANITITY AND MULTIPLE AWARD TASK ORDER CONTRACTS FOR DREDGING PROJECTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
159	MATOC)(IDIQ - AEC GENERAL CONSTRUCTION FOR VISION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
160	MATOC)(IDIQ)(DPW - AEC CONSTRUCTION SERVICES IN SUPPORT OF THE DIRECTORATE OF PUBLIC WORKS AT FORT BENNING GEORGIA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
161	MATOC)(IDIQ)(SDVO - AEC CONSTRUCTION SERVICES FOR THE NORTH REGION VISN 8		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
162	MATOC)(IDIQ)(SDVO - AEC CONSTRUCTION SERVICES FOR THE SOUTH REGION VISN 8		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
163	MCOE - INSTRUCTOR AND TRAINING SUPPORT MATOCS FOR THE MANEUVER CENTER OF EXCELLENCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
164	MCOE - INSTRUCTOR AND TRAINING SUPPORT SERVICES FOR THE MANEUVER CENTER OF EXCELLENCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
165	MILITARY FREEFALL AND STATIC LINE SUPPORT SERVICES FOR NSWC		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
166	MPEC - MISSION PLANNING ENTERPRISE CONTRACT II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
167	MQS - DHA MEDICAL Q CODED SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
168	MRAD - MEDICARE AND MEDICAID RESEARCH AND DEMONSTRATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
169	MSS AFMSCC - MEDICAL SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
170	NAVAIR PM CSS MAC - NAVAIR INITIATIVE PROGRAM MANAGEMENT CONTRACTOR SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
171	NC2 - NETCENTS II AF NETOPS INFRASTRUCTURE FULL AND OPEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
172	NC2 - NETCENTS II AF NETOPS INFRASTRUCTURE SMALL BUSINESS SET ASIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
173	NC2 - NETCENTS II APPLICATION SERVICES FULL AND OPEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
174	NC2 - NETCENTS II APPLICATION SERVICES SMALL BUSINESS SET ASIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
175	NC2 PRODUCTS - NETCENTS II NETCENTRIC PRODUCTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
176	NEPA SUPPORT SERVICES SMALL BUSINESS SET ASIDE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
177	NETCENTS - AIR FORCE NETWORK CENTRIC SOLUTIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
178	NETWORX ENTERPRISE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
179	NETWORX UNIVERSAL		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
180	NIHCATS II - NATIONAL INSTITUTES OF HEALTH CONFERENCE AND ADMINISTRATIVE TRAVEL SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
181	NLEC-NG - NATIONAL LOCAL EXCHANGE CARRIER SERVICES FOR THE ENTERPRISE NEXT GENERATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
182	NMACC - AEC DESIGN BUILD NATIONAL MULTIPLE AWARD CONSTRUCTION CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
183	NMACC II - AEC NATIONAL MULTIPLE AWARD CONSTRUCTION CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
184	NOAALINK - CORE MANAGEMENT COMPONENTS NOAA LINK		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
185	OASIS - ONE ACQUISITION SOLUTION FOR INTEGRATED SERVICES UNRESTRICTED		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
186	OASIS II - OPERATIONAL APPLICATIONS SUPPORT AND INFORMATION SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
187	OASIS SB - ONE ACQUISITION SOLUTION FOR INTEGRATED SERVICES SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
188	OPTARSS II - SERVICES FOR OPERATIONS PLANNING TRAINING AND RESOURCE SUPPORT SERVICES FOR WARFIGHTER OPERATIONS FULL AND OPEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
189	OPTARSS II - SERVICES FOR OPERATIONS PLANNING TRAINING AND RESOURCE SUPPORT SERVICES FOR WARFIGHTER OPERATIONS SMALL BUSINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
190	OSP-4 - ORBITAL SERVICES PROGRAM 4		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
191	PA TAC III - PUBLIC ASSISTANCE AND TECHNICAL ASSISTANCE CONTRACTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
192	PA-TAC IV - PUBLIC ASSISTANCE TECHNICAL ASSISTANCE CONTRACTS IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
193	PACRM - PILOT AND AIRCREW CURRICULUM REVISION AND MAINTENANCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
194	PACTS - PROGRAM MANAGEMENT ADMINISTRATIVE CLERICAL AND TECHNICAL SERVICES FOR DHS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
195	PACTS II - PROGRAM MANAGEMENT ADMINISTRATIVE CLERICAL AND TECHNICAL SERVICES II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
196	PEITSS - PLATFORM ENGINEERING AND INTEGRATION FOR TACTICAL AND STRATEGIC SYSTEMS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
197	PICS - PUBLIC INFORMATION AND COMMUNICATIONS SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
198	PICS II - PUBLIC INFORMATION AND COMMUNICATIONS SERVICES II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
199	PMSS - PROGRAM MANAGEMENT SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
200	PMSS3 - PROGRAM MANAGEMENT SUPPORT SERVICES 3		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
201	PROGRAM SUPPORT CENTER IDIQ TASK ORDER CONTRACTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
202	PROGRAM SUPPORT CENTER PSC TASK ORDER CONTRACTS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
203	PROTECTIVE SECURITY OFFICER SERVICES IN MARYLAND DISTRICT OF COLUMBIA AND VIRGINIA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
267	USACE AEC SOUTHEAST UNITED STATES REGIONAL DESIGN BUILD MATOC		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
204	PSO - PROTECTIVE SECURITY OFFICER SERVICES FOR MULTIPLE LOCATIONS IN DC MARYLAND AND VIRGINIA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
205	PSS HRSS - PERSONNEL SUPPORT SERVICES OF HUMAN RESOURCE SERVICES FOR THE UNITED STATES ARMY		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
206	R2-3G - RAPID RESPONSE 3RD GENERATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
207	RE&C - REGIONAL ENGINEERING AND CONSTRUCTION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
208	REMIS - RESEARCH ENGINEERING MISSION INTEGRATION SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
209	REPLACE - RESTORING THE ENVIRONMENT THROUGH PROSPERITY LIVELIHOODS AND CONSERVING ECOSYSTEMS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
210	RES - AEC REMEDIAL ACQUISITION FRAMEWORK REMEDIATION ENVIRONMENTAL SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
211	RMACC - AEC REGIONAL REGIONAL MULTIPLE AWARD CONSTRUCTION CONTRACTS AT VARIOUS DHS FACILITIES THROUGHOUT THE US AND ITS TERRITORIES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
212	RMACC II - REGIONAL MULTIPLE AWARD CONSTRUCTION CONTRACT II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
213	RMADA - RESEARCH MEASUREMENT ASSESSMENT DESIGN AND ANALYSIS IDIQ		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
214	RMADA 2 - RESEARCH MEASUREMENT ASSESSMENT DESIGN AND ANALYSIS 2		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
215	RS3 - RESPONSIVE STRATEGIC SOURCING FOR SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
216	S3 - STRATEGIC SERVICES SOURCING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
217	SATELLITE - PROFESSIONAL AND TECHNICAL SUPPORT SERVICES CONTRACT VEHICLE SATELLITE DOMAIN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
218	SBAST - SMALL BUSINESS ACQUISITION AND SUSTAINMENT TOOL		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
219	SBEAS - SMALL BUSINESS ENTERPRISE APPLICATIONS SOLUTIONS IDIQ		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
220	SBS - SUPPORT BASE SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
221	SBS - SUPPORT BASE SERVICES 2019		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
222	SCSS - SOF CORE SERVICES SUPPORT FORMERLY SWMS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
223	SEAPORT NXG - SEAPORT NEXT GENERATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
224	SETA III - SYSTEMS ENGINEERING AND TECHNICAL ASSISTANCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
225	SETI - DISA SYSTEMS ENGINEERING TECHNOLOGY AND INNOVATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
226	SEWP IV - SOLUTIONS FOR ENTERPRISEWIDE PROCUREMENT IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
227	SEWP V - SOLUTIONS FOR ENTERPRISEWIDE PROCUREMENT V		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
228	SHIP REPAIR MAC IDIQ NORFOLK VA		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
229	SIISS - SALESFORCE IMPLEMENTATION INTEGRATION AND SUPPORT SERVICES BLANKET PURCHASE AGREEMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
230	SITEC - SITEC SPECIALTY SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
231	SOF/PR MACM - SPECIAL OPERATION FORCES MULTIPLE AWARD CONTRACT FOR MODIFICATIONS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
232	SPARC - STRATEGIC PARTNERS ACQUISITION READINESS CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
233	SPECIALIZED SECURITY TRAINING		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
234	SSES)(NexGen - SOFTWARE AND SYSTEMS ENGINEERING SERVICES NEXT GENERATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
235	STARS - STREAMLINED TECHNOLOGY ACQUISITION RESOURCES FOR SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
236	STARS II - STREAMLINED TECHNOLOGY ACQUISITION RESOURCES FOR SERVICES II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
237	STARS III - STREAMLINED TECHNOLOGY ACQUISITION RESOURCES FOR SERVICES III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
238	STARSS II - SCIENCES TECHNOLOGY AND RESEARCH SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
239	START III - SUPERFUND TECHNICAL ASSESSMENT AND RESPONSE TEAM CONTRACT SUPPORT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
240	STOCK 2 - PEO STRI ALL ACQUISITION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
241	SWIFT 5 - SUPPORT WHICH IMPLEMENTS FAST TRANSITIONS 5		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
242	SeaPort - PROFESSIONAL ADMINISTRATIVE AND MANAGEMENT SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
243	SeaPort-e - ENGINEERING TECHNICAL AND SUPPORT SERVICES FOR NAVAL WARFARE CENTER AND OTHER NAVSEA FIELD SITES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
244	T4 - TRANSFORMATION TWENTY ONE TOTAL TECHNOLOGY PROGRAM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
245	T4NG - TRANSFORMATION TWENTY ONE TOTAL TECHNOLOGY PROGRAM NEXT GENERATION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
246	TABSS Domain 1 - PROGRAM MANAGEMENT ENGINEERING AND TECHNOLOGY SUPPORT SERVICES DOMAIN ONE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
247	TABSS Domain 2 - BUSINESS FINANCIAL MANAGEMENT AND AUDIT SUPPORT SERVICES DOMAIN TWO		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
248	TABSS Domain 3 - CONTRACT MANAGEMENT SUPPORT SERVICES DOMAIN THREE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
249	TACCOM - ENTERPRISE TACTICAL COMMUNICATIONS EQUIPMENT AND SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
250	TACCOM II - TACTICAL COMMUNICATIONS EQUIPMENT AND SERVICES II		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
251	TDPC - TRAINING DATA PRODUCTS CONTRACT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
252	TDSS(E) - TECHNICAL DATA SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
253	TEAMS - TRICARE EVALUATION ANALYSIS AND MANAGEMENT SUPPORT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
254	TECHNICAL SERVICES FOR ASPE AHRQ AND ONC		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
255	TEDSS - TECHNICAL ENGINEERING DEVELOPMENT SUPPORT SERVICES AT C3CEN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
256	TEPS - ENTERPRISE WIDE TECHNICAL ENGINEERING AND PROGRAMMATIC SUPPORT SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
257	TIPSS - 4 - TOTAL INFORMATION PROCESSING SUPPORT SERVICES 4		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
258	TLPS - THUNDERBOLT LIFE CYCLE PROGRAM SUPPORT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
259	TSA III - TRAINING SYSTEMS ACQUISITION III PROGRAM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
260	TSA IV - TRAINING SYSTEM ACQUISITION IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
261	TSC III - TRAINING SYSTEMS CONTRACT III		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
262	TSC IV - TRAINING SYSTEMS CONTRACT IV		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
263	USA CONTACT MULTICHANNEL CONTACT CENTER SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
264	USACE AEC HORIZONTAL CONSTRUCTION CONTRACTS IN SUPPORT OF THE FORT WORTH DISTRICT DEPARTMENT OF HOMELAND SECURITY PROGRAMS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
265	USACE AEC MATOC FOR HORIZONTAL CONSTRUCTION SERVICES IN SUPPORT OF THE SAN DIEGO EL CENTRO YUMA AND TUCSON BORDER PATROL SECTORS AND THE USACE SOUTHWESTERN DIVISION AND SOUTH PACIFIC DIVISION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
266	USACE AEC NORTHEAST MATOC		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
268	USAFCOEFS - TRAINING STRATEGIES AND DEVELOPMENT FOR US ARMY FIRES CENTER OF EXCELLENCE		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
269	VECTOR - VETERAN ENTERPRISE CONTRACTING FOR TRANSFORMATION AND OPERATIONAL READINESS		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
270	VETS - VETERANS TECHNOLOGY SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
271	VETS 2 - VETERANS TECHNOLOGY SERVICES 2		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
272	VICCS - VETERANS INTAKE CONVERSION AND COMMUNICATION SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
273	VRM ITSS - VETERANS RELATIONSHIP MANAGEMENT PROGRAM IT SOLUTIONS AND SUPPORT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
274	WADI - WATER AND DEVELOPMENT IDIQ		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
275	WEATHER PROTECH - PROFESSIONAL SCIENTIFIC AND TECHNICAL SERVICES WEATHER DOMAIN		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
276	WERC09 - AEC WORLDWIDE ENVIRONMENTAL RESTORATION AND CONSTRUCTION		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
277	WF3 - WORKFORCE 30 MANAGED SOLUTION DEFENSE HEALTHCARE MANAGEMENT SYSTEM		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
278	WITS 3 - WASHINGTON INTERAGENCY TELECOMMUNICATIONS SYSTEM 3		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
279	WORLDWIDE PERSONAL PROTECTION SERVICES		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
280	eFAST MOA - ELECTRONIC FAA ACCELERATED AND SIMPLIFIED MASTER ORDERING AGREEMENT		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
281	eFAST MOA - ELECTRONIC FAA ACCELERATED AND SIMPLIFIED MASTER ORDERING AGREEMENT ON RAMP		\N	2024-09-29 15:49:22.63986+00	2024-09-29 15:49:22.63986+00	0
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (id, name, acronym, market_id, user_id, created_at, updated_at, deleted_at) FROM stdin;
1	AIR FORCE		1	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
2	ARMY		1	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
3	DEFENSE		1	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
4	MARINE CORPS		1	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
5	NAVY		1	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
6	ADVISORY COUNCIL ON HISTORIC PRESERVATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
7	AFRICAN DEVELOPMENT FOUNDATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
8	AGENCY FOR INTERNATIONAL DEVELOPMENT		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
9	AGRICULTURE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
10	AMERICAN BATTLE MONUMENTS COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
11	AMERICORPS (CORPORATION FOR NATIONAL AND COMMUNITY SERVICE)		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
12	ARCHITECTURAL AND TRANSPORTATION BARRIERS COMPLIANCE BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
13	ARMED FORCES RETIREMENT HOME		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
14	BARRY GOLDWATER SCHOLARSHIP AND EXCELLENCE IN EDUCATION FOUNDATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
15	CENTRAL INTELLIGENCE AGENCY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
16	CHEMICAL SAFETY AND HAZARD INVESTIGATION BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
17	COMMERCE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
18	COMMISSION OF FINE ARTS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
19	COMMITTEE FOR PURCHASE FROM PEOPLE WHO ARE BLIND OR SEVERELY DISABLED		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
20	COMMODITY FUTURES TRADING COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
21	CONGRESS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
22	CONSUMER FINANCIAL PROTECTION BUREAU		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
23	CONSUMER PRODUCT SAFETY COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
24	COUNCIL OF THE INSPECTORS GENERAL ON INTEGRITY AND EFFICIENCY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
25	COURT SERVICES AND OFFENDER SUPERVISION AGENCY FOR THE DISTRICT OF COLUMBIA		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
26	DEFENSE NUCLEAR FACILITIES SAFETY BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
27	DELTA REGIONAL AUTHORITY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
28	DENALI COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
29	EDUCATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
30	ELECTION ASSISTANCE COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
31	ENERGY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
32	ENVIRONMENTAL PROTECTION AGENCY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
33	EQUAL EMPLOYMENT OPPORTUNITY COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
34	EXECUTIVE OFFICE OF THE PRESIDENT		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
35	EXPORT-IMPORT BANK OF THE US		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
36	FARM CREDIT ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
37	FEDERAL COMMUNICATIONS COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
38	FEDERAL DEPOSIT INSURANCE CORP		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
39	FEDERAL ELECTION COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
40	FEDERAL FINANCIAL INSTITUTIONS EXAMINATION COUNCIL		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
41	FEDERAL HOUSING FINANCE AGENCY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
42	FEDERAL LABOR RELATIONS AUTHORITY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
43	FEDERAL MARITIME COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
44	FEDERAL MEDIATION AND CONCILIATION SERVICE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
45	FEDERAL MINE SAFETY AND HEALTH REVIEW COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
46	FEDERAL RESERVE SYSTEM/BOARD OF GOVERNORS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
47	FEDERAL RETIREMENT THRIFT INVESTMENT BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
48	FEDERAL TRADE COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
49	GENERAL SERVICES ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
50	GULF COAST ECOSYSTEM RESTORATION COUNCIL		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
51	HARRY S TRUMAN SCHOLARSHIP FOUNDATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
52	HEALTH AND HUMAN SERVICES		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
53	HOMELAND SECURITY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
54	HOUSING AND URBAN DEVELOPMENT		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
55	INSTITUTE OF MUSEUM AND LIBRARY SERVICES		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
56	INTER-AMERICAN FOUNDATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
57	INTERIOR		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
58	INTERNATIONAL BOUNDARY AND WATER COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
59	JAPAN-US FRIENDSHIP COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
60	JUSTICE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
61	LABOR		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
62	LEGAL SERVICES CORP		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
63	MARINE MAMMAL COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
64	MEDICAID AND CHIP PAYMENT AND ACCESS COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
65	MERIT SYSTEMS PROTECTION BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
66	MILLENNIUM CHALLENGE CORPORATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
67	MORRIS K UDALL FOUNDATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
68	NATIONAL AERONAUTICS AND SPACE ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
69	NATIONAL ARCHIVES AND RECORDS ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
70	NATIONAL CAPITAL PLANNING COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
71	NATIONAL CREDIT UNION ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
72	NATIONAL FOUNDATION ON THE ARTS AND THE HUMANITIES		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
73	NATIONAL GALLERY OF ART		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
74	NATIONAL LABOR RELATIONS BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
75	NATIONAL MEDIATION BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
76	NATIONAL SCIENCE FOUNDATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
77	NATIONAL TRANSPORTATION SAFETY BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
78	NUCLEAR REGULATORY COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
79	OCCUPATIONAL SAFETY AND HEALTH REVIEW COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
80	OFFICE OF GOVERNMENT ETHICS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
81	OFFICE OF PERSONNEL MANAGEMENT		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
82	OFFICE OF SPECIAL COUNSEL		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
83	PEACE CORPS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
84	PENSION BENEFIT GUARANTY CORP		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
85	POSTAL REGULATORY COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
86	PRIVACY AND CIVIL LIBERTIES OVERSIGHT BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
87	RAILROAD RETIREMENT BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
88	RESOLUTION FUNDING CORP (REFCORP)		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
89	SECURITIES AND EXCHANGE COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
90	SELECTIVE SERVICE SYSTEM		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
91	SMALL BUSINESS ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
92	SMITHSONIAN INSTITUTION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
93	SOCIAL SECURITY ADMINISTRATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
94	STATE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
95	STATE JUSTICE INSTITUTE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
96	SURFACE TRANSPORTATION BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
97	TENNESSEE VALLEY AUTHORITY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
98	TRANSPORTATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
99	TREASURY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
100	US ABILITYONE COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
101	US AGENCY FOR GLOBAL MEDIA		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
102	US CAPITOL POLICE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
103	US CHEMICAL SAFETY BOARD		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
104	US COURTS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
105	US HOLOCAUST MEMORIAL COUNCIL		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
106	US INSTITUTE OF PEACE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
107	US INTERNATIONAL DEVELOPMENT FINANCE CORPORATION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
108	US INTERNATIONAL TRADE COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
109	US POSTAL SERVICE		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
110	US TRADE AND DEVELOPMENT AGENCY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
111	UTAH RECLAMATION MITIGATION AND CONSERVATION COMMISSION		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
112	VETERANS AFFAIRS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
113	WASHINGTON METROPOLITAN AREA TRANSIT AUTHORITY		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
114	WOODROW WILSON INTERNATIONAL CENTER FOR SCHOLARS		2	\N	2024-09-29 15:49:18.028984+00	2024-09-29 15:49:18.028984+00	0
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.documents (id, title, file_path, priority, link_type, user_id, staff_id, owner_id, owner_type, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: entity_hunts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_hunts (id, details, solicitation_number, year, file_name, file_path, created_at, updated_at, deleted_at) FROM stdin;
1	{"NAICS": [{"id": "NAICS-0", "value": "541519", "custom": false, "correct": true, "sentence": "541519"}], "TITLE": [], "AGENCY": [{"id": "AGENCY-0", "value": "federal acquisition service", "custom": false, "correct": true, "sentence": " 47qtcb22q0016 in support of the office of integrated technology category (itc) federal acquisition service (fas) issued under mas it professional services"}], "OFFICE": [], "SET_ASIDE": [{"id": "SET_ASIDE-0", "value": "unrestricted", "custom": false, "correct": true, "sentence": "unrestricted or"}], "DEPARTMENT": [{"id": "custom-1727625891581", "value": "Test 1", "custom": true, "correct": false, "sentence": "test 1"}], "DESCRIPTION": [{"id": "custom-1727625977157", "value": "Customer experience and research, data analysis, project management, and technical writing expertise supports ITPS in implementing high-visibility and complex projects related to IT cloud, software, and hardware. The work will occur in an off-site, remote environment, in the contiguous United States. Personnel shall be available during agency core work hours of 9:00 AM to 3:00 PM ET. There are no regular or recurring travel required to perform on this contract.", "custom": true, "correct": false, "sentence": "Customer experience and research, data analysis, project management, and technical writing\\nexpertise supports ITPS in implementing high-visibility and complex projects related to IT cloud,\\nsoftware, and hardware. The work will occur in an off-site, remote environment, in the\\ncontiguous United States. Personnel shall be available during agency core work hours of 9:00\\nAM to 3:00 PM ET. There are no regular or recurring travel required to perform on this contract."}], "FISCAL_YEAR": [{"id": "FISCAL_YEAR-0", "value": "2022", "custom": false, "correct": true, "sentence": " 2022 questions due date"}], "CONTRACT_VEHICLE": [{"id": "custom-1727625913739", "value": "MAS IT Professional Services", "custom": true, "correct": false, "sentence": "Issued Under MAS IT Professional Services, SIN: 54151S: Set-aside for Small\\nDisadvantaged Businesses (SDB)."}], "SOLICITATION_NUMBER": [{"id": "SOLICITATION_NUMBER-0", "value": "47qtcb22q0016", "custom": false, "correct": true, "sentence": " 47qtcb22q0016"}]}	47qtcb22q0016	2022	Sol_47QTCB22Q0016.pdf	2363a94c-9dc6-41a6-9acb-1be0967f0d5d-@Sol-47QTCB22Q0016.pdf	2024-09-29 16:06:20.05436+00	2024-09-29 16:06:20.05436+00	0
2	{"NAICS": [{"id": "NAICS-0", "value": "541519", "custom": false, "correct": true, "sentence": "541519"}], "TITLE": [{"id": "custom-1727626315362", "value": "test title", "custom": true, "correct": false, "sentence": "test title"}], "AGENCY": [{"id": "AGENCY-0", "value": "federal acquisition service", "custom": false, "correct": true, "sentence": " 47qtcb22q0016 in support of the office of integrated technology category (itc) federal acquisition service (fas) issued under mas it professional services"}], "OFFICE": [{"id": "custom-1727626327982", "value": "off2", "custom": true, "correct": false, "sentence": "off2"}], "SET_ASIDE": [{"id": "SET_ASIDE-0", "value": "unrestricted", "custom": false, "correct": true, "sentence": "unrestricted or"}], "DEPARTMENT": [{"id": "DEPARTMENT-0", "value": "general services administration", "custom": false, "correct": true, "sentence": "general services administration"}], "DESCRIPTION": [{"id": "custom-1727626342510", "value": "aaa", "custom": true, "correct": false, "sentence": "aaa"}], "FISCAL_YEAR": [{"id": "FISCAL_YEAR-0", "value": "2022", "custom": false, "correct": true, "sentence": " 2022 questions due date"}], "CONTRACT_VEHICLE": [], "SOLICITATION_NUMBER": [{"id": "SOLICITATION_NUMBER-0", "value": "47qtcb22q0016", "custom": false, "correct": true, "sentence": " 47qtcb22q0016"}]}	47qtcb22q0016	2022	Sol_47QTCB22Q0016.pdf	38f9b639-5bba-4626-935a-4c9776634d4b-@Sol-47QTCB22Q0016.pdf	2024-09-29 16:12:25.210829+00	2024-09-29 16:12:25.210829+00	0
\.


--
-- Data for Name: fiscal_years; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fiscal_years (id, user_id, year, created_at, updated_at, deleted_at) FROM stdin;
1	\N	2024	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
2	\N	2023	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
3	\N	2022	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
4	\N	2021	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
5	\N	2020	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
6	\N	2019	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
7	\N	2018	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
8	\N	2017	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
9	\N	2016	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
10	\N	2015	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
11	\N	2014	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
12	\N	2013	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
13	\N	2012	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
14	\N	2011	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
15	\N	2010	2024-09-29 15:49:22.631877+00	2024-09-29 15:49:22.631877+00	0
\.


--
-- Data for Name: invites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invites (id, code, "limit", user_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: markets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.markets (id, name, acronym, user_id, created_at, updated_at, deleted_at) FROM stdin;
1	Defense		\N	2024-09-29 15:49:18.026211+00	2024-09-29 15:49:18.026211+00	0
2	Civilian		\N	2024-09-29 15:49:18.026211+00	2024-09-29 15:49:18.026211+00	0
\.


--
-- Data for Name: naics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.naics (id, name, user_id, created_at, updated_at, deleted_at) FROM stdin;
1	111110 Soybean Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
2	111120 Oilseed (except Soybean) Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
3	111130 Dry Pea and Bean Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
4	111140 Wheat Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
5	111150 Corn Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
6	111160 Rice Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
7	111191 Oilseed and Grain Combination Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
8	111199 All Other Grain Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
9	111211 Potato Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
10	111219 Other Vegetable (except Potato) and Melon Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
11	111310 Orange Groves	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
12	111320 Citrus (except Orange) Groves	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
13	111331 Apple Orchards	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
14	111332 Grape Vineyards	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
15	111333 Strawberry Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
16	111334 Berry (except Strawberry) Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
17	111335 Tree Nut Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
18	111336 Fruit and Tree Nut Combination Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
19	111339 Other Noncitrus Fruit Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
20	111411 Mushroom Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
21	111419 Other Food Crops Grown Under Cover	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
22	111421 Nursery and Tree Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
23	111422 Floriculture Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
24	111910 Tobacco Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
25	111920 Cotton Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
26	111930 Sugarcane Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
27	111940 Hay Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
28	111991 Sugar Beet Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
29	111992 Peanut Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
30	111998 All Other Miscellaneous Crop Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
31	112111 Beef Cattle Ranching and Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
32	112112 Cattle Feedlots	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
33	112120 Dairy Cattle and Milk Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
34	112130 Dual-Purpose Cattle Ranching and Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
35	112210 Hog and Pig Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
36	112310 Chicken Egg Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
990	922110 Courts	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
37	112320 Broilers and Other Meat Type Chicken Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
38	112330 Turkey Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
39	112340 Poultry Hatcheries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
40	112390 Other Poultry Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
41	112410 Sheep Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
42	112420 Goat Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
43	112511 Finfish Farming and Fish Hatcheries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
44	112512 Shellfish Farming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
45	112519 Other Aquaculture	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
46	112910 Apiculture	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
47	112920 Horses and Other Equine Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
48	112930 Fur-Bearing Animal and Rabbit Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
49	112990 All Other Animal Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
50	113110 Timber Tract Operations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
51	113210 Forest Nurseries and Gathering of Forest Products	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
52	113310 Logging	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
53	114111 Finfish Fishing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
54	114112 Shellfish Fishing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
55	114119 Other Marine Fishing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
56	114210 Hunting and Trapping	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
57	115111 Cotton Ginning	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
58	115112 Soil Preparation, Planting, and Cultivating	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
59	115113 Crop Harvesting, Primarily by Machine	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
60	115114 Postharvest Crop Activities (except Cotton Ginning)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
61	115115 Farm Labor Contractors and Crew Leaders	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
62	115116 Farm Management Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
63	115210 Support Activities for Animal Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
64	115310 Support Activities for Forestry	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
65	211120 Crude Petroleum Extraction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
66	211130 Natural Gas Extraction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
67	212114 Surface Coal Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
68	212115 Underground Coal Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
69	212210 Iron Ore Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
70	212220 Gold Ore and Silver Ore Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
71	212230 Copper, Nickel, Lead, and Zinc Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
72	212290 Other Metal Ore Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
73	212311 Dimension Stone Mining and Quarrying	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
74	212312 Crushed and Broken Limestone Mining and Quarrying	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
75	212313 Crushed and Broken Granite Mining and Quarrying	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
76	212319 Other Crushed and Broken Stone Mining and Quarrying	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
77	212321 Construction Sand and Gravel Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
78	212322 Industrial Sand Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
79	212323 Kaolin, Clay, and Ceramic and Refractory Minerals Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
80	212390 Other Nonmetallic Mineral Mining and Quarrying	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
81	213111 Drilling Oil and Gas Wells	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
82	213112 Support Activities for Oil and Gas Operations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
83	213113 Support Activities for Coal Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
84	213114 Support Activities for Metal Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
85	213115 Support Activities for Nonmetallic Minerals (except Fuels) Mining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
86	221111 Hydroelectric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
87	221112 Fossil Fuel Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
88	221113 Nuclear Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
89	221114 Solar Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
90	221115 Wind Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
91	221116 Geothermal Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
92	221117 Biomass Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
93	221118 Other Electric Power Generation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
94	221121 Electric Bulk Power Transmission and Control	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
95	221122 Electric Power Distribution	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
96	221210 Natural Gas Distribution	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
97	221310 Water Supply and Irrigation Systems	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
98	221320 Sewage Treatment Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
99	221330 Steam and Air-Conditioning Supply	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
100	236115 New Single-Family Housing Construction (except For-Sale Builders)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
101	236116 New Multifamily Housing Construction (except For-Sale Builders)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
102	236117 New Housing For-Sale Builders	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
103	236118 Residential Remodelers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
104	236210 Industrial Building Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
105	236220 Commercial and Institutional Building Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
106	237110 Water and Sewer Line and Related Structures Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
107	237120 Oil and Gas Pipeline and Related Structures Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
108	237130 Power and Communication Line and Related Structures Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
109	237210 Land Subdivision	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
110	237310 Highway, Street, and Bridge Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
111	237990 Other Heavy and Civil Engineering Construction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
112	238110 Poured Concrete Foundation and Structure Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
113	238120 Structural Steel and Precast Concrete Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
114	238130 Framing Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
115	238140 Masonry Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
116	238150 Glass and Glazing Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
117	238160 Roofing Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
118	238170 Siding Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
119	238190 Other Foundation, Structure, and Building Exterior Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
120	238210 Electrical Contractors and Other Wiring Installation Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
121	238220 Plumbing, Heating, and Air-Conditioning Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
122	238290 Other Building Equipment Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
123	238310 Drywall and Insulation Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
124	238320 Painting and Wall Covering Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
125	238330 Flooring Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
126	238340 Tile and Terrazzo Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
127	238350 Finish Carpentry Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
128	238390 Other Building Finishing Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
129	238910 Site Preparation Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
130	238990 All Other Specialty Trade Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
131	311111 Dog and Cat Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
132	311119 Other Animal Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
133	311211 Flour Milling	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
134	311212 Rice Milling	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
135	311213 Malt Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
136	311221 Wet Corn Milling and Starch Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
137	311224 Soybean and Other Oilseed Processing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
138	311225 Fats and Oils Refining and Blending	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
139	311230 Breakfast Cereal Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
140	311313 Beet Sugar Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
141	311314 Cane Sugar Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
142	311340 Nonchocolate Confectionery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
143	311351 Chocolate and Confectionery Manufacturing from Cacao Beans	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
144	311352 Confectionery Manufacturing from Purchased Chocolate	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
145	311411 Frozen Fruit, Juice, and Vegetable Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
146	311412 Frozen Specialty Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
147	311421 Fruit and Vegetable Canning	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
148	311422 Specialty Canning	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
149	311423 Dried and Dehydrated Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
150	311511 Fluid Milk Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
151	311512 Creamery Butter Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
152	311513 Cheese Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
153	311514 Dry, Condensed, and Evaporated Dairy Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
154	311520 Ice Cream and Frozen Dessert Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
155	311611 Animal (except Poultry) Slaughtering	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
156	311612 Meat Processed from Carcasses	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
157	311613 Rendering and Meat Byproduct Processing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
158	311615 Poultry Processing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
159	311710 Seafood Product Preparation and Packaging	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
160	311811 Retail Bakeries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
161	311812 Commercial Bakeries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
162	311813 Frozen Cakes, Pies, and Other Pastries Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
163	311821 Cookie and Cracker Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
164	311824 Dry Pasta, Dough, and Flour Mixes Manufacturing from Purchased Flour	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
165	311830 Tortilla Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
166	311911 Roasted Nuts and Peanut Butter Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
167	311919 Other Snack Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
168	311920 Coffee and Tea Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
169	311930 Flavoring Syrup and Concentrate Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
170	311941 Mayonnaise, Dressing, and Other Prepared Sauce Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
171	311942 Spice and Extract Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
172	311991 Perishable Prepared Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
173	311999 All Other Miscellaneous Food Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
174	312111 Soft Drink Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
175	312112 Bottled Water Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
176	312113 Ice Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
177	312120 Breweries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
178	312130 Wineries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
179	312140 Distilleries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
180	312230 Tobacco Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
181	313110 Fiber, Yarn, and Thread Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
182	313210 Broadwoven Fabric Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
183	313220 Narrow Fabric Mills and Schiffli Machine Embroidery	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
184	313230 Nonwoven Fabric Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
185	313240 Knit Fabric Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
186	313310 Textile and Fabric Finishing Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
187	313320 Fabric Coating Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
188	314110 Carpet and Rug Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
189	314120 Curtain and Linen Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
190	314910 Textile Bag and Canvas Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
191	314994 Rope, Cordage, Twine, Tire Cord, and Tire Fabric Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
192	314999 All Other Miscellaneous Textile Product Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
193	315120 Apparel Knitting Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
194	315210 Cut and Sew Apparel Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
195	315250 Cut and Sew Apparel Manufacturing (except Contractors)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
196	315990 Apparel Accessories and Other Apparel Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
197	316110 Leather and Hide Tanning and Finishing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
198	316210 Footwear Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
199	316990 Other Leather and Allied Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
200	321113 Sawmills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
201	321114 Wood Preservation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
202	321211 Hardwood Veneer and Plywood Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
203	321212 Softwood Veneer and Plywood Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
204	321215 Engineered Wood Member Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
205	321219 Reconstituted Wood Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
206	321911 Wood Window and Door Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
207	321912 Cut Stock, Resawing Lumber, and Planing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
208	321918 Other Millwork (including Flooring)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
209	321920 Wood Container and Pallet Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
210	321991 Manufactured Home (Mobile Home) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
211	321992 Prefabricated Wood Building Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
212	321999 All Other Miscellaneous Wood Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
213	322110 Pulp Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
214	322120 Paper Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
215	322130 Paperboard Mills	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
216	322211 Corrugated and Solid Fiber Box Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
217	322212 Folding Paperboard Box Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
218	322219 Other Paperboard Container Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
219	322220 Paper Bag and Coated and Treated Paper Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
754	541214 Payroll Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
220	322230 Stationery Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
221	322291 Sanitary Paper Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
222	322299 All Other Converted Paper Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
223	323111 Commercial Printing (except Screen and Books)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
224	323113 Commercial Screen Printing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
225	323117 Books Printing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
226	323120 Support Activities for Printing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
227	324110 Petroleum Refineries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
228	324121 Asphalt Paving Mixture and Block Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
229	324122 Asphalt Shingle and Coating Materials Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
230	324191 Petroleum Lubricating Oil and Grease Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
231	324199 All Other Petroleum and Coal Products Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
232	325110 Petrochemical Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
233	325120 Industrial Gas Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
234	325130 Synthetic Dye and Pigment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
235	325180 Other Basic Inorganic Chemical Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
236	325193 Ethyl Alcohol Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
237	325194 Cyclic Crude, Intermediate, and Gum and Wood Chemical Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
238	325199 All Other Basic Organic Chemical Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
239	325211 Plastics Material and Resin Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
240	325212 Synthetic Rubber Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
241	325220 Artificial and Synthetic Fibers and Filaments Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
242	325311 Nitrogenous Fertilizer Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
243	325312 Phosphatic Fertilizer Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
244	325314 Fertilizer (Mixing Only) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
245	325315 Compost Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
246	325320 Pesticide and Other Agricultural Chemical Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
247	325411 Medicinal and Botanical Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
248	325412 Pharmaceutical Preparation Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
249	325413 In-Vitro Diagnostic Substance Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
250	325414 Biological Product (except Diagnostic) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
251	325510 Paint and Coating Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
252	325520 Adhesive Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
253	325611 Soap and Other Detergent Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
254	325612 Polish and Other Sanitation Good Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
255	325613 Surface Active Agent Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
256	325620 Toilet Preparation Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
257	325910 Printing Ink Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
258	325920 Explosives Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
259	325991 Custom Compounding of Purchased Resins	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
260	325992 Photographic Film, Paper, Plate, Chemical, and Copy Toner Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
261	325998 All Other Miscellaneous Chemical Product and Preparation Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
262	326111 Plastics Bag and Pouch Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
263	326112 Plastics Packaging Film and Sheet (including Laminated) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
264	326113 Unlaminated Plastics Film and Sheet (except Packaging) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
265	326121 Unlaminated Plastics Profile Shape Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
266	326122 Plastics Pipe and Pipe Fitting Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
267	326130 Laminated Plastics Plate, Sheet (except Packaging), and Shape Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
268	326140 Polystyrene Foam Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
269	326150 Urethane and Other Foam Product (except Polystyrene) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
270	326160 Plastics Bottle Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
271	326191 Plastics Plumbing Fixture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
272	326199 All Other Plastics Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
273	326211 Tire Manufacturing (except Retreading)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
274	326212 Tire Retreading	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
275	326220 Rubber and Plastics Hoses and Belting Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
276	326291 Rubber Product Manufacturing for Mechanical Use	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
277	326299 All Other Rubber Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
278	327110 Pottery, Ceramics, and Plumbing Fixture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
279	327120 Clay Building Material and Refractories Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
280	327211 Flat Glass Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
281	327212 Other Pressed and Blown Glass and Glassware Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
282	327213 Glass Container Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
283	327215 Glass Product Manufacturing Made of Purchased Glass	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
284	327310 Cement Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
285	327320 Ready-Mix Concrete Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
286	327331 Concrete Block and Brick Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
287	327332 Concrete Pipe Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
288	327390 Other Concrete Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
289	327410 Lime Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
290	327420 Gypsum Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
291	327910 Abrasive Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
292	327991 Cut Stone and Stone Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
293	327992 Ground or Treated Mineral and Earth Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
294	327993 Mineral Wool Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
295	327999 All Other Miscellaneous Nonmetallic Mineral Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
296	331110 Iron and Steel Mills and Ferroalloy Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
297	331210 Iron and Steel Pipe and Tube Manufacturing from Purchased Steel	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
298	331221 Rolled Steel Shape Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
299	331222 Steel Wire Drawing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
300	331313 Alumina Refining and Primary Aluminum Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
301	331314 Secondary Smelting and Alloying of Aluminum	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
302	331315 Aluminum Sheet, Plate, and Foil Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
303	331318 Other Aluminum Rolling, Drawing, and Extruding	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
304	331410 Nonferrous Metal (except Aluminum) Smelting and Refining	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
305	331420 Copper Rolling, Drawing, Extruding, and Alloying	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
306	331491 Nonferrous Metal (except Copper and Aluminum) Rolling, Drawing, and Extruding	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
307	331492 Secondary Smelting, Refining, and Alloying of Nonferrous Metal (except Copper and Aluminum)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
308	331511 Iron Foundries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
309	331512 Steel Investment Foundries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
310	331513 Steel Foundries (except Investment)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
311	331523 Nonferrous Metal Die-Casting Foundries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
312	331524 Aluminum Foundries (except Die-Casting)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
313	331529 Other Nonferrous Metal Foundries (except Die-Casting)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
314	332111 Iron and Steel Forging	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
315	332112 Nonferrous Forging	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
316	332114 Custom Roll Forming	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
317	332117 Powder Metallurgy Part Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
318	332119 Metal Crown, Closure, and Other Metal Stamping (except Automotive)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
319	332215 Metal Kitchen Cookware, Utensil, Cutlery, and Flatware (except Precious) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
320	332216 Saw Blade and Handtool Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
321	332311 Prefabricated Metal Building and Component Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
322	332312 Fabricated Structural Metal Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
323	332313 Plate Work Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
324	332321 Metal Window and Door Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
325	332322 Sheet Metal Work Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
326	332323 Ornamental and Architectural Metal Work Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
327	332410 Power Boiler and Heat Exchanger Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
328	332420 Metal Tank (Heavy Gauge) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
329	332431 Metal Can Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
330	332439 Other Metal Container Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
331	332510 Hardware Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
332	332613 Spring Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
333	332618 Other Fabricated Wire Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
334	332710 Machine Shops	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
335	332721 Precision Turned Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
336	332722 Bolt, Nut, Screw, Rivet, and Washer Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
337	332811 Metal Heat Treating	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
473	339993 Fastener, Button, Needle, and Pin Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
338	332812 Metal Coating, Engraving (except Jewelry and Silverware), and Allied Services to Manufacturers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
339	332813 Electroplating, Plating, Polishing, Anodizing, and Coloring	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
340	332911 Industrial Valve Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
341	332912 Fluid Power Valve and Hose Fitting Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
342	332913 Plumbing Fixture Fitting and Trim Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
343	332919 Other Metal Valve and Pipe Fitting Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
344	332991 Ball and Roller Bearing Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
345	332992 Small Arms Ammunition Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
346	332993 Ammunition (except Small Arms) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
347	332994 Small Arms, Ordnance, and Ordnance Accessories Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
348	332996 Fabricated Pipe and Pipe Fitting Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
349	332999 All Other Miscellaneous Fabricated Metal Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
350	333111 Farm Machinery and Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
351	333112 Lawn and Garden Tractor and Home Lawn and Garden Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
352	333120 Construction Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
353	333131 Mining Machinery and Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
354	333132 Oil and Gas Field Machinery and Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
355	333241 Food Product Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
356	333242 Semiconductor Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
357	333243 Sawmill, Woodworking, and Paper Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
358	333248 All Other Industrial Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
359	333310 Commercial and Service Industry Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
360	333413 Industrial and Commercial Fan and Blower and Air Purification Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
361	333414 Heating Equipment (except Warm Air Furnaces) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
362	333415 Air-Conditioning and Warm Air Heating Equipment and Commercial and Industrial Refrigeration Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
363	333511 Industrial Mold Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
364	333514 Special Die and Tool, Die Set, Jig, and Fixture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
365	333515 Cutting Tool and Machine Tool Accessory Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
366	333517 Machine Tool Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
367	333519 Rolling Mill and Other Metalworking Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
368	333611 Turbine and Turbine Generator Set Units Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
369	333612 Speed Changer, Industrial High-Speed Drive, and Gear Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
370	333613 Mechanical Power Transmission Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
371	333618 Other Engine Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
372	333912 Air and Gas Compressor Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
373	333914 Measuring, Dispensing, and Other Pumping Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
374	333921 Elevator and Moving Stairway Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
375	333922 Conveyor and Conveying Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
376	333923 Overhead Traveling Crane, Hoist, and Monorail System Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
377	333924 Industrial Truck, Tractor, Trailer, and Stacker Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
378	333991 Power-Driven Handtool Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
379	333992 Welding and Soldering Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
380	333993 Packaging Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
381	333994 Industrial Process Furnace and Oven Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
382	333995 Fluid Power Cylinder and Actuator Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
383	333996 Fluid Power Pump and Motor Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
384	333998 All Other Miscellaneous General Purpose Machinery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
385	334111 Electronic Computer Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
386	334112 Computer Storage Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
387	334118 Computer Terminal and Other Computer Peripheral Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
388	334210 Telephone Apparatus Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
389	334220 Radio and Television Broadcasting and Wireless Communications Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
390	334290 Other Communications Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
391	334310 Audio and Video Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
392	334412 Bare Printed Circuit Board Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
393	334413 Semiconductor and Related Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
394	334416 Capacitor, Resistor, Coil, Transformer, and Other Inductor Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
395	334417 Electronic Connector Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
396	334418 Printed Circuit Assembly (Electronic Assembly) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
397	334419 Other Electronic Component Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
398	334510 Electromedical and Electrotherapeutic Apparatus Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
399	334511 Search, Detection, Navigation, Guidance, Aeronautical, and Nautical System and Instrument Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
400	334512 Automatic Environmental Control Manufacturing for Residential, Commercial, and Appliance Use	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
401	334513 Instruments and Related Products Manufacturing for Measuring, Displaying, and Controlling Industrial Process Variables	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
402	334514 Totalizing Fluid Meter and Counting Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
403	334515 Instrument Manufacturing for Measuring and Testing Electricity and Electrical Signals	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
404	334516 Analytical Laboratory Instrument Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
405	334517 Irradiation Apparatus Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
406	334519 Other Measuring and Controlling Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
407	334610 Manufacturing and Reproducing Magnetic and Optical Media	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
408	335131 Residential Electric Lighting Fixture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
409	335132 Commercial, Industrial, and Institutional Electric Lighting Fixture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
410	335139 Electric Lamp Bulb and Other Lighting Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
411	335210 Small Electrical Appliance Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
412	335220 Major Household Appliance Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
413	335311 Power, Distribution, and Specialty Transformer Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
414	335312 Motor and Generator Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
415	335313 Switchgear and Switchboard Apparatus Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
416	335314 Relay and Industrial Control Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
417	335910 Battery Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
418	335921 Fiber Optic Cable Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
419	335929 Other Communication and Energy Wire Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
420	335931 Current-Carrying Wiring Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
421	335932 Noncurrent-Carrying Wiring Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
422	335991 Carbon and Graphite Product Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
423	335999 All Other Miscellaneous Electrical Equipment and Component Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
424	336110 Automobile and Light Duty Motor Vehicle Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
425	336120 Heavy Duty Truck Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
426	336211 Motor Vehicle Body Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
427	336212 Truck Trailer Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
428	336213 Motor Home Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
429	336214 Travel Trailer and Camper Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
430	336310 Motor Vehicle Gasoline Engine and Engine Parts Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
431	336320 Motor Vehicle Electrical and Electronic Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
432	336330 Motor Vehicle Steering and Suspension Components (except Spring) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
433	336340 Motor Vehicle Brake System Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
434	336350 Motor Vehicle Transmission and Power Train Parts Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
435	336360 Motor Vehicle Seating and Interior Trim Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
436	336370 Motor Vehicle Metal Stamping	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
437	336390 Other Motor Vehicle Parts Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
438	336411 Aircraft Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
439	336412 Aircraft Engine and Engine Parts Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
440	336413 Other Aircraft Parts and Auxiliary Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
441	336414 Guided Missile and Space Vehicle Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
442	336415 Guided Missile and Space Vehicle Propulsion Unit and Propulsion Unit Parts Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
443	336419 Other Guided Missile and Space Vehicle Parts and Auxiliary Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
444	336510 Railroad Rolling Stock Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
445	336611 Ship Building and Repairing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
446	336612 Boat Building	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
447	336991 Motorcycle, Bicycle, and Parts Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
448	336992 Military Armored Vehicle, Tank, and Tank Component Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
449	336999 All Other Transportation Equipment Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
450	337110 Wood Kitchen Cabinet and Countertop Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
451	337121 Upholstered Household Furniture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
452	337122 Nonupholstered Wood Household Furniture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
453	337126 Household Furniture (except Wood and Upholstered) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
454	337127 Institutional Furniture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
455	337211 Wood Office Furniture Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
456	337212 Custom Architectural Woodwork and Millwork Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
457	337214 Office Furniture (except Wood) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
458	337215 Showcase, Partition, Shelving, and Locker Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
459	337910 Mattress Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
460	337920 Blind and Shade Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
461	339112 Surgical and Medical Instrument Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
462	339113 Surgical Appliance and Supplies Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
463	339114 Dental Equipment and Supplies Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
464	339115 Ophthalmic Goods Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
465	339116 Dental Laboratories	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
466	339910 Jewelry and Silverware Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
467	339920 Sporting and Athletic Goods Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
468	339930 Doll, Toy, and Game Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
469	339940 Office Supplies (except Paper) Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
470	339950 Sign Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
471	339991 Gasket, Packing, and Sealing Device Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
472	339992 Musical Instrument Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
474	339994 Broom, Brush, and Mop Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
475	339995 Burial Casket Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
476	339999 All Other Miscellaneous Manufacturing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
477	423110 Automobile and Other Motor Vehicle Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
478	423120 Motor Vehicle Supplies and New Parts Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
479	423130 Tire and Tube Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
480	423140 Motor Vehicle Parts (Used) Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
481	423210 Furniture Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
826	561720 Janitorial Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
482	423220 Home Furnishing Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
483	423310 Lumber, Plywood, Millwork, and Wood Panel Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
484	423320 Brick, Stone, and Related Construction Material Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
485	423330 Roofing, Siding, and Insulation Material Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
486	423390 Other Construction Material Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
487	423410 Photographic Equipment and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
488	423420 Office Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
489	423430 Computer and Computer Peripheral Equipment and Software Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
490	423440 Other Commercial Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
491	423450 Medical, Dental, and Hospital Equipment and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
492	423460 Ophthalmic Goods Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
493	423490 Other Professional Equipment and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
494	423510 Metal Service Centers and Other Metal Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
495	423520 Coal and Other Mineral and Ore Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
496	423610 Electrical Apparatus and Equipment, Wiring Supplies, and Related Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
497	423620 Household Appliances, Electric Housewares, and Consumer Electronics Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
498	423690 Other Electronic Parts and Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
499	423710 Hardware Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
500	423720 Plumbing and Heating Equipment and Supplies (Hydronics) Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
501	423730 Warm Air Heating and Air-Conditioning Equipment and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
502	423740 Refrigeration Equipment and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
503	423810 Construction and Mining (except Oil Well) Machinery and Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
504	423820 Farm and Garden Machinery and Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
505	423830 Industrial Machinery and Equipment Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
506	423840 Industrial Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
507	423850 Service Establishment Equipment and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
508	423860 Transportation Equipment and Supplies (except Motor Vehicle) Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
509	423910 Sporting and Recreational Goods and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
510	423920 Toy and Hobby Goods and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
511	423930 Recyclable Material Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
512	423940 Jewelry, Watch, Precious Stone, and Precious Metal Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
513	423990 Other Miscellaneous Durable Goods Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
514	424110 Printing and Writing Paper Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
515	424120 Stationery and Office Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
516	424130 Industrial and Personal Service Paper Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
517	424210 Drugs and Druggists' Sundries Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
518	424310 Piece Goods, Notions, and Other Dry Goods Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
519	424340 Footwear Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
520	424350 Clothing and Clothing Accessories Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
521	424410 General Line Grocery Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
522	424420 Packaged Frozen Food Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
523	424430 Dairy Product (except Dried or Canned) Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
524	424440 Poultry and Poultry Product Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
525	424450 Confectionery Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
526	424460 Fish and Seafood Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
527	424470 Meat and Meat Product Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
528	424480 Fresh Fruit and Vegetable Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
529	424490 Other Grocery and Related Products Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
530	424510 Grain and Field Bean Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
531	424520 Livestock Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
532	424590 Other Farm Product Raw Material Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
533	424610 Plastics Materials and Basic Forms and Shapes Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
534	424690 Other Chemical and Allied Products Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
535	424710 Petroleum Bulk Stations and Terminals	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
536	424720 Petroleum and Petroleum Products Merchant Wholesalers (except Bulk Stations and Terminals)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
537	424810 Beer and Ale Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
538	424820 Wine and Distilled Alcoholic Beverage Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
539	424910 Farm Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
540	424920 Book, Periodical, and Newspaper Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
541	424930 Flower, Nursery Stock, and Florists' Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
542	424940 Tobacco Product and Electronic Cigarette Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
543	424950 Paint, Varnish, and Supplies Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
544	424990 Other Miscellaneous Nondurable Goods Merchant Wholesalers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
545	425120 Wholesale Trade Agents and Brokers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
546	441110 New Car Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
547	441120 Used Car Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
548	441210 Recreational Vehicle Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
549	441222 Boat Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
550	441227 Motorcycle, ATV, and All Other Motor Vehicle Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
551	441330 Automotive Parts and Accessories Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
552	441340 Tire Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
553	444110 Home Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
554	444120 Paint and Wallpaper Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
555	444140 Hardware Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
556	444180 Other Building Material Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
557	444230 Outdoor Power Equipment Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
558	444240 Nursery, Garden Center, and Farm Supply Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
559	445110 Supermarkets and Other Grocery Retailers (except Convenience Retailers)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
560	445131 Convenience Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
561	445132 Vending Machine Operators	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
562	445230 Fruit and Vegetable Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
563	445240 Meat Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
564	445250 Fish and Seafood Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
565	445291 Baked Goods Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
566	445292 Confectionery and Nut Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
567	445298 All Other Specialty Food Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
568	445320 Beer, Wine, and Liquor Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
569	449110 Furniture Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
570	449121 Floor Covering Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
571	449122 Window Treatment Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
572	449129 All Other Home Furnishings Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
573	449210 Electronics and Appliance Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
574	455110 Department Stores	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
575	455211 Warehouse Clubs and Supercenters	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
576	455219 All Other General Merchandise Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
577	456110 Pharmacies and Drug Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
578	456120 Cosmetics, Beauty Supplies, and Perfume Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
579	456130 Optical Goods Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
580	456191 Food (Health) Supplement Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
581	456199 All Other Health and Personal Care Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
582	457110 Gasoline Stations with Convenience Stores	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
583	457120 Other Gasoline Stations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
584	457210 Fuel Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
585	458110 Clothing and Clothing Accessories Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
586	458210 Shoe Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
587	458310 Jewelry Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
588	458320 Luggage and Leather Goods Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
589	459110 Sporting Goods Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
590	459120 Hobby, Toy, and Game Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
591	459130 Sewing, Needlework, and Piece Goods Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
592	459140 Musical Instrument and Supplies Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
593	459210 Book Retailers and News Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
594	459310 Florists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
595	459410 Office Supplies and Stationery Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
596	459420 Gift, Novelty, and Souvenir Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
597	459510 Used Merchandise Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
598	459910 Pet and Pet Supplies Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
599	459920 Art Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
600	459930 Manufactured (Mobile) Home Dealers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
601	459991 Tobacco, Electronic Cigarette, and Other Smoking Supplies Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
602	459999 All Other Miscellaneous Retailers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
603	481111 Scheduled Passenger Air Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
604	481112 Scheduled Freight Air Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
605	481211 Nonscheduled Chartered Passenger Air Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
606	481212 Nonscheduled Chartered Freight Air Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
607	481219 Other Nonscheduled Air Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
608	482111 Line-Haul Railroads	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
609	482112 Short Line Railroads	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
610	483111 Deep Sea Freight Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
611	483112 Deep Sea Passenger Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
612	483113 Coastal and Great Lakes Freight Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
613	483114 Coastal and Great Lakes Passenger Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
827	561730 Landscaping Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
614	483211 Inland Water Freight Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
615	483212 Inland Water Passenger Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
616	484110 General Freight Trucking, Local	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
617	484121 General Freight Trucking, Long-Distance, Truckload	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
618	484122 General Freight Trucking, Long-Distance, Less Than Truckload	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
619	484210 Used Household and Office Goods Moving	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
620	484220 Specialized Freight (except Used Goods) Trucking, Local	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
621	484230 Specialized Freight (except Used Goods) Trucking, Long-Distance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
622	485111 Mixed Mode Transit Systems	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
623	485112 Commuter Rail Systems	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
624	485113 Bus and Other Motor Vehicle Transit Systems	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
625	485119 Other Urban Transit Systems	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
626	485210 Interurban and Rural Bus Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
627	485310 Taxi and Ridesharing Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
628	485320 Limousine Service	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
629	485410 School and Employee Bus Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
630	485510 Charter Bus Industry	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
631	485991 Special Needs Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
632	485999 All Other Transit and Ground Passenger Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
633	486110 Pipeline Transportation of Crude Oil	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
634	486210 Pipeline Transportation of Natural Gas	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
635	486910 Pipeline Transportation of Refined Petroleum Products	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
636	486990 All Other Pipeline Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
637	487110 Scenic and Sightseeing Transportation, Land	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
638	487210 Scenic and Sightseeing Transportation, Water	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
639	487990 Scenic and Sightseeing Transportation, Other	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
640	488111 Air Traffic Control	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
641	488119 Other Airport Operations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
642	488190 Other Support Activities for Air Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
643	488210 Support Activities for Rail Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
644	488310 Port and Harbor Operations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
645	488320 Marine Cargo Handling	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
646	488330 Navigational Services to Shipping	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
647	488390 Other Support Activities for Water Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
648	488410 Motor Vehicle Towing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
649	488490 Other Support Activities for Road Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
650	488510 Freight Transportation Arrangement	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
651	488991 Packing and Crating	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
652	488999 All Other Support Activities for Transportation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
653	491110 Postal Service	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
654	492110 Couriers and Express Delivery Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
655	492210 Local Messengers and Local Delivery	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
656	493110 General Warehousing and Storage	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
657	493120 Refrigerated Warehousing and Storage	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
658	493130 Farm Product Warehousing and Storage	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
659	493190 Other Warehousing and Storage	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
660	512110 Motion Picture and Video Production	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
661	512120 Motion Picture and Video Distribution	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
662	512131 Motion Picture Theaters (except Drive-Ins)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
663	512132 Drive-In Motion Picture Theaters	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
664	512191 Teleproduction and Other Postproduction Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
665	512199 Other Motion Picture and Video Industries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
666	512230 Music Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
667	512240 Sound Recording Studios	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
668	512250 Record Production and Distribution	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
669	512290 Other Sound Recording Industries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
670	513110 Newspaper Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
671	513120 Periodical Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
672	513130 Book Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
673	513140 Directory and Mailing List Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
674	513191 Greeting Card Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
675	513199 All Other Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
676	513210 Software Publishers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
677	516110 Radio Broadcasting Stations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
678	516120 Television Broadcasting Stations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
679	516210 Media Streaming Distribution Services, Social Networks, and Other Media Networks and Content Providers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
680	517111 Wired Telecommunications Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
681	517112 Wireless Telecommunications Carriers (except Satellite)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
682	517121 Telecommunications Resellers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
683	517122 Agents for Wireless Telecommunications Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
684	517410 Satellite Telecommunications	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
685	517810 All Other Telecommunications	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
686	518210 Computing Infrastructure Providers, Data Processing, Web Hosting, and Related Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
687	519210 Libraries and Archives	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
688	519290 Web Search Portals and All Other Information Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
689	521110 Monetary Authorities-Central Bank	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
690	522110 Commercial Banking	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
691	522130 Credit Unions	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
692	522180 Savings Institutions and Other Depository Credit Intermediation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
693	522210 Credit Card Issuing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
694	522220 Sales Financing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
695	522291 Consumer Lending	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
696	522292 Real Estate Credit	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
697	522299 International, Secondary Market, and All Other Nondepository Credit Intermediation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
698	522310 Mortgage and Nonmortgage Loan Brokers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
699	522320 Financial Transactions Processing, Reserve, and Clearinghouse Activities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
700	522390 Other Activities Related to Credit Intermediation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
701	523150 Investment Banking and Securities Intermediation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
702	523160 Commodity Contracts Intermediation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
703	523210 Securities and Commodity Exchanges	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
704	523910 Miscellaneous Intermediation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
705	523940 Portfolio Management and Investment Advice	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
706	523991 Trust, Fiduciary, and Custody Activities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
707	523999 Miscellaneous Financial Investment Activities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
708	524113 Direct Life Insurance Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
709	524114 Direct Health and Medical Insurance Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
710	524126 Direct Property and Casualty Insurance Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
711	524127 Direct Title Insurance Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
712	524128 Other Direct Insurance (except Life, Health, and Medical) Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
713	524130 Reinsurance Carriers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
714	524210 Insurance Agencies and Brokerages	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
715	524291 Claims Adjusting	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
716	524292 Pharmacy Benefit Management and Other Third Party Administration of Insurance and Pension Funds	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
717	524298 All Other Insurance Related Activities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
718	525110 Pension Funds	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
719	525120 Health and Welfare Funds	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
720	525190 Other Insurance Funds	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
721	525910 Open-End Investment Funds	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
722	525920 Trusts, Estates, and Agency Accounts	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
723	525990 Other Financial Vehicles	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
724	531110 Lessors of Residential Buildings and Dwellings	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
725	531120 Lessors of Nonresidential Buildings (except Miniwarehouses)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
726	531130 Lessors of Miniwarehouses and Self-Storage Units	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
727	531190 Lessors of Other Real Estate Property	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
728	531210 Offices of Real Estate Agents and Brokers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
729	531311 Residential Property Managers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
730	531312 Nonresidential Property Managers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
731	531320 Offices of Real Estate Appraisers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
732	531390 Other Activities Related to Real Estate	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
733	532111 Passenger Car Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
734	532112 Passenger Car Leasing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
735	532120 Truck, Utility Trailer, and RV (Recreational Vehicle) Rental and Leasing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
736	532210 Consumer Electronics and Appliances Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
737	532281 Formal Wear and Costume Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
738	532282 Video Tape and Disc Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
739	532283 Home Health Equipment Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
740	532284 Recreational Goods Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
741	532289 All Other Consumer Goods Rental	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
742	532310 General Rental Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
743	532411 Commercial Air, Rail, and Water Transportation Equipment Rental and Leasing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
744	532412 Construction, Mining, and Forestry Machinery and Equipment Rental and Leasing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
745	532420 Office Machinery and Equipment Rental and Leasing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
746	532490 Other Commercial and Industrial Machinery and Equipment Rental and Leasing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
747	533110 Lessors of Nonfinancial Intangible Assets (except Copyrighted Works)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
748	541110 Offices of Lawyers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
749	541120 Offices of Notaries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
750	541191 Title Abstract and Settlement Offices	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
751	541199 All Other Legal Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
752	541211 Offices of Certified Public Accountants	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
753	541213 Tax Preparation Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
755	541219 Other Accounting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
756	541310 Architectural Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
757	541320 Landscape Architectural Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
758	541330 Engineering Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
759	541340 Drafting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
760	541350 Building Inspection Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
761	541360 Geophysical Surveying and Mapping Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
762	541370 Surveying and Mapping (except Geophysical) Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
763	541380 Testing Laboratories and Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
764	541410 Interior Design Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
765	541420 Industrial Design Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
766	541430 Graphic Design Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
767	541490 Other Specialized Design Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
768	541511 Custom Computer Programming Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
769	541512 Computer Systems Design Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
770	541513 Computer Facilities Management Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
771	541519 Other Computer Related Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
772	541611 Administrative Management and General Management Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
773	541612 Human Resources Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
774	541613 Marketing Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
775	541614 Process, Physical Distribution, and Logistics Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
776	541618 Other Management Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
777	541620 Environmental Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
778	541690 Other Scientific and Technical Consulting Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
779	541713 Research and Development in Nanotechnology	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
780	541714 Research and Development in Biotechnology (except Nanobiotechnology)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
781	541715 Research and Development in the Physical, Engineering, and Life Sciences (except Nanotechnology and Biotechnology)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
782	541720 Research and Development in the Social Sciences and Humanities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
783	541810 Advertising Agencies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
784	541820 Public Relations Agencies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
785	541830 Media Buying Agencies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
786	541840 Media Representatives	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
787	541850 Indoor and Outdoor Display Advertising	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
788	541860 Direct Mail Advertising	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
789	541870 Advertising Material Distribution Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
790	541890 Other Services Related to Advertising	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
791	541910 Marketing Research and Public Opinion Polling	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
792	541921 Photography Studios, Portrait	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
793	541922 Commercial Photography	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
794	541930 Translation and Interpretation Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
795	541940 Veterinary Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
796	541990 All Other Professional, Scientific, and Technical Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
797	551111 Offices of Bank Holding Companies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
798	551112 Offices of Other Holding Companies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
799	551114 Corporate, Subsidiary, and Regional Managing Offices	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
800	561110 Office Administrative Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
801	561210 Facilities Support Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
802	561311 Employment Placement Agencies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
803	561312 Executive Search Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
804	561320 Temporary Help Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
805	561330 Professional Employer Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
806	561410 Document Preparation Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
807	561421 Telephone Answering Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
808	561422 Telemarketing Bureaus and Other Contact Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
809	561431 Private Mail Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
810	561439 Other Business Service Centers (including Copy Shops)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
811	561440 Collection Agencies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
812	561450 Credit Bureaus	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
813	561491 Repossession Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
814	561492 Court Reporting and Stenotype Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
815	561499 All Other Business Support Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
816	561510 Travel Agencies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
817	561520 Tour Operators	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
818	561591 Convention and Visitors Bureaus	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
819	561599 All Other Travel Arrangement and Reservation Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
820	561611 Investigation and Personal Background Check Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
821	561612 Security Guards and Patrol Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
822	561613 Armored Car Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
823	561621 Security Systems Services (except Locksmiths)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
824	561622 Locksmiths	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
825	561710 Exterminating and Pest Control Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
828	561740 Carpet and Upholstery Cleaning Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
829	561790 Other Services to Buildings and Dwellings	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
830	561910 Packaging and Labeling Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
831	561920 Convention and Trade Show Organizers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
832	561990 All Other Support Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
833	562111 Solid Waste Collection	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
834	562112 Hazardous Waste Collection	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
835	562119 Other Waste Collection	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
836	562211 Hazardous Waste Treatment and Disposal	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
837	562212 Solid Waste Landfill	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
838	562213 Solid Waste Combustors and Incinerators	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
839	562219 Other Nonhazardous Waste Treatment and Disposal	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
840	562910 Remediation Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
841	562920 Materials Recovery Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
842	562991 Septic Tank and Related Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
843	562998 All Other Miscellaneous Waste Management Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
844	611110 Elementary and Secondary Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
845	611210 Junior Colleges	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
846	611310 Colleges, Universities, and Professional Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
847	611410 Business and Secretarial Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
848	611420 Computer Training	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
849	611430 Professional and Management Development Training	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
850	611511 Cosmetology and Barber Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
851	611512 Flight Training	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
852	611513 Apprenticeship Training	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
853	611519 Other Technical and Trade Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
854	611610 Fine Arts Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
855	611620 Sports and Recreation Instruction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
856	611630 Language Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
857	611691 Exam Preparation and Tutoring	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
858	611692 Automobile Driving Schools	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
859	611699 All Other Miscellaneous Schools and Instruction	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
860	611710 Educational Support Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
861	621111 Offices of Physicians (except Mental Health Specialists)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
862	621112 Offices of Physicians, Mental Health Specialists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
863	621210 Offices of Dentists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
864	621310 Offices of Chiropractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
865	621320 Offices of Optometrists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
866	621330 Offices of Mental Health Practitioners (except Physicians)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
867	621340 Offices of Physical, Occupational and Speech Therapists, and Audiologists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
868	621391 Offices of Podiatrists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
869	621399 Offices of All Other Miscellaneous Health Practitioners	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
870	621410 Family Planning Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
871	621420 Outpatient Mental Health and Substance Abuse Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
872	621491 HMO Medical Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
873	621492 Kidney Dialysis Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
874	621493 Freestanding Ambulatory Surgical and Emergency Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
875	621498 All Other Outpatient Care Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
876	621511 Medical Laboratories	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
877	621512 Diagnostic Imaging Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
878	621610 Home Health Care Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
879	621910 Ambulance Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
880	621991 Blood and Organ Banks	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
881	621999 All Other Miscellaneous Ambulatory Health Care Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
882	622110 General Medical and Surgical Hospitals	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
883	622210 Psychiatric and Substance Abuse Hospitals	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
884	622310 Specialty (except Psychiatric and Substance Abuse) Hospitals	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
885	623110 Nursing Care Facilities (Skilled Nursing Facilities)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
886	623210 Residential Intellectual and Developmental Disability Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
887	623220 Residential Mental Health and Substance Abuse Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
888	623311 Continuing Care Retirement Communities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
889	623312 Assisted Living Facilities for the Elderly	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
890	623990 Other Residential Care Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
891	624110 Child and Youth Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
892	624120 Services for the Elderly and Persons with Disabilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
893	624190 Other Individual and Family Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
894	624210 Community Food Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
895	624221 Temporary Shelters	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
896	624229 Other Community Housing Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
897	624230 Emergency and Other Relief Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
898	624310 Vocational Rehabilitation Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
899	624410 Child Care Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
900	711110 Theater Companies and Dinner Theaters	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
901	711120 Dance Companies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
902	711130 Musical Groups and Artists	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
903	711190 Other Performing Arts Companies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
904	711211 Sports Teams and Clubs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
905	711212 Racetracks	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
906	711219 Other Spectator Sports	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
907	711310 Promoters of Performing Arts, Sports, and Similar Events with Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
908	711320 Promoters of Performing Arts, Sports, and Similar Events without Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
909	711410 Agents and Managers for Artists, Athletes, Entertainers, and Other Public Figures	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
910	711510 Independent Artists, Writers, and Performers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
911	712110 Museums	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
912	712120 Historical Sites	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
913	712130 Zoos and Botanical Gardens	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
914	712190 Nature Parks and Other Similar Institutions	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
915	713110 Amusement and Theme Parks	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
916	713120 Amusement Arcades	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
917	713210 Casinos (except Casino Hotels)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
918	713290 Other Gambling Industries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
919	713910 Golf Courses and Country Clubs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
920	713920 Skiing Facilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
921	713930 Marinas	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
922	713940 Fitness and Recreational Sports Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
923	713950 Bowling Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
924	713990 All Other Amusement and Recreation Industries	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
925	721110 Hotels (except Casino Hotels) and Motels	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
926	721120 Casino Hotels	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
927	721191 Bed-and-Breakfast Inns	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
928	721199 All Other Traveler Accommodation	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
929	721211 RV (Recreational Vehicle) Parks and Campgrounds	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
930	721214 Recreational and Vacation Camps (except Campgrounds)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
931	721310 Rooming and Boarding Houses, Dormitories, and Workers' Camps	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
932	722310 Food Service Contractors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
933	722320 Caterers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
934	722330 Mobile Food Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
935	722410 Drinking Places (Alcoholic Beverages)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
936	722511 Full-Service Restaurants	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
937	722513 Limited-Service Restaurants	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
938	722514 Cafeterias, Grill Buffets, and Buffets	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
939	722515 Snack and Nonalcoholic Beverage Bars	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
940	811111 General Automotive Repair	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
941	811114 Specialized Automotive Repair	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
942	811121 Automotive Body, Paint, and Interior Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
943	811122 Automotive Glass Replacement Shops	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
944	811191 Automotive Oil Change and Lubrication Shops	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
945	811192 Car Washes	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
946	811198 All Other Automotive Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
947	811210 Electronic and Precision Equipment Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
948	811310 Commercial and Industrial Machinery and Equipment (except Automotive and Electronic) Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
949	811411 Home and Garden Equipment Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
950	811412 Appliance Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
951	811420 Reupholstery and Furniture Repair	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
952	811430 Footwear and Leather Goods Repair	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
953	811490 Other Personal and Household Goods Repair and Maintenance	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
954	812111 Barber Shops	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
955	812112 Beauty Salons	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
956	812113 Nail Salons	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
957	812191 Diet and Weight Reducing Centers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
958	812199 Other Personal Care Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
959	812210 Funeral Homes and Funeral Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
960	812220 Cemeteries and Crematories	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
961	812310 Coin-Operated Laundries and Drycleaners	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
962	812320 Drycleaning and Laundry Services (except Coin-Operated)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
963	812331 Linen Supply	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
964	812332 Industrial Launderers	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
965	812910 Pet Care (except Veterinary) Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
966	812921 Photofinishing Laboratories (except One-Hour)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
967	812922 One-Hour Photofinishing	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
968	812930 Parking Lots and Garages	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
969	812990 All Other Personal Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
970	813110 Religious Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
971	813211 Grantmaking Foundations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
972	813212 Voluntary Health Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
973	813219 Other Grantmaking and Giving Services	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
974	813311 Human Rights Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
975	813312 Environment, Conservation and Wildlife Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
976	813319 Other Social Advocacy Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
977	813410 Civic and Social Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
978	813910 Business Associations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
979	813920 Professional Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
980	813930 Labor Unions and Similar Labor Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
981	813940 Political Organizations	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
982	813990 Other Similar Organizations (except Business, Professional, Labor, and Political Organizations)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
983	814110 Private Households	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
984	921110 Executive Offices	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
985	921120 Legislative Bodies	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
986	921130 Public Finance Activities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
987	921140 Executive and Legislative Offices, Combined	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
988	921150 American Indian and Alaska Native Tribal Governments	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
989	921190 Other General Government Support	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
991	922120 Police Protection	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
992	922130 Legal Counsel and Prosecution	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
993	922140 Correctional Institutions	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
994	922150 Parole Offices and Probation Offices	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
995	922160 Fire Protection	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
996	922190 Other Justice, Public Order, and Safety Activities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
997	923110 Administration of Education Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
998	923120 Administration of Public Health Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
999	923130 Administration of Human Resource Programs (except Education, Public Health, and Veterans' Affairs Programs)	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1000	923140 Administration of Veterans' Affairs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1001	924110 Administration of Air and Water Resource and Solid Waste Management Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1002	924120 Administration of Conservation Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1003	925110 Administration of Housing Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1004	925120 Administration of Urban Planning and Community and Rural Development	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1005	926110 Administration of General Economic Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1006	926120 Regulation and Administration of Transportation Programs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1007	926130 Regulation and Administration of Communications, Electric, Gas, and Other Utilities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1008	926140 Regulation of Agricultural Marketing and Commodities	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1009	926150 Regulation, Licensing, and Inspection of Miscellaneous Commercial Sectors	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1010	927110 Space Research and Technology	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1011	928110 National Security	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
1012	928120 International Affairs	\N	2024-09-29 15:49:22.586817+00	2024-09-29 15:49:22.586817+00	0
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, body, recipient, driver, seen, sender_user_id, target_user_id, created_at, updated_at, deleted_at, subject) FROM stdin;
6	\nCapture411\n\nPlease verify you're really you by entering this 6-digit code when you sign in. Just a heads up, this code will expire in 5 minutes for security reasons.\n\nHere is your verification code:\n\n809342\n\nEnter this verification code in the app to complete your steps.\n\nIf you didn't request this code, you can safely ignore this email or reset your password here:\nhttps://capture411.com/auth/reset-password/\n\nIf you have any questions, feel free to reach out to our support team at support@capture411.com.\n\n© 2023 Capture411. All rights reserved.\n1234 Memory Lane, Photo City, PC 56789\n	ardizaji1377@yahoo.com	email	f	\N	\N	2024-10-08 11:11:06.325535+00	2024-10-08 11:11:06.325535+00	0	Capture411 Verification Code
9	\nCapture411\n\nPlease verify you're really you by entering this 6-digit code when you sign in. Just a heads up, this code will expire in 5 minutes for security reasons.\n\nHere is your verification code:\n\n542212\n\nEnter this verification code in the app to complete your steps.\n\nIf you didn't request this code, you can safely ignore this email or reset your password here:\nhttps://capture411.com/auth/reset-password/\n\nIf you have any questions, feel free to reach out to our support team at support@capture411.com.\n\n© 2023 Capture411. All rights reserved.\n1234 Memory Lane, Photo City, PC 56789\n	milad.jurablu@gmail.com	email	f	\N	\N	2024-10-11 07:51:26.349754+00	2024-10-11 07:51:26.349754+00	0	Capture411 Verification Code
10	\nCapture411\n\nPlease verify you're really you by entering this 6-digit code when you sign in. Just a heads up, this code will expire in 5 minutes for security reasons.\n\nHere is your verification code:\n\n709219\n\nEnter this verification code in the app to complete your steps.\n\nIf you didn't request this code, you can safely ignore this email or reset your password here:\nhttps://capture411.com/auth/reset-password/\n\nIf you have any questions, feel free to reach out to our support team at support@capture411.com.\n\n© 2023 Capture411. All rights reserved.\n1234 Memory Lane, Photo City, PC 56789\n	milad.jurablu@gmail.com	email	f	\N	\N	2024-10-11 07:52:15.451342+00	2024-10-11 07:52:15.451342+00	0	Capture411 Verification Code
\.


--
-- Data for Name: offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offices (id, name, acronym, parent_id, agency_id, user_id, created_at, updated_at, deleted_at) FROM stdin;
278	JOINT TASK FORCE NORTH		\N	101	\N	2024-09-29 15:49:18.607105+00	2024-09-29 15:49:18.607105+00	0
946	INSPECTION DIVISION		\N	368	\N	2024-09-29 15:49:19.855721+00	2024-09-29 15:49:19.855721+00	0
1134	FEDERAL LANDS HIGHWAY		\N	519	\N	2024-09-29 15:49:20.216204+00	2024-09-29 15:49:20.216204+00	0
1213	BUDGET		\N	586	\N	2024-09-29 15:49:20.359393+00	2024-09-29 15:49:20.359393+00	0
1254	366TH FIGHTER WING		2	\N	\N	2024-09-29 15:49:20.431935+00	2024-09-29 15:49:20.431935+00	0
1879	REGION I		825	\N	\N	2024-09-29 15:49:21.680566+00	2024-09-29 15:49:21.680566+00	0
1	12TH AIR FORCE (AIR FORCES SOUTHERN)		\N	1	\N	2024-09-29 15:49:18.069351+00	2024-09-29 15:49:18.069351+00	0
2	15TH AIR FORCE		\N	1	\N	2024-09-29 15:49:18.072209+00	2024-09-29 15:49:18.072209+00	0
3	16TH AIR FORCE (AIR FORCES CYBER)		\N	1	\N	2024-09-29 15:49:18.073969+00	2024-09-29 15:49:18.073969+00	0
4	1ST AIR FORCE (AIR FORCES NORTHERN)		\N	1	\N	2024-09-29 15:49:18.075693+00	2024-09-29 15:49:18.075693+00	0
5	9TH AIR FORCE (AIR FORCES CENTRAL)		\N	1	\N	2024-09-29 15:49:18.077474+00	2024-09-29 15:49:18.077474+00	0
6	CYBERSPACE CAPABILITIES CENTER		\N	1	\N	2024-09-29 15:49:18.079242+00	2024-09-29 15:49:18.079242+00	0
7	USAF WARFARE CENTER		\N	1	\N	2024-09-29 15:49:18.080961+00	2024-09-29 15:49:18.080961+00	0
8	19TH AIR FORCE		\N	2	\N	2024-09-29 15:49:18.082807+00	2024-09-29 15:49:18.082807+00	0
9	2ND AIR FORCE		\N	2	\N	2024-09-29 15:49:18.084431+00	2024-09-29 15:49:18.084431+00	0
10	502D AIR BASE WING		\N	2	\N	2024-09-29 15:49:18.08609+00	2024-09-29 15:49:18.08609+00	0
11	59TH MEDICAL WING		\N	2	\N	2024-09-29 15:49:18.087708+00	2024-09-29 15:49:18.087708+00	0
12	AETC TRAINING SUPPORT SQUADRON		\N	2	\N	2024-09-29 15:49:18.089385+00	2024-09-29 15:49:18.089385+00	0
13	AIR FORCE RECRUITING SERVICE		\N	2	\N	2024-09-29 15:49:18.091019+00	2024-09-29 15:49:18.091019+00	0
14	AIR FORCE SECURITY ASSISTANCE TRAINING SQUADRON		\N	2	\N	2024-09-29 15:49:18.09261+00	2024-09-29 15:49:18.09261+00	0
15	AIR UNIVERSITY		\N	2	\N	2024-09-29 15:49:18.094296+00	2024-09-29 15:49:18.094296+00	0
16	10TH AIR BASE WING		\N	3	\N	2024-09-29 15:49:18.096519+00	2024-09-29 15:49:18.096519+00	0
17	11TH WING		\N	6	\N	2024-09-29 15:49:18.098291+00	2024-09-29 15:49:18.098291+00	0
18	79TH MEDICAL WING		\N	6	\N	2024-09-29 15:49:18.09999+00	2024-09-29 15:49:18.09999+00	0
19	844TH COMMUNICATIONS GROUP		\N	6	\N	2024-09-29 15:49:18.101709+00	2024-09-29 15:49:18.101709+00	0
20	20TH AIR FORCE		\N	7	\N	2024-09-29 15:49:18.103397+00	2024-09-29 15:49:18.103397+00	0
21	377TH AIR BASE WING		\N	7	\N	2024-09-29 15:49:18.105115+00	2024-09-29 15:49:18.105115+00	0
22	8TH AIR FORCE		\N	7	\N	2024-09-29 15:49:18.106663+00	2024-09-29 15:49:18.106663+00	0
23	AIR FORCE INSTALLATION AND MISSION SUPPORT CENTER		\N	11	\N	2024-09-29 15:49:18.108451+00	2024-09-29 15:49:18.108451+00	0
24	AIR FORCE LIFE CYCLE MANAGEMENT CENTER		\N	11	\N	2024-09-29 15:49:18.11018+00	2024-09-29 15:49:18.11018+00	0
25	AIR FORCE NUCLEAR WEAPONS CENTER		\N	11	\N	2024-09-29 15:49:18.112242+00	2024-09-29 15:49:18.112242+00	0
26	AIR FORCE RESEARCH LABORATORY		\N	11	\N	2024-09-29 15:49:18.113937+00	2024-09-29 15:49:18.113937+00	0
27	AIR FORCE SUSTAINMENT CENTER		\N	11	\N	2024-09-29 15:49:18.115854+00	2024-09-29 15:49:18.115854+00	0
28	AIR FORCE TEST CENTER		\N	11	\N	2024-09-29 15:49:18.117625+00	2024-09-29 15:49:18.117625+00	0
29	INTELLIGENCE, SURVEILLANCE AND RECONNAISANCE (A2)		\N	11	\N	2024-09-29 15:49:18.119393+00	2024-09-29 15:49:18.119393+00	0
30	LOGISTICS, ENGINEERING AND FORCE PROTECTION (A4)		\N	11	\N	2024-09-29 15:49:18.121126+00	2024-09-29 15:49:18.121126+00	0
31	AIR FORCE MEDICAL READINESS AGENCY		\N	12	\N	2024-09-29 15:49:18.123068+00	2024-09-29 15:49:18.123068+00	0
32	MEDICAL OPERATIONS AND RESEARCH (SG3/5)		\N	12	\N	2024-09-29 15:49:18.124789+00	2024-09-29 15:49:18.124789+00	0
33	10TH AIR FORCE		\N	18	\N	2024-09-29 15:49:18.126542+00	2024-09-29 15:49:18.126542+00	0
34	22ND AIR FORCE		\N	18	\N	2024-09-29 15:49:18.128226+00	2024-09-29 15:49:18.128226+00	0
35	4TH AIR FORCE		\N	18	\N	2024-09-29 15:49:18.130047+00	2024-09-29 15:49:18.130047+00	0
36	FORCE GENERATION CENTER		\N	18	\N	2024-09-29 15:49:18.131932+00	2024-09-29 15:49:18.131932+00	0
37	3RD AIR FORCE AND 17TH EXPEDITIONARY AIR FORCE		\N	21	\N	2024-09-29 15:49:18.133872+00	2024-09-29 15:49:18.133872+00	0
38	INTER-EUROPEAN AIR FORCE ACADEMY		\N	21	\N	2024-09-29 15:49:18.135604+00	2024-09-29 15:49:18.135604+00	0
39	18TH AIR FORCE		\N	22	\N	2024-09-29 15:49:18.13735+00	2024-09-29 15:49:18.13735+00	0
40	21ST AIR FORCE		\N	22	\N	2024-09-29 15:49:18.139611+00	2024-09-29 15:49:18.139611+00	0
41	US AIR FORCE EXPEDITIONARY CENTER		\N	22	\N	2024-09-29 15:49:18.141459+00	2024-09-29 15:49:18.141459+00	0
42	128TH AIR REFUELING WING		\N	23	\N	2024-09-29 15:49:18.143139+00	2024-09-29 15:49:18.143139+00	0
43	176TH WING		\N	23	\N	2024-09-29 15:49:18.145152+00	2024-09-29 15:49:18.145152+00	0
44	ANG AFRC COMMAND TEST CENTER		\N	23	\N	2024-09-29 15:49:18.147011+00	2024-09-29 15:49:18.147011+00	0
45	AIR FORCE WARFIGHTING INTEGRATION CAPABILITY		\N	30	\N	2024-09-29 15:49:18.14871+00	2024-09-29 15:49:18.14871+00	0
46	AIR FORCE GENERAL COUNSEL		\N	33	\N	2024-09-29 15:49:18.150554+00	2024-09-29 15:49:18.150554+00	0
47	ASSISTANT SECRETARY OF THE AIR FORCE FOR ACQUISITION, TECHNOLOGY AND LOGISTICS		\N	33	\N	2024-09-29 15:49:18.152414+00	2024-09-29 15:49:18.152414+00	0
48	INSPECTOR GENERAL		\N	33	\N	2024-09-29 15:49:18.155607+00	2024-09-29 15:49:18.155607+00	0
49	OFFICE OF PUBLIC AFFAIRS		\N	33	\N	2024-09-29 15:49:18.157588+00	2024-09-29 15:49:18.157588+00	0
50	SURGEON GENERAL		\N	33	\N	2024-09-29 15:49:18.159462+00	2024-09-29 15:49:18.159462+00	0
51	11TH AIR FORCE		\N	36	\N	2024-09-29 15:49:18.16195+00	2024-09-29 15:49:18.16195+00	0
52	13TH AIR FORCE		\N	36	\N	2024-09-29 15:49:18.163562+00	2024-09-29 15:49:18.163562+00	0
53	15TH AIR BASE WING		\N	36	\N	2024-09-29 15:49:18.165549+00	2024-09-29 15:49:18.165549+00	0
54	5TH AIR FORCE		\N	36	\N	2024-09-29 15:49:18.167671+00	2024-09-29 15:49:18.167671+00	0
55	7TH AIR FORCE		\N	36	\N	2024-09-29 15:49:18.169672+00	2024-09-29 15:49:18.169672+00	0
56	SPACE DEVELOPMENT AGENCY		\N	38	\N	2024-09-29 15:49:18.171367+00	2024-09-29 15:49:18.171367+00	0
57	SPACE OPERATIONS COMMAND		\N	38	\N	2024-09-29 15:49:18.173272+00	2024-09-29 15:49:18.173272+00	0
58	SPACE SYSTEMS COMMAND		\N	38	\N	2024-09-29 15:49:18.174976+00	2024-09-29 15:49:18.174976+00	0
59	SPACE TRAINING AND READINESS COMMAND		\N	38	\N	2024-09-29 15:49:18.176772+00	2024-09-29 15:49:18.176772+00	0
60	ARMY GEOSPATIAL CENTER		\N	41	\N	2024-09-29 15:49:18.178382+00	2024-09-29 15:49:18.178382+00	0
61	GREAT LAKES & OHIO RIVER DIVISION		\N	41	\N	2024-09-29 15:49:18.18022+00	2024-09-29 15:49:18.18022+00	0
62	HEADQUARTERS		\N	41	\N	2024-09-29 15:49:18.181917+00	2024-09-29 15:49:18.181917+00	0
63	MISSISSIPPI VALLEY DIVISION		\N	41	\N	2024-09-29 15:49:18.183637+00	2024-09-29 15:49:18.183637+00	0
64	NORTH ATLANTIC DIVISION		\N	41	\N	2024-09-29 15:49:18.192285+00	2024-09-29 15:49:18.192285+00	0
65	NORTHWESTERN DIVISION		\N	41	\N	2024-09-29 15:49:18.194974+00	2024-09-29 15:49:18.194974+00	0
66	PACIFIC OCEAN DIVISION		\N	41	\N	2024-09-29 15:49:18.19878+00	2024-09-29 15:49:18.19878+00	0
67	SOUTH ATLANTIC DIVISION		\N	41	\N	2024-09-29 15:49:18.201069+00	2024-09-29 15:49:18.201069+00	0
68	SOUTH PACIFIC DIVISION		\N	41	\N	2024-09-29 15:49:18.203339+00	2024-09-29 15:49:18.203339+00	0
69	SOUTHWESTERN DIVISION		\N	41	\N	2024-09-29 15:49:18.205125+00	2024-09-29 15:49:18.205125+00	0
70	TRANSATLANTIC DIVISION		\N	41	\N	2024-09-29 15:49:18.206903+00	2024-09-29 15:49:18.206903+00	0
71	TRANSATLANTIC PROGRAM CENTER		\N	41	\N	2024-09-29 15:49:18.208837+00	2024-09-29 15:49:18.208837+00	0
72	701ST MILITARY POLICE GROUP		\N	42	\N	2024-09-29 15:49:18.210476+00	2024-09-29 15:49:18.210476+00	0
73	DEFENSE FORENSIC SCIENCE CENTER		\N	42	\N	2024-09-29 15:49:18.212642+00	2024-09-29 15:49:18.212642+00	0
74	NETWORK ENTERPRISE TECHNOLOGY COMMAND		\N	43	\N	2024-09-29 15:49:18.214413+00	2024-09-29 15:49:18.214413+00	0
75	21ST THEATER SUSTAINMENT COMMAND		\N	44	\N	2024-09-29 15:49:18.217359+00	2024-09-29 15:49:18.217359+00	0
76	7TH ARMY TRAINING COMMAND		\N	44	\N	2024-09-29 15:49:18.219781+00	2024-09-29 15:49:18.219781+00	0
77	COMMANDING GENERAL		\N	45	\N	2024-09-29 15:49:18.222351+00	2024-09-29 15:49:18.222351+00	0
78	FIRST UNITED STATES ARMY		\N	45	\N	2024-09-29 15:49:18.224258+00	2024-09-29 15:49:18.224258+00	0
79	III CORPS		\N	45	\N	2024-09-29 15:49:18.226023+00	2024-09-29 15:49:18.226023+00	0
80	JOINT READINESS TRAINING CENTER		\N	45	\N	2024-09-29 15:49:18.227838+00	2024-09-29 15:49:18.227838+00	0
81	ARMY APPLICATIONS LAB		\N	46	\N	2024-09-29 15:49:18.229618+00	2024-09-29 15:49:18.229618+00	0
82	ARMY MEDICAL RESEARCH AND DEVELOPMENT COMMAND		\N	46	\N	2024-09-29 15:49:18.2313+00	2024-09-29 15:49:18.2313+00	0
83	COMBAT CAPABILITIES DEVELOPMENT COMMAND		\N	46	\N	2024-09-29 15:49:18.233231+00	2024-09-29 15:49:18.233231+00	0
84	COMBAT SYSTEMS DIRECTORATE		\N	46	\N	2024-09-29 15:49:18.234912+00	2024-09-29 15:49:18.234912+00	0
85	CROSS FUNCTIONAL TEAMS		\N	46	\N	2024-09-29 15:49:18.236577+00	2024-09-29 15:49:18.236577+00	0
86	FUTURES AND CONCEPTS CENTER		\N	46	\N	2024-09-29 15:49:18.238104+00	2024-09-29 15:49:18.238104+00	0
87	MEDICAL RESEARCH AND DEVELOPMENT COMMAND		\N	46	\N	2024-09-29 15:49:18.239675+00	2024-09-29 15:49:18.239675+00	0
88	NATIONAL GROUND INTELLIGENCE CENTER		\N	48	\N	2024-09-29 15:49:18.241769+00	2024-09-29 15:49:18.241769+00	0
89	ARMY LEGAL SERVICES AGENCY		\N	49	\N	2024-09-29 15:49:18.243486+00	2024-09-29 15:49:18.243486+00	0
90	JUDGE ADVOCATE GENERAL		\N	49	\N	2024-09-29 15:49:18.245103+00	2024-09-29 15:49:18.245103+00	0
91	ARMY CONTRACTING COMMAND		\N	50	\N	2024-09-29 15:49:18.246711+00	2024-09-29 15:49:18.246711+00	0
92	ARMY INSTALLATION MANAGEMENT COMMAND		\N	50	\N	2024-09-29 15:49:18.248278+00	2024-09-29 15:49:18.248278+00	0
93	ARMY MEDICAL LOGISTICS COMMAND		\N	50	\N	2024-09-29 15:49:18.249977+00	2024-09-29 15:49:18.249977+00	0
94	ARMY SECURITY ASSISTANCE COMMAND		\N	50	\N	2024-09-29 15:49:18.251483+00	2024-09-29 15:49:18.251483+00	0
95	ARMY SUSTAINMENT COMMAND		\N	50	\N	2024-09-29 15:49:18.253134+00	2024-09-29 15:49:18.253134+00	0
96	AVIATION AND MISSILE COMMAND		\N	50	\N	2024-09-29 15:49:18.254809+00	2024-09-29 15:49:18.254809+00	0
97	CHEMICAL MATERIALS ACTIVITY		\N	50	\N	2024-09-29 15:49:18.256635+00	2024-09-29 15:49:18.256635+00	0
98	COMMUNICATIONS ELECTRONICS COMMAND		\N	50	\N	2024-09-29 15:49:18.258296+00	2024-09-29 15:49:18.258296+00	0
99	JOINT MUNITIONS COMMAND		\N	50	\N	2024-09-29 15:49:18.259909+00	2024-09-29 15:49:18.259909+00	0
100	LOGISTICS DATA ANALYSIS CENTER		\N	50	\N	2024-09-29 15:49:18.261605+00	2024-09-29 15:49:18.261605+00	0
101	MILITARY SURFACE DEPLOYMENT AND DISTRIBUTION COMMAND		\N	50	\N	2024-09-29 15:49:18.26352+00	2024-09-29 15:49:18.26352+00	0
102	TANK-AUTOMOTIVE AND ARMAMENTS COMMAND		\N	50	\N	2024-09-29 15:49:18.268526+00	2024-09-29 15:49:18.268526+00	0
103	US ARMY FINANCE COMMAND		\N	50	\N	2024-09-29 15:49:18.271316+00	2024-09-29 15:49:18.271316+00	0
104	ARMY MEDICINE CORPS		\N	51	\N	2024-09-29 15:49:18.273321+00	2024-09-29 15:49:18.273321+00	0
105	ARMY PUBLIC HEALTH CENTER		\N	51	\N	2024-09-29 15:49:18.274994+00	2024-09-29 15:49:18.274994+00	0
106	REGIONAL HEALTH COMMAND - ATLANTIC		\N	51	\N	2024-09-29 15:49:18.276753+00	2024-09-29 15:49:18.276753+00	0
107	REGIONAL HEALTH COMMAND - CENTRAL		\N	51	\N	2024-09-29 15:49:18.2787+00	2024-09-29 15:49:18.2787+00	0
108	REGIONAL HEALTH COMMAND - EUROPE		\N	51	\N	2024-09-29 15:49:18.280801+00	2024-09-29 15:49:18.280801+00	0
109	REGIONAL HEALTH COMMAND - PACIFIC		\N	51	\N	2024-09-29 15:49:18.283029+00	2024-09-29 15:49:18.283029+00	0
110	SURGEON GENERAL		\N	51	\N	2024-09-29 15:49:18.284818+00	2024-09-29 15:49:18.284818+00	0
111	WARRIOR CARE AND TRANSITION		\N	51	\N	2024-09-29 15:49:18.28664+00	2024-09-29 15:49:18.28664+00	0
112	25TH INFANTRY (LIGHT)		\N	54	\N	2024-09-29 15:49:18.288385+00	2024-09-29 15:49:18.288385+00	0
113	9TH MISSION SUPPORT COMMAND		\N	54	\N	2024-09-29 15:49:18.290109+00	2024-09-29 15:49:18.290109+00	0
114	EIGHTH ARMY		\N	54	\N	2024-09-29 15:49:18.291668+00	2024-09-29 15:49:18.291668+00	0
115	US ARMY ALASKA		\N	54	\N	2024-09-29 15:49:18.293562+00	2024-09-29 15:49:18.293562+00	0
116	US ARMY JAPAN		\N	54	\N	2024-09-29 15:49:18.295349+00	2024-09-29 15:49:18.295349+00	0
117	311TH SIGNAL COMMAND (THEATER)		\N	55	\N	2024-09-29 15:49:18.297395+00	2024-09-29 15:49:18.297395+00	0
118	63RD READINESS DIVISION		\N	55	\N	2024-09-29 15:49:18.299135+00	2024-09-29 15:49:18.299135+00	0
119	81ST READINESS DIVISION		\N	55	\N	2024-09-29 15:49:18.301101+00	2024-09-29 15:49:18.301101+00	0
120	84TH TRAINING COMMAND		\N	55	\N	2024-09-29 15:49:18.303046+00	2024-09-29 15:49:18.303046+00	0
121	88TH READINESS DIVISION		\N	55	\N	2024-09-29 15:49:18.30482+00	2024-09-29 15:49:18.30482+00	0
122	99TH READINESS DIVISION		\N	55	\N	2024-09-29 15:49:18.306454+00	2024-09-29 15:49:18.306454+00	0
123	9TH MISSION SUPPORT COMMAND		\N	55	\N	2024-09-29 15:49:18.30806+00	2024-09-29 15:49:18.30806+00	0
124	ARMY CIVIL AFFAIRS AND PSYCHOLOGICAL OPERATIONS COMMAND (AIRBORNE)		\N	55	\N	2024-09-29 15:49:18.309902+00	2024-09-29 15:49:18.309902+00	0
125	1ST SPACE BRIGADE		\N	57	\N	2024-09-29 15:49:18.311674+00	2024-09-29 15:49:18.311674+00	0
126	OPERATIONS (CODE SMDC-OPZ)		\N	57	\N	2024-09-29 15:49:18.314349+00	2024-09-29 15:49:18.314349+00	0
127	RESEARCH DEVELOPMENT AND ACQUISITION (CODE SMDC-RDZ)		\N	57	\N	2024-09-29 15:49:18.316195+00	2024-09-29 15:49:18.316195+00	0
128	SPACE AND MISSILE DEFENSE CENTER OF EXCELLENCE		\N	57	\N	2024-09-29 15:49:18.318064+00	2024-09-29 15:49:18.318064+00	0
129	TECHNICAL CENTER		\N	57	\N	2024-09-29 15:49:18.319766+00	2024-09-29 15:49:18.319766+00	0
130	ARMY EVALUATION CENTER		\N	59	\N	2024-09-29 15:49:18.321562+00	2024-09-29 15:49:18.321562+00	0
131	DUGWAY PROVING GROUND		\N	59	\N	2024-09-29 15:49:18.323335+00	2024-09-29 15:49:18.323335+00	0
132	ELECTRONIC PROVING GROUND		\N	59	\N	2024-09-29 15:49:18.325141+00	2024-09-29 15:49:18.325141+00	0
133	OPERATIONAL TEST COMMAND		\N	59	\N	2024-09-29 15:49:18.326862+00	2024-09-29 15:49:18.326862+00	0
134	REDSTONE TEST CENTER		\N	59	\N	2024-09-29 15:49:18.328669+00	2024-09-29 15:49:18.328669+00	0
135	WHITE SANDS MISSILE RANGE		\N	59	\N	2024-09-29 15:49:18.330402+00	2024-09-29 15:49:18.330402+00	0
136	YUMA PROVING GROUND		\N	59	\N	2024-09-29 15:49:18.332619+00	2024-09-29 15:49:18.332619+00	0
137	ARMY INTELLIGENCE CENTER OF EXCELLENCE		\N	60	\N	2024-09-29 15:49:18.33429+00	2024-09-29 15:49:18.33429+00	0
138	ARMY RECRUITING COMMAND		\N	60	\N	2024-09-29 15:49:18.336011+00	2024-09-29 15:49:18.336011+00	0
139	CADET COMMAND		\N	60	\N	2024-09-29 15:49:18.337718+00	2024-09-29 15:49:18.337718+00	0
140	CENTER FOR INITIAL MILITARY TRAINING		\N	60	\N	2024-09-29 15:49:18.339644+00	2024-09-29 15:49:18.339644+00	0
141	CENTER OF MILITARY HISTORY		\N	60	\N	2024-09-29 15:49:18.341182+00	2024-09-29 15:49:18.341182+00	0
142	COMBINED ARMS CENTER		\N	60	\N	2024-09-29 15:49:18.342779+00	2024-09-29 15:49:18.342779+00	0
143	CYBER CENTER OF EXCELLENCE		\N	60	\N	2024-09-29 15:49:18.344627+00	2024-09-29 15:49:18.344627+00	0
144	G-1/4 PERSONNEL AND LOGISTICS		\N	60	\N	2024-09-29 15:49:18.346339+00	2024-09-29 15:49:18.346339+00	0
145	G-6 COMMAND, CONTROL, COMMUNICATIONS AND COMPUTERS		\N	60	\N	2024-09-29 15:49:18.348098+00	2024-09-29 15:49:18.348098+00	0
146	G-8 RESOURCE MANAGEMENT		\N	60	\N	2024-09-29 15:49:18.34969+00	2024-09-29 15:49:18.34969+00	0
147	RAPID EQUIPPING FORCE		\N	60	\N	2024-09-29 15:49:18.351429+00	2024-09-29 15:49:18.351429+00	0
148	US ARMY MEDICAL CENTER OF EXCELLENCE		\N	60	\N	2024-09-29 15:49:18.353313+00	2024-09-29 15:49:18.353313+00	0
149	ARMY ACQUISITION SUPPORT CENTER		\N	62	\N	2024-09-29 15:49:18.354951+00	2024-09-29 15:49:18.354951+00	0
150	DASA FOR ARMY PROCUREMENT		\N	62	\N	2024-09-29 15:49:18.356518+00	2024-09-29 15:49:18.356518+00	0
151	DASA FOR DEFENSE EXPORTS AND COOPERATION		\N	62	\N	2024-09-29 15:49:18.363053+00	2024-09-29 15:49:18.363053+00	0
152	DASA FOR RESEARCH AND TECHNOLOGY		\N	62	\N	2024-09-29 15:49:18.36584+00	2024-09-29 15:49:18.36584+00	0
153	DASA FOR STRATEGY AND ACQUISITION REFORM		\N	62	\N	2024-09-29 15:49:18.367855+00	2024-09-29 15:49:18.367855+00	0
154	DASA PLANS, PROGRAMS & RESOURCES		\N	62	\N	2024-09-29 15:49:18.369568+00	2024-09-29 15:49:18.369568+00	0
155	DEPUTY FOR ACQUISITION & SYSTEMS MANAGEMENT		\N	62	\N	2024-09-29 15:49:18.371259+00	2024-09-29 15:49:18.371259+00	0
156	JPEO ARMAMENTS & AMMUNITION		\N	62	\N	2024-09-29 15:49:18.37291+00	2024-09-29 15:49:18.37291+00	0
157	JPEO FOR CHEMICAL AND BIOLOGICAL DEFENSE		\N	62	\N	2024-09-29 15:49:18.37465+00	2024-09-29 15:49:18.37465+00	0
158	PEO AVIATION		\N	62	\N	2024-09-29 15:49:18.376286+00	2024-09-29 15:49:18.376286+00	0
159	PEO COMBAT SUPPORT AND COMBAT SERVICE SUPPORT		\N	62	\N	2024-09-29 15:49:18.37807+00	2024-09-29 15:49:18.37807+00	0
160	PEO COMMAND, CONTROL AND COMMUNICATIONS TACTICAL		\N	62	\N	2024-09-29 15:49:18.379894+00	2024-09-29 15:49:18.379894+00	0
161	PEO ENTERPRISE INFORMATION SYSTEMS		\N	62	\N	2024-09-29 15:49:18.381702+00	2024-09-29 15:49:18.381702+00	0
162	PEO GROUND COMBAT SYSTEMS		\N	62	\N	2024-09-29 15:49:18.383438+00	2024-09-29 15:49:18.383438+00	0
163	PEO INTELLIGENCE, ELECTRONIC WARFARE AND SENSORS		\N	62	\N	2024-09-29 15:49:18.385299+00	2024-09-29 15:49:18.385299+00	0
164	PEO MISSILES AND SPACE		\N	62	\N	2024-09-29 15:49:18.387054+00	2024-09-29 15:49:18.387054+00	0
165	PEO SIMULATION, TRAINING AND INSTRUMENTATION		\N	62	\N	2024-09-29 15:49:18.388829+00	2024-09-29 15:49:18.388829+00	0
166	PEO SOLDIER		\N	62	\N	2024-09-29 15:49:18.390909+00	2024-09-29 15:49:18.390909+00	0
167	ARCHITECTURE, OPERATIONS, NETWORK, AND SPACE		\N	63	\N	2024-09-29 15:49:18.392746+00	2024-09-29 15:49:18.392746+00	0
168	ENTERPRISE CLOUD MANAGEMENT AGENCY		\N	63	\N	2024-09-29 15:49:18.394637+00	2024-09-29 15:49:18.394637+00	0
169	CHIEF OF CHAPLAINS		\N	64	\N	2024-09-29 15:49:18.396575+00	2024-09-29 15:49:18.396575+00	0
170	DEPUTY CHIEF OF STAFF G-1 PERSONNEL		\N	64	\N	2024-09-29 15:49:18.398288+00	2024-09-29 15:49:18.398288+00	0
171	DEPUTY CHIEF OF STAFF G-2 INTELLIGENCE		\N	64	\N	2024-09-29 15:49:18.400247+00	2024-09-29 15:49:18.400247+00	0
172	DEPUTY CHIEF OF STAFF G-3/5/7 OPERATIONS, PLANS AND TRAINING		\N	64	\N	2024-09-29 15:49:18.401939+00	2024-09-29 15:49:18.401939+00	0
173	DEPUTY CHIEF OF STAFF G-4 FACILITIES & LOGISTICS		\N	64	\N	2024-09-29 15:49:18.403708+00	2024-09-29 15:49:18.403708+00	0
174	DEPUTY CHIEF OF STAFF G-8		\N	64	\N	2024-09-29 15:49:18.406492+00	2024-09-29 15:49:18.406492+00	0
175	DEPUTY CHIEF OF STAFF G-9 INSTALLATIONS		\N	64	\N	2024-09-29 15:49:18.408255+00	2024-09-29 15:49:18.408255+00	0
176	ADMINISTRATIVE ASSISTANT TO THE SECRETARY OF THE ARMY		\N	68	\N	2024-09-29 15:49:18.409987+00	2024-09-29 15:49:18.409987+00	0
177	ARMY ANALYTICS GROUP		\N	68	\N	2024-09-29 15:49:18.411619+00	2024-09-29 15:49:18.411619+00	0
178	ARMY AUDITOR GENERAL		\N	68	\N	2024-09-29 15:49:18.419738+00	2024-09-29 15:49:18.419738+00	0
179	ARMY SCIENCE BOARD		\N	68	\N	2024-09-29 15:49:18.421627+00	2024-09-29 15:49:18.421627+00	0
180	ASA FINANCIAL MANAGEMENT AND COMPTROLLER		\N	68	\N	2024-09-29 15:49:18.423392+00	2024-09-29 15:49:18.423392+00	0
181	ASA INSTALLATIONS, ENERGY & ENVIRONMENT		\N	68	\N	2024-09-29 15:49:18.425201+00	2024-09-29 15:49:18.425201+00	0
182	ASA MANPOWER AND RESERVE AFFAIRS		\N	68	\N	2024-09-29 15:49:18.426862+00	2024-09-29 15:49:18.426862+00	0
183	INSPECTOR GENERAL		\N	68	\N	2024-09-29 15:49:18.428632+00	2024-09-29 15:49:18.428632+00	0
184	OFFICE OF SMALL BUSINESS PROGRAMS		\N	68	\N	2024-09-29 15:49:18.430218+00	2024-09-29 15:49:18.430218+00	0
185	PUBLIC AFFAIRS		\N	68	\N	2024-09-29 15:49:18.431933+00	2024-09-29 15:49:18.431933+00	0
186	ADAPTIVE EXECUTION OFFICE		\N	74	\N	2024-09-29 15:49:18.433986+00	2024-09-29 15:49:18.433986+00	0
187	BIOLOGICAL TECHNOLOGIES OFFICE		\N	74	\N	2024-09-29 15:49:18.435731+00	2024-09-29 15:49:18.435731+00	0
188	CONTRACTS MANAGEMENT		\N	74	\N	2024-09-29 15:49:18.437613+00	2024-09-29 15:49:18.437613+00	0
189	DEFENSE SCIENCES OFFICE		\N	74	\N	2024-09-29 15:49:18.439281+00	2024-09-29 15:49:18.439281+00	0
190	DIRECTOR'S OFFICE		\N	74	\N	2024-09-29 15:49:18.440976+00	2024-09-29 15:49:18.440976+00	0
908	SUPPORT OPERATIONS		\N	320	\N	2024-09-29 15:49:19.775333+00	2024-09-29 15:49:19.775333+00	0
191	INFORMATION INNOVATION OFFICE		\N	74	\N	2024-09-29 15:49:18.44268+00	2024-09-29 15:49:18.44268+00	0
192	MICROSYSTEMS TECHNOLOGY OFFICE		\N	74	\N	2024-09-29 15:49:18.444336+00	2024-09-29 15:49:18.444336+00	0
193	MISSION SERVICES OFFICE		\N	74	\N	2024-09-29 15:49:18.446953+00	2024-09-29 15:49:18.446953+00	0
194	STRATEGIC TECHNOLOGY OFFICE		\N	74	\N	2024-09-29 15:49:18.448559+00	2024-09-29 15:49:18.448559+00	0
195	TACTICAL TECHNOLOGY OFFICE		\N	74	\N	2024-09-29 15:49:18.450249+00	2024-09-29 15:49:18.450249+00	0
196	INFRASTRUCTURE SUPPORT GROUP		\N	75	\N	2024-09-29 15:49:18.451881+00	2024-09-29 15:49:18.451881+00	0
197	STORE OPERATIONS GROUP		\N	75	\N	2024-09-29 15:49:18.453502+00	2024-09-29 15:49:18.453502+00	0
198	HEADQUARTERS DIRECTORATE		\N	77	\N	2024-09-29 15:49:18.455976+00	2024-09-29 15:49:18.455976+00	0
199	COUNTERINTELLIGENCE (CI)		\N	78	\N	2024-09-29 15:49:18.457596+00	2024-09-29 15:49:18.457596+00	0
200	DOD INSIDER THREAT MANAGEMENT ANALYSIS CENTER (DITMAC)		\N	78	\N	2024-09-29 15:49:18.459359+00	2024-09-29 15:49:18.459359+00	0
201	BUSINESS SUPPORT DIRECTORATE		\N	81	\N	2024-09-29 15:49:18.460919+00	2024-09-29 15:49:18.460919+00	0
202	EDUCATION AND TRAINING DIRECTORATE		\N	81	\N	2024-09-29 15:49:18.462497+00	2024-09-29 15:49:18.462497+00	0
203	HEALTHCARE OPERATIONS DIRECTORATE		\N	81	\N	2024-09-29 15:49:18.464363+00	2024-09-29 15:49:18.464363+00	0
204	NATIONAL CAPITAL REGIONAL MEDICAL DIRECTORATE		\N	81	\N	2024-09-29 15:49:18.466056+00	2024-09-29 15:49:18.466056+00	0
205	RESEARCH, DEVELOPMENT AND ACQUISITION DIRECTORATE		\N	81	\N	2024-09-29 15:49:18.467679+00	2024-09-29 15:49:18.467679+00	0
206	CHIEF TECHNOLOGY OFFICER		\N	82	\N	2024-09-29 15:49:18.469603+00	2024-09-29 15:49:18.469603+00	0
207	DEFENSE INFORMATION TECHNOLOGY CONTRACTING ORGANIZATION (DITCO) / PROCUREMENT		\N	82	\N	2024-09-29 15:49:18.471335+00	2024-09-29 15:49:18.471335+00	0
208	DEFENSE SPECTRUM ORGANIZATION / JOINT SPECTRUM CENTER		\N	82	\N	2024-09-29 15:49:18.473178+00	2024-09-29 15:49:18.473178+00	0
209	DEVELOPMENT & BUSINESS CENTER		\N	82	\N	2024-09-29 15:49:18.474883+00	2024-09-29 15:49:18.474883+00	0
210	IMPLEMENTATION & SUSTAINMENT CENTER		\N	82	\N	2024-09-29 15:49:18.476571+00	2024-09-29 15:49:18.476571+00	0
211	JOINT FORCE HEADQUARTERS DODIN		\N	82	\N	2024-09-29 15:49:18.478139+00	2024-09-29 15:49:18.478139+00	0
212	RESOURCE MANAGEMENT CENTER / COMPTROLLER		\N	82	\N	2024-09-29 15:49:18.479815+00	2024-09-29 15:49:18.479815+00	0
213	RISK MANAGEMENT EXECUTIVE / CHIEF INFORMATION OFFICER		\N	82	\N	2024-09-29 15:49:18.481451+00	2024-09-29 15:49:18.481451+00	0
214	WHITE HOUSE COMMUNICATIONS AGENCY		\N	82	\N	2024-09-29 15:49:18.483286+00	2024-09-29 15:49:18.483286+00	0
215	DIRECTORATE FOR OPERATIONS		\N	83	\N	2024-09-29 15:49:18.48507+00	2024-09-29 15:49:18.48507+00	0
216	DIRECTORATE FOR SCIENCE AND TECHNOLOGY		\N	83	\N	2024-09-29 15:49:18.486678+00	2024-09-29 15:49:18.486678+00	0
217	MISSILE AND SPACE INTELLIGENCE CENTER		\N	83	\N	2024-09-29 15:49:18.488219+00	2024-09-29 15:49:18.488219+00	0
218	DEFENSE LOGISTICS MANAGEMENT STANDARDS OFFICE		\N	85	\N	2024-09-29 15:49:18.489808+00	2024-09-29 15:49:18.489808+00	0
219	DLA AVIATION		\N	85	\N	2024-09-29 15:49:18.491441+00	2024-09-29 15:49:18.491441+00	0
220	DLA DISPOSITION SERVICES		\N	85	\N	2024-09-29 15:49:18.49317+00	2024-09-29 15:49:18.49317+00	0
221	DLA DISTRIBUTION		\N	85	\N	2024-09-29 15:49:18.494729+00	2024-09-29 15:49:18.494729+00	0
222	DLA ENERGY		\N	85	\N	2024-09-29 15:49:18.496789+00	2024-09-29 15:49:18.496789+00	0
223	DLA EUROPE & AFRICA		\N	85	\N	2024-09-29 15:49:18.498354+00	2024-09-29 15:49:18.498354+00	0
224	DLA LAND AND MARITIME		\N	85	\N	2024-09-29 15:49:18.500161+00	2024-09-29 15:49:18.500161+00	0
225	DLA PACIFIC		\N	85	\N	2024-09-29 15:49:18.501899+00	2024-09-29 15:49:18.501899+00	0
226	DLA STRATEGIC MATERIALS		\N	85	\N	2024-09-29 15:49:18.503845+00	2024-09-29 15:49:18.503845+00	0
227	DLA TROOP SUPPORT		\N	85	\N	2024-09-29 15:49:18.505631+00	2024-09-29 15:49:18.505631+00	0
228	HEADQUARTERS		\N	85	\N	2024-09-29 15:49:18.507799+00	2024-09-29 15:49:18.507799+00	0
229	CHIEF PERFORMANCE OFFICE		\N	86	\N	2024-09-29 15:49:18.509521+00	2024-09-29 15:49:18.509521+00	0
230	DEFENSE INSTITUTE OF INTERNATIONAL LEGAL STUDIES (DIILS)		\N	86	\N	2024-09-29 15:49:18.51115+00	2024-09-29 15:49:18.51115+00	0
231	DIRECTORATE OF BUSINESS OPERATIONS		\N	86	\N	2024-09-29 15:49:18.513012+00	2024-09-29 15:49:18.513012+00	0
232	DIRECTORATE OF INFORMATION TECHNOLOGY (IT)		\N	86	\N	2024-09-29 15:49:18.514574+00	2024-09-29 15:49:18.514574+00	0
233	GEORGE C MARSHALL EUROPEAN CENTER FOR SECURITY STUDIES (GCMC)		\N	86	\N	2024-09-29 15:49:18.516295+00	2024-09-29 15:49:18.516295+00	0
234	JOINT IMPROVISED-THREAT DEFEAT ORGANIZATION		\N	87	\N	2024-09-29 15:49:18.518517+00	2024-09-29 15:49:18.518517+00	0
235	RESEARCH & DEVELOPMENT		\N	87	\N	2024-09-29 15:49:18.523933+00	2024-09-29 15:49:18.523933+00	0
236	DODEA - AMERICAS		\N	88	\N	2024-09-29 15:49:18.529519+00	2024-09-29 15:49:18.529519+00	0
237	DODEA - EUROPE		\N	88	\N	2024-09-29 15:49:18.531853+00	2024-09-29 15:49:18.531853+00	0
238	DODEA - PACIFIC		\N	88	\N	2024-09-29 15:49:18.533927+00	2024-09-29 15:49:18.533927+00	0
239	J3: OPERATIONS		\N	89	\N	2024-09-29 15:49:18.539332+00	2024-09-29 15:49:18.539332+00	0
240	J4: LOGISTICS		\N	89	\N	2024-09-29 15:49:18.541109+00	2024-09-29 15:49:18.541109+00	0
241	J5: STRATEGIC PLANS & POLICY		\N	89	\N	2024-09-29 15:49:18.542978+00	2024-09-29 15:49:18.542978+00	0
242	J6: C4 & CYBER		\N	89	\N	2024-09-29 15:49:18.544807+00	2024-09-29 15:49:18.544807+00	0
243	J7: JOINT FORCES DEVELOPMENT		\N	89	\N	2024-09-29 15:49:18.54658+00	2024-09-29 15:49:18.54658+00	0
244	J8: FORCE STRUCTURE, RESOURCES & ASSESSMENT		\N	89	\N	2024-09-29 15:49:18.548211+00	2024-09-29 15:49:18.548211+00	0
245	COMMAND GROUP STAFF		\N	90	\N	2024-09-29 15:49:18.549927+00	2024-09-29 15:49:18.549927+00	0
246	DIRECTOR FOR ACQUISITION		\N	90	\N	2024-09-29 15:49:18.55209+00	2024-09-29 15:49:18.55209+00	0
247	DIRECTOR FOR ENGINEERING		\N	90	\N	2024-09-29 15:49:18.553922+00	2024-09-29 15:49:18.553922+00	0
248	DIRECTOR FOR INTERNATIONAL AFFAIRS		\N	90	\N	2024-09-29 15:49:18.555625+00	2024-09-29 15:49:18.555625+00	0
249	DIRECTOR FOR TEST		\N	90	\N	2024-09-29 15:49:18.557675+00	2024-09-29 15:49:18.557675+00	0
250	MISSILE DEFENSE INTEGRATION AND OPERATIONS CENTER		\N	90	\N	2024-09-29 15:49:18.559537+00	2024-09-29 15:49:18.559537+00	0
251	PEO ADVANCED TECHNOLOGY		\N	90	\N	2024-09-29 15:49:18.561231+00	2024-09-29 15:49:18.561231+00	0
252	PEO AEGIS BMD		\N	90	\N	2024-09-29 15:49:18.563296+00	2024-09-29 15:49:18.563296+00	0
253	ADVANCED SYSTEMS & TECHNOLOGY DIRECTORATE		\N	92	\N	2024-09-29 15:49:18.565137+00	2024-09-29 15:49:18.565137+00	0
254	ASSISTANT SECRETARY OF DEFENSE FOR PUBLIC AFFAIRS		\N	94	\N	2024-09-29 15:49:18.566699+00	2024-09-29 15:49:18.566699+00	0
255	CHIEF INFORMATION OFFICER (DOD CIO)		\N	94	\N	2024-09-29 15:49:18.568494+00	2024-09-29 15:49:18.568494+00	0
256	COMBATING TERRORISM TECHNICAL SUPPORT OFFICE		\N	94	\N	2024-09-29 15:49:18.57011+00	2024-09-29 15:49:18.57011+00	0
257	DEFENSE INNOVATION UNIT (DIU)		\N	94	\N	2024-09-29 15:49:18.571781+00	2024-09-29 15:49:18.571781+00	0
258	DEFENSE POW/MIA OFFICE		\N	94	\N	2024-09-29 15:49:18.573421+00	2024-09-29 15:49:18.573421+00	0
259	DEFENSE TECHNOLOGY SECURITY ADMINISTRATION		\N	94	\N	2024-09-29 15:49:18.574998+00	2024-09-29 15:49:18.574998+00	0
260	DIRECTOR OF OPERATIONAL TEST AND EVALUATION		\N	94	\N	2024-09-29 15:49:18.576792+00	2024-09-29 15:49:18.576792+00	0
261	JOINT PROGRAM EXECUTIVE OFFICE FOR CHEMICAL AND BIOLOGICAL DEFENSE		\N	94	\N	2024-09-29 15:49:18.578373+00	2024-09-29 15:49:18.578373+00	0
262	OFFICE OF INSPECTOR GENERAL		\N	94	\N	2024-09-29 15:49:18.57997+00	2024-09-29 15:49:18.57997+00	0
263	OFFICE OF MILITARY COMMUNITY AND FAMILY POLICY		\N	94	\N	2024-09-29 15:49:18.581537+00	2024-09-29 15:49:18.581537+00	0
264	STRATEGIC CAPABILITIES OFFICE		\N	94	\N	2024-09-29 15:49:18.583289+00	2024-09-29 15:49:18.583289+00	0
265	UNDER SECRETARY FOR ACQUISITION & SUSTAINMENT (A&S)		\N	94	\N	2024-09-29 15:49:18.584887+00	2024-09-29 15:49:18.584887+00	0
266	UNDER SECRETARY FOR INTELLIGENCE AND SECURITY		\N	94	\N	2024-09-29 15:49:18.586568+00	2024-09-29 15:49:18.586568+00	0
267	UNDER SECRETARY FOR PERSONNEL AND READINESS		\N	94	\N	2024-09-29 15:49:18.588089+00	2024-09-29 15:49:18.588089+00	0
268	UNDER SECRETARY FOR POLICY		\N	94	\N	2024-09-29 15:49:18.589728+00	2024-09-29 15:49:18.589728+00	0
269	UNDER SECRETARY OF DEFENSE - COMPTROLLER / CHIEF FINANCIAL OFFICER		\N	94	\N	2024-09-29 15:49:18.591265+00	2024-09-29 15:49:18.591265+00	0
270	ADVANCED CAPABILITIES		\N	95	\N	2024-09-29 15:49:18.59279+00	2024-09-29 15:49:18.59279+00	0
271	DEFENSE TECHNICAL INFORMATION CENTER		\N	95	\N	2024-09-29 15:49:18.594433+00	2024-09-29 15:49:18.594433+00	0
272	EMERGING CAPABILITY & PROTOTYPING		\N	95	\N	2024-09-29 15:49:18.596517+00	2024-09-29 15:49:18.596517+00	0
273	RESEARCH & TECHNOLOGY		\N	95	\N	2024-09-29 15:49:18.598102+00	2024-09-29 15:49:18.598102+00	0
274	COMBINED JOINT TASK FORCE - OPERATION INHERENT RESOLVE		\N	97	\N	2024-09-29 15:49:18.599823+00	2024-09-29 15:49:18.599823+00	0
275	INTELLIGENCE DIRECTORATE (J2)		\N	100	\N	2024-09-29 15:49:18.601521+00	2024-09-29 15:49:18.601521+00	0
276	LOGISTICS, ENGINEERING & SECURITY COOPERATION DIRECTORATE		\N	100	\N	2024-09-29 15:49:18.603377+00	2024-09-29 15:49:18.603377+00	0
277	OPERATIONS DIRECTORATE (J3)		\N	100	\N	2024-09-29 15:49:18.605192+00	2024-09-29 15:49:18.605192+00	0
279	JOINT INTERAGENCY TASK FORCE SOUTH		\N	102	\N	2024-09-29 15:49:18.608673+00	2024-09-29 15:49:18.608673+00	0
280	JOINT TASK FORCE BRAVO		\N	102	\N	2024-09-29 15:49:18.610226+00	2024-09-29 15:49:18.610226+00	0
281	JOINT TASK FORCE GUANTANAMO		\N	102	\N	2024-09-29 15:49:18.611857+00	2024-09-29 15:49:18.611857+00	0
282	LOGISTICS DIRECTORATE (J4)		\N	102	\N	2024-09-29 15:49:18.613513+00	2024-09-29 15:49:18.613513+00	0
283	COMBINED FORCE SPACE COMPONENT COMMAND		\N	103	\N	2024-09-29 15:49:18.615213+00	2024-09-29 15:49:18.615213+00	0
284	JOINT SPECIAL OPERATIONS COMMAND		\N	104	\N	2024-09-29 15:49:18.617153+00	2024-09-29 15:49:18.617153+00	0
285	JOINT SPECIAL OPERATIONS UNIVERSITY		\N	104	\N	2024-09-29 15:49:18.618663+00	2024-09-29 15:49:18.618663+00	0
286	JOINT WARFARE ANALYSIS CENTER (JWAC)		\N	105	\N	2024-09-29 15:49:18.620311+00	2024-09-29 15:49:18.620311+00	0
287	DIRECTORATE OF ACQUISITION (TCAQ)		\N	106	\N	2024-09-29 15:49:18.621868+00	2024-09-29 15:49:18.621868+00	0
288	STRATEGY, CAPABILITIES, POLICY AND LOGISTICS (TCJ5/J4)		\N	106	\N	2024-09-29 15:49:18.623498+00	2024-09-29 15:49:18.623498+00	0
289	ACQUISITION DIRECTORATE		\N	107	\N	2024-09-29 15:49:18.62519+00	2024-09-29 15:49:18.62519+00	0
290	EXECUTIVE SERVICES DIRECTORATE		\N	107	\N	2024-09-29 15:49:18.626763+00	2024-09-29 15:49:18.626763+00	0
291	FACILITIES SERVICES DIRECTORATE		\N	107	\N	2024-09-29 15:49:18.628874+00	2024-09-29 15:49:18.628874+00	0
292	HUMAN RESOURCES DIRECTORATE		\N	107	\N	2024-09-29 15:49:18.631062+00	2024-09-29 15:49:18.631062+00	0
293	JOINT SERVICE PROVIDER		\N	107	\N	2024-09-29 15:49:18.632787+00	2024-09-29 15:49:18.632787+00	0
294	ADMINISTRATION AND RESOURCE MANAGEMENT DIVISION		\N	110	\N	2024-09-29 15:49:18.634816+00	2024-09-29 15:49:18.634816+00	0
295	NAVAL FACILITIES ENGINEERING AND EXPEDITIONARY WARFARE CENTER		\N	110	\N	2024-09-29 15:49:18.636431+00	2024-09-29 15:49:18.636431+00	0
296	PLANS, POLICIES AND OPERATIONS DEPARTMENT		\N	110	\N	2024-09-29 15:49:18.637988+00	2024-09-29 15:49:18.637988+00	0
297	SAFETY DIVISION		\N	110	\N	2024-09-29 15:49:18.63961+00	2024-09-29 15:49:18.63961+00	0
298	LOGISTICS PLANS POLICIES AND STRATEGIC MOBILITY DIVISION		\N	112	\N	2024-09-29 15:49:18.642256+00	2024-09-29 15:49:18.642256+00	0
299	MARINE CORPS INSTALLATIONS EAST		\N	112	\N	2024-09-29 15:49:18.643897+00	2024-09-29 15:49:18.643897+00	0
300	MARINE CORPS INSTALLATIONS NATIONAL CAPITAL REGION		\N	112	\N	2024-09-29 15:49:18.645773+00	2024-09-29 15:49:18.645773+00	0
301	MARINE CORPS INSTALLATIONS PACIFIC		\N	112	\N	2024-09-29 15:49:18.64746+00	2024-09-29 15:49:18.64746+00	0
302	MARINE CORPS INSTALLATIONS WEST		\N	112	\N	2024-09-29 15:49:18.649052+00	2024-09-29 15:49:18.649052+00	0
303	MARINE CORPS INTELLIGENCE ACTIVITY		\N	113	\N	2024-09-29 15:49:18.650735+00	2024-09-29 15:49:18.650735+00	0
304	MARINE CORPS WARFIGHTING LABORATORY - FUTURE DIRECTORATE		\N	115	\N	2024-09-29 15:49:18.652535+00	2024-09-29 15:49:18.652535+00	0
305	TRAINING AND EDUCATION COMMAND		\N	115	\N	2024-09-29 15:49:18.654135+00	2024-09-29 15:49:18.654135+00	0
306	BLOUNT ISLAND COMMAND		\N	117	\N	2024-09-29 15:49:18.656606+00	2024-09-29 15:49:18.656606+00	0
307	MARINE FORCE STORAGE COMMAND		\N	117	\N	2024-09-29 15:49:18.658784+00	2024-09-29 15:49:18.658784+00	0
308	CONTRACTS		\N	119	\N	2024-09-29 15:49:18.660523+00	2024-09-29 15:49:18.660523+00	0
309	FAMILY READINESS OFFICER		\N	119	\N	2024-09-29 15:49:18.662546+00	2024-09-29 15:49:18.662546+00	0
310	INTERNATIONAL PROGRAMS		\N	119	\N	2024-09-29 15:49:18.664875+00	2024-09-29 15:49:18.664875+00	0
311	MARINE CORPS TACTICAL SYSTEMS SUPPORT ACTIVITY		\N	119	\N	2024-09-29 15:49:18.668312+00	2024-09-29 15:49:18.668312+00	0
312	PORTFOLIO MANAGER COMMAND ELEMENT SYSTEMS		\N	119	\N	2024-09-29 15:49:18.67049+00	2024-09-29 15:49:18.67049+00	0
313	PORTFOLIO MANAGER GROUND COMBAT ELEMENT SYSTEMS		\N	119	\N	2024-09-29 15:49:18.672214+00	2024-09-29 15:49:18.672214+00	0
314	PORTFOLIO MANAGER LOGISTICS COMBAT ELEMENT SYSTEMS		\N	119	\N	2024-09-29 15:49:18.673806+00	2024-09-29 15:49:18.673806+00	0
315	PORTFOLIO MANAGER SUPPORTING ESTABLISHMENT SYSTEMS		\N	119	\N	2024-09-29 15:49:18.675725+00	2024-09-29 15:49:18.675725+00	0
316	PROGRAM MANAGER LIGHT ARMORED VEHICLES		\N	119	\N	2024-09-29 15:49:18.67742+00	2024-09-29 15:49:18.67742+00	0
317	PROGRAM MANAGER TRAINING SYSTEMS		\N	119	\N	2024-09-29 15:49:18.679129+00	2024-09-29 15:49:18.679129+00	0
318	PROGRAM MANAGER WARGAMING CAPABILITY		\N	119	\N	2024-09-29 15:49:18.680757+00	2024-09-29 15:49:18.680757+00	0
319	MARINE CORPS FORCES SPECIAL OPERATIONS COMMAND		\N	121	\N	2024-09-29 15:49:18.682204+00	2024-09-29 15:49:18.682204+00	0
320	MARINE FORCES CYBER COMMAND		\N	121	\N	2024-09-29 15:49:18.68376+00	2024-09-29 15:49:18.68376+00	0
321	MARINE FORCES RESERVE COMMAND		\N	121	\N	2024-09-29 15:49:18.685317+00	2024-09-29 15:49:18.685317+00	0
322	MARINE FORCES SOUTHERN COMMAND		\N	121	\N	2024-09-29 15:49:18.686837+00	2024-09-29 15:49:18.686837+00	0
323	OFFICE OF FINANCIAL OPERATIONS		\N	124	\N	2024-09-29 15:49:18.688463+00	2024-09-29 15:49:18.688463+00	0
324	PEO AIR ASW ASSAULT AND SPECIAL MISSION PROGRAMS		\N	126	\N	2024-09-29 15:49:18.690181+00	2024-09-29 15:49:18.690181+00	0
325	PEO AIRCRAFT CARRIERS		\N	126	\N	2024-09-29 15:49:18.691674+00	2024-09-29 15:49:18.691674+00	0
326	PEO ATTACK SUBMARINES		\N	126	\N	2024-09-29 15:49:18.693244+00	2024-09-29 15:49:18.693244+00	0
327	PEO C4I		\N	126	\N	2024-09-29 15:49:18.694713+00	2024-09-29 15:49:18.694713+00	0
328	PEO DIGITAL		\N	126	\N	2024-09-29 15:49:18.696863+00	2024-09-29 15:49:18.696863+00	0
329	PEO INTEGRATED WARFARE SYSTEMS		\N	126	\N	2024-09-29 15:49:18.698782+00	2024-09-29 15:49:18.698782+00	0
330	PEO MANPOWER, LOGISTICS AND BUSINESS SOLUTIONS		\N	126	\N	2024-09-29 15:49:18.700674+00	2024-09-29 15:49:18.700674+00	0
331	PEO SHIPS		\N	126	\N	2024-09-29 15:49:18.70224+00	2024-09-29 15:49:18.70224+00	0
332	PEO SPACE SYSTEMS		\N	126	\N	2024-09-29 15:49:18.703837+00	2024-09-29 15:49:18.703837+00	0
333	PEO TACTICAL AIR PROGRAMS		\N	126	\N	2024-09-29 15:49:18.706761+00	2024-09-29 15:49:18.706761+00	0
909	OPERATIONS DIVISION		\N	322	\N	2024-09-29 15:49:19.776975+00	2024-09-29 15:49:19.776975+00	0
334	PEO UNMANNED AND SMALL COMBATANTS		\N	126	\N	2024-09-29 15:49:18.708491+00	2024-09-29 15:49:18.708491+00	0
335	PEO UNMANNED AVIATION AND STRIKE WEAPONS		\N	126	\N	2024-09-29 15:49:18.710063+00	2024-09-29 15:49:18.710063+00	0
336	STRATEGIC SYSTEMS PROGRAM		\N	126	\N	2024-09-29 15:49:18.711529+00	2024-09-29 15:49:18.711529+00	0
337	NAVAL MEDICAL FORCES ATLANTIC		\N	127	\N	2024-09-29 15:49:18.713245+00	2024-09-29 15:49:18.713245+00	0
338	NAVAL MEDICAL FORCES PACIFIC		\N	127	\N	2024-09-29 15:49:18.714779+00	2024-09-29 15:49:18.714779+00	0
339	NAVAL MEDICAL FORCES SUPPORT COMMAND		\N	127	\N	2024-09-29 15:49:18.716544+00	2024-09-29 15:49:18.716544+00	0
340	COMMANDER OPERATIONAL TEST AND EVALUATION FORCE		\N	128	\N	2024-09-29 15:49:18.718094+00	2024-09-29 15:49:18.718094+00	0
341	US NAVAL ACADEMY		\N	128	\N	2024-09-29 15:49:18.719712+00	2024-09-29 15:49:18.719712+00	0
342	NAVY REGION EUROPE AFRICA CENTRAL		\N	129	\N	2024-09-29 15:49:18.721418+00	2024-09-29 15:49:18.721418+00	0
343	NAVY REGION SOUTHEAST		\N	129	\N	2024-09-29 15:49:18.722933+00	2024-09-29 15:49:18.722933+00	0
344	NAVY REGION SOUTHWEST		\N	129	\N	2024-09-29 15:49:18.724492+00	2024-09-29 15:49:18.724492+00	0
345	MSC ATLANTIC		\N	130	\N	2024-09-29 15:49:18.725971+00	2024-09-29 15:49:18.725971+00	0
346	MSC PACIFIC		\N	130	\N	2024-09-29 15:49:18.727504+00	2024-09-29 15:49:18.727504+00	0
347	AIR 1.0 PROGRAM MANAGEMENT		\N	131	\N	2024-09-29 15:49:18.72901+00	2024-09-29 15:49:18.72901+00	0
348	AIR 2.0 CONTRACTS		\N	131	\N	2024-09-29 15:49:18.730521+00	2024-09-29 15:49:18.730521+00	0
349	AIR 4.0 RESEARCH AND ENGINEERING		\N	131	\N	2024-09-29 15:49:18.732173+00	2024-09-29 15:49:18.732173+00	0
350	AIR 5.0 TEST AND EVALUATION		\N	131	\N	2024-09-29 15:49:18.733999+00	2024-09-29 15:49:18.733999+00	0
351	AIR 6.0 LOGISTICS AND INDUSTRIAL OPERATIONS		\N	131	\N	2024-09-29 15:49:18.735553+00	2024-09-29 15:49:18.735553+00	0
352	AIR 7.0 CORPORATE OPERATIONS AND TOTAL FORCE		\N	131	\N	2024-09-29 15:49:18.736994+00	2024-09-29 15:49:18.736994+00	0
353	COMMANDER FLEET READINESS CENTERS		\N	131	\N	2024-09-29 15:49:18.738419+00	2024-09-29 15:49:18.738419+00	0
354	COMMANDER NAVAL AIR SYSTEMS COMMAND		\N	131	\N	2024-09-29 15:49:18.739795+00	2024-09-29 15:49:18.739795+00	0
355	NAVAL AIR WARFARE CENTER AIRCRAFT DIVISION		\N	131	\N	2024-09-29 15:49:18.741415+00	2024-09-29 15:49:18.741415+00	0
356	NAVAL AIR WARFARE CENTER WEAPONS DIVISION		\N	131	\N	2024-09-29 15:49:18.742887+00	2024-09-29 15:49:18.742887+00	0
357	PROGRAM EXECUTIVE OFFICES		\N	131	\N	2024-09-29 15:49:18.744465+00	2024-09-29 15:49:18.744465+00	0
358	CHIEF OF NAVAL AIR TRAINING		\N	133	\N	2024-09-29 15:49:18.74593+00	2024-09-29 15:49:18.74593+00	0
359	NAVAL EDUCATION AND TRAINING PROFESSIONAL DEVELOPMENT TECHNOLOGY CENTER		\N	133	\N	2024-09-29 15:49:18.747437+00	2024-09-29 15:49:18.747437+00	0
360	NAVAL EDUCATION AND TRAINING SECURITY ASSISTANCE FIELD ACTIVITY		\N	133	\N	2024-09-29 15:49:18.748945+00	2024-09-29 15:49:18.748945+00	0
361	NAVAL PERSONNEL DEVELOPMENT COMMAND		\N	133	\N	2024-09-29 15:49:18.750455+00	2024-09-29 15:49:18.750455+00	0
362	NAVAL POSTGRADUATE SCHOOL		\N	133	\N	2024-09-29 15:49:18.752086+00	2024-09-29 15:49:18.752086+00	0
363	NAVAL WAR COLLEGE		\N	133	\N	2024-09-29 15:49:18.75369+00	2024-09-29 15:49:18.75369+00	0
364	CHIEF ENGINEER/CAPITAL IMPROVEMENTS		\N	134	\N	2024-09-29 15:49:18.755113+00	2024-09-29 15:49:18.755113+00	0
365	ENGINEERING AND EXPEDITIONARY WARFARE CENTER		\N	134	\N	2024-09-29 15:49:18.756532+00	2024-09-29 15:49:18.756532+00	0
366	NAVFAC ATLANTIC		\N	134	\N	2024-09-29 15:49:18.757981+00	2024-09-29 15:49:18.757981+00	0
367	NAVFAC PACIFIC		\N	134	\N	2024-09-29 15:49:18.759372+00	2024-09-29 15:49:18.759372+00	0
368	NAVY CRANE CENTER		\N	134	\N	2024-09-29 15:49:18.760884+00	2024-09-29 15:49:18.760884+00	0
369	PUBLIC WORKS		\N	134	\N	2024-09-29 15:49:18.762326+00	2024-09-29 15:49:18.762326+00	0
370	CHIEF ENGINEER (CODE 5.0)		\N	136	\N	2024-09-29 15:49:18.764291+00	2024-09-29 15:49:18.764291+00	0
371	COMPTROLLER DIRECTORATE NAVWAR 01		\N	136	\N	2024-09-29 15:49:18.76601+00	2024-09-29 15:49:18.76601+00	0
372	CONTRACTS (CODE 2.0)		\N	136	\N	2024-09-29 15:49:18.767871+00	2024-09-29 15:49:18.767871+00	0
373	CORPORATE OPERATIONS (CODE 8.0)		\N	136	\N	2024-09-29 15:49:18.76961+00	2024-09-29 15:49:18.76961+00	0
374	FINANCE (CODE 1.0)		\N	136	\N	2024-09-29 15:49:18.771364+00	2024-09-29 15:49:18.771364+00	0
375	LOGISTICS AND FLEET SUPPORT (CODE 4.0)		\N	136	\N	2024-09-29 15:49:18.772943+00	2024-09-29 15:49:18.772943+00	0
376	NAVAL INFORMATION WARFARE CENTER ATLANTIC		\N	136	\N	2024-09-29 15:49:18.774555+00	2024-09-29 15:49:18.774555+00	0
377	NAVAL INFORMATION WARFARE CENTER PACIFIC		\N	136	\N	2024-09-29 15:49:18.77624+00	2024-09-29 15:49:18.77624+00	0
378	NAVWAR SPACE FIELD ACTIVITY		\N	136	\N	2024-09-29 15:49:18.777939+00	2024-09-29 15:49:18.777939+00	0
379	NAVAL COMPUTER AND TELECOMMUNICATIONS AREA MASTER STATION ATLANTIC		\N	137	\N	2024-09-29 15:49:18.779476+00	2024-09-29 15:49:18.779476+00	0
380	NAVAL COMPUTER AND TELECOMMUNICATIONS AREA MASTER STATION PACIFIC		\N	137	\N	2024-09-29 15:49:18.781316+00	2024-09-29 15:49:18.781316+00	0
381	AEGIS TECHNICAL REPRESENTATIVE		\N	138	\N	2024-09-29 15:49:18.783009+00	2024-09-29 15:49:18.783009+00	0
382	COMPTROLLER (SEA 01)		\N	138	\N	2024-09-29 15:49:18.78468+00	2024-09-29 15:49:18.78468+00	0
383	CONTRACTS (SEA 02)		\N	138	\N	2024-09-29 15:49:18.786257+00	2024-09-29 15:49:18.786257+00	0
384	LOGISTICS MAINTENANCE AND INDUSTRIAL OPERATIONS (SEA 04)		\N	138	\N	2024-09-29 15:49:18.787879+00	2024-09-29 15:49:18.787879+00	0
385	NAVAL SURFACE WARFARE CENTER		\N	138	\N	2024-09-29 15:49:18.789565+00	2024-09-29 15:49:18.789565+00	0
386	NAVAL SYSTEMS ENGINEERING DIRECTORATE (SEA 05)		\N	138	\N	2024-09-29 15:49:18.791223+00	2024-09-29 15:49:18.791223+00	0
387	NAVAL UNDERSEA WARFARE CENTER (SEA 07)		\N	138	\N	2024-09-29 15:49:18.792845+00	2024-09-29 15:49:18.792845+00	0
388	NAVY REGIONAL MAINTENANCE CENTER		\N	138	\N	2024-09-29 15:49:18.795275+00	2024-09-29 15:49:18.795275+00	0
389	ORDNANCE SAFETY AND EXPLOSIVES (SEA 00V)		\N	138	\N	2024-09-29 15:49:18.796963+00	2024-09-29 15:49:18.796963+00	0
390	SURFACE COMBAT SYSTEMS CENTER		\N	138	\N	2024-09-29 15:49:18.799837+00	2024-09-29 15:49:18.799837+00	0
391	SURFACE WARFARE (SEA 21)		\N	138	\N	2024-09-29 15:49:18.802214+00	2024-09-29 15:49:18.802214+00	0
392	TOTAL FORCE AND CORPORATE OPERATIONS (SEA 10)		\N	138	\N	2024-09-29 15:49:18.803886+00	2024-09-29 15:49:18.803886+00	0
393	NAVAL SPECIAL WARFARE CENTER		\N	139	\N	2024-09-29 15:49:18.805582+00	2024-09-29 15:49:18.805582+00	0
394	COMMANDER NAVAL SUPPLY SYSTEMS COMMAND N00		\N	140	\N	2024-09-29 15:49:18.807079+00	2024-09-29 15:49:18.807079+00	0
395	CORPORATE OPERATIONS N1		\N	140	\N	2024-09-29 15:49:18.808795+00	2024-09-29 15:49:18.808795+00	0
396	FLEET LOGISTICS CENTER BAHRAIN		\N	140	\N	2024-09-29 15:49:18.810389+00	2024-09-29 15:49:18.810389+00	0
397	FLEET LOGISTICS CENTER JACKSONVILLE		\N	140	\N	2024-09-29 15:49:18.812096+00	2024-09-29 15:49:18.812096+00	0
398	FLEET LOGISTICS CENTER NORFOLK		\N	140	\N	2024-09-29 15:49:18.813722+00	2024-09-29 15:49:18.813722+00	0
399	FLEET LOGISTICS CENTER PEARL HARBOR		\N	140	\N	2024-09-29 15:49:18.815272+00	2024-09-29 15:49:18.815272+00	0
400	FLEET LOGISTICS CENTER PUGET SOUND		\N	140	\N	2024-09-29 15:49:18.81711+00	2024-09-29 15:49:18.81711+00	0
401	FLEET LOGISTICS CENTER SAN DIEGO		\N	140	\N	2024-09-29 15:49:18.818753+00	2024-09-29 15:49:18.818753+00	0
402	FLEET LOGISTICS CENTER SIGONELLA		\N	140	\N	2024-09-29 15:49:18.820257+00	2024-09-29 15:49:18.820257+00	0
403	FLEET LOGISTICS CENTER YOKOSUKA		\N	140	\N	2024-09-29 15:49:18.821947+00	2024-09-29 15:49:18.821947+00	0
404	NAVSUP BUSINESS SYSTEMS CENTER		\N	140	\N	2024-09-29 15:49:18.823433+00	2024-09-29 15:49:18.823433+00	0
405	NAVSUP WEAPON SYSTEMS SUPPORT		\N	140	\N	2024-09-29 15:49:18.825271+00	2024-09-29 15:49:18.825271+00	0
406	NAVY EXCHANGE SERVICE COMMAND		\N	140	\N	2024-09-29 15:49:18.827122+00	2024-09-29 15:49:18.827122+00	0
407	SUPPLY CHAIN MANAGEMENT POLICY AND PERFORMANCE N4		\N	140	\N	2024-09-29 15:49:18.828888+00	2024-09-29 15:49:18.828888+00	0
408	BUREAU OF NAVAL PERSONNEL		\N	141	\N	2024-09-29 15:49:18.830462+00	2024-09-29 15:49:18.830462+00	0
409	NAVAL AIR FORCE RESERVE		\N	142	\N	2024-09-29 15:49:18.832291+00	2024-09-29 15:49:18.832291+00	0
410	COMMAND, CONTROL, COMPUTING, COMMUNICATIONS, CYBER, INTELLIGENCE, SURVEILLANCE, RECONNAISSANCE AND TARGETING (C5ISRT) (CODE 31)		\N	144	\N	2024-09-29 15:49:18.834034+00	2024-09-29 15:49:18.834034+00	0
411	NAVAL RESEARCH LABORATORY		\N	144	\N	2024-09-29 15:49:18.835819+00	2024-09-29 15:49:18.835819+00	0
412	OCEAN BATTLESPACE SENSING (CODE 32)		\N	144	\N	2024-09-29 15:49:18.837416+00	2024-09-29 15:49:18.837416+00	0
413	OFFICE OF NAVAL RESEARCH GLOBAL		\N	144	\N	2024-09-29 15:49:18.838958+00	2024-09-29 15:49:18.838958+00	0
414	SEA WARFARE AND WEAPONS (CODE 33)		\N	144	\N	2024-09-29 15:49:18.840729+00	2024-09-29 15:49:18.840729+00	0
415	WARFIGHTER PERFORMANCE (CODE 34)		\N	144	\N	2024-09-29 15:49:18.842318+00	2024-09-29 15:49:18.842318+00	0
416	ASSISTANT FOR ADMINISTRATION		\N	145	\N	2024-09-29 15:49:18.844117+00	2024-09-29 15:49:18.844117+00	0
417	CHIEF INFORMATION OFFICER		\N	145	\N	2024-09-29 15:49:18.845742+00	2024-09-29 15:49:18.845742+00	0
418	JUDGE ADVOCATE GENERAL OF THE NAVY		\N	145	\N	2024-09-29 15:49:18.847408+00	2024-09-29 15:49:18.847408+00	0
419	NAVAL CRIMINAL INVESTIGATIVE SERVICE		\N	145	\N	2024-09-29 15:49:18.848954+00	2024-09-29 15:49:18.848954+00	0
420	NAVY INTERNATIONAL PROGRAMS OFFICE		\N	145	\N	2024-09-29 15:49:18.850559+00	2024-09-29 15:49:18.850559+00	0
421	OFFICE OF THE GENERAL COUNSEL		\N	145	\N	2024-09-29 15:49:18.852152+00	2024-09-29 15:49:18.852152+00	0
422	STRATEGIC WEAPONS FACILITY ATLANTIC		\N	146	\N	2024-09-29 15:49:18.854151+00	2024-09-29 15:49:18.854151+00	0
423	COMMANDER NAVAL AIR FORCES		\N	147	\N	2024-09-29 15:49:18.855763+00	2024-09-29 15:49:18.855763+00	0
424	COMMANDER NAVAL SURFACE FORCE ATLANTIC		\N	147	\N	2024-09-29 15:49:18.85744+00	2024-09-29 15:49:18.85744+00	0
425	NAVAL METEOROLOGY AND OCEANOGRAPHY COMMAND		\N	147	\N	2024-09-29 15:49:18.859119+00	2024-09-29 15:49:18.859119+00	0
426	NAVY EXPEDITIONARY COMBAT COMMAND		\N	147	\N	2024-09-29 15:49:18.860741+00	2024-09-29 15:49:18.860741+00	0
427	COMMANDER NAVAL AIR FORCES PACIFIC		\N	150	\N	2024-09-29 15:49:18.863259+00	2024-09-29 15:49:18.863259+00	0
428	COMMANDER NAVAL SURFACE FORCE PACIFIC		\N	150	\N	2024-09-29 15:49:18.864849+00	2024-09-29 15:49:18.864849+00	0
429	COMMANDER SUBMARINE FORCES PACIFIC		\N	150	\N	2024-09-29 15:49:18.866407+00	2024-09-29 15:49:18.866407+00	0
430	NAVY EXPEDITIONARY COMBAT COMMAND PACIFIC		\N	150	\N	2024-09-29 15:49:18.867939+00	2024-09-29 15:49:18.867939+00	0
431	ANGOLA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.869526+00	2024-09-29 15:49:18.869526+00	0
432	BENIN FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.871084+00	2024-09-29 15:49:18.871084+00	0
433	BURUNDI FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.872722+00	2024-09-29 15:49:18.872722+00	0
434	DEMOCRATIC REPUBLIC OF THE CONGO FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.874286+00	2024-09-29 15:49:18.874286+00	0
435	DJIBOUTI FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.875945+00	2024-09-29 15:49:18.875945+00	0
436	EAST AFRICA REGIONAL FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.87748+00	2024-09-29 15:49:18.87748+00	0
437	ETHIOPIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.879194+00	2024-09-29 15:49:18.879194+00	0
438	GHANA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.880998+00	2024-09-29 15:49:18.880998+00	0
439	GUINEA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.882638+00	2024-09-29 15:49:18.882638+00	0
440	KENYA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.884208+00	2024-09-29 15:49:18.884208+00	0
441	LIBERIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.88611+00	2024-09-29 15:49:18.88611+00	0
442	MADAGASCAR FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.887553+00	2024-09-29 15:49:18.887553+00	0
443	MALAWI FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.889194+00	2024-09-29 15:49:18.889194+00	0
444	MALI FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.890717+00	2024-09-29 15:49:18.890717+00	0
445	MOZAMBIQUE FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.893481+00	2024-09-29 15:49:18.893481+00	0
446	NAMIBIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.895602+00	2024-09-29 15:49:18.895602+00	0
447	NIGER FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.897501+00	2024-09-29 15:49:18.897501+00	0
448	NIGERIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.899048+00	2024-09-29 15:49:18.899048+00	0
449	RWANDA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.900609+00	2024-09-29 15:49:18.900609+00	0
450	SAHEL REGIONAL OFFICE		\N	151	\N	2024-09-29 15:49:18.902301+00	2024-09-29 15:49:18.902301+00	0
451	SENEGAL FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.903849+00	2024-09-29 15:49:18.903849+00	0
452	SIERRA LEONE FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.905486+00	2024-09-29 15:49:18.905486+00	0
453	SOMALIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.908541+00	2024-09-29 15:49:18.908541+00	0
454	SOUTH AFRICA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.910203+00	2024-09-29 15:49:18.910203+00	0
455	SOUTHERN AFRICA REGIONAL FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.911968+00	2024-09-29 15:49:18.911968+00	0
456	SUDAN FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.914322+00	2024-09-29 15:49:18.914322+00	0
457	TANZANIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.916058+00	2024-09-29 15:49:18.916058+00	0
458	UGANDA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.917979+00	2024-09-29 15:49:18.917979+00	0
459	WEST AFRICA REGIONAL FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.919582+00	2024-09-29 15:49:18.919582+00	0
460	ZAMBIA FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.921227+00	2024-09-29 15:49:18.921227+00	0
461	ZIMBABWE FIELD OFFICE		\N	151	\N	2024-09-29 15:49:18.922993+00	2024-09-29 15:49:18.922993+00	0
462	AFGHANISTAN FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.924745+00	2024-09-29 15:49:18.924745+00	0
463	BANGLADESH FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.92637+00	2024-09-29 15:49:18.92637+00	0
464	BURMA FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.928571+00	2024-09-29 15:49:18.928571+00	0
465	CAMBODIA FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.930236+00	2024-09-29 15:49:18.930236+00	0
466	INDIA FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.931884+00	2024-09-29 15:49:18.931884+00	0
467	INDONESIA FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.933427+00	2024-09-29 15:49:18.933427+00	0
468	KAZAKHSTAN FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.935024+00	2024-09-29 15:49:18.935024+00	0
469	KYRGYZ REPUBLIC FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.936881+00	2024-09-29 15:49:18.936881+00	0
470	LAOS FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.938442+00	2024-09-29 15:49:18.938442+00	0
471	MONGOLIA FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.940044+00	2024-09-29 15:49:18.940044+00	0
472	NEPAL FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.941628+00	2024-09-29 15:49:18.941628+00	0
473	PACIFIC ISLANDS FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.943224+00	2024-09-29 15:49:18.943224+00	0
474	PAKISTAN FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.944861+00	2024-09-29 15:49:18.944861+00	0
475	PHILIPPINES FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.946447+00	2024-09-29 15:49:18.946447+00	0
476	SRI LANKA FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.947973+00	2024-09-29 15:49:18.947973+00	0
477	TAJIKISTAN FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.950548+00	2024-09-29 15:49:18.950548+00	0
478	THAILAND FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.952074+00	2024-09-29 15:49:18.952074+00	0
479	TIMOR-LESTE FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.953776+00	2024-09-29 15:49:18.953776+00	0
480	TURKMENISTAN FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.955405+00	2024-09-29 15:49:18.955405+00	0
481	UZBEKISTAN FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.958088+00	2024-09-29 15:49:18.958088+00	0
482	VIETNAM FIELD OFFICE		\N	152	\N	2024-09-29 15:49:18.959919+00	2024-09-29 15:49:18.959919+00	0
483	OFFICE OF TRANSITION INITIATIVES		\N	153	\N	2024-09-29 15:49:18.961545+00	2024-09-29 15:49:18.961545+00	0
484	CENTER FOR EDUCATION		\N	154	\N	2024-09-29 15:49:18.967386+00	2024-09-29 15:49:18.967386+00	0
485	CENTER FOR ENVIRONMENT, ENERGY, AND INFRASTRUCTURE		\N	154	\N	2024-09-29 15:49:18.971278+00	2024-09-29 15:49:18.971278+00	0
486	DEMOCRACY, HUMAN RIGHTS AND GOVERNANCE CENTER		\N	154	\N	2024-09-29 15:49:18.973268+00	2024-09-29 15:49:18.973268+00	0
487	INNOVATION, TECHNOLOGY, AND RESEARCH HUB		\N	154	\N	2024-09-29 15:49:18.975108+00	2024-09-29 15:49:18.975108+00	0
488	LOCAL, FAITH AND TRANSFORMATIVE PARTNERSHIPS HUB		\N	154	\N	2024-09-29 15:49:18.979354+00	2024-09-29 15:49:18.979354+00	0
489	ALBANIA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.981287+00	2024-09-29 15:49:18.981287+00	0
490	ARMENIA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.983128+00	2024-09-29 15:49:18.983128+00	0
491	AZERBAIJAN FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.984984+00	2024-09-29 15:49:18.984984+00	0
492	BELARUS FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.986724+00	2024-09-29 15:49:18.986724+00	0
493	BOSNIA-HERZEGOVINA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.988475+00	2024-09-29 15:49:18.988475+00	0
494	GEORGIA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.990213+00	2024-09-29 15:49:18.990213+00	0
495	KOSOVO FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.991856+00	2024-09-29 15:49:18.991856+00	0
496	MACEDONIA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.993701+00	2024-09-29 15:49:18.993701+00	0
497	MOLDOVA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.995424+00	2024-09-29 15:49:18.995424+00	0
498	REGIONAL SERVICES CENTER (HUNGARY)		\N	155	\N	2024-09-29 15:49:18.997272+00	2024-09-29 15:49:18.997272+00	0
499	SERBIA FIELD OFFICE		\N	155	\N	2024-09-29 15:49:18.999056+00	2024-09-29 15:49:18.999056+00	0
500	UKRAINE FIELD OFFICE		\N	155	\N	2024-09-29 15:49:19.00068+00	2024-09-29 15:49:19.00068+00	0
501	GLOBAL/FUNCTIONAL OFFICE (CODE FA/GF)		\N	156	\N	2024-09-29 15:49:19.003863+00	2024-09-29 15:49:19.003863+00	0
502	OFFICE OF HEALTH SYSTEMS		\N	157	\N	2024-09-29 15:49:19.005593+00	2024-09-29 15:49:19.005593+00	0
503	OFFICE OF POPULATION AND REPRODUCTIVE HEALTH		\N	157	\N	2024-09-29 15:49:19.010614+00	2024-09-29 15:49:19.010614+00	0
504	BRAZIL FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.012402+00	2024-09-29 15:49:19.012402+00	0
505	COLOMBIA FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.013861+00	2024-09-29 15:49:19.013861+00	0
506	DOMINICAN REPUBLIC FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.015737+00	2024-09-29 15:49:19.015737+00	0
507	EASTERN AND SOUTHERN CARIBBEAN OFFICE		\N	159	\N	2024-09-29 15:49:19.017402+00	2024-09-29 15:49:19.017402+00	0
508	ECUADOR FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.019082+00	2024-09-29 15:49:19.019082+00	0
509	EL SALVADOR FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.020691+00	2024-09-29 15:49:19.020691+00	0
510	GUATEMALA FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.022375+00	2024-09-29 15:49:19.022375+00	0
511	HAITI FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.023969+00	2024-09-29 15:49:19.023969+00	0
512	HONDURAS FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.025833+00	2024-09-29 15:49:19.025833+00	0
513	JAMAICA FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.027494+00	2024-09-29 15:49:19.027494+00	0
514	MEXICO FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.029222+00	2024-09-29 15:49:19.029222+00	0
515	NICARAGUA FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.030896+00	2024-09-29 15:49:19.030896+00	0
516	PARAGUAY FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.032696+00	2024-09-29 15:49:19.032696+00	0
517	PERU FIELD OFFICE		\N	159	\N	2024-09-29 15:49:19.034601+00	2024-09-29 15:49:19.034601+00	0
518	OFFICE OF ACQUISITION AND ASSISTANCE (CODE M/OAA)		\N	161	\N	2024-09-29 15:49:19.036477+00	2024-09-29 15:49:19.036477+00	0
519	OFFICE OF MANAGEMENT POLICY, BUDGET, AND PERFORMANCE (CODE M/MPBP)		\N	161	\N	2024-09-29 15:49:19.037983+00	2024-09-29 15:49:19.037983+00	0
520	OFFICE OF THE ASSISTANT ADMINISTRATOR (CODE AA/M)		\N	161	\N	2024-09-29 15:49:19.039606+00	2024-09-29 15:49:19.039606+00	0
521	OFFICE OF THE CHIEF FINANCIAL OFFICER (CODE M/CFO)		\N	161	\N	2024-09-29 15:49:19.041387+00	2024-09-29 15:49:19.041387+00	0
522	OFFICE OF THE CHIEF INFORMATION OFFICER (CODE M/CIO)		\N	161	\N	2024-09-29 15:49:19.043172+00	2024-09-29 15:49:19.043172+00	0
523	OVERSEAS MANAGEMENT STAFF (CODE M/MS/OMS)		\N	161	\N	2024-09-29 15:49:19.0448+00	2024-09-29 15:49:19.0448+00	0
524	EGYPT FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.04664+00	2024-09-29 15:49:19.04664+00	0
525	IRAQ FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.04828+00	2024-09-29 15:49:19.04828+00	0
526	JORDAN FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.049761+00	2024-09-29 15:49:19.049761+00	0
527	LEBANON FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.051301+00	2024-09-29 15:49:19.051301+00	0
528	LIBYA FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.053179+00	2024-09-29 15:49:19.053179+00	0
529	MIDDLE EAST REGIONAL FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.054778+00	2024-09-29 15:49:19.054778+00	0
530	MOROCCO FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.05652+00	2024-09-29 15:49:19.05652+00	0
531	SYRIA FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.0581+00	2024-09-29 15:49:19.0581+00	0
532	WEST BANK AND GAZA FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.059768+00	2024-09-29 15:49:19.059768+00	0
533	YEMEN FIELD OFFICE		\N	162	\N	2024-09-29 15:49:19.061455+00	2024-09-29 15:49:19.061455+00	0
534	PERSONNEL, INFORMATION, AND DOMESTIC SECURITY DIVISION (CODE SEC/PIDS)		\N	165	\N	2024-09-29 15:49:19.063003+00	2024-09-29 15:49:19.063003+00	0
535	OFFICE OF HUMAN CAPITAL AND TALENT MANAGEMENT		\N	166	\N	2024-09-29 15:49:19.064775+00	2024-09-29 15:49:19.064775+00	0
536	SCIENCE AND TECHNOLOGY PROGRAM		\N	170	\N	2024-09-29 15:49:19.066456+00	2024-09-29 15:49:19.066456+00	0
537	ADMINISTRATIVE AND FINANCIAL MANAGEMENT		\N	171	\N	2024-09-29 15:49:19.06824+00	2024-09-29 15:49:19.06824+00	0
538	MARKETING AND REGULATORY PROGRAMS		\N	172	\N	2024-09-29 15:49:19.069741+00	2024-09-29 15:49:19.069741+00	0
539	OFFICE OF OPERATIONS		\N	174	\N	2024-09-29 15:49:19.071209+00	2024-09-29 15:49:19.071209+00	0
540	OFFICE OF PROPERTY AND ENVIRONMENTAL MANAGEMENT		\N	174	\N	2024-09-29 15:49:19.072854+00	2024-09-29 15:49:19.072854+00	0
541	ASSOCIATE ADMINISTRATOR FOR OPERATIONS AND MANAGEMENT		\N	177	\N	2024-09-29 15:49:19.07442+00	2024-09-29 15:49:19.07442+00	0
542	OFFICE OF MANAGEMENT, TECHNOLOGY AND FINANCE/CHIEF OPERATING OFFICER		\N	178	\N	2024-09-29 15:49:19.076096+00	2024-09-29 15:49:19.076096+00	0
543	BUSINESS OPERATIONS		\N	181	\N	2024-09-29 15:49:19.077691+00	2024-09-29 15:49:19.077691+00	0
544	FOREST PRODUCTS LABORATORY		\N	181	\N	2024-09-29 15:49:19.07928+00	2024-09-29 15:49:19.07928+00	0
545	HUMAN CAPITAL MANAGEMENT		\N	181	\N	2024-09-29 15:49:19.08112+00	2024-09-29 15:49:19.08112+00	0
546	NATIONAL FIRE PROGRAM		\N	181	\N	2024-09-29 15:49:19.082844+00	2024-09-29 15:49:19.082844+00	0
547	NATIONAL FOREST SYSTEM		\N	181	\N	2024-09-29 15:49:19.084623+00	2024-09-29 15:49:19.084623+00	0
548	OFFICE OF THE CHIEF		\N	181	\N	2024-09-29 15:49:19.086229+00	2024-09-29 15:49:19.086229+00	0
549	RESEARCH AND DEVELOPMENT		\N	181	\N	2024-09-29 15:49:19.087931+00	2024-09-29 15:49:19.087931+00	0
550	OFFICE OF INFORMATION TECHNOLOGY		\N	184	\N	2024-09-29 15:49:19.089567+00	2024-09-29 15:49:19.089567+00	0
551	DEPUTY CHIEF FOR MANAGEMENT		\N	185	\N	2024-09-29 15:49:19.091276+00	2024-09-29 15:49:19.091276+00	0
552	SOIL SCIENCE AND RESOURCE ASSESSMENT		\N	185	\N	2024-09-29 15:49:19.092999+00	2024-09-29 15:49:19.092999+00	0
553	NATIONAL FINANCE CENTER		\N	187	\N	2024-09-29 15:49:19.094507+00	2024-09-29 15:49:19.094507+00	0
554	NATIONAL INFORMATION TECHNOLOGY CENTER		\N	188	\N	2024-09-29 15:49:19.096508+00	2024-09-29 15:49:19.096508+00	0
555	RURAL BUSINESS COOPERATIVE SERVICE		\N	193	\N	2024-09-29 15:49:19.098395+00	2024-09-29 15:49:19.098395+00	0
556	RURAL HOUSING SERVICE		\N	193	\N	2024-09-29 15:49:19.099987+00	2024-09-29 15:49:19.099987+00	0
557	RURAL UTILITY SERVICE		\N	193	\N	2024-09-29 15:49:19.101998+00	2024-09-29 15:49:19.101998+00	0
558	FINANCIAL MANAGEMENT		\N	199	\N	2024-09-29 15:49:19.105652+00	2024-09-29 15:49:19.105652+00	0
559	BUREAU OF CENSUS		\N	202	\N	2024-09-29 15:49:19.107327+00	2024-09-29 15:49:19.107327+00	0
560	BUREAU OF ECONOMIC ANALYSIS		\N	202	\N	2024-09-29 15:49:19.108897+00	2024-09-29 15:49:19.108897+00	0
561	COMMERCIAL LAW DEVELOPMENT PROGRAM		\N	203	\N	2024-09-29 15:49:19.110343+00	2024-09-29 15:49:19.110343+00	0
562	CHIEF FINANCIAL OFFICER		\N	204	\N	2024-09-29 15:49:19.11197+00	2024-09-29 15:49:19.11197+00	0
563	CHIEF INFORMATION OFFICER		\N	205	\N	2024-09-29 15:49:19.113563+00	2024-09-29 15:49:19.113563+00	0
564	TRADE PROMOTION U.S. COMMERCIAL SERVICE		\N	205	\N	2024-09-29 15:49:19.115821+00	2024-09-29 15:49:19.115821+00	0
565	INFORMATION TECHNOLOGY LAB		\N	207	\N	2024-09-29 15:49:19.117734+00	2024-09-29 15:49:19.117734+00	0
566	ACQUISITION AND GRANTS OFFICE		\N	208	\N	2024-09-29 15:49:19.119266+00	2024-09-29 15:49:19.119266+00	0
567	COASTAL SERVICE CENTER		\N	208	\N	2024-09-29 15:49:19.120827+00	2024-09-29 15:49:19.120827+00	0
568	MARINE AND AVIATION OPERATIONS		\N	208	\N	2024-09-29 15:49:19.122436+00	2024-09-29 15:49:19.122436+00	0
569	NATIONAL ENVIRONMENTAL SATELLITE DATA AND INFORMATION SERVICE		\N	208	\N	2024-09-29 15:49:19.124606+00	2024-09-29 15:49:19.124606+00	0
570	NATIONAL MARINE FISHERIES SERVICE		\N	208	\N	2024-09-29 15:49:19.126481+00	2024-09-29 15:49:19.126481+00	0
571	NATIONAL OCEAN SERVICE		\N	208	\N	2024-09-29 15:49:19.128215+00	2024-09-29 15:49:19.128215+00	0
572	NATIONAL WEATHER SERVICE		\N	208	\N	2024-09-29 15:49:19.129912+00	2024-09-29 15:49:19.129912+00	0
573	OFFICE OF THE CHIEF ADMINISTRATIVE OFFICER		\N	208	\N	2024-09-29 15:49:19.131524+00	2024-09-29 15:49:19.131524+00	0
574	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	208	\N	2024-09-29 15:49:19.133335+00	2024-09-29 15:49:19.133335+00	0
575	OFFICE OF SPECTRUM MANAGEMENT		\N	210	\N	2024-09-29 15:49:19.13568+00	2024-09-29 15:49:19.13568+00	0
576	CHIEF ADMINISTRATIVE OFFICER		\N	211	\N	2024-09-29 15:49:19.137704+00	2024-09-29 15:49:19.137704+00	0
577	CHIEF FINANCIAL OFFICER		\N	211	\N	2024-09-29 15:49:19.139305+00	2024-09-29 15:49:19.139305+00	0
578	CHIEF INFORMATION OFFICER		\N	211	\N	2024-09-29 15:49:19.140839+00	2024-09-29 15:49:19.140839+00	0
579	COMMISSIONER FOR PATENTS		\N	211	\N	2024-09-29 15:49:19.142638+00	2024-09-29 15:49:19.142638+00	0
580	GENERAL COUNSEL		\N	211	\N	2024-09-29 15:49:19.145182+00	2024-09-29 15:49:19.145182+00	0
581	FEDERAL LIBRARY AND INFORMATION CENTER		\N	218	\N	2024-09-29 15:49:19.146778+00	2024-09-29 15:49:19.146778+00	0
582	OFFICE OF THE SERGEANT AT ARMS		\N	220	\N	2024-09-29 15:49:19.148532+00	2024-09-29 15:49:19.148532+00	0
583	MANAGEMENT AND ADMINISTRATION		\N	224	\N	2024-09-29 15:49:19.150062+00	2024-09-29 15:49:19.150062+00	0
584	CHIEF OPERATING OFFICER		\N	228	\N	2024-09-29 15:49:19.151637+00	2024-09-29 15:49:19.151637+00	0
585	IMPACT AID PROGRAMS		\N	233	\N	2024-09-29 15:49:19.153302+00	2024-09-29 15:49:19.153302+00	0
586	NATIONAL INSTITUTE FOR LITERACY		\N	233	\N	2024-09-29 15:49:19.154806+00	2024-09-29 15:49:19.154806+00	0
587	OFFICE OF MIGRANT EDUCATION		\N	233	\N	2024-09-29 15:49:19.156666+00	2024-09-29 15:49:19.156666+00	0
588	PROGRAMS FOR THE IMPROVEMENT OF PRACTICE		\N	233	\N	2024-09-29 15:49:19.159594+00	2024-09-29 15:49:19.159594+00	0
589	NATIONAL INSTITUTE ON DISABILITY AND REHABILITATION RESEARCH		\N	235	\N	2024-09-29 15:49:19.161278+00	2024-09-29 15:49:19.161278+00	0
590	OFFICE OF SPECIAL EDUCATION PROGRAMS		\N	235	\N	2024-09-29 15:49:19.162872+00	2024-09-29 15:49:19.162872+00	0
591	REHABILITATION SERVICES ADMINISTRATION		\N	235	\N	2024-09-29 15:49:19.164702+00	2024-09-29 15:49:19.164702+00	0
592	FUND FOR THE IMPROVEMENT OF POSTSECONDARY EDUCATION		\N	237	\N	2024-09-29 15:49:19.166498+00	2024-09-29 15:49:19.166498+00	0
593	HIGHER EDUCATION PROGRAMS		\N	237	\N	2024-09-29 15:49:19.168217+00	2024-09-29 15:49:19.168217+00	0
594	OFFICE OF THE SECRETARY		\N	238	\N	2024-09-29 15:49:19.169871+00	2024-09-29 15:49:19.169871+00	0
595	OFFICE OF THE CHAIRMAN AND COMMISSIONERS		\N	239	\N	2024-09-29 15:49:19.17144+00	2024-09-29 15:49:19.17144+00	0
596	ACQUISITION AND PROJECT MANAGEMENT		\N	242	\N	2024-09-29 15:49:19.17305+00	2024-09-29 15:49:19.17305+00	0
597	ALBUQUERQUE COMPLEX		\N	242	\N	2024-09-29 15:49:19.174799+00	2024-09-29 15:49:19.174799+00	0
598	DEFENSE NUCLEAR NONPROLIFERATION		\N	242	\N	2024-09-29 15:49:19.176571+00	2024-09-29 15:49:19.176571+00	0
599	DEFENSE NUCLEAR SECURITY		\N	242	\N	2024-09-29 15:49:19.178123+00	2024-09-29 15:49:19.178123+00	0
600	DEFENSE PROGRAMS		\N	242	\N	2024-09-29 15:49:19.179721+00	2024-09-29 15:49:19.179721+00	0
601	EMERGENCY OPERATIONS		\N	242	\N	2024-09-29 15:49:19.181691+00	2024-09-29 15:49:19.181691+00	0
602	INFORMATION MANAGEMENT & CIO		\N	242	\N	2024-09-29 15:49:19.183264+00	2024-09-29 15:49:19.183264+00	0
603	LAWRENCE LIVERMORE NATIONAL LABORATORY		\N	242	\N	2024-09-29 15:49:19.184864+00	2024-09-29 15:49:19.184864+00	0
604	LOS ALAMOS NATIONAL LABORATORY		\N	242	\N	2024-09-29 15:49:19.186523+00	2024-09-29 15:49:19.186523+00	0
605	MANAGEMENT & BUDGET		\N	242	\N	2024-09-29 15:49:19.188129+00	2024-09-29 15:49:19.188129+00	0
606	NAVAL REACTORS / NAVAL NUCLEAR PROPULSION PROGRAM		\N	242	\N	2024-09-29 15:49:19.189824+00	2024-09-29 15:49:19.189824+00	0
607	NEVADA FIELD OFFICE		\N	242	\N	2024-09-29 15:49:19.192851+00	2024-09-29 15:49:19.192851+00	0
608	SAFETY, INFRASTRUCTURE AND OPERATIONS		\N	242	\N	2024-09-29 15:49:19.19449+00	2024-09-29 15:49:19.19449+00	0
609	SANDIA NATIONAL LABORATORIES		\N	242	\N	2024-09-29 15:49:19.196159+00	2024-09-29 15:49:19.196159+00	0
610	SAVANNAH RIVER SITE		\N	242	\N	2024-09-29 15:49:19.197677+00	2024-09-29 15:49:19.197677+00	0
611	LOAN PROGRAMS OFFICE		\N	243	\N	2024-09-29 15:49:19.199276+00	2024-09-29 15:49:19.199276+00	0
612	OFFICE OF CLEAN ENERGY DEMONSTRATIONS		\N	243	\N	2024-09-29 15:49:19.202365+00	2024-09-29 15:49:19.202365+00	0
613	OFFICE OF MANUFACTURING & ENERGY SUPPLY CHAINS		\N	243	\N	2024-09-29 15:49:19.20421+00	2024-09-29 15:49:19.20421+00	0
614	OFFICE OF STATE AND COMMUNITY ENERGY PROGRAMS		\N	243	\N	2024-09-29 15:49:19.206172+00	2024-09-29 15:49:19.206172+00	0
615	ADVANCED RESEARCH PROJECTS AGENCY - ENERGY		\N	244	\N	2024-09-29 15:49:19.209076+00	2024-09-29 15:49:19.209076+00	0
616	CHIEF FINANCIAL OFFICER		\N	244	\N	2024-09-29 15:49:19.211015+00	2024-09-29 15:49:19.211015+00	0
617	CHIEF HUMAN CAPITAL OFFICER		\N	244	\N	2024-09-29 15:49:19.212839+00	2024-09-29 15:49:19.212839+00	0
618	CHIEF INFORMATION OFFICER		\N	244	\N	2024-09-29 15:49:19.214483+00	2024-09-29 15:49:19.214483+00	0
619	ENERGY INFORMATION ADMINISTRATION		\N	244	\N	2024-09-29 15:49:19.216253+00	2024-09-29 15:49:19.216253+00	0
620	ENTERPRISE ASSESSMENTS		\N	244	\N	2024-09-29 15:49:19.217828+00	2024-09-29 15:49:19.217828+00	0
621	ENVIRONMENT, HEALTH, SAFETY & SECURITY		\N	244	\N	2024-09-29 15:49:19.219635+00	2024-09-29 15:49:19.219635+00	0
622	ENVIRONMENTAL MANAGEMENT		\N	244	\N	2024-09-29 15:49:19.221482+00	2024-09-29 15:49:19.221482+00	0
623	GENERAL COUNSEL		\N	244	\N	2024-09-29 15:49:19.223014+00	2024-09-29 15:49:19.223014+00	0
624	INSPECTOR GENERAL		\N	244	\N	2024-09-29 15:49:19.22476+00	2024-09-29 15:49:19.22476+00	0
625	INTELLIGENCE AND COUNTERINTELLIGENCE		\N	244	\N	2024-09-29 15:49:19.22641+00	2024-09-29 15:49:19.22641+00	0
626	OFFICE OF LEGACY MANAGEMENT		\N	244	\N	2024-09-29 15:49:19.228143+00	2024-09-29 15:49:19.228143+00	0
627	OFFICE OF MANAGEMENT		\N	244	\N	2024-09-29 15:49:19.229773+00	2024-09-29 15:49:19.229773+00	0
628	PUBLIC AFFAIRS		\N	244	\N	2024-09-29 15:49:19.23147+00	2024-09-29 15:49:19.23147+00	0
629	ARTIFICIAL INTELLIGENCE AND TECHNOLOGY OFFICE		\N	245	\N	2024-09-29 15:49:19.233018+00	2024-09-29 15:49:19.233018+00	0
630	ENERGY EFFICIENCY AND RENEWABLE ENERGY		\N	245	\N	2024-09-29 15:49:19.234634+00	2024-09-29 15:49:19.234634+00	0
631	NUCLEAR ENERGY		\N	245	\N	2024-09-29 15:49:19.23625+00	2024-09-29 15:49:19.23625+00	0
632	OFFICE OF ELECTRICITY		\N	245	\N	2024-09-29 15:49:19.237966+00	2024-09-29 15:49:19.237966+00	0
633	OFFICE OF FOSSIL ENERGY AND CARBON MANAGEMENT		\N	245	\N	2024-09-29 15:49:19.239603+00	2024-09-29 15:49:19.239603+00	0
634	SCIENCE		\N	245	\N	2024-09-29 15:49:19.241226+00	2024-09-29 15:49:19.241226+00	0
635	OFFICE OF POLICY		\N	246	\N	2024-09-29 15:49:19.24285+00	2024-09-29 15:49:19.24285+00	0
636	OFFICE OF PUBLIC AFFAIRS		\N	246	\N	2024-09-29 15:49:19.244519+00	2024-09-29 15:49:19.244519+00	0
637	OFFICE OF SMALL AND DISADVANTAGED BUSINESS UTILIZATION		\N	246	\N	2024-09-29 15:49:19.246037+00	2024-09-29 15:49:19.246037+00	0
638	SCIENCE ADVISORY BOARD		\N	246	\N	2024-09-29 15:49:19.247613+00	2024-09-29 15:49:19.247613+00	0
639	DATA MANAGEMENT SERVICES DIVISION		\N	247	\N	2024-09-29 15:49:19.249495+00	2024-09-29 15:49:19.249495+00	0
640	AIR QUALITY PLANNING AND STANDARDS		\N	248	\N	2024-09-29 15:49:19.266399+00	2024-09-29 15:49:19.266399+00	0
641	ATMOSPHERIC PROGRAMS		\N	248	\N	2024-09-29 15:49:19.272231+00	2024-09-29 15:49:19.272231+00	0
642	RADIATION AND INDOOR AIR		\N	248	\N	2024-09-29 15:49:19.273958+00	2024-09-29 15:49:19.273958+00	0
643	TRANSPORTATION AND AIR QUALITY		\N	248	\N	2024-09-29 15:49:19.275771+00	2024-09-29 15:49:19.275771+00	0
644	OFFICE OF PESTICIDE PROGRAMS		\N	249	\N	2024-09-29 15:49:19.277857+00	2024-09-29 15:49:19.277857+00	0
645	OFFICE OF POLLUTION PREVENTION AND TOXICS		\N	249	\N	2024-09-29 15:49:19.279412+00	2024-09-29 15:49:19.279412+00	0
646	OFFICE OF PROGRAM SUPPORT		\N	249	\N	2024-09-29 15:49:19.281049+00	2024-09-29 15:49:19.281049+00	0
647	OFFICE OF RESOURCE CONSERVATION AND RECOVERY		\N	252	\N	2024-09-29 15:49:19.283547+00	2024-09-29 15:49:19.283547+00	0
648	OFFICE OF ACQUISITION SOLUTIONS		\N	253	\N	2024-09-29 15:49:19.285565+00	2024-09-29 15:49:19.285565+00	0
649	OFFICE OF CUSTOMER ADVOCACY, POLICY AND PORTFOLIO MANAGEMENT		\N	253	\N	2024-09-29 15:49:19.287295+00	2024-09-29 15:49:19.287295+00	0
650	OFFICE OF IT OPERATIONS		\N	253	\N	2024-09-29 15:49:19.289123+00	2024-09-29 15:49:19.289123+00	0
651	CENTER FOR COMPUTATIONAL TOXICOLOGY AND EXPOSURE		\N	254	\N	2024-09-29 15:49:19.290602+00	2024-09-29 15:49:19.290602+00	0
652	CENTER FOR ENVIRONMENTAL SOLUTIONS AND EMERGENCY RESPONSE		\N	254	\N	2024-09-29 15:49:19.29216+00	2024-09-29 15:49:19.29216+00	0
653	CENTER FOR PUBLIC HEALTH AND ENVIRONMENTAL ASSESSMENT		\N	254	\N	2024-09-29 15:49:19.293716+00	2024-09-29 15:49:19.293716+00	0
654	NATIONAL RESEARCH PROGRAMS		\N	254	\N	2024-09-29 15:49:19.295277+00	2024-09-29 15:49:19.295277+00	0
655	REGION 1-BOSTON		\N	257	\N	2024-09-29 15:49:19.297113+00	2024-09-29 15:49:19.297113+00	0
656	REGION 10-SEATTLE		\N	257	\N	2024-09-29 15:49:19.298545+00	2024-09-29 15:49:19.298545+00	0
657	REGION 2-NEW YORK		\N	257	\N	2024-09-29 15:49:19.300311+00	2024-09-29 15:49:19.300311+00	0
658	REGION 3-PHILADELPHIA		\N	257	\N	2024-09-29 15:49:19.301723+00	2024-09-29 15:49:19.301723+00	0
659	REGION 4-ATLANTA		\N	257	\N	2024-09-29 15:49:19.303164+00	2024-09-29 15:49:19.303164+00	0
660	REGION 5-CHICAGO		\N	257	\N	2024-09-29 15:49:19.304665+00	2024-09-29 15:49:19.304665+00	0
661	REGION 6-DALLAS		\N	257	\N	2024-09-29 15:49:19.306207+00	2024-09-29 15:49:19.306207+00	0
662	REGION 7-KANSAS CITY		\N	257	\N	2024-09-29 15:49:19.307749+00	2024-09-29 15:49:19.307749+00	0
663	REGION 8-DENVER		\N	257	\N	2024-09-29 15:49:19.309395+00	2024-09-29 15:49:19.309395+00	0
664	REGION 9-SAN FRANCISCO		\N	257	\N	2024-09-29 15:49:19.311029+00	2024-09-29 15:49:19.311029+00	0
665	INTELLIGENCE ADVANCED RESEARCH PROJECTS ACTIVITY		\N	261	\N	2024-09-29 15:49:19.312688+00	2024-09-29 15:49:19.312688+00	0
666	OFFICE OF THE CHIEF ENGINEER		\N	268	\N	2024-09-29 15:49:19.314322+00	2024-09-29 15:49:19.314322+00	0
667	PUBLIC COMMUNICATIONS OUTREACH AND OPERATIONS DIVISION		\N	269	\N	2024-09-29 15:49:19.316307+00	2024-09-29 15:49:19.316307+00	0
668	CHIEF INFORMATION OFFICER		\N	273	\N	2024-09-29 15:49:19.3181+00	2024-09-29 15:49:19.3181+00	0
669	OFFICE OF THE INSPECTOR GENERAL		\N	273	\N	2024-09-29 15:49:19.319862+00	2024-09-29 15:49:19.319862+00	0
670	PUBLIC HOUSING INVESTMENTS		\N	273	\N	2024-09-29 15:49:19.321349+00	2024-09-29 15:49:19.321349+00	0
671	OFFICE OF ACQUISITION MANAGEMENT		\N	275	\N	2024-09-29 15:49:19.322989+00	2024-09-29 15:49:19.322989+00	0
672	OFFICE OF ASSISTED ACQUISITION SERVICES		\N	275	\N	2024-09-29 15:49:19.324531+00	2024-09-29 15:49:19.324531+00	0
673	OFFICE OF CUSTOMER AND STAKEHOLDER ENGAGEMENT		\N	275	\N	2024-09-29 15:49:19.326239+00	2024-09-29 15:49:19.326239+00	0
674	OFFICE OF GENERAL SUPPLIES AND SERVICES		\N	275	\N	2024-09-29 15:49:19.327952+00	2024-09-29 15:49:19.327952+00	0
675	OFFICE OF INFORMATION TECHNOLOGY CATEGORY		\N	275	\N	2024-09-29 15:49:19.329619+00	2024-09-29 15:49:19.329619+00	0
676	OFFICE OF POLICY AND COMPLIANCE		\N	275	\N	2024-09-29 15:49:19.33113+00	2024-09-29 15:49:19.33113+00	0
677	TECHNOLOGY TRANSFORMATION SERVICES		\N	275	\N	2024-09-29 15:49:19.332564+00	2024-09-29 15:49:19.332564+00	0
678	GENERAL SERVICES ADMINISTRATION INFORMATION TECHNOLOGY (GSA IT)		\N	276	\N	2024-09-29 15:49:19.334173+00	2024-09-29 15:49:19.334173+00	0
679	OFFICE OF ACQUISITION POLICY		\N	281	\N	2024-09-29 15:49:19.335822+00	2024-09-29 15:49:19.335822+00	0
680	OFFICE OF FEDERAL HIGH-PERFORMANCE GREEN BUILDINGS		\N	281	\N	2024-09-29 15:49:19.337357+00	2024-09-29 15:49:19.337357+00	0
681	GSA IT		\N	285	\N	2024-09-29 15:49:19.339+00	2024-09-29 15:49:19.339+00	0
682	OFFICE OF CLIENT SOLUTIONS		\N	287	\N	2024-09-29 15:49:19.340634+00	2024-09-29 15:49:19.340634+00	0
683	OFFICE OF DESIGN AND CONSTRUCTION		\N	287	\N	2024-09-29 15:49:19.342416+00	2024-09-29 15:49:19.342416+00	0
684	OFFICE OF FACILITIES MANAGEMENT AND SERVICES PROGRAMS		\N	287	\N	2024-09-29 15:49:19.34421+00	2024-09-29 15:49:19.34421+00	0
685	OFFICE OF ORGANIZATIONAL RESOURCES		\N	287	\N	2024-09-29 15:49:19.345719+00	2024-09-29 15:49:19.345719+00	0
686	REGIONAL OFFICES		\N	287	\N	2024-09-29 15:49:19.347342+00	2024-09-29 15:49:19.347342+00	0
687	ADMINISTRATION ON CHILDREN, YOUTH AND FAMILIES		\N	288	\N	2024-09-29 15:49:19.348942+00	2024-09-29 15:49:19.348942+00	0
688	DEPUTY ASSISTANT SECRETARY FOR NATIVE AMERICAN AFFAIRS		\N	288	\N	2024-09-29 15:49:19.350552+00	2024-09-29 15:49:19.350552+00	0
689	DEPUTY ASSISTANT SECRETARY FOR PLANNING RESEARCH AND EVALUATION		\N	288	\N	2024-09-29 15:49:19.352166+00	2024-09-29 15:49:19.352166+00	0
690	OFFICE OF CHILD SUPPORT ENFORCEMENT		\N	288	\N	2024-09-29 15:49:19.353708+00	2024-09-29 15:49:19.353708+00	0
691	OFFICE OF COMMUNITY SERVICES		\N	288	\N	2024-09-29 15:49:19.355331+00	2024-09-29 15:49:19.355331+00	0
692	OFFICE OF EARLY CHILDHOOD DEVELOPMENT		\N	288	\N	2024-09-29 15:49:19.356954+00	2024-09-29 15:49:19.356954+00	0
693	OFFICE OF FAMILY ASSISTANCE		\N	288	\N	2024-09-29 15:49:19.358436+00	2024-09-29 15:49:19.358436+00	0
694	OFFICE OF HUMAN SERVICES EMERGENCY PREPAREDNESS AND RESPONSE		\N	288	\N	2024-09-29 15:49:19.360053+00	2024-09-29 15:49:19.360053+00	0
695	OFFICE OF REFUGEE RESETTLEMENT		\N	288	\N	2024-09-29 15:49:19.361633+00	2024-09-29 15:49:19.361633+00	0
696	ADMINISTRATION ON AGING		\N	289	\N	2024-09-29 15:49:19.363171+00	2024-09-29 15:49:19.363171+00	0
697	CENTER FOR FINANCING, ACCESS AND COST TRENDS		\N	290	\N	2024-09-29 15:49:19.364672+00	2024-09-29 15:49:19.364672+00	0
698	OFFICE OF COMMUNICATIONS		\N	290	\N	2024-09-29 15:49:19.366362+00	2024-09-29 15:49:19.366362+00	0
699	OFFICE OF THE DIRECTOR		\N	290	\N	2024-09-29 15:49:19.368068+00	2024-09-29 15:49:19.368068+00	0
700	AGENCY FOR TOXIC SUBSTANCES AND DISEASE REGISTRY		\N	291	\N	2024-09-29 15:49:19.369846+00	2024-09-29 15:49:19.369846+00	0
701	CENTER FOR PREPAREDNESS AND RESPONSE		\N	291	\N	2024-09-29 15:49:19.371393+00	2024-09-29 15:49:19.371393+00	0
702	NATIONAL CENTER FOR CHRONIC DISEASE PREVENTION AND HEALTH PROMOTION		\N	291	\N	2024-09-29 15:49:19.372965+00	2024-09-29 15:49:19.372965+00	0
703	NATIONAL CENTER FOR ENVIRONMENTAL HEALTH		\N	291	\N	2024-09-29 15:49:19.374559+00	2024-09-29 15:49:19.374559+00	0
704	NATIONAL CENTER FOR HEALTH STATISTICS		\N	291	\N	2024-09-29 15:49:19.376222+00	2024-09-29 15:49:19.376222+00	0
705	NATIONAL CENTER FOR HIV/AIDS, VIRAL HEPATITIS, STD, AND TB PREVENTION		\N	291	\N	2024-09-29 15:49:19.378032+00	2024-09-29 15:49:19.378032+00	0
706	NATIONAL CENTER FOR IMMUNIZATION AND RESPIRATORY DISEASES		\N	291	\N	2024-09-29 15:49:19.379889+00	2024-09-29 15:49:19.379889+00	0
707	NATIONAL CENTER FOR INJURY PREVENTION AND CONTROL		\N	291	\N	2024-09-29 15:49:19.381837+00	2024-09-29 15:49:19.381837+00	0
708	NATIONAL CENTER ON BIRTH DEFECTS AND DEVELOPMENTAL DISABILITIES		\N	291	\N	2024-09-29 15:49:19.383605+00	2024-09-29 15:49:19.383605+00	0
709	NATIONAL INSTITUTE FOR OCCUPATIONAL SAFETY AND HEALTH		\N	291	\N	2024-09-29 15:49:19.385203+00	2024-09-29 15:49:19.385203+00	0
710	OFFICE OF THE DIRECTOR		\N	291	\N	2024-09-29 15:49:19.386828+00	2024-09-29 15:49:19.386828+00	0
711	CENTER FOR CLINICAL STANDARDS AND QUALITY		\N	292	\N	2024-09-29 15:49:19.38847+00	2024-09-29 15:49:19.38847+00	0
712	CENTER FOR CONSUMER INFORMATION AND INSURANCE OVERSIGHT		\N	292	\N	2024-09-29 15:49:19.390301+00	2024-09-29 15:49:19.390301+00	0
713	CENTER FOR MEDICAID AND CHIP SERVICES		\N	292	\N	2024-09-29 15:49:19.39208+00	2024-09-29 15:49:19.39208+00	0
714	CENTER FOR MEDICARE		\N	292	\N	2024-09-29 15:49:19.39365+00	2024-09-29 15:49:19.39365+00	0
715	CENTER FOR MEDICARE AND MEDICAID INNOVATION		\N	292	\N	2024-09-29 15:49:19.396624+00	2024-09-29 15:49:19.396624+00	0
716	OFFICE OF ACQUISITION AND GRANTS MANAGEMENT		\N	292	\N	2024-09-29 15:49:19.398498+00	2024-09-29 15:49:19.398498+00	0
717	OFFICE OF COMMUNICATIONS		\N	292	\N	2024-09-29 15:49:19.400188+00	2024-09-29 15:49:19.400188+00	0
718	OFFICE OF FINANCIAL MANAGEMENT		\N	292	\N	2024-09-29 15:49:19.401832+00	2024-09-29 15:49:19.401832+00	0
719	OFFICE OF HUMAN CAPITAL		\N	292	\N	2024-09-29 15:49:19.403507+00	2024-09-29 15:49:19.403507+00	0
720	OFFICE OF INFORMATION TECHNOLOGY		\N	292	\N	2024-09-29 15:49:19.405161+00	2024-09-29 15:49:19.405161+00	0
721	CENTER FOR BIOLOGICS EVALUATION AND RESEARCH		\N	293	\N	2024-09-29 15:49:19.406772+00	2024-09-29 15:49:19.406772+00	0
722	CENTER FOR DRUG EVALUATION AND RESEARCH		\N	293	\N	2024-09-29 15:49:19.408439+00	2024-09-29 15:49:19.408439+00	0
723	CENTER FOR FOOD SAFETY AND APPLIED NUTRITION		\N	293	\N	2024-09-29 15:49:19.411252+00	2024-09-29 15:49:19.411252+00	0
724	CENTER FOR TOBACCO PRODUCTS		\N	293	\N	2024-09-29 15:49:19.413118+00	2024-09-29 15:49:19.413118+00	0
725	CENTER FOR VETERINARY MEDICINE		\N	293	\N	2024-09-29 15:49:19.414698+00	2024-09-29 15:49:19.414698+00	0
726	NATIONAL CENTER FOR TOXICOLOGICAL RESEARCH		\N	293	\N	2024-09-29 15:49:19.4163+00	2024-09-29 15:49:19.4163+00	0
727	OFFICE OF REGULATORY AFFAIRS		\N	293	\N	2024-09-29 15:49:19.417881+00	2024-09-29 15:49:19.417881+00	0
728	OFFICE OF THE COMMISSIONER		\N	293	\N	2024-09-29 15:49:19.419418+00	2024-09-29 15:49:19.419418+00	0
729	ADMINISTRATOR		\N	294	\N	2024-09-29 15:49:19.421046+00	2024-09-29 15:49:19.421046+00	0
730	BUREAU OF HEALTH WORKFORCE		\N	294	\N	2024-09-29 15:49:19.422879+00	2024-09-29 15:49:19.422879+00	0
731	BUREAU OF PRIMARY HEALTH CARE		\N	294	\N	2024-09-29 15:49:19.424577+00	2024-09-29 15:49:19.424577+00	0
732	HEALTHCARE SYSTEMS BUREAU		\N	294	\N	2024-09-29 15:49:19.426087+00	2024-09-29 15:49:19.426087+00	0
733	HIV/AIDS BUREAU		\N	294	\N	2024-09-29 15:49:19.432575+00	2024-09-29 15:49:19.432575+00	0
734	MATERNAL AND CHILD HEALTH BUREAU		\N	294	\N	2024-09-29 15:49:19.434778+00	2024-09-29 15:49:19.434778+00	0
735	OFFICE OF OPERATIONS		\N	294	\N	2024-09-29 15:49:19.437306+00	2024-09-29 15:49:19.437306+00	0
736	ALBUQUERQUE AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.439083+00	2024-09-29 15:49:19.439083+00	0
737	BEMIDJI AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.440785+00	2024-09-29 15:49:19.440785+00	0
738	BILLINGS AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.442577+00	2024-09-29 15:49:19.442577+00	0
739	ENVIRONMENTAL HEALTH AND ENGINEERING		\N	295	\N	2024-09-29 15:49:19.444267+00	2024-09-29 15:49:19.444267+00	0
740	GREAT PLAINS AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.446136+00	2024-09-29 15:49:19.446136+00	0
741	MANAGEMENT SERVICES		\N	295	\N	2024-09-29 15:49:19.447906+00	2024-09-29 15:49:19.447906+00	0
742	NASHVILLE AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.449656+00	2024-09-29 15:49:19.449656+00	0
743	NAVAJO AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.451812+00	2024-09-29 15:49:19.451812+00	0
744	OKLAHOMA CITY AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.453593+00	2024-09-29 15:49:19.453593+00	0
745	PHOENIX AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.455637+00	2024-09-29 15:49:19.455637+00	0
746	PORTLAND AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.457301+00	2024-09-29 15:49:19.457301+00	0
747	RESOURCE ACCESS AND PARTNERSHIPS		\N	295	\N	2024-09-29 15:49:19.459325+00	2024-09-29 15:49:19.459325+00	0
748	TUCSON AREA OFFICE		\N	295	\N	2024-09-29 15:49:19.461329+00	2024-09-29 15:49:19.461329+00	0
749	CENTER FOR INFORMATION TECHNOLOGY		\N	296	\N	2024-09-29 15:49:19.463286+00	2024-09-29 15:49:19.463286+00	0
750	CENTER FOR SCIENTIFIC REVIEW		\N	296	\N	2024-09-29 15:49:19.465086+00	2024-09-29 15:49:19.465086+00	0
751	CLINICAL CENTER		\N	296	\N	2024-09-29 15:49:19.467781+00	2024-09-29 15:49:19.467781+00	0
752	JOHN E FOGARTY INTERNATIONAL CENTER FOR ADVANCED STUDY IN THE HEALTH SCIENCES		\N	296	\N	2024-09-29 15:49:19.469679+00	2024-09-29 15:49:19.469679+00	0
753	NATIONAL CANCER INSTITUTE		\N	296	\N	2024-09-29 15:49:19.471449+00	2024-09-29 15:49:19.471449+00	0
754	NATIONAL CENTER FOR ADVANCING TRANSLATIONAL SCIENCES		\N	296	\N	2024-09-29 15:49:19.473153+00	2024-09-29 15:49:19.473153+00	0
755	NATIONAL CENTER FOR COMPLEMENTARY AND INTEGRATIVE HEALTH		\N	296	\N	2024-09-29 15:49:19.47491+00	2024-09-29 15:49:19.47491+00	0
756	NATIONAL EYE INSTITUTE		\N	296	\N	2024-09-29 15:49:19.47682+00	2024-09-29 15:49:19.47682+00	0
757	NATIONAL HEART, LUNG AND BLOOD INSTITUTE		\N	296	\N	2024-09-29 15:49:19.479137+00	2024-09-29 15:49:19.479137+00	0
758	NATIONAL HUMAN GENOME RESEARCH INSTITUTE		\N	296	\N	2024-09-29 15:49:19.481037+00	2024-09-29 15:49:19.481037+00	0
759	NATIONAL INSTITUTE OF ALLERGY AND INFECTIOUS DISEASES		\N	296	\N	2024-09-29 15:49:19.48286+00	2024-09-29 15:49:19.48286+00	0
760	NATIONAL INSTITUTE OF ARTHRITIS AND MUSCULOSKELETAL AND SKIN DISEASES		\N	296	\N	2024-09-29 15:49:19.484748+00	2024-09-29 15:49:19.484748+00	0
761	NATIONAL INSTITUTE OF BIOMEDICAL IMAGING AND BIOENGINEERING		\N	296	\N	2024-09-29 15:49:19.486475+00	2024-09-29 15:49:19.486475+00	0
762	NATIONAL INSTITUTE OF CHILD HEALTH AND HUMAN DEVELOPMENT		\N	296	\N	2024-09-29 15:49:19.488152+00	2024-09-29 15:49:19.488152+00	0
763	NATIONAL INSTITUTE OF DENTAL AND CRANIOFACIAL RESEARCH		\N	296	\N	2024-09-29 15:49:19.489699+00	2024-09-29 15:49:19.489699+00	0
764	NATIONAL INSTITUTE OF DIABETES AND DIGESTIVE AND KIDNEY DISEASES		\N	296	\N	2024-09-29 15:49:19.491448+00	2024-09-29 15:49:19.491448+00	0
765	NATIONAL INSTITUTE OF ENVIRONMENTAL HEALTH SCIENCES		\N	296	\N	2024-09-29 15:49:19.493438+00	2024-09-29 15:49:19.493438+00	0
766	NATIONAL INSTITUTE OF GENERAL MEDICAL SCIENCES		\N	296	\N	2024-09-29 15:49:19.494913+00	2024-09-29 15:49:19.494913+00	0
767	NATIONAL INSTITUTE OF MENTAL HEALTH		\N	296	\N	2024-09-29 15:49:19.496659+00	2024-09-29 15:49:19.496659+00	0
768	NATIONAL INSTITUTE OF NEUROLOGICAL DISORDERS AND STROKE		\N	296	\N	2024-09-29 15:49:19.498236+00	2024-09-29 15:49:19.498236+00	0
769	NATIONAL INSTITUTE OF NURSING RESEARCH		\N	296	\N	2024-09-29 15:49:19.49987+00	2024-09-29 15:49:19.49987+00	0
770	NATIONAL INSTITUTE ON AGING		\N	296	\N	2024-09-29 15:49:19.501589+00	2024-09-29 15:49:19.501589+00	0
771	NATIONAL INSTITUTE ON ALCOHOL ABUSE AND ALCOHOLISM		\N	296	\N	2024-09-29 15:49:19.503536+00	2024-09-29 15:49:19.503536+00	0
772	NATIONAL INSTITUTE ON DEAFNESS AND OTHER COMMUNICATION DISORDERS		\N	296	\N	2024-09-29 15:49:19.505775+00	2024-09-29 15:49:19.505775+00	0
773	NATIONAL INSTITUTE ON DRUG ABUSE		\N	296	\N	2024-09-29 15:49:19.50726+00	2024-09-29 15:49:19.50726+00	0
774	NATIONAL INSTITUTE ON MINORITY HEALTH AND HEALTH DISPARITIES		\N	296	\N	2024-09-29 15:49:19.512864+00	2024-09-29 15:49:19.512864+00	0
775	NATIONAL LIBRARY OF MEDICINE		\N	296	\N	2024-09-29 15:49:19.51472+00	2024-09-29 15:49:19.51472+00	0
776	OFFICE OF THE DIRECTOR		\N	296	\N	2024-09-29 15:49:19.516673+00	2024-09-29 15:49:19.516673+00	0
777	ASST SECRETARY FOR ADMINISTRATION		\N	298	\N	2024-09-29 15:49:19.518456+00	2024-09-29 15:49:19.518456+00	0
778	ASST SECRETARY FOR FINANCIAL RESOURCES		\N	298	\N	2024-09-29 15:49:19.520214+00	2024-09-29 15:49:19.520214+00	0
779	ASST SECRETARY FOR HEALTH		\N	298	\N	2024-09-29 15:49:19.521792+00	2024-09-29 15:49:19.521792+00	0
780	ASST SECRETARY FOR PLANNING AND EVALUATION		\N	298	\N	2024-09-29 15:49:19.523366+00	2024-09-29 15:49:19.523366+00	0
781	ASST SECRETARY FOR PREPAREDNESS AND RESPONSE		\N	298	\N	2024-09-29 15:49:19.525022+00	2024-09-29 15:49:19.525022+00	0
782	ASST SECRETARY FOR PUBLIC AFFAIRS		\N	298	\N	2024-09-29 15:49:19.526704+00	2024-09-29 15:49:19.526704+00	0
783	DEPARTMENTAL APPEALS BOARD		\N	298	\N	2024-09-29 15:49:19.5284+00	2024-09-29 15:49:19.5284+00	0
784	GENERAL COUNSEL		\N	298	\N	2024-09-29 15:49:19.535993+00	2024-09-29 15:49:19.535993+00	0
785	INSPECTOR GENERAL		\N	298	\N	2024-09-29 15:49:19.540163+00	2024-09-29 15:49:19.540163+00	0
786	MEDICARE HEARINGS AND APPEALS		\N	298	\N	2024-09-29 15:49:19.544349+00	2024-09-29 15:49:19.544349+00	0
787	OFFICE OF THE NATIONAL COORDINATOR FOR HEALTH INFORMATION TECHNOLOGY		\N	298	\N	2024-09-29 15:49:19.546431+00	2024-09-29 15:49:19.546431+00	0
788	ADMINISTRATIVE OPERATIONS		\N	299	\N	2024-09-29 15:49:19.551685+00	2024-09-29 15:49:19.551685+00	0
789	FINANCIAL MANAGEMENT AND PROCUREMENT		\N	299	\N	2024-09-29 15:49:19.553806+00	2024-09-29 15:49:19.553806+00	0
790	OCCUPATIONAL HEALTH		\N	299	\N	2024-09-29 15:49:19.555674+00	2024-09-29 15:49:19.555674+00	0
791	CENTER FOR MENTAL HEALTH SERVICES		\N	300	\N	2024-09-29 15:49:19.557585+00	2024-09-29 15:49:19.557585+00	0
792	CENTER FOR SUBSTANCE ABUSE PREVENTION		\N	300	\N	2024-09-29 15:49:19.559304+00	2024-09-29 15:49:19.559304+00	0
793	CENTER FOR SUBSTANCE ABUSE TREATMENT		\N	300	\N	2024-09-29 15:49:19.561112+00	2024-09-29 15:49:19.561112+00	0
794	OFFICE OF HEALTH AFFAIRS		\N	301	\N	2024-09-29 15:49:19.562739+00	2024-09-29 15:49:19.562739+00	0
795	OFFICE OF OPERATIONS SUPPORT		\N	301	\N	2024-09-29 15:49:19.564411+00	2024-09-29 15:49:19.564411+00	0
796	OFFICE OF SYSTEMS DEVELOPMENT AND ACQUISITION		\N	301	\N	2024-09-29 15:49:19.566103+00	2024-09-29 15:49:19.566103+00	0
797	OFFICE OF SYSTEMS ENGINEERING		\N	301	\N	2024-09-29 15:49:19.567838+00	2024-09-29 15:49:19.567838+00	0
798	OFFICE OF THE DIRECTOR		\N	301	\N	2024-09-29 15:49:19.569635+00	2024-09-29 15:49:19.569635+00	0
799	TRANSFORMATION & APPLIED RESEARCH		\N	301	\N	2024-09-29 15:49:19.571663+00	2024-09-29 15:49:19.571663+00	0
800	FINANCE AND CHIEF FINANCIAL OFFICER		\N	302	\N	2024-09-29 15:49:19.573316+00	2024-09-29 15:49:19.573316+00	0
801	INFORMATION AND INCIDENT COORDINATION CENTER		\N	302	\N	2024-09-29 15:49:19.574974+00	2024-09-29 15:49:19.574974+00	0
802	LABORATORIES AND SCIENTIFIC SERVICES DIRECTORATE		\N	302	\N	2024-09-29 15:49:19.5766+00	2024-09-29 15:49:19.5766+00	0
803	OFFICE OF ACQUISITION		\N	302	\N	2024-09-29 15:49:19.578171+00	2024-09-29 15:49:19.578171+00	0
804	OFFICE OF AIR AND MARINE OPERATIONS		\N	302	\N	2024-09-29 15:49:19.579683+00	2024-09-29 15:49:19.579683+00	0
805	OFFICE OF FACILITIES AND ASSET MANAGEMENT		\N	302	\N	2024-09-29 15:49:19.581425+00	2024-09-29 15:49:19.581425+00	0
806	OFFICE OF FIELD OPERATIONS		\N	302	\N	2024-09-29 15:49:19.583095+00	2024-09-29 15:49:19.583095+00	0
807	OFFICE OF HUMAN RESOURCES MANAGEMENT		\N	302	\N	2024-09-29 15:49:19.584765+00	2024-09-29 15:49:19.584765+00	0
808	OFFICE OF INFORMATION TECHNOLOGY		\N	302	\N	2024-09-29 15:49:19.586279+00	2024-09-29 15:49:19.586279+00	0
809	OFFICE OF INTELLIGENCE		\N	302	\N	2024-09-29 15:49:19.587898+00	2024-09-29 15:49:19.587898+00	0
810	OFFICE OF INTERNAL AFFAIRS		\N	302	\N	2024-09-29 15:49:19.589505+00	2024-09-29 15:49:19.589505+00	0
811	OFFICE OF PUBLIC AFFAIRS		\N	302	\N	2024-09-29 15:49:19.591223+00	2024-09-29 15:49:19.591223+00	0
812	OFFICE OF TRADE		\N	302	\N	2024-09-29 15:49:19.593079+00	2024-09-29 15:49:19.593079+00	0
813	OFFICE OF TRADE RELATIONS		\N	302	\N	2024-09-29 15:49:19.594726+00	2024-09-29 15:49:19.594726+00	0
814	OFFICE OF TRAINING AND DEVELOPMENT		\N	302	\N	2024-09-29 15:49:19.596542+00	2024-09-29 15:49:19.596542+00	0
815	US BORDER PATROL		\N	302	\N	2024-09-29 15:49:19.598155+00	2024-09-29 15:49:19.598155+00	0
816	CYBERSECURITY DIVISION		\N	303	\N	2024-09-29 15:49:19.600913+00	2024-09-29 15:49:19.600913+00	0
817	EMERGENCY COMMUNICATIONS DIVISION		\N	303	\N	2024-09-29 15:49:19.602502+00	2024-09-29 15:49:19.602502+00	0
818	INFRASTRUCTURE SECURITY DIVISION		\N	303	\N	2024-09-29 15:49:19.60402+00	2024-09-29 15:49:19.60402+00	0
819	INTEGRATED OPERATIONS DIVISION		\N	303	\N	2024-09-29 15:49:19.605619+00	2024-09-29 15:49:19.605619+00	0
820	NATIONAL RISK MANAGEMENT CENTER		\N	303	\N	2024-09-29 15:49:19.607149+00	2024-09-29 15:49:19.607149+00	0
821	STAKEHOLDER ENGAGEMENT DIVISION		\N	303	\N	2024-09-29 15:49:19.609079+00	2024-09-29 15:49:19.609079+00	0
822	MISSION SUPPORT BUREAU		\N	304	\N	2024-09-29 15:49:19.610711+00	2024-09-29 15:49:19.610711+00	0
823	OFFICE OF RESPONSE & RECOVERY		\N	304	\N	2024-09-29 15:49:19.612244+00	2024-09-29 15:49:19.612244+00	0
824	OFFICE OF THE ADMINISTRATOR		\N	304	\N	2024-09-29 15:49:19.613941+00	2024-09-29 15:49:19.613941+00	0
825	REGIONAL OPERATIONS		\N	304	\N	2024-09-29 15:49:19.61553+00	2024-09-29 15:49:19.61553+00	0
826	RESILIENCE		\N	304	\N	2024-09-29 15:49:19.624713+00	2024-09-29 15:49:19.624713+00	0
827	US FIRE ADMINISTRATION		\N	304	\N	2024-09-29 15:49:19.626841+00	2024-09-29 15:49:19.626841+00	0
828	MISSION AND READINESS SUPPORT DIRECTORATE		\N	305	\N	2024-09-29 15:49:19.630309+00	2024-09-29 15:49:19.630309+00	0
829	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	305	\N	2024-09-29 15:49:19.63218+00	2024-09-29 15:49:19.63218+00	0
830	TRAINING MANAGEMENT OPERATIONS DIRECTORATE		\N	305	\N	2024-09-29 15:49:19.633992+00	2024-09-29 15:49:19.633992+00	0
831	ENFORCEMENT AND REMOVAL OPERATIONS DIRECTORATE		\N	306	\N	2024-09-29 15:49:19.635753+00	2024-09-29 15:49:19.635753+00	0
832	HOMELAND SECURITY INVESTIGATIONS		\N	306	\N	2024-09-29 15:49:19.637638+00	2024-09-29 15:49:19.637638+00	0
833	MANAGEMENT AND ADMINISTRATION DIRECTORATE		\N	306	\N	2024-09-29 15:49:19.639402+00	2024-09-29 15:49:19.639402+00	0
834	OFFICE OF FIREARMS AND TACTICAL PROGRAMS		\N	306	\N	2024-09-29 15:49:19.641251+00	2024-09-29 15:49:19.641251+00	0
835	OFFICE OF INTELLIGENCE		\N	306	\N	2024-09-29 15:49:19.643065+00	2024-09-29 15:49:19.643065+00	0
836	OFFICE OF PROFESSIONAL RESPONSIBILITY		\N	306	\N	2024-09-29 15:49:19.644861+00	2024-09-29 15:49:19.644861+00	0
837	OFFICE OF PUBLIC AFFAIRS		\N	306	\N	2024-09-29 15:49:19.647741+00	2024-09-29 15:49:19.647741+00	0
838	OFFICE OF THE PRINICPAL LEGAL ADVISOR		\N	306	\N	2024-09-29 15:49:19.649489+00	2024-09-29 15:49:19.649489+00	0
839	FEDERAL PROTECTIVE SERVICE		\N	307	\N	2024-09-29 15:49:19.651229+00	2024-09-29 15:49:19.651229+00	0
840	OFFICE OF BIOMETRIC IDENTITY MANAGEMENT		\N	307	\N	2024-09-29 15:49:19.653132+00	2024-09-29 15:49:19.653132+00	0
841	OFFICE OF THE CHIEF ADMINISTRATIVE SERVICES OFFICER		\N	307	\N	2024-09-29 15:49:19.654765+00	2024-09-29 15:49:19.654765+00	0
842	OFFICE OF THE CHIEF FINANCIAL OFFICER		\N	307	\N	2024-09-29 15:49:19.656463+00	2024-09-29 15:49:19.656463+00	0
843	OFFICE OF THE CHIEF HUMAN CAPITAL OFFICER		\N	307	\N	2024-09-29 15:49:19.658205+00	2024-09-29 15:49:19.658205+00	0
844	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	307	\N	2024-09-29 15:49:19.659879+00	2024-09-29 15:49:19.659879+00	0
845	OFFICE OF THE CHIEF PROCUREMENT OFFICER		\N	307	\N	2024-09-29 15:49:19.661555+00	2024-09-29 15:49:19.661555+00	0
846	OFFICE OF THE CHIEF READINESS SUPPORT OFFICER		\N	307	\N	2024-09-29 15:49:19.663197+00	2024-09-29 15:49:19.663197+00	0
847	OFFICE OF THE CHIEF SECURITY OFFICER		\N	307	\N	2024-09-29 15:49:19.665065+00	2024-09-29 15:49:19.665065+00	0
848	PROGRAM ACCOUNTABILITY AND RISK MANAGEMENT		\N	307	\N	2024-09-29 15:49:19.666707+00	2024-09-29 15:49:19.666707+00	0
849	CURRENT OPERATIONS DIVISION		\N	309	\N	2024-09-29 15:49:19.668732+00	2024-09-29 15:49:19.668732+00	0
850	OFFICE OF CIVIL RIGHTS AND CIVIL LIBERTIES		\N	311	\N	2024-09-29 15:49:19.670555+00	2024-09-29 15:49:19.670555+00	0
851	OFFICE OF GENERAL COUSEL		\N	311	\N	2024-09-29 15:49:19.672441+00	2024-09-29 15:49:19.672441+00	0
852	OFFICE OF INSPECTOR GENERAL		\N	311	\N	2024-09-29 15:49:19.67538+00	2024-09-29 15:49:19.67538+00	0
853	OFFICE OF LEGISLATIVE AFFAIRS		\N	311	\N	2024-09-29 15:49:19.677539+00	2024-09-29 15:49:19.677539+00	0
854	OFFICE OF PARTNERSHIP AND ENGAGEMENT		\N	311	\N	2024-09-29 15:49:19.679325+00	2024-09-29 15:49:19.679325+00	0
855	OFFICE OF PUBLIC AFFAIRS		\N	311	\N	2024-09-29 15:49:19.681249+00	2024-09-29 15:49:19.681249+00	0
856	OFFICE OF THE IMMIGRATION DETENTION OMBUDSMAN		\N	311	\N	2024-09-29 15:49:19.683071+00	2024-09-29 15:49:19.683071+00	0
857	PRIVACY OFFICE		\N	311	\N	2024-09-29 15:49:19.684805+00	2024-09-29 15:49:19.684805+00	0
858	OFFICE OF ENTERPRISE SERVICES		\N	312	\N	2024-09-29 15:49:19.686527+00	2024-09-29 15:49:19.686527+00	0
859	OFFICE OF INNOVATION & COLLABORATION		\N	312	\N	2024-09-29 15:49:19.688199+00	2024-09-29 15:49:19.688199+00	0
860	OFFICE OF MISSION & CAPABILITY SUPPORT		\N	312	\N	2024-09-29 15:49:19.689944+00	2024-09-29 15:49:19.689944+00	0
861	OFFICE OF SCIENCE & ENGINEERING		\N	312	\N	2024-09-29 15:49:19.691649+00	2024-09-29 15:49:19.691649+00	0
862	INTELLIGENCE AND ANALYSIS		\N	313	\N	2024-09-29 15:49:19.693528+00	2024-09-29 15:49:19.693528+00	0
863	OFFICE OF ACQUISITION PROGRAM MANAGEMENT		\N	313	\N	2024-09-29 15:49:19.695311+00	2024-09-29 15:49:19.695311+00	0
864	OFFICE OF FINANCE AND ADMINISTRATION		\N	313	\N	2024-09-29 15:49:19.697186+00	2024-09-29 15:49:19.697186+00	0
865	OFFICE OF GLOBAL STRATEGIES		\N	313	\N	2024-09-29 15:49:19.698904+00	2024-09-29 15:49:19.698904+00	0
866	OFFICE OF HUMAN CAPITAL		\N	313	\N	2024-09-29 15:49:19.700527+00	2024-09-29 15:49:19.700527+00	0
867	OFFICE OF INFORMATION TECHNOLOGY		\N	313	\N	2024-09-29 15:49:19.702509+00	2024-09-29 15:49:19.702509+00	0
868	OFFICE OF INSPECTION		\N	313	\N	2024-09-29 15:49:19.704971+00	2024-09-29 15:49:19.704971+00	0
869	OFFICE OF LAW ENFORCEMENT AND FEDERAL AIR MARSHAL SERVICE		\N	313	\N	2024-09-29 15:49:19.706589+00	2024-09-29 15:49:19.706589+00	0
870	OFFICE OF REQUIREMENTS AND CAPABILITIES ANALYSIS		\N	313	\N	2024-09-29 15:49:19.708309+00	2024-09-29 15:49:19.708309+00	0
871	OFFICE OF SECURITY OPERATIONS		\N	313	\N	2024-09-29 15:49:19.709959+00	2024-09-29 15:49:19.709959+00	0
872	OFFICE OF STRATEGIC COMMUNICATIONS AND PUBLIC AFFAIRS		\N	313	\N	2024-09-29 15:49:19.712556+00	2024-09-29 15:49:19.712556+00	0
873	OFFICE OF TRAINING AND DEVELOPMENT		\N	313	\N	2024-09-29 15:49:19.714462+00	2024-09-29 15:49:19.714462+00	0
874	SECURITY AND ADMINISTRATIVE SERVICES		\N	313	\N	2024-09-29 15:49:19.716211+00	2024-09-29 15:49:19.716211+00	0
875	ADMINISTRATIVE APPEALS OFFICE		\N	314	\N	2024-09-29 15:49:19.717846+00	2024-09-29 15:49:19.717846+00	0
876	CUSTOMER SERVICE AND PUBLIC ENGAGEMENT DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.719492+00	2024-09-29 15:49:19.719492+00	0
877	ENTERPRISE SERVICES DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.72108+00	2024-09-29 15:49:19.72108+00	0
878	FIELD OPERATIONS DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.722702+00	2024-09-29 15:49:19.722702+00	0
879	FRAUD DETECTION AND NATIONAL SECURITY DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.724563+00	2024-09-29 15:49:19.724563+00	0
880	IMMIGRATION RECORDS AND IDENTITY SERVICES DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.726257+00	2024-09-29 15:49:19.726257+00	0
881	MANAGEMENT DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.727807+00	2024-09-29 15:49:19.727807+00	0
882	OFFICE OF EQUAL OPPORTUNITY AND INCLUSION		\N	314	\N	2024-09-29 15:49:19.729719+00	2024-09-29 15:49:19.729719+00	0
883	OFFICE OF EXTERNAL AFFAIRS		\N	314	\N	2024-09-29 15:49:19.731385+00	2024-09-29 15:49:19.731385+00	0
884	OFFICE OF PERFORMANCE AND QUALITY		\N	314	\N	2024-09-29 15:49:19.733422+00	2024-09-29 15:49:19.733422+00	0
885	OFFICE OF POLICY AND STRATEGY		\N	314	\N	2024-09-29 15:49:19.735355+00	2024-09-29 15:49:19.735355+00	0
886	REFUGEE ASYLUM AND INTERNATIONAL OPERATIONS DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.737213+00	2024-09-29 15:49:19.737213+00	0
887	SERVICE CENTER OPERATIONS DIRECTORATE		\N	314	\N	2024-09-29 15:49:19.739271+00	2024-09-29 15:49:19.739271+00	0
888	ASST COMMANDANT FOR RESOURCES/CHIEF FINANCIAL OFFICER		\N	315	\N	2024-09-29 15:49:19.74112+00	2024-09-29 15:49:19.74112+00	0
889	ATLANTIC AREA		\N	315	\N	2024-09-29 15:49:19.742948+00	2024-09-29 15:49:19.742948+00	0
890	DEPUTY COMMANDANT OF MISSION SUPPORT		\N	315	\N	2024-09-29 15:49:19.744836+00	2024-09-29 15:49:19.744836+00	0
891	DEPUTY COMMANDANT OF OPERATIONS		\N	315	\N	2024-09-29 15:49:19.746663+00	2024-09-29 15:49:19.746663+00	0
892	GOVERNMENTAL AND PUBLIC AFFAIRS DIRECTORATE		\N	315	\N	2024-09-29 15:49:19.748436+00	2024-09-29 15:49:19.748436+00	0
893	HEADQUARTERS		\N	315	\N	2024-09-29 15:49:19.750048+00	2024-09-29 15:49:19.750048+00	0
894	PACIFIC AREA		\N	315	\N	2024-09-29 15:49:19.751756+00	2024-09-29 15:49:19.751756+00	0
895	OFFICE OF ADMINISTRATION		\N	316	\N	2024-09-29 15:49:19.753256+00	2024-09-29 15:49:19.753256+00	0
896	OFFICE OF HUMAN RESOURCES		\N	316	\N	2024-09-29 15:49:19.754799+00	2024-09-29 15:49:19.754799+00	0
897	OFFICE OF INVESTIGATIONS		\N	316	\N	2024-09-29 15:49:19.756673+00	2024-09-29 15:49:19.756673+00	0
898	OFFICE OF PROTECTIVE OPERATIONS		\N	316	\N	2024-09-29 15:49:19.758252+00	2024-09-29 15:49:19.758252+00	0
899	OFFICE OF TECHNICAL DEVELOPMENT & MISSION SUPPORT		\N	316	\N	2024-09-29 15:49:19.759856+00	2024-09-29 15:49:19.759856+00	0
900	OFFICE OF THE CHIEF FINANCIAL OFFICER		\N	316	\N	2024-09-29 15:49:19.761627+00	2024-09-29 15:49:19.761627+00	0
901	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	316	\N	2024-09-29 15:49:19.763413+00	2024-09-29 15:49:19.763413+00	0
902	OFFICE OF TRAINING		\N	316	\N	2024-09-29 15:49:19.765091+00	2024-09-29 15:49:19.765091+00	0
903	UNIFORMED DIVISION		\N	316	\N	2024-09-29 15:49:19.766816+00	2024-09-29 15:49:19.766816+00	0
904	FINANCIAL MANAGEMENT		\N	318	\N	2024-09-29 15:49:19.768449+00	2024-09-29 15:49:19.768449+00	0
905	INFRASTRUCTURE AND OPERATIONS OFFICE		\N	319	\N	2024-09-29 15:49:19.770173+00	2024-09-29 15:49:19.770173+00	0
906	FIELD OPERATIONS		\N	320	\N	2024-09-29 15:49:19.771973+00	2024-09-29 15:49:19.771973+00	0
907	POLICY SYSTEMS AND OVERSIGHT		\N	320	\N	2024-09-29 15:49:19.77362+00	2024-09-29 15:49:19.77362+00	0
910	ADMINISTRATIVE SERVICES		\N	324	\N	2024-09-29 15:49:19.778672+00	2024-09-29 15:49:19.778672+00	0
911	AFFORDABLE HOUSING PRESERVATION		\N	325	\N	2024-09-29 15:49:19.780477+00	2024-09-29 15:49:19.780477+00	0
912	MULTIFAMILY HOUSING		\N	325	\N	2024-09-29 15:49:19.782166+00	2024-09-29 15:49:19.782166+00	0
913	REGULATORY AFFAIRS AND MANUFACTURED HOUSING		\N	325	\N	2024-09-29 15:49:19.784161+00	2024-09-29 15:49:19.784161+00	0
914	SINGLE FAMILY HOUSING		\N	325	\N	2024-09-29 15:49:19.785727+00	2024-09-29 15:49:19.785727+00	0
915	FIELD OPERATIONS		\N	334	\N	2024-09-29 15:49:19.78759+00	2024-09-29 15:49:19.78759+00	0
916	PUBLIC HOUSING INVESTMENTS		\N	334	\N	2024-09-29 15:49:19.789271+00	2024-09-29 15:49:19.789271+00	0
917	REAL ESTATE ASSESSMENT CENTER		\N	334	\N	2024-09-29 15:49:19.790969+00	2024-09-29 15:49:19.790969+00	0
918	BUREAU OF TRUST FUNDS ADMINISTRATION		\N	342	\N	2024-09-29 15:49:19.792772+00	2024-09-29 15:49:19.792772+00	0
919	NATIONAL OPERATIONS CENTER		\N	343	\N	2024-09-29 15:49:19.794504+00	2024-09-29 15:49:19.794504+00	0
920	OFFICE OF LAW ENFORCEMENT		\N	347	\N	2024-09-29 15:49:19.796382+00	2024-09-29 15:49:19.796382+00	0
921	ACQUISITION SERVICES DIRECTORATE		\N	349	\N	2024-09-29 15:49:19.798159+00	2024-09-29 15:49:19.798159+00	0
922	FINANCIAL MANAGEMENT DIRECTORATE		\N	349	\N	2024-09-29 15:49:19.802176+00	2024-09-29 15:49:19.802176+00	0
923	HUMAN RESOURCES DIRECTORATE		\N	349	\N	2024-09-29 15:49:19.803947+00	2024-09-29 15:49:19.803947+00	0
924	AVIATION SERVICES		\N	355	\N	2024-09-29 15:49:19.805664+00	2024-09-29 15:49:19.805664+00	0
925	EMERGENCY MANAGEMENT		\N	355	\N	2024-09-29 15:49:19.808138+00	2024-09-29 15:49:19.808138+00	0
926	ENVIRONMENTAL POLICY AND COMPLIANCE		\N	355	\N	2024-09-29 15:49:19.810044+00	2024-09-29 15:49:19.810044+00	0
927	FINANCIAL MANAGEMENT		\N	355	\N	2024-09-29 15:49:19.812067+00	2024-09-29 15:49:19.812067+00	0
928	WILDLAND FIRE		\N	355	\N	2024-09-29 15:49:19.813873+00	2024-09-29 15:49:19.813873+00	0
929	OFFICE OF POLICY, MANAGEMENT AND BUDGET/CHIEF FINANCIAL OFFICER		\N	359	\N	2024-09-29 15:49:19.815863+00	2024-09-29 15:49:19.815863+00	0
930	BOARD ON GEOGRAPHIC NAMES		\N	361	\N	2024-09-29 15:49:19.818092+00	2024-09-29 15:49:19.818092+00	0
931	OFFICE OF THE DIRECTOR		\N	361	\N	2024-09-29 15:49:19.819746+00	2024-09-29 15:49:19.819746+00	0
932	ANTITRUST DIVISION		\N	362	\N	2024-09-29 15:49:19.821551+00	2024-09-29 15:49:19.821551+00	0
933	CIVIL DIVISION		\N	362	\N	2024-09-29 15:49:19.823154+00	2024-09-29 15:49:19.823154+00	0
934	COMMUNITY ORIENTED POLICING SERVICES		\N	362	\N	2024-09-29 15:49:19.824771+00	2024-09-29 15:49:19.824771+00	0
935	ENVIRONMENT AND NATURAL RESOURCES DIVISION		\N	362	\N	2024-09-29 15:49:19.82641+00	2024-09-29 15:49:19.82641+00	0
936	JUSTICE PROGRAMS		\N	362	\N	2024-09-29 15:49:19.828109+00	2024-09-29 15:49:19.828109+00	0
937	OFFICE OF PROFESSIONAL RESPONSIBILITY AND SECURITY OPERATIONS		\N	364	\N	2024-09-29 15:49:19.829747+00	2024-09-29 15:49:19.829747+00	0
938	ADMINISTRATION		\N	367	\N	2024-09-29 15:49:19.831231+00	2024-09-29 15:49:19.831231+00	0
939	ASSET FORFEITURE AND MONEY LAUNDERING SECTION		\N	367	\N	2024-09-29 15:49:19.832962+00	2024-09-29 15:49:19.832962+00	0
940	FRAUD SECTION		\N	367	\N	2024-09-29 15:49:19.834461+00	2024-09-29 15:49:19.834461+00	0
941	INTERNATIONAL AFFAIRS		\N	367	\N	2024-09-29 15:49:19.836254+00	2024-09-29 15:49:19.836254+00	0
942	INTERNATIONAL CRIMINAL INVESTIGATIVE TRAINING ASSISTANCE PROGRAM		\N	367	\N	2024-09-29 15:49:19.838181+00	2024-09-29 15:49:19.838181+00	0
943	OFFICE OF OVERSEAS PROSECUTORIAL DEVELOPMENT, ASSISTANCE AND TRAINING		\N	367	\N	2024-09-29 15:49:19.842767+00	2024-09-29 15:49:19.842767+00	0
944	FINANCIAL MANAGEMENT DIVISION		\N	368	\N	2024-09-29 15:49:19.845029+00	2024-09-29 15:49:19.845029+00	0
945	HUMAN RESOURCES DIVISION		\N	368	\N	2024-09-29 15:49:19.851451+00	2024-09-29 15:49:19.851451+00	0
947	INTELLIGENCE DIVISION		\N	368	\N	2024-09-29 15:49:19.858879+00	2024-09-29 15:49:19.858879+00	0
948	OPERATIONAL SUPPORT DIVISION		\N	368	\N	2024-09-29 15:49:19.860996+00	2024-09-29 15:49:19.860996+00	0
949	OPERATIONS DIVISION		\N	368	\N	2024-09-29 15:49:19.862525+00	2024-09-29 15:49:19.862525+00	0
950	CRIMINAL, CYBER, RESPONSE, AND SERVICES BRANCH		\N	371	\N	2024-09-29 15:49:19.864197+00	2024-09-29 15:49:19.864197+00	0
951	HUMAN RESOURCES BRANCH		\N	371	\N	2024-09-29 15:49:19.865776+00	2024-09-29 15:49:19.865776+00	0
952	INFORMATION TECHNOLOGY BRANCH		\N	371	\N	2024-09-29 15:49:19.867501+00	2024-09-29 15:49:19.867501+00	0
953	NATIONAL SECURITY BRANCH		\N	371	\N	2024-09-29 15:49:19.86911+00	2024-09-29 15:49:19.86911+00	0
954	OFFICE OF THE DIRECTOR		\N	371	\N	2024-09-29 15:49:19.870774+00	2024-09-29 15:49:19.870774+00	0
955	SCIENCE AND TECHNOLOGY BRANCH		\N	371	\N	2024-09-29 15:49:19.872543+00	2024-09-29 15:49:19.872543+00	0
956	OFFICE OF HUMAN RESOURCES AND ADMINISTRATION		\N	375	\N	2024-09-29 15:49:19.874284+00	2024-09-29 15:49:19.874284+00	0
957	OFFICE OF INFORMATION RESOURCE MANAGEMENT		\N	375	\N	2024-09-29 15:49:19.876116+00	2024-09-29 15:49:19.876116+00	0
958	OFFICE OF POLICY MANAGEMENT AND PLANNING		\N	375	\N	2024-09-29 15:49:19.877742+00	2024-09-29 15:49:19.877742+00	0
959	OFFICE OF THE CONTROLLER		\N	375	\N	2024-09-29 15:49:19.879427+00	2024-09-29 15:49:19.879427+00	0
960	JOB CORPS		\N	384	\N	2024-09-29 15:49:19.881063+00	2024-09-29 15:49:19.881063+00	0
961	BUSINESS OPERATIONS CENTER		\N	390	\N	2024-09-29 15:49:19.88271+00	2024-09-29 15:49:19.88271+00	0
962	DEPARTMENTAL BUDGET CENTER		\N	390	\N	2024-09-29 15:49:19.884466+00	2024-09-29 15:49:19.884466+00	0
963	EMERGENCY MANAGEMENT CENTER		\N	390	\N	2024-09-29 15:49:19.886067+00	2024-09-29 15:49:19.886067+00	0
964	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	390	\N	2024-09-29 15:49:19.887805+00	2024-09-29 15:49:19.887805+00	0
965	OFFICE OF THE SENIOR PROCUREMENT EXECUTIVE		\N	390	\N	2024-09-29 15:49:19.889603+00	2024-09-29 15:49:19.889603+00	0
966	OFFICE OF ADMINISTRATIVE LAW JUDGES		\N	393	\N	2024-09-29 15:49:19.891244+00	2024-09-29 15:49:19.891244+00	0
967	OFFICE OF INSPECTOR GENERAL		\N	393	\N	2024-09-29 15:49:19.892993+00	2024-09-29 15:49:19.892993+00	0
968	CHIEF ENGINEER		\N	399	\N	2024-09-29 15:49:19.894558+00	2024-09-29 15:49:19.894558+00	0
969	CHIEF FINANCIAL OFFICER		\N	399	\N	2024-09-29 15:49:19.896161+00	2024-09-29 15:49:19.896161+00	0
970	CHIEF INFORMATION OFFICER		\N	399	\N	2024-09-29 15:49:19.899389+00	2024-09-29 15:49:19.899389+00	0
971	CHIEF SAFETY AND MISSION ASSURANCE		\N	399	\N	2024-09-29 15:49:19.901192+00	2024-09-29 15:49:19.901192+00	0
972	EDUCATION		\N	399	\N	2024-09-29 15:49:19.902767+00	2024-09-29 15:49:19.902767+00	0
973	INSPECTOR GENERAL		\N	399	\N	2024-09-29 15:49:19.904571+00	2024-09-29 15:49:19.904571+00	0
974	OFFICE OF DIVERSITY & EQUAL OPPORTUNITY		\N	399	\N	2024-09-29 15:49:19.906147+00	2024-09-29 15:49:19.906147+00	0
975	AEROFLIGHTDYNAMICS DIRECTORATE AVIATION & MISSION RESEARCH DEVELOPMENT & ENGINEERING CENTER US ARMY RESEARCH DEVELOPMENT & ENGINEERING COMMAND (CODE Y		\N	401	\N	2024-09-29 15:49:19.907726+00	2024-09-29 15:49:19.907726+00	0
976	CHIEF FINANCIAL OFFICER (CODE C)		\N	401	\N	2024-09-29 15:49:19.909508+00	2024-09-29 15:49:19.909508+00	0
977	DIRECTOR OF AERONAUTICS (CODE A)		\N	401	\N	2024-09-29 15:49:19.911239+00	2024-09-29 15:49:19.911239+00	0
978	DIRECTOR OF CENTER OPERATIONS (CODE J)		\N	401	\N	2024-09-29 15:49:19.914026+00	2024-09-29 15:49:19.914026+00	0
979	DIRECTOR OF EXPLORATION TECHNOLOGY (CODE T)		\N	401	\N	2024-09-29 15:49:19.91583+00	2024-09-29 15:49:19.91583+00	0
980	DIRECTOR OF INFORMATION TECHNOLOGY (CODE I)		\N	401	\N	2024-09-29 15:49:19.917542+00	2024-09-29 15:49:19.917542+00	0
981	DIRECTOR OF PROGRAMS AND PROJECTS (CODE P)		\N	401	\N	2024-09-29 15:49:19.919426+00	2024-09-29 15:49:19.919426+00	0
982	DIRECTOR OF SAFETY AND MISSION ASSURANCE (CODE Q)		\N	401	\N	2024-09-29 15:49:19.921088+00	2024-09-29 15:49:19.921088+00	0
983	DIRECTOR OF SCIENCE (CODE S)		\N	401	\N	2024-09-29 15:49:19.922744+00	2024-09-29 15:49:19.922744+00	0
984	OFFICE OF THE DIRECTOR (CODE D)		\N	401	\N	2024-09-29 15:49:19.92472+00	2024-09-29 15:49:19.92472+00	0
985	RESEARCH TEST AND ENGINEERING DIRECTORATE (CODE R)		\N	402	\N	2024-09-29 15:49:19.926524+00	2024-09-29 15:49:19.926524+00	0
986	CENTER OPERATIONS DIRECTORATE		\N	403	\N	2024-09-29 15:49:19.928389+00	2024-09-29 15:49:19.928389+00	0
987	NASA SAFETY CENTER		\N	403	\N	2024-09-29 15:49:19.930124+00	2024-09-29 15:49:19.930124+00	0
988	OFFICE OF THE CHIEF FINANCIAL OFFICER		\N	403	\N	2024-09-29 15:49:19.931666+00	2024-09-29 15:49:19.931666+00	0
989	SAFETY AND MISSION ASSURANCE DIRECTORATE		\N	403	\N	2024-09-29 15:49:19.933274+00	2024-09-29 15:49:19.933274+00	0
990	ENGINEERING AND TECHNOLOGY DIRECTORATE (CODE 500)		\N	404	\N	2024-09-29 15:49:19.934861+00	2024-09-29 15:49:19.934861+00	0
991	FLIGHT PROJECTS DIRECTORATE (CODE 400)		\N	404	\N	2024-09-29 15:49:19.936464+00	2024-09-29 15:49:19.936464+00	0
992	INFORMATION TECHNOLOGY AND COMMUNICATIONS DIRECTORATE (CODE 700)		\N	404	\N	2024-09-29 15:49:19.937978+00	2024-09-29 15:49:19.937978+00	0
993	MANAGEMENT OPERATIONS DIRECTORATE (CODE 200)		\N	404	\N	2024-09-29 15:49:19.939581+00	2024-09-29 15:49:19.939581+00	0
994	OFFICE OF THE DIRECTOR (CODE 100)		\N	404	\N	2024-09-29 15:49:19.941198+00	2024-09-29 15:49:19.941198+00	0
995	SAFETY AND MISSION ASSURANCE DIRECTORATE (CODE 300)		\N	404	\N	2024-09-29 15:49:19.942795+00	2024-09-29 15:49:19.942795+00	0
996	SCIENCES AND EXPLORATION DIRECTORATE (CODE 600)		\N	404	\N	2024-09-29 15:49:19.944549+00	2024-09-29 15:49:19.944549+00	0
997	SUBORBITAL AND SPECIAL ORBITAL PROJECTS DIRECTORATE WALLOPS FLIGHT FACILITY (CODE 800)		\N	404	\N	2024-09-29 15:49:19.946284+00	2024-09-29 15:49:19.946284+00	0
998	ENGINEERING DIRECTORATE (CODE EA)		\N	406	\N	2024-09-29 15:49:19.947899+00	2024-09-29 15:49:19.947899+00	0
999	EXPLORATION INTEGRATION AND SCIENCE DIRECTORATE (CODE XA)		\N	406	\N	2024-09-29 15:49:19.949523+00	2024-09-29 15:49:19.949523+00	0
1000	FLIGHT OPERATIONS DIRECTORATE (CODE CA)		\N	406	\N	2024-09-29 15:49:19.951031+00	2024-09-29 15:49:19.951031+00	0
1001	HUMAN HEALTH AND PERFORMANCE DIRECTORATE (CODE SA)		\N	406	\N	2024-09-29 15:49:19.952606+00	2024-09-29 15:49:19.952606+00	0
1002	INFORMATION RESOURCES AND CHIEF INFORMATION OFFICER (CODE IA)		\N	406	\N	2024-09-29 15:49:19.955333+00	2024-09-29 15:49:19.955333+00	0
1003	OFFICE OF THE CHIEF FINANCIAL OFFICER (CODE LA)		\N	406	\N	2024-09-29 15:49:19.957074+00	2024-09-29 15:49:19.957074+00	0
1004	SAFETY AND MISSION ASSURANCE OFFICE (CODE NA)		\N	406	\N	2024-09-29 15:49:19.958582+00	2024-09-29 15:49:19.958582+00	0
1005	WHITE SANDS TEST FACILITY (CODE RA)		\N	406	\N	2024-09-29 15:49:19.96032+00	2024-09-29 15:49:19.96032+00	0
1006	ENGINEERING DIRECTORATE (CODE NE)		\N	407	\N	2024-09-29 15:49:19.963027+00	2024-09-29 15:49:19.963027+00	0
1007	GROUND SYSTEMS DEVELOPMENT AND OPERATIONS PROGRAM (CODE LX)		\N	407	\N	2024-09-29 15:49:19.96473+00	2024-09-29 15:49:19.96473+00	0
1008	INFORMATION TECHNOLOGY AND COMMUNICATIONS SERVICES DIRECTORATE (CODE IT)		\N	407	\N	2024-09-29 15:49:19.966419+00	2024-09-29 15:49:19.966419+00	0
1009	LAUNCH SERVICES PROGRAM OFFICE (CODE VA)		\N	407	\N	2024-09-29 15:49:19.968168+00	2024-09-29 15:49:19.968168+00	0
1010	OFFICE OF PROCUREMENT (CODE OP)		\N	407	\N	2024-09-29 15:49:19.970007+00	2024-09-29 15:49:19.970007+00	0
1011	OFFICE OF THE CENTER DIRECTOR (CODE AA)		\N	407	\N	2024-09-29 15:49:19.971676+00	2024-09-29 15:49:19.971676+00	0
1012	SAFETY AND MISSION ASSURANCE DIRECTORATE (CODE SA)		\N	407	\N	2024-09-29 15:49:19.973375+00	2024-09-29 15:49:19.973375+00	0
1013	CENTER OPERATIONS DIRECTORATE (CODE D4)		\N	408	\N	2024-09-29 15:49:19.974898+00	2024-09-29 15:49:19.974898+00	0
1014	ENGINEERING DIRECTORATE		\N	410	\N	2024-09-29 15:49:19.976971+00	2024-09-29 15:49:19.976971+00	0
1015	MICHOUD ASSEMBLY FACILITY		\N	410	\N	2024-09-29 15:49:19.978717+00	2024-09-29 15:49:19.978717+00	0
1016	OFFICE OF CENTER OPERATIONS		\N	410	\N	2024-09-29 15:49:19.981284+00	2024-09-29 15:49:19.981284+00	0
1017	OFFICE OF HUMAN CAPITAL		\N	410	\N	2024-09-29 15:49:19.983276+00	2024-09-29 15:49:19.983276+00	0
1018	OFFICE OF STRATEGIC ANALYSIS AND COMMUNICATIONS		\N	410	\N	2024-09-29 15:49:19.98496+00	2024-09-29 15:49:19.98496+00	0
1019	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	410	\N	2024-09-29 15:49:19.986583+00	2024-09-29 15:49:19.986583+00	0
1020	SAFETY AND MISSION ASSURANCE DIRECTORATE		\N	410	\N	2024-09-29 15:49:19.988247+00	2024-09-29 15:49:19.988247+00	0
1021	SPACE LAUNCH SYSTEMS		\N	410	\N	2024-09-29 15:49:19.989815+00	2024-09-29 15:49:19.989815+00	0
1022	HEADQUARTERS OPERATIONS		\N	411	\N	2024-09-29 15:49:19.99215+00	2024-09-29 15:49:19.99215+00	0
1023	HUMAN CAPITAL MANAGEMENT		\N	411	\N	2024-09-29 15:49:19.993842+00	2024-09-29 15:49:19.993842+00	0
1024	NASA SHARED SERVICES CENTER		\N	411	\N	2024-09-29 15:49:19.995556+00	2024-09-29 15:49:19.995556+00	0
1025	PROTECTIVE SERVICES		\N	411	\N	2024-09-29 15:49:19.9975+00	2024-09-29 15:49:19.9975+00	0
1026	ASTROPHYSICS DIVISION		\N	412	\N	2024-09-29 15:49:19.999098+00	2024-09-29 15:49:19.999098+00	0
1027	BIOLOGICAL AND PHYSICAL SCIENCES DIVISION		\N	412	\N	2024-09-29 15:49:20.000786+00	2024-09-29 15:49:20.000786+00	0
1028	EARTH SCIENCE DIVISION		\N	412	\N	2024-09-29 15:49:20.01292+00	2024-09-29 15:49:20.01292+00	0
1029	ADVANCED EXPLORATION SYSTEMS DIVISION		\N	413	\N	2024-09-29 15:49:20.014724+00	2024-09-29 15:49:20.014724+00	0
1030	SPACE COMMUNICATIONS & NAVIGATION DIVISION		\N	413	\N	2024-09-29 15:49:20.016571+00	2024-09-29 15:49:20.016571+00	0
1031	OFFICE OF POLAR PROGRAMS		\N	423	\N	2024-09-29 15:49:20.018154+00	2024-09-29 15:49:20.018154+00	0
1032	NATIONAL CENTER FOR SCIENCE AND ENGINEERING STATISTICS		\N	430	\N	2024-09-29 15:49:20.019795+00	2024-09-29 15:49:20.019795+00	0
1033	DIVISION OF INFORMATION SYSTEMS		\N	433	\N	2024-09-29 15:49:20.021313+00	2024-09-29 15:49:20.021313+00	0
1034	OFFICE OF INTEGRATIVE ACTIVITIES		\N	434	\N	2024-09-29 15:49:20.022975+00	2024-09-29 15:49:20.022975+00	0
1035	CORPORATE MANAGEMENT		\N	442	\N	2024-09-29 15:49:20.024607+00	2024-09-29 15:49:20.024607+00	0
1036	MATERIALS, WASTE, RESEARCH, STATE, TRIBAL AND COMPLIANCE PROGRAMS		\N	442	\N	2024-09-29 15:49:20.026425+00	2024-09-29 15:49:20.026425+00	0
1037	REACTOR AND PREPAREDNESS PROGRAMS		\N	442	\N	2024-09-29 15:49:20.028185+00	2024-09-29 15:49:20.028185+00	0
1038	CENTER FOR LEADERSHIP CAPACITY SERVICES		\N	446	\N	2024-09-29 15:49:20.029777+00	2024-09-29 15:49:20.029777+00	0
1039	CENTER FOR TALENT SERVICES		\N	446	\N	2024-09-29 15:49:20.031474+00	2024-09-29 15:49:20.031474+00	0
1040	CENTER FOR CONTRACTING, FACILITIES, AND ADMINISTRATIVE SERVICES		\N	447	\N	2024-09-29 15:49:20.033119+00	2024-09-29 15:49:20.033119+00	0
1041	OFFICE OF GENERAL COUNSEL		\N	448	\N	2024-09-29 15:49:20.034739+00	2024-09-29 15:49:20.034739+00	0
1042	OFFICE OF POLICY AND EXTERNAL AFFAIRS		\N	448	\N	2024-09-29 15:49:20.036289+00	2024-09-29 15:49:20.036289+00	0
1043	OFFICE OF THE CHIEF FINANCIAL OFFICER		\N	448	\N	2024-09-29 15:49:20.037897+00	2024-09-29 15:49:20.037897+00	0
1044	OFFICE OF THE CHIEF MANAGEMENT OFFICER		\N	448	\N	2024-09-29 15:49:20.039835+00	2024-09-29 15:49:20.039835+00	0
1045	OFFICE OF THE CHIEF OPERATING OFFICER		\N	448	\N	2024-09-29 15:49:20.041409+00	2024-09-29 15:49:20.041409+00	0
1046	BUREAU OF INFORMATION SERVICES		\N	449	\N	2024-09-29 15:49:20.043553+00	2024-09-29 15:49:20.043553+00	0
1047	ACQUISITION MANAGEMENT		\N	450	\N	2024-09-29 15:49:20.045287+00	2024-09-29 15:49:20.045287+00	0
1048	OFFICE OF RISK ASSESSMENT		\N	453	\N	2024-09-29 15:49:20.046947+00	2024-09-29 15:49:20.046947+00	0
1049	OFFICE OF FINANCIAL MANAGEMENT		\N	456	\N	2024-09-29 15:49:20.049008+00	2024-09-29 15:49:20.049008+00	0
1050	OFFICE OF HUMAN RESOURCES		\N	456	\N	2024-09-29 15:49:20.053515+00	2024-09-29 15:49:20.053515+00	0
1051	OFFICE OF INFORMATION TECHNOLOGY		\N	456	\N	2024-09-29 15:49:20.055039+00	2024-09-29 15:49:20.055039+00	0
1052	NATIONAL INFORMATION TECHNOLOGY CENTER		\N	461	\N	2024-09-29 15:49:20.056739+00	2024-09-29 15:49:20.056739+00	0
1053	ACQUISITIONS AND GRANTS		\N	470	\N	2024-09-29 15:49:20.059264+00	2024-09-29 15:49:20.059264+00	0
1054	FACILITIES MANAGEMENT		\N	470	\N	2024-09-29 15:49:20.061012+00	2024-09-29 15:49:20.061012+00	0
1055	COMMUNICATIONS PLANNING AND TECHNOLOGY		\N	473	\N	2024-09-29 15:49:20.062794+00	2024-09-29 15:49:20.062794+00	0
1056	INVESTIGATIONS		\N	476	\N	2024-09-29 15:49:20.06454+00	2024-09-29 15:49:20.06454+00	0
1057	REGIONAL COMMISSIONER		\N	477	\N	2024-09-29 15:49:20.066283+00	2024-09-29 15:49:20.066283+00	0
1058	MEDICAL AND VOCATIONAL EXPERTISE		\N	478	\N	2024-09-29 15:49:20.068011+00	2024-09-29 15:49:20.068011+00	0
1059	ENTERPRISE SUPPORT, ARCHITECTURE AND ENGINEERING		\N	479	\N	2024-09-29 15:49:20.069703+00	2024-09-29 15:49:20.069703+00	0
1060	TELECOMMUNICATIONS AND SYSTEM OPERATIONS		\N	479	\N	2024-09-29 15:49:20.071379+00	2024-09-29 15:49:20.071379+00	0
1061	OFFICE OF ACQUISITIONS MANAGEMENT (CODE A/LM/AQM)		\N	480	\N	2024-09-29 15:49:20.073203+00	2024-09-29 15:49:20.073203+00	0
1062	OFFICE OF FACILITIES MANAGEMENT SERVICES (CODE A/OPR/FMS)		\N	480	\N	2024-09-29 15:49:20.0749+00	2024-09-29 15:49:20.0749+00	0
1063	OFFICE OF GENERAL SERVICES MANAGEMENT (CODE A/OPR/GSM)		\N	480	\N	2024-09-29 15:49:20.07672+00	2024-09-29 15:49:20.07672+00	0
1064	OFFICE OF INFORMATION PROGRAMS AND SERVICES (CODE A/GIS/IPS)		\N	480	\N	2024-09-29 15:49:20.078291+00	2024-09-29 15:49:20.078291+00	0
1065	OFFICE OF LANGUAGE SERVICES (CODE A/OPR/LS)		\N	480	\N	2024-09-29 15:49:20.080342+00	2024-09-29 15:49:20.080342+00	0
1066	OFFICE OF LOGISTICS OPERATIONS (CODE A/LM/OPS)		\N	480	\N	2024-09-29 15:49:20.082021+00	2024-09-29 15:49:20.082021+00	0
1067	OFFICE OF PROGRAM MANAGEMENT AND POLICY (CODE A/LM/PMP)		\N	480	\N	2024-09-29 15:49:20.083842+00	2024-09-29 15:49:20.083842+00	0
1068	OFFICE OF REAL PROPERTY MANAGEMENT (CODE A/OPR/RPM)		\N	480	\N	2024-09-29 15:49:20.085601+00	2024-09-29 15:49:20.085601+00	0
1069	DEPUTY ASSISTANT SECRETARY FOR PASSPORT SERVICES (CODE CA/PPT)		\N	485	\N	2024-09-29 15:49:20.087349+00	2024-09-29 15:49:20.087349+00	0
1070	DEPUTY ASSISTANT SECRETARY FOR VISA SERVICES (CODE CA/VO)		\N	485	\N	2024-09-29 15:49:20.089077+00	2024-09-29 15:49:20.089077+00	0
1071	OFFICE OF CONSULAR SYSTEMS AND TECHNOLOGY (CODE CA/CST)		\N	485	\N	2024-09-29 15:49:20.090648+00	2024-09-29 15:49:20.090648+00	0
1072	OFFICE OF FRAUD PREVENTION PROGRAMS (CODE CA/FPP)		\N	485	\N	2024-09-29 15:49:20.092246+00	2024-09-29 15:49:20.092246+00	0
1073	OFFICE OF THE EXECUTIVE DIRECTOR (CODE CA/EX)		\N	485	\N	2024-09-29 15:49:20.093897+00	2024-09-29 15:49:20.093897+00	0
1074	CHIEF TECHNOLOGY OFFICE (CODE DS/EX/CTO)		\N	487	\N	2024-09-29 15:49:20.095801+00	2024-09-29 15:49:20.095801+00	0
1075	DEPUTY ASSISTANT SECRETARY AND ASSISTANT DIRECTOR FOR INTERNATIONAL PROGRAMS (DS/DSS/IP)		\N	487	\N	2024-09-29 15:49:20.097759+00	2024-09-29 15:49:20.097759+00	0
1076	DEPUTY ASSISTANT SECRETARY FOR COUNTERMEASURES (DS/C)		\N	487	\N	2024-09-29 15:49:20.0998+00	2024-09-29 15:49:20.0998+00	0
1077	OFFICE OF ANTITERRORISM ASSISTANCE PROGRAM (CODE DS/T/ATA)		\N	487	\N	2024-09-29 15:49:20.101801+00	2024-09-29 15:49:20.101801+00	0
1078	OFFICE OF DOMESTIC FACILITIES PROTECTION (CODE DS/DO/DFP)		\N	487	\N	2024-09-29 15:49:20.103614+00	2024-09-29 15:49:20.103614+00	0
1079	OFFICE OF INTELLIGENCE AND THREAT ANALYSIS (CODE DS/TIA/ITA)		\N	487	\N	2024-09-29 15:49:20.105231+00	2024-09-29 15:49:20.105231+00	0
1080	OFFICE OF MOBILE SECURITY DEPLOYMENT (CODE DS/T/MSD)		\N	487	\N	2024-09-29 15:49:20.106877+00	2024-09-29 15:49:20.106877+00	0
1081	OFFICE OF OVERSEAS PROTECTIVE OPERATIONS (CODE DS/IP/OPO)		\N	487	\N	2024-09-29 15:49:20.10858+00	2024-09-29 15:49:20.10858+00	0
1082	OFFICE OF PHYSICAL SECURITY PROGRAMS (CODE DS/C/PSP)		\N	487	\N	2024-09-29 15:49:20.110178+00	2024-09-29 15:49:20.110178+00	0
1083	OFFICE OF REGIONAL DIRECTORS (CODE DS/IP/RD)		\N	487	\N	2024-09-29 15:49:20.111919+00	2024-09-29 15:49:20.111919+00	0
1084	OFFICE OF SECURITY TECHNOLOGY (CODE DS/C/ST)		\N	487	\N	2024-09-29 15:49:20.113543+00	2024-09-29 15:49:20.113543+00	0
1085	OFFICE OF THREAT INVESTIGATIONS AND ANALYSIS (CODE DS/DSS/TIA)		\N	487	\N	2024-09-29 15:49:20.115174+00	2024-09-29 15:49:20.115174+00	0
1086	SENIOR COORDINATOR FOR SECURITY INFRASTRUCTURE (CODE DS/SI)		\N	487	\N	2024-09-29 15:49:20.116756+00	2024-09-29 15:49:20.116756+00	0
1087	AMERICAN INSTITUTE IN TAIWAN		\N	488	\N	2024-09-29 15:49:20.118349+00	2024-09-29 15:49:20.118349+00	0
1088	OFFICE OF CAUCASUS AFFAIRS AND REGIONAL CONFLICTS (CODE EUR/CARC)		\N	490	\N	2024-09-29 15:49:20.119997+00	2024-09-29 15:49:20.119997+00	0
1089	OFFICE OF EUROPEAN SECURITY AND POLITICAL AFFAIRS (CODE EUR/RPM)		\N	490	\N	2024-09-29 15:49:20.121598+00	2024-09-29 15:49:20.121598+00	0
1090	OFFICE OF NORDIC, BALTIC, AND ARCTIC SECURITY AFFAIRS		\N	490	\N	2024-09-29 15:49:20.1234+00	2024-09-29 15:49:20.1234+00	0
1091	OFFICE OF SOUTHERN EUROPEAN AFFAIRS (CODE EUR/SE)		\N	490	\N	2024-09-29 15:49:20.125061+00	2024-09-29 15:49:20.125061+00	0
1092	OFFICE OF UKRAINE, MOLDOVA AND BELARUS AFFAIRS (CODE EUR/UMB)		\N	490	\N	2024-09-29 15:49:20.126691+00	2024-09-29 15:49:20.126691+00	0
1093	OFFICE OF WESTERN EUROPEAN AFFAIRS (CODE EUR/WE)		\N	490	\N	2024-09-29 15:49:20.128317+00	2024-09-29 15:49:20.128317+00	0
1094	BUSINESS MANAGEMENT AND PLANNING (IRM/BMP)		\N	492	\N	2024-09-29 15:49:20.129951+00	2024-09-29 15:49:20.129951+00	0
1095	DEPUTY CHIEF INFORMATION OFFICER FOR OPERATIONS (IRM/OPS)		\N	492	\N	2024-09-29 15:49:20.131598+00	2024-09-29 15:49:20.131598+00	0
1096	DEPUTY CIO FOR CYBER OPERATIONS (IRM/DCIO/CO)		\N	492	\N	2024-09-29 15:49:20.133167+00	2024-09-29 15:49:20.133167+00	0
1097	DIPLOMATIC TELECOMMUNICATIONS SERVICE OFFICE		\N	492	\N	2024-09-29 15:49:20.134914+00	2024-09-29 15:49:20.134914+00	0
1098	ENTERPRISE NETWORK MANAGEMENT OFFICE (IRM/OPS/ENM)		\N	492	\N	2024-09-29 15:49:20.136705+00	2024-09-29 15:49:20.136705+00	0
1099	FOREIGN OPERATIONS (IRM/FO)		\N	492	\N	2024-09-29 15:49:20.13833+00	2024-09-29 15:49:20.13833+00	0
1100	EXECUTIVE OFFICE (INL/EX)		\N	495	\N	2024-09-29 15:49:20.139991+00	2024-09-29 15:49:20.139991+00	0
1101	OFFICE OF AFGHANISTAN AND PAKISTAN (CODE INL/AP)		\N	495	\N	2024-09-29 15:49:20.141691+00	2024-09-29 15:49:20.141691+00	0
1102	OFFICE OF AVIATION (CODE INL/A)		\N	495	\N	2024-09-29 15:49:20.143242+00	2024-09-29 15:49:20.143242+00	0
1103	OFFICE OF WESTERN HEMISPHERE PROGRAMS (INL/WHP)		\N	495	\N	2024-09-29 15:49:20.145221+00	2024-09-29 15:49:20.145221+00	0
1104	OFFICE OF CONSTRUCTION, FACILITY AND SECURITY MANAGEMENT (CODE OBO/CFSM)		\N	501	\N	2024-09-29 15:49:20.146757+00	2024-09-29 15:49:20.146757+00	0
1105	OFFICE OF OPERATIONS (OBP/OPS)		\N	501	\N	2024-09-29 15:49:20.149436+00	2024-09-29 15:49:20.149436+00	0
1106	OFFICE OF PLANNING AND REAL ESTATE (OBO/PRE)		\N	501	\N	2024-09-29 15:49:20.151062+00	2024-09-29 15:49:20.151062+00	0
1107	OFFICE OF PROGRAM DEVELOPMENT, COORDINATION AND SUPPORT (CODE OBO/PDCS)		\N	501	\N	2024-09-29 15:49:20.152731+00	2024-09-29 15:49:20.152731+00	0
1108	OFFICE OF GLOBAL COMPENSATION (CODE RM/GFS/C)		\N	505	\N	2024-09-29 15:49:20.154262+00	2024-09-29 15:49:20.154262+00	0
1109	EXECUTIVE DIRECTOR FOR MANAGEMENT (CODE FSI/EX)		\N	508	\N	2024-09-29 15:49:20.15588+00	2024-09-29 15:49:20.15588+00	0
1110	SCHOOL OF APPLIED INFORMATION TECHNOLOGY (CODE FSI/SAIT)		\N	508	\N	2024-09-29 15:49:20.157481+00	2024-09-29 15:49:20.157481+00	0
1111	SCHOOL OF LANGUAGE STUDIES (CODE FSI/SLS)		\N	508	\N	2024-09-29 15:49:20.159053+00	2024-09-29 15:49:20.159053+00	0
1112	SCHOOL OF PROFESSIONAL AND AREA STUDIES (CODE FSI/SPAS)		\N	508	\N	2024-09-29 15:49:20.160736+00	2024-09-29 15:49:20.160736+00	0
1113	BUREAU OF PUBLIC AFFAIRS		\N	513	\N	2024-09-29 15:49:20.162316+00	2024-09-29 15:49:20.162316+00	0
1114	OFFICE OF EXECUTIVE SECRETARIAT		\N	513	\N	2024-09-29 15:49:20.165487+00	2024-09-29 15:49:20.165487+00	0
1115	OFFICE OF THE U.S. GLOBAL AIDS COORDINATOR AND HEALTH DIPLOMACY		\N	513	\N	2024-09-29 15:49:20.167233+00	2024-09-29 15:49:20.167233+00	0
1116	INFORMATION TECHNOLOGY SHARED SERVICES CODE S-82		\N	517	\N	2024-09-29 15:49:20.168954+00	2024-09-29 15:49:20.168954+00	0
1117	AIR TRAFFIC ORGANIZATION		\N	518	\N	2024-09-29 15:49:20.17563+00	2024-09-29 15:49:20.17563+00	0
1118	AIRPORTS		\N	518	\N	2024-09-29 15:49:20.177548+00	2024-09-29 15:49:20.177548+00	0
1119	AVIATION POLICY PLANNING AND ENVIRONMENT		\N	518	\N	2024-09-29 15:49:20.179252+00	2024-09-29 15:49:20.179252+00	0
1120	AVIATION SAFETY		\N	518	\N	2024-09-29 15:49:20.181454+00	2024-09-29 15:49:20.181454+00	0
1121	CIVIL RIGHTS		\N	518	\N	2024-09-29 15:49:20.183109+00	2024-09-29 15:49:20.183109+00	0
1122	COMMERCIAL SPACE TRANSPORTATION		\N	518	\N	2024-09-29 15:49:20.185112+00	2024-09-29 15:49:20.185112+00	0
1123	ENTERPRISE SERVICES CENTER		\N	518	\N	2024-09-29 15:49:20.186673+00	2024-09-29 15:49:20.186673+00	0
1124	FINANCIAL SERVICES		\N	518	\N	2024-09-29 15:49:20.188529+00	2024-09-29 15:49:20.188529+00	0
1125	HUMAN RESOURCE MANAGEMENT		\N	518	\N	2024-09-29 15:49:20.190302+00	2024-09-29 15:49:20.190302+00	0
1126	INFORMATION SERVICES/CIO		\N	518	\N	2024-09-29 15:49:20.192167+00	2024-09-29 15:49:20.192167+00	0
1127	REGIONS AND CENTER OPERATIONS		\N	518	\N	2024-09-29 15:49:20.194456+00	2024-09-29 15:49:20.194456+00	0
1128	SECURITY AND HAZARDOUS MATERIALS		\N	518	\N	2024-09-29 15:49:20.196525+00	2024-09-29 15:49:20.196525+00	0
1129	SYSTEM SAFETY		\N	518	\N	2024-09-29 15:49:20.198368+00	2024-09-29 15:49:20.198368+00	0
1130	ADMINISTRATION		\N	519	\N	2024-09-29 15:49:20.200142+00	2024-09-29 15:49:20.200142+00	0
1131	CENTRAL FEDERAL LANDS HIGHWAY DIVISION		\N	519	\N	2024-09-29 15:49:20.20174+00	2024-09-29 15:49:20.20174+00	0
1132	CHIEF FINANCIAL OFFICER		\N	519	\N	2024-09-29 15:49:20.203291+00	2024-09-29 15:49:20.203291+00	0
1133	EASTERN FEDERAL LANDS HIGHWAY DIVISION		\N	519	\N	2024-09-29 15:49:20.213143+00	2024-09-29 15:49:20.213143+00	0
1135	INFRASTRUCTURE		\N	519	\N	2024-09-29 15:49:20.218003+00	2024-09-29 15:49:20.218003+00	0
1136	INNOVATIVE PROGRAM DELIVERY		\N	519	\N	2024-09-29 15:49:20.219629+00	2024-09-29 15:49:20.219629+00	0
1137	INTELLIGENT TRANSPORTATION SYSTEMS JOINT PROGRAM OFFICE		\N	519	\N	2024-09-29 15:49:20.221526+00	2024-09-29 15:49:20.221526+00	0
1138	OPERATIONS		\N	519	\N	2024-09-29 15:49:20.223077+00	2024-09-29 15:49:20.223077+00	0
1139	PLANNING, ENVIRONMENT, AND REALTY		\N	519	\N	2024-09-29 15:49:20.224749+00	2024-09-29 15:49:20.224749+00	0
1140	POLICY AND GOVERNMENTAL AFFAIRS		\N	519	\N	2024-09-29 15:49:20.226494+00	2024-09-29 15:49:20.226494+00	0
1141	PROFESSIONAL AND CORPORATE DEVELOPMENT		\N	519	\N	2024-09-29 15:49:20.228227+00	2024-09-29 15:49:20.228227+00	0
1142	SAFETY		\N	519	\N	2024-09-29 15:49:20.229781+00	2024-09-29 15:49:20.229781+00	0
1143	TURNER FAIRBANK HIGHWAY RESEARCH CENTER		\N	519	\N	2024-09-29 15:49:20.23158+00	2024-09-29 15:49:20.23158+00	0
1144	WESTERN FEDERAL LANDS HIGHWAY DIVISION		\N	519	\N	2024-09-29 15:49:20.233211+00	2024-09-29 15:49:20.233211+00	0
1145	RAILROAD DEVELOPMENT		\N	521	\N	2024-09-29 15:49:20.234689+00	2024-09-29 15:49:20.234689+00	0
1146	RAILROAD SAFETY		\N	521	\N	2024-09-29 15:49:20.236252+00	2024-09-29 15:49:20.236252+00	0
1147	OFFICE OF SHIP OPERATIONS		\N	524	\N	2024-09-29 15:49:20.238122+00	2024-09-29 15:49:20.238122+00	0
1148	VOLPE CENTER		\N	528	\N	2024-09-29 15:49:20.240013+00	2024-09-29 15:49:20.240013+00	0
1149	ADMINISTRATION		\N	529	\N	2024-09-29 15:49:20.241666+00	2024-09-29 15:49:20.241666+00	0
1150	AVIATION AND INTERNATIONAL AFFAIRS		\N	529	\N	2024-09-29 15:49:20.243295+00	2024-09-29 15:49:20.243295+00	0
1151	INTELLIGENCE SECURITY AND EMERGENCY RESPONSE		\N	529	\N	2024-09-29 15:49:20.245259+00	2024-09-29 15:49:20.245259+00	0
1152	PUBLIC AFFAIRS		\N	529	\N	2024-09-29 15:49:20.246726+00	2024-09-29 15:49:20.246726+00	0
1153	TRANSPORTATION POLICY		\N	529	\N	2024-09-29 15:49:20.248202+00	2024-09-29 15:49:20.248202+00	0
1154	POLICY HEADQUARTERS - OFFICE OF THE ADMINISTRATOR		\N	530	\N	2024-09-29 15:49:20.249702+00	2024-09-29 15:49:20.249702+00	0
1155	ADMINISTRATIVE RESOURCE CENTER		\N	533	\N	2024-09-29 15:49:20.251433+00	2024-09-29 15:49:20.251433+00	0
1156	DISBURSING AND DEBT MANAGEMENT		\N	533	\N	2024-09-29 15:49:20.252996+00	2024-09-29 15:49:20.252996+00	0
1157	INFORMATION AND SECURITY SERVICES		\N	533	\N	2024-09-29 15:49:20.254695+00	2024-09-29 15:49:20.254695+00	0
1158	OFFICE OF RETAIL SECURITIES SERVICES		\N	533	\N	2024-09-29 15:49:20.256717+00	2024-09-29 15:49:20.256717+00	0
1159	OFFICE OF THE CHIEF COUNSEL		\N	533	\N	2024-09-29 15:49:20.258231+00	2024-09-29 15:49:20.258231+00	0
1160	OFFICE OF THE COMMISSIONER		\N	533	\N	2024-09-29 15:49:20.260155+00	2024-09-29 15:49:20.260155+00	0
1161	COMMISSIONER		\N	537	\N	2024-09-29 15:49:20.261879+00	2024-09-29 15:49:20.261879+00	0
1162	OPERATIONS SUPPORT		\N	537	\N	2024-09-29 15:49:20.263377+00	2024-09-29 15:49:20.263377+00	0
1163	SERVICES AND ENFORCEMENT		\N	537	\N	2024-09-29 15:49:20.264928+00	2024-09-29 15:49:20.264928+00	0
1164	DEPARTMENTAL OFFICE OPERATIONS		\N	539	\N	2024-09-29 15:49:20.266604+00	2024-09-29 15:49:20.266604+00	0
1165	OFFICE OF DC PENSIONS		\N	539	\N	2024-09-29 15:49:20.268081+00	2024-09-29 15:49:20.268081+00	0
1166	OFFICE OF THE CHIEF INFORMATION OFFICER		\N	539	\N	2024-09-29 15:49:20.269873+00	2024-09-29 15:49:20.269873+00	0
1167	OFFICE OF THE SENIOR PROCUREMENT EXECUTIVE		\N	539	\N	2024-09-29 15:49:20.272906+00	2024-09-29 15:49:20.272906+00	0
1168	PRIVACY, TRANSPARENCY AND RECORDS		\N	539	\N	2024-09-29 15:49:20.274796+00	2024-09-29 15:49:20.274796+00	0
1169	OFFICE OF TERRORISM AND FINANCIAL INTELLIGENCE		\N	542	\N	2024-09-29 15:49:20.276551+00	2024-09-29 15:49:20.276551+00	0
1170	OFFICE OF THE GENERAL COUNSEL		\N	542	\N	2024-09-29 15:49:20.282974+00	2024-09-29 15:49:20.282974+00	0
1171	US MINT HEADQUARTERS, WASHINGTON DC		\N	544	\N	2024-09-29 15:49:20.28493+00	2024-09-29 15:49:20.28493+00	0
1172	CUBA BROADCASTING		\N	546	\N	2024-09-29 15:49:20.286781+00	2024-09-29 15:49:20.286781+00	0
1173	ENGINEERING AND TECHNICAL OPERATIONS		\N	546	\N	2024-09-29 15:49:20.288771+00	2024-09-29 15:49:20.288771+00	0
1174	VOICE OF AMERICA		\N	546	\N	2024-09-29 15:49:20.290616+00	2024-09-29 15:49:20.290616+00	0
1175	CONSTRUCTION AND FACILITIES MANAGEMENT		\N	571	\N	2024-09-29 15:49:20.292452+00	2024-09-29 15:49:20.292452+00	0
1176	OFFICE OF ACQUISITION AND LOGISTICS		\N	571	\N	2024-09-29 15:49:20.294153+00	2024-09-29 15:49:20.294153+00	0
1177	OFFICE OF PROCUREMENT, ACQUISITION AND LOGISTICS		\N	571	\N	2024-09-29 15:49:20.295986+00	2024-09-29 15:49:20.295986+00	0
1178	OFFICE OF DATA GOVERNANCE AND ANALYTICS		\N	572	\N	2024-09-29 15:49:20.297814+00	2024-09-29 15:49:20.297814+00	0
1179	VA INNOVATION CENTER		\N	572	\N	2024-09-29 15:49:20.299822+00	2024-09-29 15:49:20.299822+00	0
1180	ASST SECRETARY FOR HUMAN RESOURCES AND ADMINISTRATION/OPERATIONS, SECURITY AND PREPAREDNESS		\N	573	\N	2024-09-29 15:49:20.301784+00	2024-09-29 15:49:20.301784+00	0
1181	OFFICE OF HUMAN RESOURCES AND ADMINISTRATION		\N	573	\N	2024-09-29 15:49:20.304304+00	2024-09-29 15:49:20.304304+00	0
1182	OFFICE OF THE PRINCIPAL DEPUTY ASSISTANT SECRETARY FOR OPERATIONS, SECURITY, AND PREPAREDNESS		\N	573	\N	2024-09-29 15:49:20.306185+00	2024-09-29 15:49:20.306185+00	0
1183	ACCOUNT MANAGEMENT OFFICE		\N	574	\N	2024-09-29 15:49:20.307884+00	2024-09-29 15:49:20.307884+00	0
1184	IT RESOURCE MANAGEMENT		\N	574	\N	2024-09-29 15:49:20.309925+00	2024-09-29 15:49:20.309925+00	0
1185	OFFICE OF INFORMATION SECURITY		\N	574	\N	2024-09-29 15:49:20.311678+00	2024-09-29 15:49:20.311678+00	0
1186	OFFICE OF IT DEVELOPMENT AND OPERATIONS		\N	574	\N	2024-09-29 15:49:20.313568+00	2024-09-29 15:49:20.313568+00	0
1253	355TH FIGHTER WING		2	\N	\N	2024-09-29 15:49:20.430192+00	2024-09-29 15:49:20.430192+00	0
1187	OFFICE OF QUALITY, PERFORMANCE AND RISK		\N	574	\N	2024-09-29 15:49:20.315228+00	2024-09-29 15:49:20.315228+00	0
1188	OFFICE OF STRATEGIC SOURCING		\N	574	\N	2024-09-29 15:49:20.316969+00	2024-09-29 15:49:20.316969+00	0
1189	OFFICE OF THE ASSISTANT SECRETARY FOR INFORMATION AND TECHNOLOGY AND CHIEF INFORMATION OFFICER		\N	574	\N	2024-09-29 15:49:20.319103+00	2024-09-29 15:49:20.319103+00	0
1190	ASSET ENTERPRISE MANAGEMENT		\N	575	\N	2024-09-29 15:49:20.320713+00	2024-09-29 15:49:20.320713+00	0
1191	BUDGET		\N	575	\N	2024-09-29 15:49:20.322319+00	2024-09-29 15:49:20.322319+00	0
1192	FINANCE		\N	575	\N	2024-09-29 15:49:20.323905+00	2024-09-29 15:49:20.323905+00	0
1193	OFFICE OF BUSINESS OVERSIGHT		\N	575	\N	2024-09-29 15:49:20.325492+00	2024-09-29 15:49:20.325492+00	0
1194	OFFICE OF THE ASSISTANT SECRETARY FOR MANAGEMENT AND CHIEF FINANCIAL OFFICER		\N	575	\N	2024-09-29 15:49:20.327067+00	2024-09-29 15:49:20.327067+00	0
1195	OFFICE OF ELECTRONIC HEALTH RECORD MODERNIZATION		\N	579	\N	2024-09-29 15:49:20.328821+00	2024-09-29 15:49:20.328821+00	0
1196	OFFICE OF SMALL AND DISADVANTAGED BUSINESS UTILIZATION		\N	579	\N	2024-09-29 15:49:20.330574+00	2024-09-29 15:49:20.330574+00	0
1197	CONSTRUCTION AND FACILITIES MANAGEMENT		\N	582	\N	2024-09-29 15:49:20.332245+00	2024-09-29 15:49:20.332245+00	0
1198	OFFICE OF ACQUISITION AND LOGISTICS		\N	582	\N	2024-09-29 15:49:20.333875+00	2024-09-29 15:49:20.333875+00	0
1199	OFFICE OF PROCUREMENT, ACQUISITION AND LOGISTICS		\N	582	\N	2024-09-29 15:49:20.33562+00	2024-09-29 15:49:20.33562+00	0
1200	OFFICE OF DATA GOVERNANCE AND ANALYTICS		\N	583	\N	2024-09-29 15:49:20.337786+00	2024-09-29 15:49:20.337786+00	0
1201	VA INNOVATION CENTER		\N	583	\N	2024-09-29 15:49:20.339466+00	2024-09-29 15:49:20.339466+00	0
1202	ASST SECRETARY FOR HUMAN RESOURCES AND ADMINISTRATION/OPERATIONS, SECURITY AND PREPAREDNESS		\N	584	\N	2024-09-29 15:49:20.34111+00	2024-09-29 15:49:20.34111+00	0
1203	OFFICE OF HUMAN RESOURCES AND ADMINISTRATION		\N	584	\N	2024-09-29 15:49:20.342715+00	2024-09-29 15:49:20.342715+00	0
1204	OFFICE OF THE PRINCIPAL DEPUTY ASSISTANT SECRETARY FOR OPERATIONS, SECURITY, AND PREPAREDNESS		\N	584	\N	2024-09-29 15:49:20.344409+00	2024-09-29 15:49:20.344409+00	0
1205	ACCOUNT MANAGEMENT OFFICE		\N	585	\N	2024-09-29 15:49:20.34604+00	2024-09-29 15:49:20.34604+00	0
1206	IT RESOURCE MANAGEMENT		\N	585	\N	2024-09-29 15:49:20.347795+00	2024-09-29 15:49:20.347795+00	0
1207	OFFICE OF INFORMATION SECURITY		\N	585	\N	2024-09-29 15:49:20.349463+00	2024-09-29 15:49:20.349463+00	0
1208	OFFICE OF IT DEVELOPMENT AND OPERATIONS		\N	585	\N	2024-09-29 15:49:20.35103+00	2024-09-29 15:49:20.35103+00	0
1209	OFFICE OF QUALITY, PERFORMANCE AND RISK		\N	585	\N	2024-09-29 15:49:20.352709+00	2024-09-29 15:49:20.352709+00	0
1210	OFFICE OF STRATEGIC SOURCING		\N	585	\N	2024-09-29 15:49:20.354192+00	2024-09-29 15:49:20.354192+00	0
1211	OFFICE OF THE ASSISTANT SECRETARY FOR INFORMATION AND TECHNOLOGY AND CHIEF INFORMATION OFFICER		\N	585	\N	2024-09-29 15:49:20.356055+00	2024-09-29 15:49:20.356055+00	0
1212	ASSET ENTERPRISE MANAGEMENT		\N	586	\N	2024-09-29 15:49:20.357663+00	2024-09-29 15:49:20.357663+00	0
1214	FINANCE		\N	586	\N	2024-09-29 15:49:20.361159+00	2024-09-29 15:49:20.361159+00	0
1215	OFFICE OF BUSINESS OVERSIGHT		\N	586	\N	2024-09-29 15:49:20.362844+00	2024-09-29 15:49:20.362844+00	0
1216	OFFICE OF THE ASSISTANT SECRETARY FOR MANAGEMENT AND CHIEF FINANCIAL OFFICER		\N	586	\N	2024-09-29 15:49:20.364753+00	2024-09-29 15:49:20.364753+00	0
1217	OFFICE OF ELECTRONIC HEALTH RECORD MODERNIZATION		\N	590	\N	2024-09-29 15:49:20.366443+00	2024-09-29 15:49:20.366443+00	0
1218	OFFICE OF SMALL AND DISADVANTAGED BUSINESS UTILIZATION		\N	590	\N	2024-09-29 15:49:20.368071+00	2024-09-29 15:49:20.368071+00	0
1219	OFFICE OF THE CHIEF OF STAFF		\N	591	\N	2024-09-29 15:49:20.369591+00	2024-09-29 15:49:20.369591+00	0
1220	OFFICE OF THE PRINCIPAL DEPUTY UNDER SECRETARY FOR BENEFITS		\N	591	\N	2024-09-29 15:49:20.371225+00	2024-09-29 15:49:20.371225+00	0
1221	OFFICE OF FINANCE		\N	593	\N	2024-09-29 15:49:20.372792+00	2024-09-29 15:49:20.372792+00	0
1222	OFFICE OF PATIENT ADVOCACY		\N	593	\N	2024-09-29 15:49:20.374569+00	2024-09-29 15:49:20.374569+00	0
1223	OFFICE OF READJUSTMENT COUNSELING		\N	593	\N	2024-09-29 15:49:20.376111+00	2024-09-29 15:49:20.376111+00	0
1224	OFFICE OF THE ASSISTANT DEPUTY UNDER SECRETARY FOR HEALTH FOR HEALTH INFORMATICS		\N	593	\N	2024-09-29 15:49:20.377766+00	2024-09-29 15:49:20.377766+00	0
1225	OFFICE OF THE ASSISTANT DEPUTY UNDER SECRETARY FOR HEALTH FOR WORKFORCE SERVICES		\N	593	\N	2024-09-29 15:49:20.379245+00	2024-09-29 15:49:20.379245+00	0
1226	OFFICE OF THE DEPUTY ASSISTANT UNDER SECRETARY FOR HEALTH FOR INTEGRATED VETERAN CARE		\N	593	\N	2024-09-29 15:49:20.380862+00	2024-09-29 15:49:20.380862+00	0
1227	OFFICE OF THE DEPUTY UNDER SECRETARY FOR HEALTH FOR DISCOVERY, EDUCATION AND AFFILIATE NETWORKS		\N	593	\N	2024-09-29 15:49:20.382437+00	2024-09-29 15:49:20.382437+00	0
1228	OFFICE OF THE DEPUTY UNDER SECRETARY FOR HEALTH FOR OPERATIONS AND MANAGEMENT		\N	593	\N	2024-09-29 15:49:20.384161+00	2024-09-29 15:49:20.384161+00	0
1229	OFFICE OF THE DEPUTY UNDER SECRETARY FOR HEALTH FOR ORGANIZATIONAL EXCELLENCE		\N	593	\N	2024-09-29 15:49:20.385777+00	2024-09-29 15:49:20.385777+00	0
1230	OFFICE OF THE DEPUTY UNDER SECRETARY FOR HEALTH FOR POLICY AND SERVICES		\N	593	\N	2024-09-29 15:49:20.387663+00	2024-09-29 15:49:20.387663+00	0
1231	OFFICE OF VA/DOD HEALTH AFFAIRS		\N	593	\N	2024-09-29 15:49:20.389565+00	2024-09-29 15:49:20.389565+00	0
1232	VISN 1: VA NEW ENGLAND HEALTHCARE SYSTEM		\N	593	\N	2024-09-29 15:49:20.39123+00	2024-09-29 15:49:20.39123+00	0
1233	VISN 2: NEW YORK/NEW JERSEY VA HEALTH CARE NETWORK		\N	593	\N	2024-09-29 15:49:20.392738+00	2024-09-29 15:49:20.392738+00	0
1234	VISN 4: VA HEALTHCARE - VISN 4		\N	593	\N	2024-09-29 15:49:20.394389+00	2024-09-29 15:49:20.394389+00	0
1235	VISN 5: VA CAPITOL HEALTH CARE NETWORK		\N	593	\N	2024-09-29 15:49:20.3961+00	2024-09-29 15:49:20.3961+00	0
1236	VISN 6: VA MID-ATLANTIC HEALTH CARE NETWORK		\N	593	\N	2024-09-29 15:49:20.397931+00	2024-09-29 15:49:20.397931+00	0
1237	VISN 7: VA SOUTHEAST NETWORK		\N	593	\N	2024-09-29 15:49:20.399918+00	2024-09-29 15:49:20.399918+00	0
1238	VISN 8: VA SUNSHINE HEALTHCARE NETWORK		\N	593	\N	2024-09-29 15:49:20.401769+00	2024-09-29 15:49:20.401769+00	0
1239	VISN 9: VA MIDSOUTH HEALTHCARE NETWORK		\N	593	\N	2024-09-29 15:49:20.403458+00	2024-09-29 15:49:20.403458+00	0
1240	VISN 10: VA HEALTHCARE SYSTEM		\N	593	\N	2024-09-29 15:49:20.405154+00	2024-09-29 15:49:20.405154+00	0
1241	VISN 12: VA GREAT LAKES HEALTH CARE SYSTEM		\N	593	\N	2024-09-29 15:49:20.406768+00	2024-09-29 15:49:20.406768+00	0
1242	VISN 15: VA HEARTLAND NETWORK		\N	593	\N	2024-09-29 15:49:20.408428+00	2024-09-29 15:49:20.408428+00	0
1243	VISN 16: SOUTH CENTRAL VA HEALTH CARE NETWORK		\N	593	\N	2024-09-29 15:49:20.40997+00	2024-09-29 15:49:20.40997+00	0
1244	VISN 17: VA HEART OF TEXAS HEALTH CARE NETWORK		\N	593	\N	2024-09-29 15:49:20.411685+00	2024-09-29 15:49:20.411685+00	0
1245	VISN 19: ROCKY MOUNTAIN NETWORK		\N	593	\N	2024-09-29 15:49:20.413936+00	2024-09-29 15:49:20.413936+00	0
1246	VISN 20: NORTHWEST NETWORK		\N	593	\N	2024-09-29 15:49:20.416717+00	2024-09-29 15:49:20.416717+00	0
1247	VISN 21: SIERRA PACIFIC NETWORK		\N	593	\N	2024-09-29 15:49:20.418392+00	2024-09-29 15:49:20.418392+00	0
1248	VISN 22: DESERT PACIFIC HEALTHCARE NETWORK		\N	593	\N	2024-09-29 15:49:20.420202+00	2024-09-29 15:49:20.420202+00	0
1249	VISN 23: VA MIDWEST HEALTH CARE NETWORK		\N	593	\N	2024-09-29 15:49:20.421832+00	2024-09-29 15:49:20.421832+00	0
1250	20TH FIGHTER WING		2	\N	\N	2024-09-29 15:49:20.423898+00	2024-09-29 15:49:20.423898+00	0
1251	23D WING		2	\N	\N	2024-09-29 15:49:20.426276+00	2024-09-29 15:49:20.426276+00	0
1252	325TH FIGHTER WING		2	\N	\N	2024-09-29 15:49:20.428402+00	2024-09-29 15:49:20.428402+00	0
1255	388TH FIGHTER WING		2	\N	\N	2024-09-29 15:49:20.433926+00	2024-09-29 15:49:20.433926+00	0
1256	4TH FIGHTER WING		2	\N	\N	2024-09-29 15:49:20.435749+00	2024-09-29 15:49:20.435749+00	0
1257	552D AIR CONTROL WING		2	\N	\N	2024-09-29 15:49:20.437723+00	2024-09-29 15:49:20.437723+00	0
1258	633D AIR BASE WING		2	\N	\N	2024-09-29 15:49:20.44026+00	2024-09-29 15:49:20.44026+00	0
1259	319TH RECONNAISSANCE WING		3	\N	\N	2024-09-29 15:49:20.441867+00	2024-09-29 15:49:20.441867+00	0
1260	480TH ISR WING		3	\N	\N	2024-09-29 15:49:20.443525+00	2024-09-29 15:49:20.443525+00	0
1261	557TH WEATHER WING		3	\N	\N	2024-09-29 15:49:20.445329+00	2024-09-29 15:49:20.445329+00	0
1262	55TH WING		3	\N	\N	2024-09-29 15:49:20.447443+00	2024-09-29 15:49:20.447443+00	0
1263	67TH CYBERSPACE WING		3	\N	\N	2024-09-29 15:49:20.449119+00	2024-09-29 15:49:20.449119+00	0
1264	688TH CYBERSPACE WING		3	\N	\N	2024-09-29 15:49:20.450837+00	2024-09-29 15:49:20.450837+00	0
1265	70TH ISR WING		3	\N	\N	2024-09-29 15:49:20.452656+00	2024-09-29 15:49:20.452656+00	0
1266	9TH RECONNAISSANCE WING		3	\N	\N	2024-09-29 15:49:20.454498+00	2024-09-29 15:49:20.454498+00	0
1267	AIR FORCE CRYPTOLOGIC OFFICE		3	\N	\N	2024-09-29 15:49:20.456194+00	2024-09-29 15:49:20.456194+00	0
1268	AIR FORCE TECHNICAL APPLICATIONS CENTER		3	\N	\N	2024-09-29 15:49:20.459135+00	2024-09-29 15:49:20.459135+00	0
1269	379TH AIR EXPEDITIONARY WING		5	\N	\N	2024-09-29 15:49:20.460897+00	2024-09-29 15:49:20.460897+00	0
1270	380TH AIR EXPEDITIONARY WING		5	\N	\N	2024-09-29 15:49:20.462678+00	2024-09-29 15:49:20.462678+00	0
1271	386TH AIR EXPEDITIONARY WING		5	\N	\N	2024-09-29 15:49:20.465345+00	2024-09-29 15:49:20.465345+00	0
1272	COMBINED AIR AND SPACE OPERATIONS CENTER		5	\N	\N	2024-09-29 15:49:20.466985+00	2024-09-29 15:49:20.466985+00	0
1273	COMMUNICATIONS DIRECTORATE		5	\N	\N	2024-09-29 15:49:20.468734+00	2024-09-29 15:49:20.468734+00	0
1274	INSTALLATIONS (A7)		5	\N	\N	2024-09-29 15:49:20.470478+00	2024-09-29 15:49:20.470478+00	0
1275	INTELLIGENCE (A2)		5	\N	\N	2024-09-29 15:49:20.472163+00	2024-09-29 15:49:20.472163+00	0
1276	LOGISTICS (A4)		5	\N	\N	2024-09-29 15:49:20.47372+00	2024-09-29 15:49:20.47372+00	0
1277	OPERATIONS (A3)		5	\N	\N	2024-09-29 15:49:20.47526+00	2024-09-29 15:49:20.47526+00	0
1278	505TH COMMAND AND CONTROL WING		7	\N	\N	2024-09-29 15:49:20.47696+00	2024-09-29 15:49:20.47696+00	0
1279	53D WING		7	\N	\N	2024-09-29 15:49:20.478496+00	2024-09-29 15:49:20.478496+00	0
1280	57TH WING		7	\N	\N	2024-09-29 15:49:20.488199+00	2024-09-29 15:49:20.488199+00	0
1281	99TH AIR BASE WING		7	\N	\N	2024-09-29 15:49:20.490903+00	2024-09-29 15:49:20.490903+00	0
1282	AIR FORCE TACTICAL EXPLOITATION OF NATIONAL CAPABILITIES (TENCAP)		7	\N	\N	2024-09-29 15:49:20.492693+00	2024-09-29 15:49:20.492693+00	0
1283	NEVADA TEST AND TRAINING RANGE		7	\N	\N	2024-09-29 15:49:20.494394+00	2024-09-29 15:49:20.494394+00	0
1284	12TH FLYING TRAINING WING		8	\N	\N	2024-09-29 15:49:20.496348+00	2024-09-29 15:49:20.496348+00	0
1285	14TH FLYING TRAINING WING		8	\N	\N	2024-09-29 15:49:20.499924+00	2024-09-29 15:49:20.499924+00	0
1286	33D FIGHTER WING		8	\N	\N	2024-09-29 15:49:20.501977+00	2024-09-29 15:49:20.501977+00	0
1287	47TH FLYING TRAINING WING		8	\N	\N	2024-09-29 15:49:20.503784+00	2024-09-29 15:49:20.503784+00	0
1288	49TH WING		8	\N	\N	2024-09-29 15:49:20.505467+00	2024-09-29 15:49:20.505467+00	0
1289	56TH FIGHTER WING		8	\N	\N	2024-09-29 15:49:20.507293+00	2024-09-29 15:49:20.507293+00	0
1290	58TH SPECIAL OPERATIONS WING		8	\N	\N	2024-09-29 15:49:20.509234+00	2024-09-29 15:49:20.509234+00	0
1291	71ST FLYING TRAINING WING		8	\N	\N	2024-09-29 15:49:20.511173+00	2024-09-29 15:49:20.511173+00	0
1292	80TH FLYING TRAINING WING		8	\N	\N	2024-09-29 15:49:20.513091+00	2024-09-29 15:49:20.513091+00	0
1293	97TH AIR MOBILITY WING		8	\N	\N	2024-09-29 15:49:20.514705+00	2024-09-29 15:49:20.514705+00	0
1294	17TH TRAINING WING		9	\N	\N	2024-09-29 15:49:20.516432+00	2024-09-29 15:49:20.516432+00	0
1295	37TH TRAINING WING		9	\N	\N	2024-09-29 15:49:20.518166+00	2024-09-29 15:49:20.518166+00	0
1296	81ST TRAINING WING		9	\N	\N	2024-09-29 15:49:20.519761+00	2024-09-29 15:49:20.519761+00	0
1297	82D TRAINING WING		9	\N	\N	2024-09-29 15:49:20.521557+00	2024-09-29 15:49:20.521557+00	0
1298	42D AIR BASE WING		15	\N	\N	2024-09-29 15:49:20.523237+00	2024-09-29 15:49:20.523237+00	0
1299	AIR COMMAND AND STAFF COLLEGE		15	\N	\N	2024-09-29 15:49:20.524996+00	2024-09-29 15:49:20.524996+00	0
1300	AIR FORCE INSTITUTE OF TECHNOLOGY		15	\N	\N	2024-09-29 15:49:20.527163+00	2024-09-29 15:49:20.527163+00	0
1301	AIR WAR COLLEGE		15	\N	\N	2024-09-29 15:49:20.528751+00	2024-09-29 15:49:20.528751+00	0
1302	THOMAS N BARNES CENTER FOR ENLISTED EDUCATION		15	\N	\N	2024-09-29 15:49:20.530264+00	2024-09-29 15:49:20.530264+00	0
1303	28TH BOMB WING		22	\N	\N	2024-09-29 15:49:20.531761+00	2024-09-29 15:49:20.531761+00	0
1304	2D BOMB WING		22	\N	\N	2024-09-29 15:49:20.533287+00	2024-09-29 15:49:20.533287+00	0
1305	307TH WING		22	\N	\N	2024-09-29 15:49:20.534866+00	2024-09-29 15:49:20.534866+00	0
1306	509TH BOMB WING		22	\N	\N	2024-09-29 15:49:20.536583+00	2024-09-29 15:49:20.536583+00	0
1307	5TH BOMB WING		22	\N	\N	2024-09-29 15:49:20.538275+00	2024-09-29 15:49:20.538275+00	0
1308	608TH AIR OPERATIONS CENTER		22	\N	\N	2024-09-29 15:49:20.540139+00	2024-09-29 15:49:20.540139+00	0
1309	7TH BOMB WING		22	\N	\N	2024-09-29 15:49:20.541784+00	2024-09-29 15:49:20.541784+00	0
1310	AIR FORCE CIVIL ENGINEER CENTER		23	\N	\N	2024-09-29 15:49:20.543603+00	2024-09-29 15:49:20.543603+00	0
1311	AIR FORCE FINANCIAL SERVICES CENTER		23	\N	\N	2024-09-29 15:49:20.545408+00	2024-09-29 15:49:20.545408+00	0
1312	AIR FORCE INSTALLATION CONTRACTING CENTER		23	\N	\N	2024-09-29 15:49:20.54774+00	2024-09-29 15:49:20.54774+00	0
1313	AIR FORCE SECURITY FORCES CENTER		23	\N	\N	2024-09-29 15:49:20.549794+00	2024-09-29 15:49:20.549794+00	0
1314	AIR FORCE SERVICES ACTIVITY		23	\N	\N	2024-09-29 15:49:20.551408+00	2024-09-29 15:49:20.551408+00	0
1315	66TH AIR BASE GROUP		24	\N	\N	2024-09-29 15:49:20.553129+00	2024-09-29 15:49:20.553129+00	0
1316	88TH AIR BASE WING		24	\N	\N	2024-09-29 15:49:20.554738+00	2024-09-29 15:49:20.554738+00	0
1317	AGILE COMBAT SUPPORT DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.556507+00	2024-09-29 15:49:20.556507+00	0
1318	AIR FORCE METROLOGY AND CALIBRATION PROGRAM OFFICE		24	\N	\N	2024-09-29 15:49:20.557984+00	2024-09-29 15:49:20.557984+00	0
1319	AIR FORCE SECURITY ASSISTANCE AND COOPERATION DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.567014+00	2024-09-29 15:49:20.567014+00	0
1320	ARMAMENT DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.568797+00	2024-09-29 15:49:20.568797+00	0
1321	BOMBERS DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.571638+00	2024-09-29 15:49:20.571638+00	0
1322	BUSINESS AND ENTERPRISE SYSTEMS DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.573452+00	2024-09-29 15:49:20.573452+00	0
1323	C2ISR DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.575332+00	2024-09-29 15:49:20.575332+00	0
1324	C3I/NETWORKS DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.577207+00	2024-09-29 15:49:20.577207+00	0
1325	CONTRACT EXECUTION DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.578882+00	2024-09-29 15:49:20.578882+00	0
1326	DIGITAL DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.580624+00	2024-09-29 15:49:20.580624+00	0
1327	FIGHTERS AND ADVANCED AIRCRAFT DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.582482+00	2024-09-29 15:49:20.582482+00	0
1328	INTELLIGENCE DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.584189+00	2024-09-29 15:49:20.584189+00	0
1329	ISR/SOF DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.586089+00	2024-09-29 15:49:20.586089+00	0
1330	MOBILITY AND TRAINING AIRCRAFT DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.587964+00	2024-09-29 15:49:20.587964+00	0
1837	INFORMATION TECHNOLOGY		735	\N	\N	2024-09-29 15:49:21.602886+00	2024-09-29 15:49:21.602886+00	0
1331	PROGRAM DEVELOPMENT AND INTEGRATION DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.589587+00	2024-09-29 15:49:20.589587+00	0
1332	PROPULSION DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.591664+00	2024-09-29 15:49:20.591664+00	0
1333	STRATEGIC SYSTEMS		24	\N	\N	2024-09-29 15:49:20.593368+00	2024-09-29 15:49:20.593368+00	0
1334	TANKER DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.595023+00	2024-09-29 15:49:20.595023+00	0
1335	TECHNICAL ENGINEERING SERVICES DIRECTORATE		24	\N	\N	2024-09-29 15:49:20.596873+00	2024-09-29 15:49:20.596873+00	0
1336	AIR DELIVERED CAPABILITIES DIRECTORATE (ND)		25	\N	\N	2024-09-29 15:49:20.598356+00	2024-09-29 15:49:20.598356+00	0
1337	INTERCONTINENTAL BALLISTIC MISSILE SYSTEMS DIRECTORATE (NI)		25	\N	\N	2024-09-29 15:49:20.600199+00	2024-09-29 15:49:20.600199+00	0
1338	NUCLEAR COMMAND, CONTROL AND COMMUNICATIONS INTEGRATION DIRECTORATE (NC)		25	\N	\N	2024-09-29 15:49:20.604752+00	2024-09-29 15:49:20.604752+00	0
1339	NUCLEAR TECHNOLOGY AND INTERAGENCY DIRECTORATE (NT)		25	\N	\N	2024-09-29 15:49:20.606606+00	2024-09-29 15:49:20.606606+00	0
1340	711TH HUMAN PERFORMANCE WING		26	\N	\N	2024-09-29 15:49:20.608252+00	2024-09-29 15:49:20.608252+00	0
1341	AEROSPACE SYSTEMS DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.610294+00	2024-09-29 15:49:20.610294+00	0
1342	AFWERX		26	\N	\N	2024-09-29 15:49:20.612284+00	2024-09-29 15:49:20.612284+00	0
1343	AIR FORCE OFFICE OF SCIENTIFIC RESEARCH		26	\N	\N	2024-09-29 15:49:20.615803+00	2024-09-29 15:49:20.615803+00	0
1344	DIRECTED ENERGY DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.617642+00	2024-09-29 15:49:20.617642+00	0
1345	INFORMATION DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.619652+00	2024-09-29 15:49:20.619652+00	0
1346	MATERIALS AND MANUFACTURING DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.621405+00	2024-09-29 15:49:20.621405+00	0
1347	MUNITIONS DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.625139+00	2024-09-29 15:49:20.625139+00	0
1348	PHILLIPS RESEARCH SITE (DET. 8)		26	\N	\N	2024-09-29 15:49:20.627238+00	2024-09-29 15:49:20.627238+00	0
1349	ROME RESEARCH SITE (DET. 4)		26	\N	\N	2024-09-29 15:49:20.629+00	2024-09-29 15:49:20.629+00	0
1350	SENSORS DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.630562+00	2024-09-29 15:49:20.630562+00	0
1351	SPACE VEHICLES DIRECTORATE		26	\N	\N	2024-09-29 15:49:20.632296+00	2024-09-29 15:49:20.632296+00	0
1352	WRIGHT RESEARCH SITE (DET. 1)		26	\N	\N	2024-09-29 15:49:20.633781+00	2024-09-29 15:49:20.633781+00	0
1353	448TH SUPPLY CHAIN MANAGEMENT WING		27	\N	\N	2024-09-29 15:49:20.635583+00	2024-09-29 15:49:20.635583+00	0
1354	635TH SUPPLY CHAIN OPERATIONS WING		27	\N	\N	2024-09-29 15:49:20.637295+00	2024-09-29 15:49:20.637295+00	0
1355	72ND AIR BASE WING		27	\N	\N	2024-09-29 15:49:20.638882+00	2024-09-29 15:49:20.638882+00	0
1356	75TH AIR BASE WING		27	\N	\N	2024-09-29 15:49:20.64059+00	2024-09-29 15:49:20.64059+00	0
1357	78TH AIR BASE WING		27	\N	\N	2024-09-29 15:49:20.642311+00	2024-09-29 15:49:20.642311+00	0
1358	OGDEN AIR LOGISTICS COMPLEX		27	\N	\N	2024-09-29 15:49:20.644035+00	2024-09-29 15:49:20.644035+00	0
1359	OKLAHOMA CITY AIR LOGISTICS COMPLEX		27	\N	\N	2024-09-29 15:49:20.645745+00	2024-09-29 15:49:20.645745+00	0
1360	WARNER ROBINS AIR LOGISTICS COMPLEX		27	\N	\N	2024-09-29 15:49:20.647347+00	2024-09-29 15:49:20.647347+00	0
1361	412TH TEST WING		28	\N	\N	2024-09-29 15:49:20.648965+00	2024-09-29 15:49:20.648965+00	0
1362	96TH TEST WING		28	\N	\N	2024-09-29 15:49:20.650434+00	2024-09-29 15:49:20.650434+00	0
1363	ARNOLD ENGINEERING DEVELOPMENT COMPLEX		28	\N	\N	2024-09-29 15:49:20.65313+00	2024-09-29 15:49:20.65313+00	0
1364	ACQUISITIONS (SG5)		31	\N	\N	2024-09-29 15:49:20.654906+00	2024-09-29 15:49:20.654906+00	0
1365	HEALTHCARE OPERATIONS (SG3)		31	\N	\N	2024-09-29 15:49:20.656586+00	2024-09-29 15:49:20.656586+00	0
1366	MEDICAL SERVICE (SGH)		31	\N	\N	2024-09-29 15:49:20.65812+00	2024-09-29 15:49:20.65812+00	0
1367	NURSING SERVICE (SGN)		31	\N	\N	2024-09-29 15:49:20.65989+00	2024-09-29 15:49:20.65989+00	0
1368	OFFICE OF THE CHIEF INFORMATION OFFICER (SG6)		31	\N	\N	2024-09-29 15:49:20.662548+00	2024-09-29 15:49:20.662548+00	0
1369	RESEARCH, DEVELOPMENT & INNOVATION (SG9)		31	\N	\N	2024-09-29 15:49:20.664237+00	2024-09-29 15:49:20.664237+00	0
1370	301ST FIGHTER WING		33	\N	\N	2024-09-29 15:49:20.666757+00	2024-09-29 15:49:20.666757+00	0
1371	307TH BOMB WING		33	\N	\N	2024-09-29 15:49:20.668424+00	2024-09-29 15:49:20.668424+00	0
1372	482ND FIGHTER WING		33	\N	\N	2024-09-29 15:49:20.670087+00	2024-09-29 15:49:20.670087+00	0
1373	920TH RESCUE WING		33	\N	\N	2024-09-29 15:49:20.671622+00	2024-09-29 15:49:20.671622+00	0
1374	943RD RESCUE GROUP		33	\N	\N	2024-09-29 15:49:20.673506+00	2024-09-29 15:49:20.673506+00	0
1375	302ND AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.675107+00	2024-09-29 15:49:20.675107+00	0
1376	908TH AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.676729+00	2024-09-29 15:49:20.676729+00	0
1377	910TH AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.678304+00	2024-09-29 15:49:20.678304+00	0
1378	911TH AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.679971+00	2024-09-29 15:49:20.679971+00	0
1379	914TH AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.681681+00	2024-09-29 15:49:20.681681+00	0
1380	934TH AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.683271+00	2024-09-29 15:49:20.683271+00	0
1381	94TH AIRLIFT WING		34	\N	\N	2024-09-29 15:49:20.685227+00	2024-09-29 15:49:20.685227+00	0
1382	954TH RESERVE SUPPORT SQUADRON		34	\N	\N	2024-09-29 15:49:20.68689+00	2024-09-29 15:49:20.68689+00	0
1383	349TH AIR MOBILITY WING		35	\N	\N	2024-09-29 15:49:20.688468+00	2024-09-29 15:49:20.688468+00	0
1384	434TH AIR REFUELING WING		35	\N	\N	2024-09-29 15:49:20.690009+00	2024-09-29 15:49:20.690009+00	0
1385	445TH AIRLIFT WING		35	\N	\N	2024-09-29 15:49:20.693241+00	2024-09-29 15:49:20.693241+00	0
1386	452ND AIR MOBILITY WING		35	\N	\N	2024-09-29 15:49:20.694944+00	2024-09-29 15:49:20.694944+00	0
1387	100TH AIR REFUELING WING		37	\N	\N	2024-09-29 15:49:20.696584+00	2024-09-29 15:49:20.696584+00	0
1388	31ST FIGHTER WING		37	\N	\N	2024-09-29 15:49:20.698226+00	2024-09-29 15:49:20.698226+00	0
1389	39TH AIR BASE WING		37	\N	\N	2024-09-29 15:49:20.699842+00	2024-09-29 15:49:20.699842+00	0
1390	435TH AIR EXPEDITIONARY WING		37	\N	\N	2024-09-29 15:49:20.70151+00	2024-09-29 15:49:20.70151+00	0
1391	48TH FIGHTER WING		37	\N	\N	2024-09-29 15:49:20.703212+00	2024-09-29 15:49:20.703212+00	0
1392	501ST COMBAT SUPPORT WING		37	\N	\N	2024-09-29 15:49:20.713065+00	2024-09-29 15:49:20.713065+00	0
1393	52ND FIGHTER WING		37	\N	\N	2024-09-29 15:49:20.717089+00	2024-09-29 15:49:20.717089+00	0
1394	86TH AIRLIFT WING		37	\N	\N	2024-09-29 15:49:20.719305+00	2024-09-29 15:49:20.719305+00	0
1395	19TH AIRLIFT WING		39	\N	\N	2024-09-29 15:49:20.722155+00	2024-09-29 15:49:20.722155+00	0
1396	22ND AIR REFUELING WING		39	\N	\N	2024-09-29 15:49:20.724214+00	2024-09-29 15:49:20.724214+00	0
1397	305TH AIR MOBILITY WING		39	\N	\N	2024-09-29 15:49:20.726269+00	2024-09-29 15:49:20.726269+00	0
1398	375TH AIR MOBILITY WING		39	\N	\N	2024-09-29 15:49:20.729894+00	2024-09-29 15:49:20.729894+00	0
1399	436TH AIRLIFT WING		39	\N	\N	2024-09-29 15:49:20.732591+00	2024-09-29 15:49:20.732591+00	0
1400	437TH AIRLIFT WING		39	\N	\N	2024-09-29 15:49:20.734312+00	2024-09-29 15:49:20.734312+00	0
1401	60TH AIR MOBILITY WING		39	\N	\N	2024-09-29 15:49:20.736265+00	2024-09-29 15:49:20.736265+00	0
1402	618TH AIR OPERATIONS CENTER (TANKER AIRLIFT CONTROL CENTER)		39	\N	\N	2024-09-29 15:49:20.738206+00	2024-09-29 15:49:20.738206+00	0
1403	6TH AIR MOBILITY WING		39	\N	\N	2024-09-29 15:49:20.740569+00	2024-09-29 15:49:20.740569+00	0
1404	89TH AIRLIFT WING		39	\N	\N	2024-09-29 15:49:20.742334+00	2024-09-29 15:49:20.742334+00	0
1405	92ND AIR REFUELING WING		39	\N	\N	2024-09-29 15:49:20.744223+00	2024-09-29 15:49:20.744223+00	0
1406	521ST AIR MOBILITY OPERATIONS WING		41	\N	\N	2024-09-29 15:49:20.746624+00	2024-09-29 15:49:20.746624+00	0
1407	621ST CONTINGENCY RESPONSE WING		41	\N	\N	2024-09-29 15:49:20.748576+00	2024-09-29 15:49:20.748576+00	0
1408	EXPEDITIONARY OPERATIONS SCHOOL		41	\N	\N	2024-09-29 15:49:20.750294+00	2024-09-29 15:49:20.750294+00	0
1409	PEO COMMAND, CONTROL, COMMUNICATIONS, AND BATTLE MANAGEMENT (C3BM)		47	\N	\N	2024-09-29 15:49:20.752027+00	2024-09-29 15:49:20.752027+00	0
1410	DEPARTMENT OF DEFENSE CYBER CRIME CENTER (DC3)		48	\N	\N	2024-09-29 15:49:20.753842+00	2024-09-29 15:49:20.753842+00	0
1411	SPACE BASE DELTA 1		57	\N	\N	2024-09-29 15:49:20.755479+00	2024-09-29 15:49:20.755479+00	0
1412	SPACE BASE DELTA 2		57	\N	\N	2024-09-29 15:49:20.757223+00	2024-09-29 15:49:20.757223+00	0
1413	SPACE DELTA 2 - SPACE DOMAIN AWARENESS		57	\N	\N	2024-09-29 15:49:20.759014+00	2024-09-29 15:49:20.759014+00	0
1414	SPACE DELTA 5 - C2		57	\N	\N	2024-09-29 15:49:20.760777+00	2024-09-29 15:49:20.760777+00	0
1415	SPACE DELTA 6 - CYBERSPACE OPERATIONS		57	\N	\N	2024-09-29 15:49:20.762458+00	2024-09-29 15:49:20.762458+00	0
1416	SPACE DELTA 8 - SATELLITE COMMS/NAVIGATION WARFARE		57	\N	\N	2024-09-29 15:49:20.764299+00	2024-09-29 15:49:20.764299+00	0
1417	ADVANCED SYSTEMS AND DEVELOPMENT DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.766178+00	2024-09-29 15:49:20.766178+00	0
1418	ASSURED ACCESS TO SPACE		58	\N	\N	2024-09-29 15:49:20.767935+00	2024-09-29 15:49:20.767935+00	0
1419	GLOBAL POSITIONING SYSTEMS DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.76967+00	2024-09-29 15:49:20.76967+00	0
1420	LAUNCH ENTERPRISE DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.771599+00	2024-09-29 15:49:20.771599+00	0
1421	MILCOMM AND PNT		58	\N	\N	2024-09-29 15:49:20.773436+00	2024-09-29 15:49:20.773436+00	0
1422	MILSATCOM SYSTEMS DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.775258+00	2024-09-29 15:49:20.775258+00	0
1423	RANGE AND NETWORK DIVISION (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.776968+00	2024-09-29 15:49:20.776968+00	0
1424	REMOTE SENSING SYSTEMS DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.778711+00	2024-09-29 15:49:20.778711+00	0
1425	SPACE DOMAIN AWARENESS AND COMBAT POWER		58	\N	\N	2024-09-29 15:49:20.780493+00	2024-09-29 15:49:20.780493+00	0
1426	SPACE LAUNCH DELTA 30		58	\N	\N	2024-09-29 15:49:20.78241+00	2024-09-29 15:49:20.78241+00	0
1427	SPACE LAUNCH DELTA 45		58	\N	\N	2024-09-29 15:49:20.784339+00	2024-09-29 15:49:20.784339+00	0
1428	SPACE LOGISTICS DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.786048+00	2024-09-29 15:49:20.786048+00	0
1429	SPACE SENSING		58	\N	\N	2024-09-29 15:49:20.78798+00	2024-09-29 15:49:20.78798+00	0
1430	SPACE SUPERIORITY SYSTEMS DIRECTORATE (LEGACY SMC)		58	\N	\N	2024-09-29 15:49:20.789898+00	2024-09-29 15:49:20.789898+00	0
1431	BUFFALO DISTRICT		61	\N	\N	2024-09-29 15:49:20.791617+00	2024-09-29 15:49:20.791617+00	0
1432	CHICAGO DISTRICT		61	\N	\N	2024-09-29 15:49:20.793419+00	2024-09-29 15:49:20.793419+00	0
1433	DETROIT DISTRICT		61	\N	\N	2024-09-29 15:49:20.795451+00	2024-09-29 15:49:20.795451+00	0
1434	HUNTINGTON DISTRICT		61	\N	\N	2024-09-29 15:49:20.797482+00	2024-09-29 15:49:20.797482+00	0
1435	LOUISVILLE DISTRICT		61	\N	\N	2024-09-29 15:49:20.799572+00	2024-09-29 15:49:20.799572+00	0
1436	NASHVILLE DISTRICT		61	\N	\N	2024-09-29 15:49:20.801542+00	2024-09-29 15:49:20.801542+00	0
1437	PITTSBURGH DISTRICT		61	\N	\N	2024-09-29 15:49:20.803177+00	2024-09-29 15:49:20.803177+00	0
1438	DIRECTORATE OF CIVIL WORKS		62	\N	\N	2024-09-29 15:49:20.805104+00	2024-09-29 15:49:20.805104+00	0
1439	DIRECTORATE OF CORPORATE INFORMATION (INFORMATION TECHNOLOGY)		62	\N	\N	2024-09-29 15:49:20.806775+00	2024-09-29 15:49:20.806775+00	0
1440	DIRECTORATE OF RESEARCH AND DEVELOPMENT		62	\N	\N	2024-09-29 15:49:20.80849+00	2024-09-29 15:49:20.80849+00	0
1441	ENGINEERING RESEARCH AND DEVELOPMENT CENTER		62	\N	\N	2024-09-29 15:49:20.810494+00	2024-09-29 15:49:20.810494+00	0
1442	US ARMY ENGINEERING AND SUPPORT CENTER HUNTSVILLE		62	\N	\N	2024-09-29 15:49:20.812453+00	2024-09-29 15:49:20.812453+00	0
1443	MEMPHIS DISTRICT		63	\N	\N	2024-09-29 15:49:20.814466+00	2024-09-29 15:49:20.814466+00	0
1444	NEW ORLEANS DISTRICT		63	\N	\N	2024-09-29 15:49:20.816223+00	2024-09-29 15:49:20.816223+00	0
1445	ROCK ISLAND DISTRICT		63	\N	\N	2024-09-29 15:49:20.817895+00	2024-09-29 15:49:20.817895+00	0
1446	ST LOUIS DISTRICT		63	\N	\N	2024-09-29 15:49:20.819694+00	2024-09-29 15:49:20.819694+00	0
1447	ST PAUL DISTRICT		63	\N	\N	2024-09-29 15:49:20.821576+00	2024-09-29 15:49:20.821576+00	0
1448	VICKSBURG DISTRICT		63	\N	\N	2024-09-29 15:49:20.823182+00	2024-09-29 15:49:20.823182+00	0
1449	BALTIMORE DISTRICT		64	\N	\N	2024-09-29 15:49:20.825045+00	2024-09-29 15:49:20.825045+00	0
1450	EUROPE DISTRICT		64	\N	\N	2024-09-29 15:49:20.82666+00	2024-09-29 15:49:20.82666+00	0
1451	NEW ENGLAND DISTRICT		64	\N	\N	2024-09-29 15:49:20.828383+00	2024-09-29 15:49:20.828383+00	0
1452	NEW YORK DISTRICT		64	\N	\N	2024-09-29 15:49:20.829987+00	2024-09-29 15:49:20.829987+00	0
1453	NORFOLK DISTRICT		64	\N	\N	2024-09-29 15:49:20.831467+00	2024-09-29 15:49:20.831467+00	0
1454	PHILADELPHIA DISTRICT		64	\N	\N	2024-09-29 15:49:20.833224+00	2024-09-29 15:49:20.833224+00	0
1455	KANSAS CITY DISTRICT		65	\N	\N	2024-09-29 15:49:20.834829+00	2024-09-29 15:49:20.834829+00	0
1456	OMAHA DISTRICT		65	\N	\N	2024-09-29 15:49:20.836502+00	2024-09-29 15:49:20.836502+00	0
1457	PORTLAND DISTRICT		65	\N	\N	2024-09-29 15:49:20.838058+00	2024-09-29 15:49:20.838058+00	0
1458	SEATTLE DISTRICT		65	\N	\N	2024-09-29 15:49:20.839736+00	2024-09-29 15:49:20.839736+00	0
1459	WALLA WALLA DISTRICT		65	\N	\N	2024-09-29 15:49:20.841559+00	2024-09-29 15:49:20.841559+00	0
1460	ALASKA DISTRICT		66	\N	\N	2024-09-29 15:49:20.84308+00	2024-09-29 15:49:20.84308+00	0
1461	FAR EAST DISTRICT		66	\N	\N	2024-09-29 15:49:20.844889+00	2024-09-29 15:49:20.844889+00	0
1462	HONOLULU DISTRICT		66	\N	\N	2024-09-29 15:49:20.846758+00	2024-09-29 15:49:20.846758+00	0
1463	JAPAN ENGINEER DISTRICT		66	\N	\N	2024-09-29 15:49:20.848343+00	2024-09-29 15:49:20.848343+00	0
1464	CHARLESTON DISTRICT		67	\N	\N	2024-09-29 15:49:20.850249+00	2024-09-29 15:49:20.850249+00	0
1465	JACKSONVILLE DISTRICT		67	\N	\N	2024-09-29 15:49:20.85209+00	2024-09-29 15:49:20.85209+00	0
1466	MOBILE DISTRICT		67	\N	\N	2024-09-29 15:49:20.853871+00	2024-09-29 15:49:20.853871+00	0
1467	SAVANNAH DISTRICT		67	\N	\N	2024-09-29 15:49:20.855741+00	2024-09-29 15:49:20.855741+00	0
1468	WILMINGTON DISTRICT		67	\N	\N	2024-09-29 15:49:20.857359+00	2024-09-29 15:49:20.857359+00	0
1469	ALBUQUERQUE DISTRICT		68	\N	\N	2024-09-29 15:49:20.858845+00	2024-09-29 15:49:20.858845+00	0
1470	LOS ANGELES DISTRICT		68	\N	\N	2024-09-29 15:49:20.860882+00	2024-09-29 15:49:20.860882+00	0
1471	SACRAMENTO DISTRICT		68	\N	\N	2024-09-29 15:49:20.862379+00	2024-09-29 15:49:20.862379+00	0
1472	SAN FRANCISCO DISTRICT		68	\N	\N	2024-09-29 15:49:20.86412+00	2024-09-29 15:49:20.86412+00	0
1473	FORT WORTH DISTRICT		69	\N	\N	2024-09-29 15:49:20.865903+00	2024-09-29 15:49:20.865903+00	0
1474	GALVESTON DISTRICT		69	\N	\N	2024-09-29 15:49:20.867647+00	2024-09-29 15:49:20.867647+00	0
1475	LITTLE ROCK DISTRICT		69	\N	\N	2024-09-29 15:49:20.869501+00	2024-09-29 15:49:20.869501+00	0
1476	TULSA DISTRICT		69	\N	\N	2024-09-29 15:49:20.871124+00	2024-09-29 15:49:20.871124+00	0
1477	AFGHANISTAN DISTRICT		70	\N	\N	2024-09-29 15:49:20.872946+00	2024-09-29 15:49:20.872946+00	0
1478	MIDDLE EAST DISTRICT		70	\N	\N	2024-09-29 15:49:20.874698+00	2024-09-29 15:49:20.874698+00	0
1479	OFFICE OF QUALITY INITIATIVES AND TRAINING		73	\N	\N	2024-09-29 15:49:20.876432+00	2024-09-29 15:49:20.876432+00	0
1480	2ND THEATER SIGNAL BRIGADE		74	\N	\N	2024-09-29 15:49:20.878039+00	2024-09-29 15:49:20.878039+00	0
1481	7TH SIGNAL COMMAND (THEATER)		74	\N	\N	2024-09-29 15:49:20.879663+00	2024-09-29 15:49:20.879663+00	0
1482	COMBINED ARMS TRAINING CENTER		76	\N	\N	2024-09-29 15:49:20.881429+00	2024-09-29 15:49:20.881429+00	0
1483	G1 PERSONNEL READINESS		77	\N	\N	2024-09-29 15:49:20.883065+00	2024-09-29 15:49:20.883065+00	0
1484	G3/5/7 OPERATIONS AND PLANS		77	\N	\N	2024-09-29 15:49:20.884726+00	2024-09-29 15:49:20.884726+00	0
1485	G4 LOGISTICS AND TECHNICAL SUPPORT		77	\N	\N	2024-09-29 15:49:20.886521+00	2024-09-29 15:49:20.886521+00	0
1486	G6 INFORMATION TECHNOLOGY		77	\N	\N	2024-09-29 15:49:20.888133+00	2024-09-29 15:49:20.888133+00	0
1487	G8 COMPTROLLER		77	\N	\N	2024-09-29 15:49:20.889999+00	2024-09-29 15:49:20.889999+00	0
1488	1ST ARMORED DIVISION		79	\N	\N	2024-09-29 15:49:20.891611+00	2024-09-29 15:49:20.891611+00	0
1489	INSTITUTE OF SURGICAL RESEARCH		82	\N	\N	2024-09-29 15:49:20.893142+00	2024-09-29 15:49:20.893142+00	0
1490	MEDICAL MATERIEL DEVELOPMENT ACTIVITY		82	\N	\N	2024-09-29 15:49:20.894729+00	2024-09-29 15:49:20.894729+00	0
1491	MEDICAL RESEARCH ACQUISITION ACTIVITY		82	\N	\N	2024-09-29 15:49:20.896395+00	2024-09-29 15:49:20.896395+00	0
1492	MEDICAL RESEARCH INSTITUTE OF INFECTIOUS DISEASES		82	\N	\N	2024-09-29 15:49:20.90022+00	2024-09-29 15:49:20.90022+00	0
1493	WALTER REED ARMY INSTITUTE OF RESEARCH		82	\N	\N	2024-09-29 15:49:20.901746+00	2024-09-29 15:49:20.901746+00	0
1494	CCDC ARMAMENTS CENTER		83	\N	\N	2024-09-29 15:49:20.904483+00	2024-09-29 15:49:20.904483+00	0
1495	CCDC ARMY RESEARCH LABORATORY		83	\N	\N	2024-09-29 15:49:20.906251+00	2024-09-29 15:49:20.906251+00	0
1496	CCDC AVIATION AND MISSILE CENTER		83	\N	\N	2024-09-29 15:49:20.907899+00	2024-09-29 15:49:20.907899+00	0
1497	CCDC C5ISR CENTER		83	\N	\N	2024-09-29 15:49:20.909549+00	2024-09-29 15:49:20.909549+00	0
1498	CCDC CHEMICAL BIOLOGICAL CENTER		83	\N	\N	2024-09-29 15:49:20.911235+00	2024-09-29 15:49:20.911235+00	0
1499	CCDC DATA AND ANALYSIS CENTER		83	\N	\N	2024-09-29 15:49:20.91298+00	2024-09-29 15:49:20.91298+00	0
1500	CCDC GROUND VEHICLE SYSTEMS CENTER		83	\N	\N	2024-09-29 15:49:20.914855+00	2024-09-29 15:49:20.914855+00	0
1501	CCDC SOLDIER CENTER		83	\N	\N	2024-09-29 15:49:20.917758+00	2024-09-29 15:49:20.917758+00	0
1502	SYSTEMS OF SYSTEMS INTEGRATION		83	\N	\N	2024-09-29 15:49:20.919645+00	2024-09-29 15:49:20.919645+00	0
1503	ASSURED POSITIONING, NAVIGATION AND TIMING CROSS FUNCTIONAL TEAM		85	\N	\N	2024-09-29 15:49:20.921421+00	2024-09-29 15:49:20.921421+00	0
1504	NETWORK CROSS FUNCTIONAL TEAM		85	\N	\N	2024-09-29 15:49:20.922945+00	2024-09-29 15:49:20.922945+00	0
1505	SYNTHETIC TRAINING ENVIRONMENT CROSS FUNCTIONAL TEAM		85	\N	\N	2024-09-29 15:49:20.924615+00	2024-09-29 15:49:20.924615+00	0
1506	CYBER CENTER OF EXCELLENCE CAPABILITY DEVELOPMENT INTEGRATION DIRECTORATE		86	\N	\N	2024-09-29 15:49:20.926513+00	2024-09-29 15:49:20.926513+00	0
1507	MANEUVER CENTER OF EXCELLENCE CAPABILITY DEVELOPMENT INTEGRATION DIRECTORATE		86	\N	\N	2024-09-29 15:49:20.928338+00	2024-09-29 15:49:20.928338+00	0
1508	THE RESEARCH AND ANALYSIS CENTER		86	\N	\N	2024-09-29 15:49:20.929975+00	2024-09-29 15:49:20.929975+00	0
1509	408TH CONTRACTING SUPPORT BRIGADE		91	\N	\N	2024-09-29 15:49:20.931612+00	2024-09-29 15:49:20.931612+00	0
1510	411TH CONTRACTING SUPPORT BRIGADE		91	\N	\N	2024-09-29 15:49:20.933543+00	2024-09-29 15:49:20.933543+00	0
1511	ACC ABERDEEN PROVING GROUND		91	\N	\N	2024-09-29 15:49:20.935295+00	2024-09-29 15:49:20.935295+00	0
1512	ACC NEW JERSEY		91	\N	\N	2024-09-29 15:49:20.936941+00	2024-09-29 15:49:20.936941+00	0
1513	ACC ORLANDO		91	\N	\N	2024-09-29 15:49:20.938442+00	2024-09-29 15:49:20.938442+00	0
1514	ACC REDSTONE		91	\N	\N	2024-09-29 15:49:20.940169+00	2024-09-29 15:49:20.940169+00	0
1515	ACC ROCK ISLAND		91	\N	\N	2024-09-29 15:49:20.941816+00	2024-09-29 15:49:20.941816+00	0
1516	MISSION AND INSTALLATION CONTRACTING COMMAND		91	\N	\N	2024-09-29 15:49:20.943374+00	2024-09-29 15:49:20.943374+00	0
1517	ARMY ENVIRONMENTAL COMMAND		92	\N	\N	2024-09-29 15:49:20.945127+00	2024-09-29 15:49:20.945127+00	0
1518	IMCOM EUROPE		92	\N	\N	2024-09-29 15:49:20.946767+00	2024-09-29 15:49:20.946767+00	0
1519	IMCOM PACIFIC		92	\N	\N	2024-09-29 15:49:20.948202+00	2024-09-29 15:49:20.948202+00	0
1520	IMCOM READINESS		92	\N	\N	2024-09-29 15:49:20.949828+00	2024-09-29 15:49:20.949828+00	0
1521	US ARMY GARRISON HAWAII		92	\N	\N	2024-09-29 15:49:20.951404+00	2024-09-29 15:49:20.951404+00	0
1522	ARMY MEDICAL MATERIEL AGENCY		93	\N	\N	2024-09-29 15:49:20.953266+00	2024-09-29 15:49:20.953266+00	0
1523	OFFICE OF THE PROGRAM MANAGER, SAUDI ARABIAN NATIONAL GUARD MODERNIZATION		94	\N	\N	2024-09-29 15:49:20.954781+00	2024-09-29 15:49:20.954781+00	0
1524	SECURITY ASSISTANCE TRAINING MANAGEMENT ORGANIZATION		94	\N	\N	2024-09-29 15:49:20.956694+00	2024-09-29 15:49:20.956694+00	0
1525	AVIATION CENTER LOGISTICS COMMAND		96	\N	\N	2024-09-29 15:49:20.958105+00	2024-09-29 15:49:20.958105+00	0
1526	CORPUS CHRISTI ARMY DEPOT		96	\N	\N	2024-09-29 15:49:20.960921+00	2024-09-29 15:49:20.960921+00	0
1527	LETTERKENNY ARMY DEPOT		96	\N	\N	2024-09-29 15:49:20.962443+00	2024-09-29 15:49:20.962443+00	0
1528	INFORMATION SYSTEMS ENGINEERING COMMAND		98	\N	\N	2024-09-29 15:49:20.964152+00	2024-09-29 15:49:20.964152+00	0
1529	INTEGRATED LOGISTICS SUPPORT CENTER		98	\N	\N	2024-09-29 15:49:20.965792+00	2024-09-29 15:49:20.965792+00	0
1530	SOFTWARE ENGINEERING CENTER		98	\N	\N	2024-09-29 15:49:20.968489+00	2024-09-29 15:49:20.968489+00	0
1531	TOBYHANNA ARMY DEPOT		98	\N	\N	2024-09-29 15:49:20.970032+00	2024-09-29 15:49:20.970032+00	0
1532	BLUE GRASS ARMY DEPOT		99	\N	\N	2024-09-29 15:49:20.971604+00	2024-09-29 15:49:20.971604+00	0
1533	DEFENSE AMMUNITION CENTER		99	\N	\N	2024-09-29 15:49:20.973454+00	2024-09-29 15:49:20.973454+00	0
1534	HAWTHORNE ARMY DEPOT		99	\N	\N	2024-09-29 15:49:20.975302+00	2024-09-29 15:49:20.975302+00	0
1535	MCALESTER ARMY AMMUNITION PLANT		99	\N	\N	2024-09-29 15:49:20.977054+00	2024-09-29 15:49:20.977054+00	0
1536	ANNISTON ARMY DEPOT		102	\N	\N	2024-09-29 15:49:20.978588+00	2024-09-29 15:49:20.978588+00	0
1537	RED RIVER ARMY DEPOT		102	\N	\N	2024-09-29 15:49:20.980189+00	2024-09-29 15:49:20.980189+00	0
1538	ROCK ISLAND ARSENAL JOINT MANUFACTURING AND TECHNOLOGY CENTER		102	\N	\N	2024-09-29 15:49:20.981943+00	2024-09-29 15:49:20.981943+00	0
1539	SIERRA ARMY DEPOT		102	\N	\N	2024-09-29 15:49:20.983689+00	2024-09-29 15:49:20.983689+00	0
1540	WATERVLIET ARSENAL		102	\N	\N	2024-09-29 15:49:20.985574+00	2024-09-29 15:49:20.985574+00	0
1541	DENTAL CORPS		104	\N	\N	2024-09-29 15:49:20.987279+00	2024-09-29 15:49:20.987279+00	0
1542	THEATER SUPPORT GROUP		113	\N	\N	2024-09-29 15:49:20.989018+00	2024-09-29 15:49:20.989018+00	0
1543	516TH SIGNAL BRIGADE		117	\N	\N	2024-09-29 15:49:20.990825+00	2024-09-29 15:49:20.990825+00	0
1544	SPACE AND MISSILE DEFENSE BATTLE LAB		128	\N	\N	2024-09-29 15:49:20.992586+00	2024-09-29 15:49:20.992586+00	0
1545	G6 OFFICE/INFORMATION MANAGEMENT		133	\N	\N	2024-09-29 15:49:20.99451+00	2024-09-29 15:49:20.99451+00	0
1546	TEST TECHNOLOGY DIRECTORATE		133	\N	\N	2024-09-29 15:49:20.998543+00	2024-09-29 15:49:20.998543+00	0
1547	WHITE SANDS TEST CENTER		135	\N	\N	2024-09-29 15:49:21.006248+00	2024-09-29 15:49:21.006248+00	0
1548	PD JOINT SERVICES		156	\N	\N	2024-09-29 15:49:21.012265+00	2024-09-29 15:49:21.012265+00	0
1549	PM CLOSE COMBAT SYSTEMS		156	\N	\N	2024-09-29 15:49:21.01507+00	2024-09-29 15:49:21.01507+00	0
1550	PM COMBAT AMMUNITION SYSTEMS		156	\N	\N	2024-09-29 15:49:21.017908+00	2024-09-29 15:49:21.017908+00	0
1551	PM MANEUVER AMMUNITION SYSTEMS		156	\N	\N	2024-09-29 15:49:21.022467+00	2024-09-29 15:49:21.022467+00	0
1552	PM TOWED ARTILLERY SYSTEMS		156	\N	\N	2024-09-29 15:49:21.0256+00	2024-09-29 15:49:21.0256+00	0
1553	JPL CBRN INFORMATION MANAGEMENT / INFORMATION TECHNOLOGY		157	\N	\N	2024-09-29 15:49:21.027339+00	2024-09-29 15:49:21.027339+00	0
1554	JPL CBRN SPECIAL OPERATIONS FORCES		157	\N	\N	2024-09-29 15:49:21.029346+00	2024-09-29 15:49:21.029346+00	0
1555	JPM CBRN MEDICAL		157	\N	\N	2024-09-29 15:49:21.031115+00	2024-09-29 15:49:21.031115+00	0
1556	JPM CBRN PROTECTION		157	\N	\N	2024-09-29 15:49:21.032946+00	2024-09-29 15:49:21.032946+00	0
1557	JPM CBRN SENSORS		157	\N	\N	2024-09-29 15:49:21.034804+00	2024-09-29 15:49:21.034804+00	0
1558	JPM GUARDIAN		157	\N	\N	2024-09-29 15:49:21.036601+00	2024-09-29 15:49:21.036601+00	0
1559	APACHE ATTACK HELICOPTER		158	\N	\N	2024-09-29 15:49:21.038708+00	2024-09-29 15:49:21.038708+00	0
1560	AVIATION MISSION SYSTEMS AND ARCHITECTURE		158	\N	\N	2024-09-29 15:49:21.040532+00	2024-09-29 15:49:21.040532+00	0
1561	AVIATION TURBINE ENGINE		158	\N	\N	2024-09-29 15:49:21.042056+00	2024-09-29 15:49:21.042056+00	0
1562	CARGO HELICOPTERS		158	\N	\N	2024-09-29 15:49:21.043607+00	2024-09-29 15:49:21.043607+00	0
1563	FIXED WING AIRCRAFT		158	\N	\N	2024-09-29 15:49:21.045274+00	2024-09-29 15:49:21.045274+00	0
1564	FUTURE LONG-RANGE ASSAULT AIRCRAFT		158	\N	\N	2024-09-29 15:49:21.046905+00	2024-09-29 15:49:21.046905+00	0
1565	MULTI-NATIONAL AIRCRAFT SPECIAL PROJECT OFFICE		158	\N	\N	2024-09-29 15:49:21.048716+00	2024-09-29 15:49:21.048716+00	0
1566	UNMANNED AIRCRAFT SYSTEMS		158	\N	\N	2024-09-29 15:49:21.050377+00	2024-09-29 15:49:21.050377+00	0
1567	UTILITY HELICOPTERS		158	\N	\N	2024-09-29 15:49:21.051982+00	2024-09-29 15:49:21.051982+00	0
1568	JPO JOINT LIGHT TACTICAL VEHICLE		159	\N	\N	2024-09-29 15:49:21.053731+00	2024-09-29 15:49:21.053731+00	0
1569	PM EXPEDITIONARY ENERGY & SUSTAINMENT SYSTEMS		159	\N	\N	2024-09-29 15:49:21.055459+00	2024-09-29 15:49:21.055459+00	0
1570	PM FORCE PROJECTION		159	\N	\N	2024-09-29 15:49:21.057095+00	2024-09-29 15:49:21.057095+00	0
1571	PM TRANSPORTATION SYSTEMS		159	\N	\N	2024-09-29 15:49:21.05888+00	2024-09-29 15:49:21.05888+00	0
1572	PM MISSION COMMAND		160	\N	\N	2024-09-29 15:49:21.060771+00	2024-09-29 15:49:21.060771+00	0
1573	PM TACTICAL NETWORKS		160	\N	\N	2024-09-29 15:49:21.062412+00	2024-09-29 15:49:21.062412+00	0
1574	PM TACTICAL RADIOS		160	\N	\N	2024-09-29 15:49:21.06435+00	2024-09-29 15:49:21.06435+00	0
1575	SPECIAL PROJECTS OFFICE		160	\N	\N	2024-09-29 15:49:21.06592+00	2024-09-29 15:49:21.06592+00	0
1576	PD ACQUISITION, LOGISTICS AND TECHNOLOGY ENTERPRISE SYSTEMS AND SERVICES		161	\N	\N	2024-09-29 15:49:21.072719+00	2024-09-29 15:49:21.072719+00	0
1577	PD ARMY HUMAN RESOURCE SYSTEM		161	\N	\N	2024-09-29 15:49:21.075884+00	2024-09-29 15:49:21.075884+00	0
1578	PD COMPUTER HARDWARE, ENTERPRISE SOFTWARE AND SOLUTIONS		161	\N	\N	2024-09-29 15:49:21.077523+00	2024-09-29 15:49:21.077523+00	0
1579	PD HUMAN RESOURCE SOLUTIONS		161	\N	\N	2024-09-29 15:49:21.079069+00	2024-09-29 15:49:21.079069+00	0
1580	PD RESERVE COMPONENT AUTOMATION SYSTEM		161	\N	\N	2024-09-29 15:49:21.080858+00	2024-09-29 15:49:21.080858+00	0
1581	PL AUTOMATED MOVEMENT AND IDENTIFICATION SOLUTIONS		161	\N	\N	2024-09-29 15:49:21.082395+00	2024-09-29 15:49:21.082395+00	0
1582	PL ENTERPRISE CONTENT COLLABORATION AND MESSAGING		161	\N	\N	2024-09-29 15:49:21.084182+00	2024-09-29 15:49:21.084182+00	0
1583	PM ARMY ENTERPRISE SYSTEMS INTEGRATION PROGRAM		161	\N	\N	2024-09-29 15:49:21.085839+00	2024-09-29 15:49:21.085839+00	0
1584	PM ARMY TRAINING INFORMATION SYSTEM		161	\N	\N	2024-09-29 15:49:21.087583+00	2024-09-29 15:49:21.087583+00	0
1585	PM DEFENSE COMMUNICATIONS AND ARMY TRANSMISSION SYSTEMS		161	\N	\N	2024-09-29 15:49:21.089107+00	2024-09-29 15:49:21.089107+00	0
1586	PM DEFENSIVE CYBER OPERATIONS		161	\N	\N	2024-09-29 15:49:21.090811+00	2024-09-29 15:49:21.090811+00	0
1587	PM GENERAL FUND ENTERPRISE BUSINESS SYSTEM		161	\N	\N	2024-09-29 15:49:21.09274+00	2024-09-29 15:49:21.09274+00	0
1588	PM GLOBAL COMBAT SUPPORT SYSTEM-ARMY		161	\N	\N	2024-09-29 15:49:21.09451+00	2024-09-29 15:49:21.09451+00	0
1589	PM INSTALLATION INFORMATION INFRASTRUCTURE COMMUNICATIONS AND CAPABILITIES		161	\N	\N	2024-09-29 15:49:21.096185+00	2024-09-29 15:49:21.096185+00	0
1590	PM INTEGRATED PERSONNEL AND PAY SYSTEM ARMY		161	\N	\N	2024-09-29 15:49:21.097742+00	2024-09-29 15:49:21.097742+00	0
1591	PM LOGISTICS INFORMATION SYSTEMS		161	\N	\N	2024-09-29 15:49:21.099312+00	2024-09-29 15:49:21.099312+00	0
1592	PM LOGISTICS MODERNIZATION PROGRAM		161	\N	\N	2024-09-29 15:49:21.101055+00	2024-09-29 15:49:21.101055+00	0
1593	PM MEDICAL COMMUNICATIONS FOR COMBAT CASUALTY CARE		161	\N	\N	2024-09-29 15:49:21.102775+00	2024-09-29 15:49:21.102775+00	0
1594	PD MAIN BATTLE TANK SYSTEMS		162	\N	\N	2024-09-29 15:49:21.105916+00	2024-09-29 15:49:21.105916+00	0
1595	PL MOBILE PROTECTED FIREPOWER		162	\N	\N	2024-09-29 15:49:21.107492+00	2024-09-29 15:49:21.107492+00	0
1596	PM ARMORED FIGHTING VEHICLES		162	\N	\N	2024-09-29 15:49:21.109528+00	2024-09-29 15:49:21.109528+00	0
1597	PM ARMORED MULTI-PURPOSE VEHICLE		162	\N	\N	2024-09-29 15:49:21.111245+00	2024-09-29 15:49:21.111245+00	0
1598	PM NEXT GENERATION COMBAT VEHICLE		162	\N	\N	2024-09-29 15:49:21.113025+00	2024-09-29 15:49:21.113025+00	0
1599	PM STRYKER BRIGADE COMBAT TEAM		162	\N	\N	2024-09-29 15:49:21.11519+00	2024-09-29 15:49:21.11519+00	0
1600	PM AIRCRAFT SURVIVABILITY EQUIPMENT		163	\N	\N	2024-09-29 15:49:21.116731+00	2024-09-29 15:49:21.116731+00	0
1601	PM DOD BIOMETRICS		163	\N	\N	2024-09-29 15:49:21.118716+00	2024-09-29 15:49:21.118716+00	0
1602	PM ELECTRONIC WARFARE & CYBER		163	\N	\N	2024-09-29 15:49:21.12025+00	2024-09-29 15:49:21.12025+00	0
1603	PM INTEL SYSTEMS & ANALYTICS - ARMY		163	\N	\N	2024-09-29 15:49:21.121731+00	2024-09-29 15:49:21.121731+00	0
1604	PM POSITIONING NAVIGATION & TIMING		163	\N	\N	2024-09-29 15:49:21.123219+00	2024-09-29 15:49:21.123219+00	0
1605	PM SENSORS-AERIAL INTELLIGENCE		163	\N	\N	2024-09-29 15:49:21.124737+00	2024-09-29 15:49:21.124737+00	0
1606	PM TERRESTRIAL SENSORS		163	\N	\N	2024-09-29 15:49:21.126309+00	2024-09-29 15:49:21.126309+00	0
1607	COUNTER ROCKETS, ARTILLERY, AND MORTARS PROGRAM DIRECTORATE		164	\N	\N	2024-09-29 15:49:21.129028+00	2024-09-29 15:49:21.129028+00	0
1608	LOWER TIER PROJECT OFFICE		164	\N	\N	2024-09-29 15:49:21.130815+00	2024-09-29 15:49:21.130815+00	0
1609	MISSILE DEFENSE & SPACE SYSTEMS		164	\N	\N	2024-09-29 15:49:21.13236+00	2024-09-29 15:49:21.13236+00	0
1610	PO CLOSE COMBAT WEAPONS SYSTEMS		164	\N	\N	2024-09-29 15:49:21.134047+00	2024-09-29 15:49:21.134047+00	0
1611	PO CRUISE MISSILE DEFENSE SYSTEMS		164	\N	\N	2024-09-29 15:49:21.13587+00	2024-09-29 15:49:21.13587+00	0
1612	PO INTEGRATED AIR AND MISSILE DEFENSE		164	\N	\N	2024-09-29 15:49:21.137452+00	2024-09-29 15:49:21.137452+00	0
1613	PO JOINT ATTACK MUNITIONS SYSTEMS		164	\N	\N	2024-09-29 15:49:21.13928+00	2024-09-29 15:49:21.13928+00	0
1614	PO PRECISION FIRES ROCKET AND MISSILE SYSTEMS		164	\N	\N	2024-09-29 15:49:21.140894+00	2024-09-29 15:49:21.140894+00	0
1615	INTERNATIONAL PROGRAMS OFFICE		165	\N	\N	2024-09-29 15:49:21.142556+00	2024-09-29 15:49:21.142556+00	0
1616	PM CYBER TEST AND TRAINING		165	\N	\N	2024-09-29 15:49:21.144354+00	2024-09-29 15:49:21.144354+00	0
1617	PM SOLDIER TRAINING		165	\N	\N	2024-09-29 15:49:21.14597+00	2024-09-29 15:49:21.14597+00	0
1618	PM SYNTHETIC ENVIRONMENT		165	\N	\N	2024-09-29 15:49:21.147689+00	2024-09-29 15:49:21.147689+00	0
1619	TRAINING AIDS DEVICES SIMULATORS AND SIMULATIONS SUPPORT OPERATIONS		165	\N	\N	2024-09-29 15:49:21.149435+00	2024-09-29 15:49:21.149435+00	0
1620	PM SOLDIER LETHALITY		166	\N	\N	2024-09-29 15:49:21.151221+00	2024-09-29 15:49:21.151221+00	0
1621	PM SOLDIER MANEUVER AND PRECISION TARGETING		166	\N	\N	2024-09-29 15:49:21.152888+00	2024-09-29 15:49:21.152888+00	0
1622	ASSISTANT G-1 FOR CIVILIAN PERSONNEL		170	\N	\N	2024-09-29 15:49:21.155823+00	2024-09-29 15:49:21.155823+00	0
1623	G-2 ANALYSIS AND CONTROL ELEMENT		171	\N	\N	2024-09-29 15:49:21.157693+00	2024-09-29 15:49:21.157693+00	0
1624	LOGISTICS INNOVATION AGENCY		173	\N	\N	2024-09-29 15:49:21.159447+00	2024-09-29 15:49:21.159447+00	0
1625	MAINTENANCE DIRECTORATE		173	\N	\N	2024-09-29 15:49:21.161099+00	2024-09-29 15:49:21.161099+00	0
1626	CENTER FOR ARMY ANALYSIS		174	\N	\N	2024-09-29 15:49:21.16266+00	2024-09-29 15:49:21.16266+00	0
1627	FORCE DEVELOPMENT		174	\N	\N	2024-09-29 15:49:21.164467+00	2024-09-29 15:49:21.164467+00	0
1628	PROGRAM ANALYSIS AND EVALUATION		174	\N	\N	2024-09-29 15:49:21.166155+00	2024-09-29 15:49:21.166155+00	0
1629	OPERATIONS DIRECTORATE		175	\N	\N	2024-09-29 15:49:21.169073+00	2024-09-29 15:49:21.169073+00	0
1630	ARMY HEADQUARTERS SERVICES		178	\N	\N	2024-09-29 15:49:21.170668+00	2024-09-29 15:49:21.170668+00	0
1631	OFFICE OF THE ADMINISTRATIVE ASSISTANT TO THE SECRETARY OF THE ARMY (OAA)		178	\N	\N	2024-09-29 15:49:21.172246+00	2024-09-29 15:49:21.172246+00	0
1632	COST & ECONOMICS		180	\N	\N	2024-09-29 15:49:21.173814+00	2024-09-29 15:49:21.173814+00	0
1633	FINANCIAL OPERATIONS		180	\N	\N	2024-09-29 15:49:21.175312+00	2024-09-29 15:49:21.175312+00	0
1634	INFORMATION TECHNOLOGY DIRECTORATE		193	\N	\N	2024-09-29 15:49:21.177017+00	2024-09-29 15:49:21.177017+00	0
1635	SECURITY AND INTELLIGENCE DIRECTORATE		193	\N	\N	2024-09-29 15:49:21.178534+00	2024-09-29 15:49:21.178534+00	0
1636	LOGISTICS DIRECTORATE		196	\N	\N	2024-09-29 15:49:21.180173+00	2024-09-29 15:49:21.180173+00	0
1637	EAST AREA		197	\N	\N	2024-09-29 15:49:21.181832+00	2024-09-29 15:49:21.181832+00	0
1638	PACIFIC AREA		197	\N	\N	2024-09-29 15:49:21.183392+00	2024-09-29 15:49:21.183392+00	0
1639	STORE SUPPORT DIRECTORATE		197	\N	\N	2024-09-29 15:49:21.185279+00	2024-09-29 15:49:21.185279+00	0
1640	MEDICAL LOGISTICS DIVISION		201	\N	\N	2024-09-29 15:49:21.187175+00	2024-09-29 15:49:21.187175+00	0
1641	TRICARE HEALTH PLAN		203	\N	\N	2024-09-29 15:49:21.188778+00	2024-09-29 15:49:21.188778+00	0
1642	DITCO-EUROPE		207	\N	\N	2024-09-29 15:49:21.190308+00	2024-09-29 15:49:21.190308+00	0
1643	DITCO-NCR		207	\N	\N	2024-09-29 15:49:21.192173+00	2024-09-29 15:49:21.192173+00	0
1644	DITCO-PACIFIC		207	\N	\N	2024-09-29 15:49:21.194432+00	2024-09-29 15:49:21.194432+00	0
1645	DITCO-SCOTT		207	\N	\N	2024-09-29 15:49:21.197635+00	2024-09-29 15:49:21.197635+00	0
1646	INFRASTRUCTURE DEVELOPMENT DIRECTORATE		209	\N	\N	2024-09-29 15:49:21.199349+00	2024-09-29 15:49:21.199349+00	0
1647	JOINT INTEROPERABILITY AND TEST COMMAND		209	\N	\N	2024-09-29 15:49:21.201272+00	2024-09-29 15:49:21.201272+00	0
1648	SERVICES DEVELOPMENT DIRECTORATE		209	\N	\N	2024-09-29 15:49:21.202874+00	2024-09-29 15:49:21.202874+00	0
1649	INFRASTRUCTURE DIRECTORATE		210	\N	\N	2024-09-29 15:49:21.20462+00	2024-09-29 15:49:21.20462+00	0
1650	SERVICES DIRECTORATE		210	\N	\N	2024-09-29 15:49:21.206399+00	2024-09-29 15:49:21.206399+00	0
1651	FINANCIAL MANAGEMENT		212	\N	\N	2024-09-29 15:49:21.208101+00	2024-09-29 15:49:21.208101+00	0
1652	WORKFORCE MANAGEMENT		212	\N	\N	2024-09-29 15:49:21.209822+00	2024-09-29 15:49:21.209822+00	0
1653	DEFENSE CLANDESTINE SERVICE		215	\N	\N	2024-09-29 15:49:21.212403+00	2024-09-29 15:49:21.212403+00	0
1654	DLA ENERGY EUROPE AND AFRICA		222	\N	\N	2024-09-29 15:49:21.214143+00	2024-09-29 15:49:21.214143+00	0
1655	CLOTHING AND TEXTILES DIRECTORATE		227	\N	\N	2024-09-29 15:49:21.216009+00	2024-09-29 15:49:21.216009+00	0
1656	CONSTRUCTION AND EQUIPMENT DIRECTORATE		227	\N	\N	2024-09-29 15:49:21.217905+00	2024-09-29 15:49:21.217905+00	0
1657	DLA TROOP SUPPORT PACIFIC		227	\N	\N	2024-09-29 15:49:21.220728+00	2024-09-29 15:49:21.220728+00	0
1658	MEDICAL DIRECTORATE		227	\N	\N	2024-09-29 15:49:21.222432+00	2024-09-29 15:49:21.222432+00	0
1659	SUBSISTENCE DIRECTORATE		227	\N	\N	2024-09-29 15:49:21.224061+00	2024-09-29 15:49:21.224061+00	0
1660	DLA ACQUISITION		228	\N	\N	2024-09-29 15:49:21.225741+00	2024-09-29 15:49:21.225741+00	0
1661	DLA INFORMATION OPERATIONS		228	\N	\N	2024-09-29 15:49:21.227386+00	2024-09-29 15:49:21.227386+00	0
1662	DLA INSTALLATION SUPPORT		228	\N	\N	2024-09-29 15:49:21.229135+00	2024-09-29 15:49:21.229135+00	0
1663	DLA LOGISTICS OPERATIONS (J3)		228	\N	\N	2024-09-29 15:49:21.230702+00	2024-09-29 15:49:21.230702+00	0
1664	BASIC AND APPLIED SCIENCES DIRECTORATE		235	\N	\N	2024-09-29 15:49:21.232289+00	2024-09-29 15:49:21.232289+00	0
1665	COUNTER WMD TECHNOLOGIES DIRECTORATE		235	\N	\N	2024-09-29 15:49:21.233999+00	2024-09-29 15:49:21.233999+00	0
1666	NUCLEAR TECHNOLOGIES DIRECTORATE		235	\N	\N	2024-09-29 15:49:21.235695+00	2024-09-29 15:49:21.235695+00	0
1667	CHIEF OF STAFF		245	\N	\N	2024-09-29 15:49:21.23739+00	2024-09-29 15:49:21.23739+00	0
1668	QUALITY SAFETY AND MISSION ASSURANCE		245	\N	\N	2024-09-29 15:49:21.238902+00	2024-09-29 15:49:21.238902+00	0
1669	CONTRACTING		246	\N	\N	2024-09-29 15:49:21.240586+00	2024-09-29 15:49:21.240586+00	0
1670	DEFENSE MEDIA ACTIVITY		254	\N	\N	2024-09-29 15:49:21.242051+00	2024-09-29 15:49:21.242051+00	0
1671	TECHNICAL SUPPORT WORKING GROUP		256	\N	\N	2024-09-29 15:49:21.24397+00	2024-09-29 15:49:21.24397+00	0
1672	JPM NUCLEAR, BIOLOGICAL AND CHEMICAL CONTAMINATION AVOIDANCE (JPM NBC CA)		261	\N	\N	2024-09-29 15:49:21.246074+00	2024-09-29 15:49:21.246074+00	0
1673	JPM PROTECTION (JPM P)		261	\N	\N	2024-09-29 15:49:21.247728+00	2024-09-29 15:49:21.247728+00	0
1674	DEFENSE COMMISSARY AGENCY		263	\N	\N	2024-09-29 15:49:21.249445+00	2024-09-29 15:49:21.249445+00	0
1675	ASSISTANT SECRETARY FOR ACQUISITION		265	\N	\N	2024-09-29 15:49:21.252068+00	2024-09-29 15:49:21.252068+00	0
1676	ASSISTANT SECRETARY FOR NUCLEAR, CHEMICAL AND BIOLOGICAL DEFENSE PROGRAMS		265	\N	\N	2024-09-29 15:49:21.25363+00	2024-09-29 15:49:21.25363+00	0
1677	ASSISTANT SECRETARY OF DEFENSE FOR SUSTAINMENT		265	\N	\N	2024-09-29 15:49:21.255403+00	2024-09-29 15:49:21.255403+00	0
1678	ASSISTANT SECRETARY OF DEFENSE - READINESS		267	\N	\N	2024-09-29 15:49:21.25723+00	2024-09-29 15:49:21.25723+00	0
1679	ASSISTANT SECRETARY OF DEFENSE FOR HEALTH AFFAIRS		267	\N	\N	2024-09-29 15:49:21.259121+00	2024-09-29 15:49:21.259121+00	0
1680	ASSISTANT SECRETARY OF DEFENSE MANPOWER AND RESERVE AFFAIRS		267	\N	\N	2024-09-29 15:49:21.260761+00	2024-09-29 15:49:21.260761+00	0
1681	DEFENSE HUMAN RESOURCES ACTIVITY		267	\N	\N	2024-09-29 15:49:21.264129+00	2024-09-29 15:49:21.264129+00	0
1682	FORCE RESILIENCY		267	\N	\N	2024-09-29 15:49:21.265989+00	2024-09-29 15:49:21.265989+00	0
1683	UNIFORMED SERVICES UNIVERSITY OF THE HEALTH SCIENCES		267	\N	\N	2024-09-29 15:49:21.267803+00	2024-09-29 15:49:21.267803+00	0
1684	DEFENSE MICROELECTRONICS ACTIVITY (DMEA)		273	\N	\N	2024-09-29 15:49:21.269373+00	2024-09-29 15:49:21.269373+00	0
1685	JOINT INTELLIGENCE OPERATIONS CENTER		275	\N	\N	2024-09-29 15:49:21.271369+00	2024-09-29 15:49:21.271369+00	0
1686	DISTRIBUTION PROCESS OWNER SUPPORT (TCAQ-D)		287	\N	\N	2024-09-29 15:49:21.273078+00	2024-09-29 15:49:21.273078+00	0
1687	INTERNATIONAL CHARTERS (TCAQ-C)		287	\N	\N	2024-09-29 15:49:21.274675+00	2024-09-29 15:49:21.274675+00	0
1688	INTERNATIONAL SCHEDULED SERVICES ((TCAQ-I)		287	\N	\N	2024-09-29 15:49:21.276345+00	2024-09-29 15:49:21.276345+00	0
1689	SPECIALIZED TRANSPORTATION AND SUPPORT DIVISION (TCAQ-R)		287	\N	\N	2024-09-29 15:49:21.277918+00	2024-09-29 15:49:21.277918+00	0
1690	MARINE CORPS AIR STATION CHERRY POINT		299	\N	\N	2024-09-29 15:49:21.27961+00	2024-09-29 15:49:21.27961+00	0
1691	MARINE CORPS AIR STATION NEW RIVER		299	\N	\N	2024-09-29 15:49:21.28139+00	2024-09-29 15:49:21.28139+00	0
1692	MARINE CORPS BASE CAMP LEJEUNE		299	\N	\N	2024-09-29 15:49:21.283511+00	2024-09-29 15:49:21.283511+00	0
1693	MARINE CORPS LOGISTICS BASE ALBANY		299	\N	\N	2024-09-29 15:49:21.285164+00	2024-09-29 15:49:21.285164+00	0
1694	MARINE CORPS SUPPORT FACILITY BLOUNT ISLAND		299	\N	\N	2024-09-29 15:49:21.286756+00	2024-09-29 15:49:21.286756+00	0
1695	MARINE CORPS AIR STATION KANEOHE BAY		301	\N	\N	2024-09-29 15:49:21.288713+00	2024-09-29 15:49:21.288713+00	0
1696	MARINE CORPS BASE CAMP BUTLER		301	\N	\N	2024-09-29 15:49:21.290241+00	2024-09-29 15:49:21.290241+00	0
1912	EXECUTIVE SECRETARIAT		858	\N	\N	2024-09-29 15:49:21.747299+00	2024-09-29 15:49:21.747299+00	0
1697	MARINE CORPS BASE HAWAII		301	\N	\N	2024-09-29 15:49:21.291824+00	2024-09-29 15:49:21.291824+00	0
1698	MARINE CORPS AIR STATION CAMP PENDLETON		302	\N	\N	2024-09-29 15:49:21.293315+00	2024-09-29 15:49:21.293315+00	0
1699	MARINE CORPS AIR STATION YUMA		302	\N	\N	2024-09-29 15:49:21.295061+00	2024-09-29 15:49:21.295061+00	0
1700	MARINE CORPS BASE CAMP PENDLETON		302	\N	\N	2024-09-29 15:49:21.296631+00	2024-09-29 15:49:21.296631+00	0
1701	PMA 261 H-53 AND EXECUTIVE TRANSPORT HELICOPTERS PROGRAM		324	\N	\N	2024-09-29 15:49:21.298194+00	2024-09-29 15:49:21.298194+00	0
1702	PMA 274 EXECUTIVE TRANSPORT HELICOPTERS PROGRAM		324	\N	\N	2024-09-29 15:49:21.299695+00	2024-09-29 15:49:21.299695+00	0
1703	PMA 275 V-22 PROGRAM		324	\N	\N	2024-09-29 15:49:21.301264+00	2024-09-29 15:49:21.301264+00	0
1704	PMA 276 H-1 PROGRAM		324	\N	\N	2024-09-29 15:49:21.303006+00	2024-09-29 15:49:21.303006+00	0
1705	PMA 290 MARITIME PATROL AND RECON AIRCRAFT PROGRAM		324	\N	\N	2024-09-29 15:49:21.304707+00	2024-09-29 15:49:21.304707+00	0
1706	PMA 299 MULTI-MISSION HELICOPTERS PROGRAM		324	\N	\N	2024-09-29 15:49:21.306343+00	2024-09-29 15:49:21.306343+00	0
1707	PMS 485 MARITIME SURVEILLANCE SYSTEMS PROGRAM OFFICE		326	\N	\N	2024-09-29 15:49:21.308982+00	2024-09-29 15:49:21.308982+00	0
1708	PMW 120 BATTLESPACE AWARENESS AND INFORMATION OPERATIONS		327	\N	\N	2024-09-29 15:49:21.310577+00	2024-09-29 15:49:21.310577+00	0
1709	PMW 150 COMMAND AND CONTROL		327	\N	\N	2024-09-29 15:49:21.312229+00	2024-09-29 15:49:21.312229+00	0
1710	PMW 160 TACTICAL NETWORKS		327	\N	\N	2024-09-29 15:49:21.313767+00	2024-09-29 15:49:21.313767+00	0
1711	PMW 170 COMMUNICATIONS AND GPS NAVIGATION		327	\N	\N	2024-09-29 15:49:21.315583+00	2024-09-29 15:49:21.315583+00	0
1712	PMW 740 INTERNATIONAL C4I INTEGRATION		327	\N	\N	2024-09-29 15:49:21.317137+00	2024-09-29 15:49:21.317137+00	0
1713	PMW 770 UNDERSEA COMMUNICATIONS AND INTEGRATION		327	\N	\N	2024-09-29 15:49:21.318646+00	2024-09-29 15:49:21.318646+00	0
1714	PMW 790 SHORE AND EXPEDITIONARY INTEGRATION		327	\N	\N	2024-09-29 15:49:21.32023+00	2024-09-29 15:49:21.32023+00	0
1715	PMW 205 NAVAL ENTERPRISE NETWORKS		328	\N	\N	2024-09-29 15:49:21.322541+00	2024-09-29 15:49:21.322541+00	0
1716	PMW 240 SEA WARRIOR PROGRAM		330	\N	\N	2024-09-29 15:49:21.324169+00	2024-09-29 15:49:21.324169+00	0
1717	PMA 257 A/V WEAPON SYSTEMS PROGRAM		333	\N	\N	2024-09-29 15:49:21.325938+00	2024-09-29 15:49:21.325938+00	0
1718	PMA 271 AIRBORNE STRATEGIC COMMAND, CONTROL, AND COMMUNICATIONS PROGRAM		333	\N	\N	2024-09-29 15:49:21.327504+00	2024-09-29 15:49:21.327504+00	0
1719	PMA 273 NAVAL TRAINING AIRCRAFT PROGRAM		333	\N	\N	2024-09-29 15:49:21.329073+00	2024-09-29 15:49:21.329073+00	0
1720	PMA 266 MULTI-MISSION TACTICAL UAS PROGRAM		335	\N	\N	2024-09-29 15:49:21.330564+00	2024-09-29 15:49:21.330564+00	0
1721	NMSD FBCH/WALTER REED		337	\N	\N	2024-09-29 15:49:21.332291+00	2024-09-29 15:49:21.332291+00	0
1722	NAVY MEDICAL READINESS AND TRAINING COMMAND (NMRTC) NAVAL MEDICAL CENTER SAN DIEGO		338	\N	\N	2024-09-29 15:49:21.333828+00	2024-09-29 15:49:21.333828+00	0
1723	NAVY MEDICAL RESEARCH CENTER		338	\N	\N	2024-09-29 15:49:21.335482+00	2024-09-29 15:49:21.335482+00	0
1724	NAVY MEDICINE READINESS AND TRAINING COMMAND (NMRTC) GUAM		338	\N	\N	2024-09-29 15:49:21.337162+00	2024-09-29 15:49:21.337162+00	0
1725	NAVAL MEDICAL LOGISTICS COMMAND		339	\N	\N	2024-09-29 15:49:21.338808+00	2024-09-29 15:49:21.338808+00	0
1726	COST, AUDIT AND SUPPORT DIVISION (CODE M/OAA/CAS)		518	\N	\N	2024-09-29 15:49:21.340832+00	2024-09-29 15:49:21.340832+00	0
1727	DEMOCRACY, CONFLICT RESOLUTION, AND HUMANITARIAN ASSISTANCE DIVISION (CODE M/OAA/DCHA)		518	\N	\N	2024-09-29 15:49:21.342767+00	2024-09-29 15:49:21.342767+00	0
1728	ECONOMIC GROWTH, AGRICULTURE, AND TRADE DIVISION (CODE M/OAA/EGAT)		518	\N	\N	2024-09-29 15:49:21.344266+00	2024-09-29 15:49:21.344266+00	0
1729	GDA, REGIONAL, AND OTHER DIVISION (CODE M/OAA/GRO)		518	\N	\N	2024-09-29 15:49:21.346024+00	2024-09-29 15:49:21.346024+00	0
1730	GLOBAL HEALTH DIVISION (CODE M/OAA/GH)		518	\N	\N	2024-09-29 15:49:21.347729+00	2024-09-29 15:49:21.347729+00	0
1731	OFFICE OF THE DIRECTOR (CODE M/OAA/OD)		518	\N	\N	2024-09-29 15:49:21.349424+00	2024-09-29 15:49:21.349424+00	0
1732	POLICY DIVISION (CODE M/OAA/POL)		518	\N	\N	2024-09-29 15:49:21.351086+00	2024-09-29 15:49:21.351086+00	0
1733	ADMINISTRATIVE MANAGEMENT DIVISION (CODE M/MPBP/AMD)		519	\N	\N	2024-09-29 15:49:21.355358+00	2024-09-29 15:49:21.355358+00	0
1734	PERFORMANCE DIVISION (CODE M/MPBP/PERF)		519	\N	\N	2024-09-29 15:49:21.357808+00	2024-09-29 15:49:21.357808+00	0
1735	FINANCIAL POLICY AND SUPPORT DIVISION (CODE M/CFO/FPS)		521	\N	\N	2024-09-29 15:49:21.359549+00	2024-09-29 15:49:21.359549+00	0
1736	IT OPERATIONS AND MAINTENANCE DIVISION (CODE M/CIO/IOM)		522	\N	\N	2024-09-29 15:49:21.361429+00	2024-09-29 15:49:21.361429+00	0
1737	TRAINING AND EDUCATION DIVISION (CODE OHR/TE)		535	\N	\N	2024-09-29 15:49:21.36319+00	2024-09-29 15:49:21.36319+00	0
1738	OFFICE OF THE DEPUTY ADMINISTRATOR		536	\N	\N	2024-09-29 15:49:21.364953+00	2024-09-29 15:49:21.364953+00	0
1739	FACILITIES DIVISION		537	\N	\N	2024-09-29 15:49:21.366577+00	2024-09-29 15:49:21.366577+00	0
1740	ACQUISITION MANAGEMENT DIVISION		541	\N	\N	2024-09-29 15:49:21.3683+00	2024-09-29 15:49:21.3683+00	0
1741	CHIEF INFORMATION OFFICER		541	\N	\N	2024-09-29 15:49:21.370039+00	2024-09-29 15:49:21.370039+00	0
1742	ACQUISITION MANAGEMENT		543	\N	\N	2024-09-29 15:49:21.371644+00	2024-09-29 15:49:21.371644+00	0
1743	SAFETY AND OCCUPATIONAL HEALTH		543	\N	\N	2024-09-29 15:49:21.373249+00	2024-09-29 15:49:21.373249+00	0
1744	RESOURCE INFORMATION GROUP		547	\N	\N	2024-09-29 15:49:21.374828+00	2024-09-29 15:49:21.374828+00	0
1745	LAW ENFORCEMENT AND INVESTIGATIONS		548	\N	\N	2024-09-29 15:49:21.376373+00	2024-09-29 15:49:21.376373+00	0
1746	NORTHERN RESEARCH STATION		549	\N	\N	2024-09-29 15:49:21.378033+00	2024-09-29 15:49:21.378033+00	0
1747	ROCKY MOUNTAIN REGION/ROCKY MOUNTAIN RESEARCH STATION		549	\N	\N	2024-09-29 15:49:21.37993+00	2024-09-29 15:49:21.37993+00	0
1748	RESOURCE INVENTORY AND ASSESSMENT DIVISION		552	\N	\N	2024-09-29 15:49:21.38166+00	2024-09-29 15:49:21.38166+00	0
1749	FINANCIAL MANAGEMENT SYSTEMS		558	\N	\N	2024-09-29 15:49:21.383336+00	2024-09-29 15:49:21.383336+00	0
1750	OFFICE OF THE DIRECTOR		559	\N	\N	2024-09-29 15:49:21.384972+00	2024-09-29 15:49:21.384972+00	0
1751	INTERNATIONAL RELATIONS		564	\N	\N	2024-09-29 15:49:21.386591+00	2024-09-29 15:49:21.386591+00	0
1752	NPOESS INTEGRATED PROGRAM OFFICE		569	\N	\N	2024-09-29 15:49:21.388202+00	2024-09-29 15:49:21.388202+00	0
1753	CENTER FOR OPERATIONAL OCEANOGRAPHIC PRODUCTS AND SERVICES		571	\N	\N	2024-09-29 15:49:21.38977+00	2024-09-29 15:49:21.38977+00	0
1754	NATIONAL GEODETIC SURVEY		571	\N	\N	2024-09-29 15:49:21.391713+00	2024-09-29 15:49:21.391713+00	0
1755	OFFICE OF COAST SURVEY		571	\N	\N	2024-09-29 15:49:21.393571+00	2024-09-29 15:49:21.393571+00	0
1756	OFFICE OF COASTAL MANAGEMENT		571	\N	\N	2024-09-29 15:49:21.395179+00	2024-09-29 15:49:21.395179+00	0
1757	OFFICE OF NATIONAL MARINE SANCTUARIES		571	\N	\N	2024-09-29 15:49:21.396768+00	2024-09-29 15:49:21.396768+00	0
1758	OFFICE OF RESPONSE AND RESTORATION		571	\N	\N	2024-09-29 15:49:21.398212+00	2024-09-29 15:49:21.398212+00	0
1759	HUMAN RESOURCES		576	\N	\N	2024-09-29 15:49:21.39984+00	2024-09-29 15:49:21.39984+00	0
1760	CHIEF INFORMATION OFFICER		584	\N	\N	2024-09-29 15:49:21.401375+00	2024-09-29 15:49:21.401375+00	0
1761	INSTITUTE OF EDUCATION SCIENCES		594	\N	\N	2024-09-29 15:49:21.404528+00	2024-09-29 15:49:21.404528+00	0
1762	OFFICE OF THE EXECUTIVE DIRECTOR		595	\N	\N	2024-09-29 15:49:21.407587+00	2024-09-29 15:49:21.407587+00	0
1763	NAVAL NUCLEAR LABORATORY		606	\N	\N	2024-09-29 15:49:21.409381+00	2024-09-29 15:49:21.409381+00	0
1764	OFFICE OF BUDGET		616	\N	\N	2024-09-29 15:49:21.411064+00	2024-09-29 15:49:21.411064+00	0
1765	OFFICE OF CORPORATE INFORMATION SYSTEMS		616	\N	\N	2024-09-29 15:49:21.41277+00	2024-09-29 15:49:21.41277+00	0
1766	ENVIRONMENTAL MANAGEMENT CONSOLIDATED BUSINESS CENTER		622	\N	\N	2024-09-29 15:49:21.414379+00	2024-09-29 15:49:21.414379+00	0
1767	IDAHO NATIONAL LABORATORY		622	\N	\N	2024-09-29 15:49:21.416089+00	2024-09-29 15:49:21.416089+00	0
1768	OAK RIDGE OPERATIONS		622	\N	\N	2024-09-29 15:49:21.417822+00	2024-09-29 15:49:21.417822+00	0
1769	PORTSMOUTH PADUCAH PROJECT OFFICE		622	\N	\N	2024-09-29 15:49:21.421091+00	2024-09-29 15:49:21.421091+00	0
1770	RICHLAND OPERATIONS OFFICE		622	\N	\N	2024-09-29 15:49:21.422847+00	2024-09-29 15:49:21.422847+00	0
1771	ROCKY FLATS OFFICE		626	\N	\N	2024-09-29 15:49:21.425256+00	2024-09-29 15:49:21.425256+00	0
1772	GOLDEN FIELD OFFICE		630	\N	\N	2024-09-29 15:49:21.439932+00	2024-09-29 15:49:21.439932+00	0
1773	NATIONAL RENEWABLE ENERGY LABORATORY		630	\N	\N	2024-09-29 15:49:21.450435+00	2024-09-29 15:49:21.450435+00	0
1774	IDAHO OPERATIONS OFFICE		631	\N	\N	2024-09-29 15:49:21.45657+00	2024-09-29 15:49:21.45657+00	0
1775	BONNEVILLE POWER ADMINISTRATION		632	\N	\N	2024-09-29 15:49:21.464266+00	2024-09-29 15:49:21.464266+00	0
1776	ELECTRICITY DELIVERY DIVISION		632	\N	\N	2024-09-29 15:49:21.474163+00	2024-09-29 15:49:21.474163+00	0
1777	SOUTHEASTERN POWER ADMINISTRATION		632	\N	\N	2024-09-29 15:49:21.479962+00	2024-09-29 15:49:21.479962+00	0
1778	SOUTHWESTERN POWER ADMINISTRATION		632	\N	\N	2024-09-29 15:49:21.482256+00	2024-09-29 15:49:21.482256+00	0
1779	WESTERN AREA POWER ADMINISTRATION		632	\N	\N	2024-09-29 15:49:21.483958+00	2024-09-29 15:49:21.483958+00	0
1780	STRATEGIC PETROLEUM RESERVE		633	\N	\N	2024-09-29 15:49:21.486526+00	2024-09-29 15:49:21.486526+00	0
1781	AMES LABORATORY		634	\N	\N	2024-09-29 15:49:21.489271+00	2024-09-29 15:49:21.489271+00	0
1782	ARGONNE NATIONAL LABORATORY		634	\N	\N	2024-09-29 15:49:21.490946+00	2024-09-29 15:49:21.490946+00	0
1783	BROOKHAVEN NATIONAL LABORATORY		634	\N	\N	2024-09-29 15:49:21.492674+00	2024-09-29 15:49:21.492674+00	0
1784	CHICAGO OPERATIONS OFFICE		634	\N	\N	2024-09-29 15:49:21.494499+00	2024-09-29 15:49:21.494499+00	0
1785	CONSOLIDATED SERVICES CENTER		634	\N	\N	2024-09-29 15:49:21.496582+00	2024-09-29 15:49:21.496582+00	0
1786	FERMI NATIONAL ACCELERATOR LABORATORY		634	\N	\N	2024-09-29 15:49:21.498179+00	2024-09-29 15:49:21.498179+00	0
1787	LAWRENCE BERKELEY NATIONAL LABORATORY		634	\N	\N	2024-09-29 15:49:21.499924+00	2024-09-29 15:49:21.499924+00	0
1788	OAK RIDGE INSTITUTE FOR SCIENCE AND EDUCATION		634	\N	\N	2024-09-29 15:49:21.501624+00	2024-09-29 15:49:21.501624+00	0
1789	OAK RIDGE NATIONAL LABORATORY		634	\N	\N	2024-09-29 15:49:21.505284+00	2024-09-29 15:49:21.505284+00	0
1790	PACIFIC NORTHWEST NATIONAL LABORATORY		634	\N	\N	2024-09-29 15:49:21.50723+00	2024-09-29 15:49:21.50723+00	0
1791	PRINCETON PLASMA PHYSICS LABORATORY		634	\N	\N	2024-09-29 15:49:21.508953+00	2024-09-29 15:49:21.508953+00	0
1792	SCIENTIFIC AND TECHNICAL INFORMATION		634	\N	\N	2024-09-29 15:49:21.51051+00	2024-09-29 15:49:21.51051+00	0
1793	STANFORD LINEAR ACCELERATOR LABORATORY		634	\N	\N	2024-09-29 15:49:21.512418+00	2024-09-29 15:49:21.512418+00	0
1794	THOMAS JEFFERSON NATIONAL ACCELERATOR FACILITY		634	\N	\N	2024-09-29 15:49:21.514173+00	2024-09-29 15:49:21.514173+00	0
1795	CENTRAL OPERATIONS AND RESOURCES		640	\N	\N	2024-09-29 15:49:21.515957+00	2024-09-29 15:49:21.515957+00	0
1796	CLEAN AIR MARKETS DIVISION		641	\N	\N	2024-09-29 15:49:21.518485+00	2024-09-29 15:49:21.518485+00	0
1797	CLIMATE CHANGE DIVSION		641	\N	\N	2024-09-29 15:49:21.520136+00	2024-09-29 15:49:21.520136+00	0
1798	CLIMATE PROTECTION PARTNERSHIP DIVISION		641	\N	\N	2024-09-29 15:49:21.522+00	2024-09-29 15:49:21.522+00	0
1799	STRATOSPHERIC PROTECTION DIVSION		641	\N	\N	2024-09-29 15:49:21.524798+00	2024-09-29 15:49:21.524798+00	0
1800	NATIONAL ANALYTICAL RADIATION ENVIRONMENTAL LABORATORY		642	\N	\N	2024-09-29 15:49:21.527005+00	2024-09-29 15:49:21.527005+00	0
1801	RADIATION PROTECTION DIVISION		642	\N	\N	2024-09-29 15:49:21.530792+00	2024-09-29 15:49:21.530792+00	0
1802	ASSESSMENT AND STANDARDS DIVISION		643	\N	\N	2024-09-29 15:49:21.532506+00	2024-09-29 15:49:21.532506+00	0
1803	COMPLIANCE DIVISION		643	\N	\N	2024-09-29 15:49:21.534277+00	2024-09-29 15:49:21.534277+00	0
1804	TESTING AND ADVANCED TECHNOLOGY DIVISION		643	\N	\N	2024-09-29 15:49:21.536108+00	2024-09-29 15:49:21.536108+00	0
1805	CINCINNATI ACQUISITION DIVISION		648	\N	\N	2024-09-29 15:49:21.537894+00	2024-09-29 15:49:21.537894+00	0
1806	POLICY, PLANNING AND EVALUATION DIVISION		649	\N	\N	2024-09-29 15:49:21.539622+00	2024-09-29 15:49:21.539622+00	0
1807	HEALTH AND ENVIRONMENTAL RISK ASSESSMENT		654	\N	\N	2024-09-29 15:49:21.541528+00	2024-09-29 15:49:21.541528+00	0
1808	LABORATORY DIVISION		666	\N	\N	2024-09-29 15:49:21.543568+00	2024-09-29 15:49:21.543568+00	0
1809	FEDERAL SYSTEMS INTEGRATION AND MANAGEMENT CENTER		672	\N	\N	2024-09-29 15:49:21.545193+00	2024-09-29 15:49:21.545193+00	0
1810	TELECOMMUNICATIONS AND NETWORK SERVICES		675	\N	\N	2024-09-29 15:49:21.546852+00	2024-09-29 15:49:21.546852+00	0
1811	UNITED STATES DIGITAL CORPS		677	\N	\N	2024-09-29 15:49:21.548458+00	2024-09-29 15:49:21.548458+00	0
1812	ACQUISITION SYSTEMS DIVISION		679	\N	\N	2024-09-29 15:49:21.550828+00	2024-09-29 15:49:21.550828+00	0
1813	REGION 1 -- NEW ENGLAND		686	\N	\N	2024-09-29 15:49:21.553128+00	2024-09-29 15:49:21.553128+00	0
1814	REGION 2 -- NORTHEAST AND CARIBBEAN		686	\N	\N	2024-09-29 15:49:21.554788+00	2024-09-29 15:49:21.554788+00	0
1815	REGION 3 -- MID-ATLANTIC		686	\N	\N	2024-09-29 15:49:21.556697+00	2024-09-29 15:49:21.556697+00	0
1816	REGION 4 -- SOUTHEAST SUNBELT		686	\N	\N	2024-09-29 15:49:21.558413+00	2024-09-29 15:49:21.558413+00	0
1817	REGION 5 -- GREAT LAKES		686	\N	\N	2024-09-29 15:49:21.560122+00	2024-09-29 15:49:21.560122+00	0
1818	REGION 6 -- HEARTLAND		686	\N	\N	2024-09-29 15:49:21.561906+00	2024-09-29 15:49:21.561906+00	0
1819	REGION 7 -- GREATER SOUTHWEST		686	\N	\N	2024-09-29 15:49:21.563688+00	2024-09-29 15:49:21.563688+00	0
1820	REGION 8 -- ROCKY MOUNTAIN		686	\N	\N	2024-09-29 15:49:21.565473+00	2024-09-29 15:49:21.565473+00	0
1821	REGION 9 -- PACIFIC RIM		686	\N	\N	2024-09-29 15:49:21.567072+00	2024-09-29 15:49:21.567072+00	0
1822	REGION 10 -- NORTHWEST/ARCTIC		686	\N	\N	2024-09-29 15:49:21.56869+00	2024-09-29 15:49:21.56869+00	0
1823	REGION 11 -- NATIONAL CAPITAL REGION		686	\N	\N	2024-09-29 15:49:21.576507+00	2024-09-29 15:49:21.576507+00	0
1824	CHILDREN'S BUREAU		687	\N	\N	2024-09-29 15:49:21.579027+00	2024-09-29 15:49:21.579027+00	0
1825	FAMILY AND YOUTH SERVICES BUREAU		687	\N	\N	2024-09-29 15:49:21.581482+00	2024-09-29 15:49:21.581482+00	0
1826	ADMINISTRATION FOR NATIVE AMERICANS		688	\N	\N	2024-09-29 15:49:21.583248+00	2024-09-29 15:49:21.583248+00	0
1827	OFFICE OF PLANNING RESEARCH AND EVALUATION		689	\N	\N	2024-09-29 15:49:21.585152+00	2024-09-29 15:49:21.585152+00	0
1828	OFFICE OF CHILD CARE		692	\N	\N	2024-09-29 15:49:21.587039+00	2024-09-29 15:49:21.587039+00	0
1829	OFFICE OF HEAD START		692	\N	\N	2024-09-29 15:49:21.58883+00	2024-09-29 15:49:21.58883+00	0
1830	OFFICE OF THE DIRECTOR		700	\N	\N	2024-09-29 15:49:21.590532+00	2024-09-29 15:49:21.590532+00	0
1831	IMMUNIZATION SERVICES DIVISION		706	\N	\N	2024-09-29 15:49:21.592518+00	2024-09-29 15:49:21.592518+00	0
1832	MARKETPLACE PLAN MANAGEMENT GROUP		712	\N	\N	2024-09-29 15:49:21.594207+00	2024-09-29 15:49:21.594207+00	0
1833	BUSINESS SERVICES GROUP		715	\N	\N	2024-09-29 15:49:21.595973+00	2024-09-29 15:49:21.595973+00	0
1834	ACCOUNTING MANAGEMENT GROUP		718	\N	\N	2024-09-29 15:49:21.597616+00	2024-09-29 15:49:21.597616+00	0
1835	FINANCIAL MANAGEMENT SYSTEMS GROUP		718	\N	\N	2024-09-29 15:49:21.599552+00	2024-09-29 15:49:21.599552+00	0
1836	DIVISION OF TRANSPLANTATION		732	\N	\N	2024-09-29 15:49:21.601214+00	2024-09-29 15:49:21.601214+00	0
1838	DIVISION OF ENGINEERING SERVICES		739	\N	\N	2024-09-29 15:49:21.604552+00	2024-09-29 15:49:21.604552+00	0
1839	DIVISION OF ENVIRONMENTAL HEALTH SERVICES		739	\N	\N	2024-09-29 15:49:21.60626+00	2024-09-29 15:49:21.60626+00	0
1840	OFFICE OF THE DIRECTOR		753	\N	\N	2024-09-29 15:49:21.60806+00	2024-09-29 15:49:21.60806+00	0
1841	OFFICE OF MANAGEMENT		776	\N	\N	2024-09-29 15:49:21.609807+00	2024-09-29 15:49:21.609807+00	0
1842	OFFICE OF HUMAN RESOURCES		777	\N	\N	2024-09-29 15:49:21.61144+00	2024-09-29 15:49:21.61144+00	0
1843	OFFICE OF MINORITY HEALTH		779	\N	\N	2024-09-29 15:49:21.613051+00	2024-09-29 15:49:21.613051+00	0
1844	OFFICE ON WOMENS HEALTH		779	\N	\N	2024-09-29 15:49:21.614572+00	2024-09-29 15:49:21.614572+00	0
1845	OFFICE OF DISABILITY AGING AND LONG-TERM CARE POLICY		780	\N	\N	2024-09-29 15:49:21.616159+00	2024-09-29 15:49:21.616159+00	0
1846	OFFICE OF HUMAN SERVICES POLICY		780	\N	\N	2024-09-29 15:49:21.617705+00	2024-09-29 15:49:21.617705+00	0
1847	BIOMEDICAL ADVANCED RESEARCH AND DEVELOPMENT AUTHORITY		781	\N	\N	2024-09-29 15:49:21.619495+00	2024-09-29 15:49:21.619495+00	0
1848	OFFICE OF THE PRINCIPAL DEPUTY ASSISTANT SECRETARY		781	\N	\N	2024-09-29 15:49:21.621233+00	2024-09-29 15:49:21.621233+00	0
1849	ACQUISITION MANAGEMENT		789	\N	\N	2024-09-29 15:49:21.622916+00	2024-09-29 15:49:21.622916+00	0
1850	FINANCIAL REPORTING		789	\N	\N	2024-09-29 15:49:21.624551+00	2024-09-29 15:49:21.624551+00	0
1851	ENVIRONMENTAL HEALTH AND SAFETY SERVICES		790	\N	\N	2024-09-29 15:49:21.626227+00	2024-09-29 15:49:21.626227+00	0
1852	OPERATIONS DIRECTORATE		804	\N	\N	2024-09-29 15:49:21.627993+00	2024-09-29 15:49:21.627993+00	0
1853	TRAINING, SAFETY AND STANDARDS DIRECTORATE		804	\N	\N	2024-09-29 15:49:21.629595+00	2024-09-29 15:49:21.629595+00	0
1854	CARGO SYSTEMS PROGRAM OFFICE		808	\N	\N	2024-09-29 15:49:21.631224+00	2024-09-29 15:49:21.631224+00	0
1855	ENTERPRISE DATA MANAGEMENT AND ENGINEERING DIVISION		808	\N	\N	2024-09-29 15:49:21.632915+00	2024-09-29 15:49:21.632915+00	0
1856	ENTERPRISE NETWORK AND TECHNOLOGY SUPPORT DIVISION		808	\N	\N	2024-09-29 15:49:21.634691+00	2024-09-29 15:49:21.634691+00	0
1857	FIELD SUPPORT PROGRAM OFFICE		808	\N	\N	2024-09-29 15:49:21.636277+00	2024-09-29 15:49:21.636277+00	0
1858	PASSENGER SYSTEMS PROGRAM OFFICE		808	\N	\N	2024-09-29 15:49:21.638123+00	2024-09-29 15:49:21.638123+00	0
1859	TARGETING AND ANALYSIS SYSTEMS PROGRAM OFFICE		808	\N	\N	2024-09-29 15:49:21.639861+00	2024-09-29 15:49:21.639861+00	0
1860	EL PASO - TEXAS		815	\N	\N	2024-09-29 15:49:21.641354+00	2024-09-29 15:49:21.641354+00	0
1861	RIO GRANDE VALLEY SECTOR - TEXAS		815	\N	\N	2024-09-29 15:49:21.6429+00	2024-09-29 15:49:21.6429+00	0
1862	SAN DIEGO SECTOR - CALIFORNIA		815	\N	\N	2024-09-29 15:49:21.644502+00	2024-09-29 15:49:21.644502+00	0
1863	SPOKANE SECTOR - WASHINGTON		815	\N	\N	2024-09-29 15:49:21.646061+00	2024-09-29 15:49:21.646061+00	0
1864	TUCSON SECTOR - ARIZONA		815	\N	\N	2024-09-29 15:49:21.647905+00	2024-09-29 15:49:21.647905+00	0
1865	YUMA SECTOR - ARIZONA		815	\N	\N	2024-09-29 15:49:21.649472+00	2024-09-29 15:49:21.649472+00	0
1866	CHIEF PROCUREMENT OFFICER		822	\N	\N	2024-09-29 15:49:21.651018+00	2024-09-29 15:49:21.651018+00	0
1867	OFFICE OF THE CHIEF COMPONENT HUMAN CAPITAL OFFICER		822	\N	\N	2024-09-29 15:49:21.652618+00	2024-09-29 15:49:21.652618+00	0
1868	OFFICE OF THE CHIEF INFORMATION OFFICER		822	\N	\N	2024-09-29 15:49:21.654559+00	2024-09-29 15:49:21.654559+00	0
1869	OFFICE OF THE CHIEF SECURITY OFFICER		822	\N	\N	2024-09-29 15:49:21.657159+00	2024-09-29 15:49:21.657159+00	0
1870	FIELD OPERATIONS		823	\N	\N	2024-09-29 15:49:21.658825+00	2024-09-29 15:49:21.658825+00	0
1871	LOGISTICS MANAGEMENT DIRECTORATE		823	\N	\N	2024-09-29 15:49:21.661087+00	2024-09-29 15:49:21.661087+00	0
1872	RECOVERY DIRECTORATE		823	\N	\N	2024-09-29 15:49:21.66275+00	2024-09-29 15:49:21.66275+00	0
1873	RESPONSE DIRECTORATE		823	\N	\N	2024-09-29 15:49:21.664722+00	2024-09-29 15:49:21.664722+00	0
1874	OFFICE OF CHIEF COUNSEL		824	\N	\N	2024-09-29 15:49:21.667569+00	2024-09-29 15:49:21.667569+00	0
1875	OFFICE OF EQUAL RIGHTS		824	\N	\N	2024-09-29 15:49:21.669955+00	2024-09-29 15:49:21.669955+00	0
1876	OFFICE OF EXTERNAL AFFAIRS		824	\N	\N	2024-09-29 15:49:21.6737+00	2024-09-29 15:49:21.6737+00	0
1877	OFFICE OF POLICY AND PROGRAM ANALYSIS		824	\N	\N	2024-09-29 15:49:21.675964+00	2024-09-29 15:49:21.675964+00	0
1878	OFFICE OF THE CHIEF FINANCIAL OFFICER		824	\N	\N	2024-09-29 15:49:21.678131+00	2024-09-29 15:49:21.678131+00	0
1880	REGION II		825	\N	\N	2024-09-29 15:49:21.68236+00	2024-09-29 15:49:21.68236+00	0
1881	REGION IV		825	\N	\N	2024-09-29 15:49:21.684437+00	2024-09-29 15:49:21.684437+00	0
1882	REGION IX		825	\N	\N	2024-09-29 15:49:21.686305+00	2024-09-29 15:49:21.686305+00	0
1883	REGION VI		825	\N	\N	2024-09-29 15:49:21.688428+00	2024-09-29 15:49:21.688428+00	0
1884	REGION VIII		825	\N	\N	2024-09-29 15:49:21.69011+00	2024-09-29 15:49:21.69011+00	0
1885	REGION X		825	\N	\N	2024-09-29 15:49:21.691818+00	2024-09-29 15:49:21.691818+00	0
1886	FEDERAL INSURANCE & MITIGATIONS ADMINISTRATION		826	\N	\N	2024-09-29 15:49:21.693788+00	2024-09-29 15:49:21.693788+00	0
1887	GRANT PROGRAMS DIRECTORATE		826	\N	\N	2024-09-29 15:49:21.695749+00	2024-09-29 15:49:21.695749+00	0
1888	NATIONAL CONTINUITY PROGRAMS		826	\N	\N	2024-09-29 15:49:21.697568+00	2024-09-29 15:49:21.697568+00	0
1889	NATIONAL PREPAREDNESS DIRECTORATE		826	\N	\N	2024-09-29 15:49:21.699433+00	2024-09-29 15:49:21.699433+00	0
1890	NATIONAL FIRE ACADEMY		827	\N	\N	2024-09-29 15:49:21.701311+00	2024-09-29 15:49:21.701311+00	0
1891	NATIONAL FIRE DATA CENTER		827	\N	\N	2024-09-29 15:49:21.703027+00	2024-09-29 15:49:21.703027+00	0
1892	NETC MANAGEMENT OPERATIONS AND SUPPORT SERVICES DIVISION		827	\N	\N	2024-09-29 15:49:21.704887+00	2024-09-29 15:49:21.704887+00	0
1893	ICE HEALTH SERVICES CORP		831	\N	\N	2024-09-29 15:49:21.706784+00	2024-09-29 15:49:21.706784+00	0
1894	INTERNATIONAL OPERATIONS DIVISION		832	\N	\N	2024-09-29 15:49:21.708842+00	2024-09-29 15:49:21.708842+00	0
1895	INVESTIGATIVE PROGRAMS DIVISION		832	\N	\N	2024-09-29 15:49:21.711627+00	2024-09-29 15:49:21.711627+00	0
1896	NATIONAL SECURITY INVESTIGATIONS DIVISION		832	\N	\N	2024-09-29 15:49:21.714173+00	2024-09-29 15:49:21.714173+00	0
1897	OFFICE OF ACQUISITION MANAGEMENT		833	\N	\N	2024-09-29 15:49:21.715744+00	2024-09-29 15:49:21.715744+00	0
1898	OFFICE OF DIVERSITY AND CIVIL RIGHTS		833	\N	\N	2024-09-29 15:49:21.718814+00	2024-09-29 15:49:21.718814+00	0
1899	OFFICE OF HUMAN CAPITAL		833	\N	\N	2024-09-29 15:49:21.721779+00	2024-09-29 15:49:21.721779+00	0
1900	OFFICE OF INFORMATION GOVERNANCE AND PRIVACY		833	\N	\N	2024-09-29 15:49:21.723619+00	2024-09-29 15:49:21.723619+00	0
1901	OFFICE OF LEADERSHIP AND CAREER DEVELOPMENT		833	\N	\N	2024-09-29 15:49:21.72552+00	2024-09-29 15:49:21.72552+00	0
1902	OFFICE OF THE CHIEF FINANCIAL OFFICER		833	\N	\N	2024-09-29 15:49:21.727298+00	2024-09-29 15:49:21.727298+00	0
1903	OFFICE OF THE CHIEF INFORMATION OFFICER		833	\N	\N	2024-09-29 15:49:21.729112+00	2024-09-29 15:49:21.729112+00	0
1904	IDENTITY OPERATIONS DIVISION		840	\N	\N	2024-09-29 15:49:21.730836+00	2024-09-29 15:49:21.730836+00	0
1905	ENTERPRISE SERVICE DELIVERY OFFICE		844	\N	\N	2024-09-29 15:49:21.73264+00	2024-09-29 15:49:21.73264+00	0
1906	GEOSPATIAL INFORMATION OFFICE		844	\N	\N	2024-09-29 15:49:21.734326+00	2024-09-29 15:49:21.734326+00	0
1907	IT SERVICES OFFICE		844	\N	\N	2024-09-29 15:49:21.735999+00	2024-09-29 15:49:21.735999+00	0
1908	OFFICE OF PROCUREMENT OPERATIONS		845	\N	\N	2024-09-29 15:49:21.73791+00	2024-09-29 15:49:21.73791+00	0
1909	NATIONAL OPERATIONS CENTER		849	\N	\N	2024-09-29 15:49:21.739807+00	2024-09-29 15:49:21.739807+00	0
1910	ADMINISTRATION & SUPPORT		858	\N	\N	2024-09-29 15:49:21.74166+00	2024-09-29 15:49:21.74166+00	0
1911	CHIEF INFORMATION OFFICE		858	\N	\N	2024-09-29 15:49:21.743405+00	2024-09-29 15:49:21.743405+00	0
1913	INDUSTRY PARTNERSHIPS		859	\N	\N	2024-09-29 15:49:21.751493+00	2024-09-29 15:49:21.751493+00	0
1914	OFFICE OF NATIONAL LABS		859	\N	\N	2024-09-29 15:49:21.753327+00	2024-09-29 15:49:21.753327+00	0
1915	UNIVERSITY PROGRAMS		859	\N	\N	2024-09-29 15:49:21.75539+00	2024-09-29 15:49:21.75539+00	0
1916	BORDER, IMMIGRATION & MARITIME		860	\N	\N	2024-09-29 15:49:21.757381+00	2024-09-29 15:49:21.757381+00	0
1917	PHYSICAL & CYBER SECURITY		860	\N	\N	2024-09-29 15:49:21.758953+00	2024-09-29 15:49:21.758953+00	0
1918	OPERATIONS & REQUIREMENTS ANALYSIS		861	\N	\N	2024-09-29 15:49:21.760703+00	2024-09-29 15:49:21.760703+00	0
1919	SYSTEMS ENGINEERING & STANDARDS		861	\N	\N	2024-09-29 15:49:21.762227+00	2024-09-29 15:49:21.762227+00	0
1920	TECHNOLOGY CENTERS		861	\N	\N	2024-09-29 15:49:21.763831+00	2024-09-29 15:49:21.763831+00	0
1921	TEST & EVALUATION		861	\N	\N	2024-09-29 15:49:21.765427+00	2024-09-29 15:49:21.765427+00	0
1922	NATIONAL BENEFITS CENTER		878	\N	\N	2024-09-29 15:49:21.7671+00	2024-09-29 15:49:21.7671+00	0
1923	OFFICE OF HUMAN CAPITAL AND TRAINING		881	\N	\N	2024-09-29 15:49:21.769747+00	2024-09-29 15:49:21.769747+00	0
1924	OFFICE OF INFORMATION TECHNOLOGY		881	\N	\N	2024-09-29 15:49:21.771691+00	2024-09-29 15:49:21.771691+00	0
1925	OFFICE OF INTAKE AND DOCUMENT PRODUCTION		881	\N	\N	2024-09-29 15:49:21.774814+00	2024-09-29 15:49:21.774814+00	0
1926	OFFICE OF SECURITY AND INTEGRITY		881	\N	\N	2024-09-29 15:49:21.776646+00	2024-09-29 15:49:21.776646+00	0
1927	OFFICE OF THE CHIEF FINANCIAL OFFICER		881	\N	\N	2024-09-29 15:49:21.778509+00	2024-09-29 15:49:21.778509+00	0
1928	OFFICE OF CITIZENSHIP		883	\N	\N	2024-09-29 15:49:21.78027+00	2024-09-29 15:49:21.78027+00	0
1929	OFFICE OF PUBLIC AFFAIRS		883	\N	\N	2024-09-29 15:49:21.782075+00	2024-09-29 15:49:21.782075+00	0
1930	ASYLUM DIVISION		886	\N	\N	2024-09-29 15:49:21.784179+00	2024-09-29 15:49:21.784179+00	0
1931	1ST DISTRICT		889	\N	\N	2024-09-29 15:49:21.786062+00	2024-09-29 15:49:21.786062+00	0
1932	5TH DISTRICT		889	\N	\N	2024-09-29 15:49:21.787894+00	2024-09-29 15:49:21.787894+00	0
1933	8TH DISTRICT		889	\N	\N	2024-09-29 15:49:21.78962+00	2024-09-29 15:49:21.78962+00	0
1934	9TH DISTRICT		889	\N	\N	2024-09-29 15:49:21.79143+00	2024-09-29 15:49:21.79143+00	0
1935	ACQUISITION DIRECTORATE		890	\N	\N	2024-09-29 15:49:21.793259+00	2024-09-29 15:49:21.793259+00	0
1936	COMMAND CONTROL COMMUNICATIONS COMPUTER AND INFORMATION TECHNOLOGY DIRECTORATE		890	\N	\N	2024-09-29 15:49:21.794814+00	2024-09-29 15:49:21.794814+00	0
1937	DIRECTOR OF OPERATIONAL LOGISTICS		890	\N	\N	2024-09-29 15:49:21.796793+00	2024-09-29 15:49:21.796793+00	0
1938	ENGINEERING & LOGISTICS DIRECTORATE		890	\N	\N	2024-09-29 15:49:21.798384+00	2024-09-29 15:49:21.798384+00	0
1939	FORCE READINESS COMMAND		890	\N	\N	2024-09-29 15:49:21.800113+00	2024-09-29 15:49:21.800113+00	0
1940	HUMAN RESOURCES		890	\N	\N	2024-09-29 15:49:21.801869+00	2024-09-29 15:49:21.801869+00	0
1941	US COAST GUARD ACADEMY		890	\N	\N	2024-09-29 15:49:21.803583+00	2024-09-29 15:49:21.803583+00	0
1942	DIRECTOR OF INTERNATIONAL AFFAIRS & FOREIGN POLICY		891	\N	\N	2024-09-29 15:49:21.805211+00	2024-09-29 15:49:21.805211+00	0
1943	INTELLIGENCE DIRECTORATE		891	\N	\N	2024-09-29 15:49:21.809323+00	2024-09-29 15:49:21.809323+00	0
1944	HEADQUARTERS UNITS		893	\N	\N	2024-09-29 15:49:21.812071+00	2024-09-29 15:49:21.812071+00	0
1945	14TH DISTRICT		894	\N	\N	2024-09-29 15:49:21.813845+00	2024-09-29 15:49:21.813845+00	0
1946	17TH DISTRICT		894	\N	\N	2024-09-29 15:49:21.815393+00	2024-09-29 15:49:21.815393+00	0
1947	HISTORICAL TRUST ACCOUNTING		918	\N	\N	2024-09-29 15:49:21.817069+00	2024-09-29 15:49:21.817069+00	0
1948	BIOLOGICAL RESOURCE DISCIPLINE		931	\N	\N	2024-09-29 15:49:21.818784+00	2024-09-29 15:49:21.818784+00	0
1949	ADMINISTRATION		936	\N	\N	2024-09-29 15:49:21.820725+00	2024-09-29 15:49:21.820725+00	0
1950	AUDIT ASSESSMENT AND MANAGEMENT		936	\N	\N	2024-09-29 15:49:21.822242+00	2024-09-29 15:49:21.822242+00	0
1951	BUREAU OF JUSTICE ASSISTANCE		936	\N	\N	2024-09-29 15:49:21.823876+00	2024-09-29 15:49:21.823876+00	0
1952	BUREAU OF JUSTICE STATISTICS		936	\N	\N	2024-09-29 15:49:21.825408+00	2024-09-29 15:49:21.825408+00	0
1953	CHIEF FINANCIAL OFFICER		936	\N	\N	2024-09-29 15:49:21.82699+00	2024-09-29 15:49:21.82699+00	0
1954	CHIEF INFORMATION OFFICER		936	\N	\N	2024-09-29 15:49:21.828526+00	2024-09-29 15:49:21.828526+00	0
1955	CIVIL RIGHTS		936	\N	\N	2024-09-29 15:49:21.830167+00	2024-09-29 15:49:21.830167+00	0
1956	JUVENILE JUSTICE AND DELINQUENCY PREVENTION		936	\N	\N	2024-09-29 15:49:21.831626+00	2024-09-29 15:49:21.831626+00	0
1957	NATIONAL INSTITUTE OF JUSTICE		936	\N	\N	2024-09-29 15:49:21.83323+00	2024-09-29 15:49:21.83323+00	0
1958	VICTIMS OF CRIME		936	\N	\N	2024-09-29 15:49:21.834748+00	2024-09-29 15:49:21.834748+00	0
1959	ACQUISITION MANAGEMENT		944	\N	\N	2024-09-29 15:49:21.836315+00	2024-09-29 15:49:21.836315+00	0
1960	FINANCE		944	\N	\N	2024-09-29 15:49:21.838045+00	2024-09-29 15:49:21.838045+00	0
1961	TRAINING OFFICE		945	\N	\N	2024-09-29 15:49:21.839547+00	2024-09-29 15:49:21.839547+00	0
1962	PROFESSIONAL RESPONSIBILITY OFFICE		946	\N	\N	2024-09-29 15:49:21.841216+00	2024-09-29 15:49:21.841216+00	0
1963	INVESTIGATIVE INTELLIGENCE OFFICE		947	\N	\N	2024-09-29 15:49:21.843002+00	2024-09-29 15:49:21.843002+00	0
1964	SPECIAL INTELLIGENCE OFFICE		947	\N	\N	2024-09-29 15:49:21.844645+00	2024-09-29 15:49:21.844645+00	0
1965	ADMINISTRATION OFFICE		948	\N	\N	2024-09-29 15:49:21.846456+00	2024-09-29 15:49:21.846456+00	0
1966	FORENSIC SCIENCES OFFICE		948	\N	\N	2024-09-29 15:49:21.848002+00	2024-09-29 15:49:21.848002+00	0
1967	INFORMATION SYSTEMS OFFICE		948	\N	\N	2024-09-29 15:49:21.849561+00	2024-09-29 15:49:21.849561+00	0
1968	INVESTIGATIVE TECHNOLOGY OFFICE		948	\N	\N	2024-09-29 15:49:21.851127+00	2024-09-29 15:49:21.851127+00	0
1969	AVIATION DIVISION		949	\N	\N	2024-09-29 15:49:21.852783+00	2024-09-29 15:49:21.852783+00	0
1970	DIVERSION CONTROL OFFICE		949	\N	\N	2024-09-29 15:49:21.854435+00	2024-09-29 15:49:21.854435+00	0
1971	FINANCIAL OPERATIONS		949	\N	\N	2024-09-29 15:49:21.856429+00	2024-09-29 15:49:21.856429+00	0
1972	CRIMINAL INVESTIGATIVE DIVISION		950	\N	\N	2024-09-29 15:49:21.858399+00	2024-09-29 15:49:21.858399+00	0
1973	CRITICAL INCIDENT RESPONSE GROUP		950	\N	\N	2024-09-29 15:49:21.860294+00	2024-09-29 15:49:21.860294+00	0
1974	CYBER DIVISION		950	\N	\N	2024-09-29 15:49:21.86185+00	2024-09-29 15:49:21.86185+00	0
1975	HUMAN RESOURCES DIVISION		951	\N	\N	2024-09-29 15:49:21.863414+00	2024-09-29 15:49:21.863414+00	0
1976	TRAINING DIVISION		951	\N	\N	2024-09-29 15:49:21.864944+00	2024-09-29 15:49:21.864944+00	0
1977	CHIEF KNOWLEDGE OFFICER		952	\N	\N	2024-09-29 15:49:21.866551+00	2024-09-29 15:49:21.866551+00	0
1978	DEPUTY CHIEF INFORMATION OFFICER		952	\N	\N	2024-09-29 15:49:21.868152+00	2024-09-29 15:49:21.868152+00	0
1979	IT PROGRAM MANAGEMENT		952	\N	\N	2024-09-29 15:49:21.869598+00	2024-09-29 15:49:21.869598+00	0
1980	COUNTERINTELLIGENCE DIVISION		953	\N	\N	2024-09-29 15:49:21.871281+00	2024-09-29 15:49:21.871281+00	0
1981	DIRECTORATE OF INTELLIGENCE		953	\N	\N	2024-09-29 15:49:21.872855+00	2024-09-29 15:49:21.872855+00	0
1982	WEAPONS OF MASS DESTRUCTION DIRECTORATE		953	\N	\N	2024-09-29 15:49:21.874429+00	2024-09-29 15:49:21.874429+00	0
1983	FACILITIES AND LOGISTICS SERVICES DIVISION		954	\N	\N	2024-09-29 15:49:21.876133+00	2024-09-29 15:49:21.876133+00	0
1984	FINANCE DIVISION		954	\N	\N	2024-09-29 15:49:21.877663+00	2024-09-29 15:49:21.877663+00	0
1985	GENERAL COUNSEL		954	\N	\N	2024-09-29 15:49:21.879165+00	2024-09-29 15:49:21.879165+00	0
1986	RESOURCE PLANNING OFFICE		954	\N	\N	2024-09-29 15:49:21.880906+00	2024-09-29 15:49:21.880906+00	0
1987	SECURITY DIVISION		954	\N	\N	2024-09-29 15:49:21.882421+00	2024-09-29 15:49:21.882421+00	0
1988	CRIMINAL JUSTICE INFORMATION SERVICES DIVISION		955	\N	\N	2024-09-29 15:49:21.884158+00	2024-09-29 15:49:21.884158+00	0
1989	FBI LABORATORY		955	\N	\N	2024-09-29 15:49:21.885739+00	2024-09-29 15:49:21.885739+00	0
1990	OPERATIONAL TECHNOLOGY DIVISION		955	\N	\N	2024-09-29 15:49:21.887492+00	2024-09-29 15:49:21.887492+00	0
1991	FACILITIES AND ADMINISTRATIVE SERVICES STAFF		956	\N	\N	2024-09-29 15:49:21.889136+00	2024-09-29 15:49:21.889136+00	0
1992	LIBRARY STAFF		956	\N	\N	2024-09-29 15:49:21.890955+00	2024-09-29 15:49:21.890955+00	0
1993	SECURITY AND EMERGENCY PLANNING STAFF		956	\N	\N	2024-09-29 15:49:21.892582+00	2024-09-29 15:49:21.892582+00	0
1994	ENTERPRISE SOLUTIONS STAFF		957	\N	\N	2024-09-29 15:49:21.894136+00	2024-09-29 15:49:21.894136+00	0
1995	OFFICE OF THE CHIEF INFORMATION OFFICER		957	\N	\N	2024-09-29 15:49:21.895949+00	2024-09-29 15:49:21.895949+00	0
1996	MANAGEMENT AND PLANNING STAFF		958	\N	\N	2024-09-29 15:49:21.897457+00	2024-09-29 15:49:21.897457+00	0
1997	ASSET FORFEITURE MANAGEMENT STAFF		959	\N	\N	2024-09-29 15:49:21.899048+00	2024-09-29 15:49:21.899048+00	0
1998	BUDGET STAFF		959	\N	\N	2024-09-29 15:49:21.900694+00	2024-09-29 15:49:21.900694+00	0
1999	DEBT COLLECTION MANAGEMENT STAFF		959	\N	\N	2024-09-29 15:49:21.902245+00	2024-09-29 15:49:21.902245+00	0
2000	FINANCE STAFF		959	\N	\N	2024-09-29 15:49:21.903986+00	2024-09-29 15:49:21.903986+00	0
2001	PROCUREMENT SERVICES STAFF		959	\N	\N	2024-09-29 15:49:21.905617+00	2024-09-29 15:49:21.905617+00	0
2002	OFFICE OF WORKER SAFETY, HEALTH AND ENVIRONMENT		961	\N	\N	2024-09-29 15:49:21.908817+00	2024-09-29 15:49:21.908817+00	0
2003	OFFICE OF ACQUISITION SERVICES		965	\N	\N	2024-09-29 15:49:21.910782+00	2024-09-29 15:49:21.910782+00	0
2004	RESOURCES MANAGEMENT & INTEGRATION DIVISION (CODE CR)		976	\N	\N	2024-09-29 15:49:21.912317+00	2024-09-29 15:49:21.912317+00	0
2005	AEROSPACE SIMULATION RESEARCH AND DEVELOPMENT BRANCH (CODE AFS)		977	\N	\N	2024-09-29 15:49:21.914029+00	2024-09-29 15:49:21.914029+00	0
2006	FLIGHT DYNAMICS, TRAJECTORY AND CONTROLS BRANCH (CODE AFT)		977	\N	\N	2024-09-29 15:49:21.915636+00	2024-09-29 15:49:21.915636+00	0
2007	WIND TUNNEL DIVISION (CODE AO)		977	\N	\N	2024-09-29 15:49:21.917286+00	2024-09-29 15:49:21.917286+00	0
2008	ACQUISITION DIVISION (CODE JA)		978	\N	\N	2024-09-29 15:49:21.918791+00	2024-09-29 15:49:21.918791+00	0
2009	FACILITIES ENGINEERING AND REAL PROPERTY MANAGEMENT DIVISION (CODE JC)		978	\N	\N	2024-09-29 15:49:21.920316+00	2024-09-29 15:49:21.920316+00	0
2010	LOGISTICS AND DOCUMENTATION SERVICES DIVISION (CODE JS)		978	\N	\N	2024-09-29 15:49:21.9225+00	2024-09-29 15:49:21.9225+00	0
2011	PROTECTIVE SERVICES OFFICE (CODE JP)		978	\N	\N	2024-09-29 15:49:21.92426+00	2024-09-29 15:49:21.92426+00	0
2012	ENTRY SYSTEMS AND TECHNOLOGY DIVISION (CODE TS)		979	\N	\N	2024-09-29 15:49:21.92626+00	2024-09-29 15:49:21.92626+00	0
2013	HUMAN SYSTEMS INTEGRATION DIVISION (CODE TH)		979	\N	\N	2024-09-29 15:49:21.92816+00	2024-09-29 15:49:21.92816+00	0
2014	INTELLIGENT SYSTEMS DIVISION (CODE TI)		979	\N	\N	2024-09-29 15:49:21.929761+00	2024-09-29 15:49:21.929761+00	0
2015	IT OPERATIONS DIVISION (CODE IO)		980	\N	\N	2024-09-29 15:49:21.932583+00	2024-09-29 15:49:21.932583+00	0
2016	ELECTRICAL ENGINEERING DIVISION (CODE 560)		990	\N	\N	2024-09-29 15:49:21.934313+00	2024-09-29 15:49:21.934313+00	0
2017	INSTRUMENT SYSTEMS AND TECHNOLOGY DIVISION (CODE 550)		990	\N	\N	2024-09-29 15:49:21.935914+00	2024-09-29 15:49:21.935914+00	0
2018	MECHANICAL SYSTEMS DIVISION (CODE 540)		990	\N	\N	2024-09-29 15:49:21.937583+00	2024-09-29 15:49:21.937583+00	0
2019	MISSION ENGINEERING AND SYSTEMS ANALYSIS DIVISION (CODE 590)		990	\N	\N	2024-09-29 15:49:21.939059+00	2024-09-29 15:49:21.939059+00	0
2020	SOFTWARE ENGINEERING DIVISION (CODE 580)		990	\N	\N	2024-09-29 15:49:21.941671+00	2024-09-29 15:49:21.941671+00	0
2021	ASTROPHYSICS PROJECTS DIVISION OFFICE (CODE 440)		991	\N	\N	2024-09-29 15:49:21.951288+00	2024-09-29 15:49:21.951288+00	0
2022	EARTH SCIENCE PROJECTS DIVISION (CODE 420)		991	\N	\N	2024-09-29 15:49:21.953324+00	2024-09-29 15:49:21.953324+00	0
2023	EXPLORATION AND SPACE COMMUNICATIONS PROJECT DIVISION (CODE 450)		991	\N	\N	2024-09-29 15:49:21.955419+00	2024-09-29 15:49:21.955419+00	0
2024	EXPLORERS AND HELIOPHYSICS PROJECTS DIVISION (CODE 460)		991	\N	\N	2024-09-29 15:49:21.95726+00	2024-09-29 15:49:21.95726+00	0
2025	RAPID SPACECRAFT DEVELOPMENT OFFICE (CODE 401.1)		991	\N	\N	2024-09-29 15:49:21.95936+00	2024-09-29 15:49:21.95936+00	0
2026	RESOURCES AND BUSINESS MANAGEMENT OFFICE (CODE 703)		992	\N	\N	2024-09-29 15:49:21.961184+00	2024-09-29 15:49:21.961184+00	0
2027	FACILITIES MANAGEMENT DIVISION (CODE 220)		993	\N	\N	2024-09-29 15:49:21.963223+00	2024-09-29 15:49:21.963223+00	0
2028	INFORMATION AND LOGISTICS MANAGEMENT DIVISION (CODE 270)		993	\N	\N	2024-09-29 15:49:21.96615+00	2024-09-29 15:49:21.96615+00	0
2029	MEDICAL AND ENVIRONMENTAL MANAGEMENT DIVISION (CODE 250)		993	\N	\N	2024-09-29 15:49:21.967887+00	2024-09-29 15:49:21.967887+00	0
2030	PROTECTIVE SERVICES DIVISION (CODE 240)		993	\N	\N	2024-09-29 15:49:21.969736+00	2024-09-29 15:49:21.969736+00	0
2031	NASA IV&V FACILITY (CODE 180)		994	\N	\N	2024-09-29 15:49:21.971603+00	2024-09-29 15:49:21.971603+00	0
2032	OFFICE OF HUMAN CAPITAL MANAGEMENT (CODE 110)		994	\N	\N	2024-09-29 15:49:21.973605+00	2024-09-29 15:49:21.973605+00	0
2033	OFFICE OF THE CHIEF TECHNOLOGIST		994	\N	\N	2024-09-29 15:49:21.97534+00	2024-09-29 15:49:21.97534+00	0
2034	EARTH SCIENCES DIVISION (CODE 610)		996	\N	\N	2024-09-29 15:49:21.977288+00	2024-09-29 15:49:21.977288+00	0
2035	GODDARD INSTITUTE FOR SPACE STUDIES (CODE 611)		996	\N	\N	2024-09-29 15:49:21.979022+00	2024-09-29 15:49:21.979022+00	0
2036	SOLAR SYSTEMS EXPLORATION DIVISION (CODE 690)		996	\N	\N	2024-09-29 15:49:21.980756+00	2024-09-29 15:49:21.980756+00	0
2037	AIRCRAFT OFFICE (CODE 830)		997	\N	\N	2024-09-29 15:49:21.982633+00	2024-09-29 15:49:21.982633+00	0
2038	BALLOON PROGRAM OFFICE (CODE 820)		997	\N	\N	2024-09-29 15:49:21.984522+00	2024-09-29 15:49:21.984522+00	0
2039	RANGE AND MISSION MANAGEMENT OFFICE (CODE 840)		997	\N	\N	2024-09-29 15:49:21.986218+00	2024-09-29 15:49:21.986218+00	0
2040	SOUNDING ROCKETS PROGRAM OFFICE (CODE 810)		997	\N	\N	2024-09-29 15:49:21.988011+00	2024-09-29 15:49:21.988011+00	0
2041	OFFICE OF CHIEF FINANCIAL OFFICER (CODE GG)		1011	\N	\N	2024-09-29 15:49:21.990303+00	2024-09-29 15:49:21.990303+00	0
2042	PROPULSION SYSTEMS DEPARTMENT		1014	\N	\N	2024-09-29 15:49:21.992103+00	2024-09-29 15:49:21.992103+00	0
2043	ADMINISTRATION		1035	\N	\N	2024-09-29 15:49:21.993845+00	2024-09-29 15:49:21.993845+00	0
2044	INFORMATION SERVICES		1035	\N	\N	2024-09-29 15:49:21.995826+00	2024-09-29 15:49:21.995826+00	0
2045	NUCLEAR MATERIAL SAFETY AND SAFEGUARDS		1036	\N	\N	2024-09-29 15:49:21.997798+00	2024-09-29 15:49:21.997798+00	0
2046	NUCLEAR REGULATORY RESEARCH		1036	\N	\N	2024-09-29 15:49:21.99944+00	2024-09-29 15:49:21.99944+00	0
2047	FINANCIAL OPERATIONS DEPARTMENT		1043	\N	\N	2024-09-29 15:49:22.005135+00	2024-09-29 15:49:22.005135+00	0
2048	FACILITIES AND SERVICES DEPARTMENT		1044	\N	\N	2024-09-29 15:49:22.007814+00	2024-09-29 15:49:22.007814+00	0
2049	PROCUREMENT DEPARTMENT		1044	\N	\N	2024-09-29 15:49:22.011624+00	2024-09-29 15:49:22.011624+00	0
2050	BENEFITS ADMINISTRATION AND PAYMENT DEPARTMENT		1045	\N	\N	2024-09-29 15:49:22.050392+00	2024-09-29 15:49:22.050392+00	0
2051	REGION 1		1057	\N	\N	2024-09-29 15:49:22.05234+00	2024-09-29 15:49:22.05234+00	0
2052	REGION 2		1057	\N	\N	2024-09-29 15:49:22.054031+00	2024-09-29 15:49:22.054031+00	0
2053	REGION 4		1057	\N	\N	2024-09-29 15:49:22.06202+00	2024-09-29 15:49:22.06202+00	0
2054	REGION 5		1057	\N	\N	2024-09-29 15:49:22.066563+00	2024-09-29 15:49:22.066563+00	0
2055	REGION 6		1057	\N	\N	2024-09-29 15:49:22.073872+00	2024-09-29 15:49:22.073872+00	0
2056	REGION 7		1057	\N	\N	2024-09-29 15:49:22.077988+00	2024-09-29 15:49:22.077988+00	0
2057	REGION 8		1057	\N	\N	2024-09-29 15:49:22.130352+00	2024-09-29 15:49:22.130352+00	0
2058	REGION 9		1057	\N	\N	2024-09-29 15:49:22.137799+00	2024-09-29 15:49:22.137799+00	0
2059	REGION 10		1057	\N	\N	2024-09-29 15:49:22.139937+00	2024-09-29 15:49:22.139937+00	0
2060	OFFICE OF PLANNING AND PROGRAM SUPPORT		1069	\N	\N	2024-09-29 15:49:22.141746+00	2024-09-29 15:49:22.141746+00	0
2061	FACILITY SECURITY ENGINEERING DIVISION		1084	\N	\N	2024-09-29 15:49:22.143434+00	2024-09-29 15:49:22.143434+00	0
2062	SECURITY TECHNOLOGY OPERATIONS DIVISION		1084	\N	\N	2024-09-29 15:49:22.145349+00	2024-09-29 15:49:22.145349+00	0
2063	OFFICE OF PERSONNEL SECURITY AND SUITABILITY		1086	\N	\N	2024-09-29 15:49:22.147113+00	2024-09-29 15:49:22.147113+00	0
2064	OFFICE OF E DIPLOMACY (IRM/BMP/EDIP)		1094	\N	\N	2024-09-29 15:49:22.148868+00	2024-09-29 15:49:22.148868+00	0
2065	STRATEGY, PLANNING AND BUDGET OFFICE (IRM/BMP/SPB)		1094	\N	\N	2024-09-29 15:49:22.150414+00	2024-09-29 15:49:22.150414+00	0
2066	SYSTEMS INTEGRATION OFFICE (IRM/OPS/SIO)		1095	\N	\N	2024-09-29 15:49:22.15207+00	2024-09-29 15:49:22.15207+00	0
2067	INFORMATION TECHNOLOGY INFRASTRUCTURE (IRM/FO/ITI)		1099	\N	\N	2024-09-29 15:49:22.153877+00	2024-09-29 15:49:22.153877+00	0
2068	OFFICE OF EXECUTIVE SECRETARIAT		1114	\N	\N	2024-09-29 15:49:22.155594+00	2024-09-29 15:49:22.155594+00	0
2069	ACQUISITION AND BUSINESS		1117	\N	\N	2024-09-29 15:49:22.157485+00	2024-09-29 15:49:22.157485+00	0
2070	FINANCE		1117	\N	\N	2024-09-29 15:49:22.160925+00	2024-09-29 15:49:22.160925+00	0
2071	NEXTGEN AND OPERATIONS PLANNING		1117	\N	\N	2024-09-29 15:49:22.162702+00	2024-09-29 15:49:22.162702+00	0
2072	OPERATIONS		1117	\N	\N	2024-09-29 15:49:22.164535+00	2024-09-29 15:49:22.164535+00	0
2073	SAFETY SERVICES		1117	\N	\N	2024-09-29 15:49:22.166166+00	2024-09-29 15:49:22.166166+00	0
2074	AEROSPACE MEDICINE		1120	\N	\N	2024-09-29 15:49:22.167968+00	2024-09-29 15:49:22.167968+00	0
2075	AIRCRAFT CERTIFICATION SERVICE		1120	\N	\N	2024-09-29 15:49:22.169676+00	2024-09-29 15:49:22.169676+00	0
2076	FLIGHT STANDARDS SERVICE		1120	\N	\N	2024-09-29 15:49:22.171257+00	2024-09-29 15:49:22.171257+00	0
2077	APPLICATION SERVICES		1123	\N	\N	2024-09-29 15:49:22.173671+00	2024-09-29 15:49:22.173671+00	0
2078	INFORMATION SYSTEMS AND TECHNOLOGY SERVICES		1124	\N	\N	2024-09-29 15:49:22.175604+00	2024-09-29 15:49:22.175604+00	0
2079	LABOR-MANAGEMENT RELATIONS		1125	\N	\N	2024-09-29 15:49:22.177534+00	2024-09-29 15:49:22.177534+00	0
2080	INFORMATION SYSTEMS SECURITY		1126	\N	\N	2024-09-29 15:49:22.17923+00	2024-09-29 15:49:22.17923+00	0
2081	EASTERN REGION		1127	\N	\N	2024-09-29 15:49:22.180799+00	2024-09-29 15:49:22.180799+00	0
2082	MIKE MONRONEY AERONAUTICAL CENTER		1127	\N	\N	2024-09-29 15:49:22.18239+00	2024-09-29 15:49:22.18239+00	0
2083	NORTHWEST MOUNTAIN REGION		1127	\N	\N	2024-09-29 15:49:22.184118+00	2024-09-29 15:49:22.184118+00	0
2084	SOUTHERN REGION		1127	\N	\N	2024-09-29 15:49:22.185718+00	2024-09-29 15:49:22.185718+00	0
2085	SOUTHWEST REGION		1127	\N	\N	2024-09-29 15:49:22.187324+00	2024-09-29 15:49:22.187324+00	0
2086	WESTERN-PACIFIC REGION		1127	\N	\N	2024-09-29 15:49:22.189213+00	2024-09-29 15:49:22.189213+00	0
2087	ACQUISITION MANAGEMENT		1130	\N	\N	2024-09-29 15:49:22.190926+00	2024-09-29 15:49:22.190926+00	0
2088	FREIGHT MANAGEMENT AND OPERATIONS		1138	\N	\N	2024-09-29 15:49:22.192625+00	2024-09-29 15:49:22.192625+00	0
2089	TRANSPORTATION POLICY STUDIES		1140	\N	\N	2024-09-29 15:49:22.194183+00	2024-09-29 15:49:22.194183+00	0
2090	RESEARCH AND DEVELOPMENT		1145	\N	\N	2024-09-29 15:49:22.195865+00	2024-09-29 15:49:22.195865+00	0
2091	DIVISION OF LOGISTICS SUPPORT MAR 614		1147	\N	\N	2024-09-29 15:49:22.197605+00	2024-09-29 15:49:22.197605+00	0
2092	FINANCIAL MANAGEMENT AND TRANSIT BENEFIT PROGRAMS		1149	\N	\N	2024-09-29 15:49:22.200571+00	2024-09-29 15:49:22.200571+00	0
2093	HUMAN RESOURCES MANAGEMENT		1149	\N	\N	2024-09-29 15:49:22.202219+00	2024-09-29 15:49:22.202219+00	0
2094	SENIOR PROCUREMENT EXECUTIVE		1149	\N	\N	2024-09-29 15:49:22.203764+00	2024-09-29 15:49:22.203764+00	0
2095	CHIEF COUNSEL		1161	\N	\N	2024-09-29 15:49:22.205555+00	2024-09-29 15:49:22.205555+00	0
2096	CHIEF INFORMATION OFFICER		1162	\N	\N	2024-09-29 15:49:22.207272+00	2024-09-29 15:49:22.207272+00	0
2097	CHIEF PROCUREMENT OFFICER		1162	\N	\N	2024-09-29 15:49:22.209134+00	2024-09-29 15:49:22.209134+00	0
2098	RESEARCH, APPLIED ANALYTICS AND STATISTICS		1162	\N	\N	2024-09-29 15:49:22.210776+00	2024-09-29 15:49:22.210776+00	0
2099	CRIMINAL INVESTIGATION		1163	\N	\N	2024-09-29 15:49:22.212573+00	2024-09-29 15:49:22.212573+00	0
2100	PROCUREMENT SERVICES DIVISION		1167	\N	\N	2024-09-29 15:49:22.214043+00	2024-09-29 15:49:22.214043+00	0
2101	OFFICE OF INTELLIGENCE AND ANALYSIS		1169	\N	\N	2024-09-29 15:49:22.216694+00	2024-09-29 15:49:22.216694+00	0
2102	OPERATIONS		1174	\N	\N	2024-09-29 15:49:22.218263+00	2024-09-29 15:49:22.218263+00	0
2103	OFFICE OF ACQUISITION PROGRAM SUPPORT		1198	\N	\N	2024-09-29 15:49:22.219848+00	2024-09-29 15:49:22.219848+00	0
2104	VA ACQUISITION ACADEMY		1198	\N	\N	2024-09-29 15:49:22.221563+00	2024-09-29 15:49:22.221563+00	0
2105	NATIONAL ACQUISITION CENTER		1199	\N	\N	2024-09-29 15:49:22.224297+00	2024-09-29 15:49:22.224297+00	0
2106	STRATEGIC ACQUISITION CENTER		1199	\N	\N	2024-09-29 15:49:22.225932+00	2024-09-29 15:49:22.225932+00	0
2107	TECHNOLOGY ACQUISITION CENTER		1199	\N	\N	2024-09-29 15:49:22.22771+00	2024-09-29 15:49:22.22771+00	0
2108	HUMAN RESOURCES ENTERPRISE CENTER		1203	\N	\N	2024-09-29 15:49:22.229505+00	2024-09-29 15:49:22.229505+00	0
2109	OFFICE OF DIVERSITY AND INCLUSION		1203	\N	\N	2024-09-29 15:49:22.231087+00	2024-09-29 15:49:22.231087+00	0
2110	OFFICE OF HUMAN RESOURCES MANAGEMENT		1203	\N	\N	2024-09-29 15:49:22.23272+00	2024-09-29 15:49:22.23272+00	0
2111	OFFICE OF RESOLUTION MANAGEMENT		1203	\N	\N	2024-09-29 15:49:22.234263+00	2024-09-29 15:49:22.234263+00	0
2112	SECURITY AND LAW ENFORCEMENT		1203	\N	\N	2024-09-29 15:49:22.235856+00	2024-09-29 15:49:22.235856+00	0
2113	OFFICE OF ENTERPRISE PROGRAM MANAGEMENT		1208	\N	\N	2024-09-29 15:49:22.237316+00	2024-09-29 15:49:22.237316+00	0
2114	OFFICE OF IT OPERATIONS AND SERVICES		1208	\N	\N	2024-09-29 15:49:22.238968+00	2024-09-29 15:49:22.238968+00	0
2115	CAPITAL ASSET MANAGEMENT SERVICE		1212	\N	\N	2024-09-29 15:49:22.240714+00	2024-09-29 15:49:22.240714+00	0
2116	DEBT MANAGEMENT CENTER		1214	\N	\N	2024-09-29 15:49:22.242604+00	2024-09-29 15:49:22.242604+00	0
2117	FINANCIAL SERVICES CENTER		1214	\N	\N	2024-09-29 15:49:22.244364+00	2024-09-29 15:49:22.244364+00	0
2118	OVERSIGHT SUPPORT CENTER		1215	\N	\N	2024-09-29 15:49:22.245886+00	2024-09-29 15:49:22.245886+00	0
2119	OFFICE OF ADMINISTRATION AND FACILITIES		1219	\N	\N	2024-09-29 15:49:22.247449+00	2024-09-29 15:49:22.247449+00	0
2120	OFFICE OF BUSINESS PROCESS INTEGRATION		1219	\N	\N	2024-09-29 15:49:22.249232+00	2024-09-29 15:49:22.249232+00	0
2121	OFFICE OF HUMAN CAPITAL MANAGEMENT		1219	\N	\N	2024-09-29 15:49:22.250757+00	2024-09-29 15:49:22.250757+00	0
2122	VOCATIONAL REHABILITATION AND EMPLOYMENT SERVICE		1220	\N	\N	2024-09-29 15:49:22.252322+00	2024-09-29 15:49:22.252322+00	0
2123	OFFICE OF EMPLOYEE EDUCATION SYSTEM		1225	\N	\N	2024-09-29 15:49:22.253895+00	2024-09-29 15:49:22.253895+00	0
2124	OFFICE OF RESEARCH AND DEVELOPMENT		1227	\N	\N	2024-09-29 15:49:22.255553+00	2024-09-29 15:49:22.255553+00	0
2125	PROCUREMENT AND LOGISTICS OFFICE		1228	\N	\N	2024-09-29 15:49:22.257214+00	2024-09-29 15:49:22.257214+00	0
2126	OFFICE OF PATIENT CARE SERVICES		1230	\N	\N	2024-09-29 15:49:22.258762+00	2024-09-29 15:49:22.258762+00	0
2127	OFFICE OF POLICY AND PLANNING		1230	\N	\N	2024-09-29 15:49:22.260663+00	2024-09-29 15:49:22.260663+00	0
2128	EDITH NOURSE ROGERS MEMORIAL VETERANS HOSPITAL		1232	\N	\N	2024-09-29 15:49:22.262466+00	2024-09-29 15:49:22.262466+00	0
2129	MANCHESTER VA MEDICAL CENTER		1232	\N	\N	2024-09-29 15:49:22.264259+00	2024-09-29 15:49:22.264259+00	0
2130	PROVIDENCE VA MEDICAL CENTER		1232	\N	\N	2024-09-29 15:49:22.265802+00	2024-09-29 15:49:22.265802+00	0
2131	VA BOSTON HEALTHCARE SYSTEM, BROCKTON CAMPUS		1232	\N	\N	2024-09-29 15:49:22.267442+00	2024-09-29 15:49:22.267442+00	0
2132	VA BOSTON HEALTHCARE SYSTEM, JAMAICA PLAIN CAMPUS		1232	\N	\N	2024-09-29 15:49:22.269093+00	2024-09-29 15:49:22.269093+00	0
2133	VA BOSTON HEALTHCARE SYSTEM, WEST ROXBURY CAMPUS		1232	\N	\N	2024-09-29 15:49:22.270737+00	2024-09-29 15:49:22.270737+00	0
2134	VA CENTRAL WESTERN MASSACHUSETTS HEALTHCARE SYSTEM		1232	\N	\N	2024-09-29 15:49:22.2727+00	2024-09-29 15:49:22.2727+00	0
2135	VA CONNECTICUT HEALTHCARE SYSTEM, NEWINGTON CAMPUS		1232	\N	\N	2024-09-29 15:49:22.274245+00	2024-09-29 15:49:22.274245+00	0
2136	VA CONNECTICUT HEALTHCARE SYSTEM, WEST HAVEN CAMPUS		1232	\N	\N	2024-09-29 15:49:22.275759+00	2024-09-29 15:49:22.275759+00	0
2137	VA MAINE HEALTHCARE SYSTEM - TOGUS		1232	\N	\N	2024-09-29 15:49:22.277402+00	2024-09-29 15:49:22.277402+00	0
2138	WHITE RIVER JUNCTION VA MEDICAL CENTER		1232	\N	\N	2024-09-29 15:49:22.279181+00	2024-09-29 15:49:22.279181+00	0
2139	ALBANY VA MEDICAL CENTER: SAMUEL S. STRATTON		1233	\N	\N	2024-09-29 15:49:22.280666+00	2024-09-29 15:49:22.280666+00	0
2140	BATH VA MEDICAL CENTER		1233	\N	\N	2024-09-29 15:49:22.2829+00	2024-09-29 15:49:22.2829+00	0
2141	CANANDAIGUA VA MEDICAL CENTER		1233	\N	\N	2024-09-29 15:49:22.28448+00	2024-09-29 15:49:22.28448+00	0
2142	FRANKLIN DELANO ROOSEVELT CAMPUS - VA HUDSON VALLEY HEALTH CARE SYSTEM		1233	\N	\N	2024-09-29 15:49:22.286181+00	2024-09-29 15:49:22.286181+00	0
2143	JAMES J. PETERS VA MEDICAL CENTER		1233	\N	\N	2024-09-29 15:49:22.287854+00	2024-09-29 15:49:22.287854+00	0
2144	LYONS CAMPUS - VA NEW JERSEY HEALTH CARE SYSTEM		1233	\N	\N	2024-09-29 15:49:22.28944+00	2024-09-29 15:49:22.28944+00	0
2145	NORTHPORT VA MEDICAL CENTER		1233	\N	\N	2024-09-29 15:49:22.290995+00	2024-09-29 15:49:22.290995+00	0
2146	SYRACUSE VA MEDICAL CENTER		1233	\N	\N	2024-09-29 15:49:22.292562+00	2024-09-29 15:49:22.292562+00	0
2147	VA HUDSON VALLEY HEALTH CARE SYSTEM		1233	\N	\N	2024-09-29 15:49:22.294192+00	2024-09-29 15:49:22.294192+00	0
2148	VA HUDSON VALLEY HEALTH CARE SYSTEM, CASTLE POINT CAMPUS		1233	\N	\N	2024-09-29 15:49:22.295857+00	2024-09-29 15:49:22.295857+00	0
2149	VA NEW JERSEY HEALTH CARE SYSTEM		1233	\N	\N	2024-09-29 15:49:22.2974+00	2024-09-29 15:49:22.2974+00	0
2150	VA NY HARBOR HEALTHCARE SYSTEM		1233	\N	\N	2024-09-29 15:49:22.299047+00	2024-09-29 15:49:22.299047+00	0
2151	VA NY HARBOR HEALTHCARE SYSTEM, BROOKLYN CAMPUS		1233	\N	\N	2024-09-29 15:49:22.300755+00	2024-09-29 15:49:22.300755+00	0
2152	VA NY HARBOR HEALTHCARE SYSTEM, MANHATTAN CAMPUS		1233	\N	\N	2024-09-29 15:49:22.302259+00	2024-09-29 15:49:22.302259+00	0
2153	VA WESTERN NEW YORK HEALTHCARE SYSTEM		1233	\N	\N	2024-09-29 15:49:22.303789+00	2024-09-29 15:49:22.303789+00	0
2154	VA WESTERN NEW YORK HEALTHCARE SYSTEM AT BATAVIA		1233	\N	\N	2024-09-29 15:49:22.305295+00	2024-09-29 15:49:22.305295+00	0
2155	VA WESTERN NEW YORK HEALTHCARE SYSTEM AT BUFFALO		1233	\N	\N	2024-09-29 15:49:22.3069+00	2024-09-29 15:49:22.3069+00	0
2156	COATESVILLE VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.308499+00	2024-09-29 15:49:22.308499+00	0
2157	CORPORAL MICHAEL J. CRESCENZ VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.310127+00	2024-09-29 15:49:22.310127+00	0
2158	ERIE VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.31166+00	2024-09-29 15:49:22.31166+00	0
2159	JAMES E. VAN ZANDT VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.313273+00	2024-09-29 15:49:22.313273+00	0
2160	LEBANON VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.315174+00	2024-09-29 15:49:22.315174+00	0
2161	VA BUTLER HEALTH CARE CENTER		1234	\N	\N	2024-09-29 15:49:22.316824+00	2024-09-29 15:49:22.316824+00	0
2162	VA PITTSBURGH HEALTHCARE SYSTEM		1234	\N	\N	2024-09-29 15:49:22.318375+00	2024-09-29 15:49:22.318375+00	0
2163	WILKES-BARRE VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.320096+00	2024-09-29 15:49:22.320096+00	0
2164	WILMINGTON VA MEDICAL CENTER		1234	\N	\N	2024-09-29 15:49:22.321702+00	2024-09-29 15:49:22.321702+00	0
2165	BALTIMORE VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.323887+00	2024-09-29 15:49:22.323887+00	0
2166	BECKLEY VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.325553+00	2024-09-29 15:49:22.325553+00	0
2167	HERSHEL WOODY WILLIAMS VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.327059+00	2024-09-29 15:49:22.327059+00	0
2168	LOCH RAVEN VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.328708+00	2024-09-29 15:49:22.328708+00	0
2169	LOUIS A. JOHNSON VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.330336+00	2024-09-29 15:49:22.330336+00	0
2170	MARTINSBURG VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.332729+00	2024-09-29 15:49:22.332729+00	0
2171	PERRY POINT VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.334261+00	2024-09-29 15:49:22.334261+00	0
2172	WASHINGTON DC VA MEDICAL CENTER		1235	\N	\N	2024-09-29 15:49:22.335978+00	2024-09-29 15:49:22.335978+00	0
2173	ASHEVILLE VA MEDICAL CENTER		1236	\N	\N	2024-09-29 15:49:22.337568+00	2024-09-29 15:49:22.337568+00	0
2174	DURHAM VA MEDICAL CENTER		1236	\N	\N	2024-09-29 15:49:22.339229+00	2024-09-29 15:49:22.339229+00	0
2175	FAYETTEVILLE VA MEDICAL CENTER		1236	\N	\N	2024-09-29 15:49:22.344161+00	2024-09-29 15:49:22.344161+00	0
2176	HAMPTON VA MEDICAL CENTER		1236	\N	\N	2024-09-29 15:49:22.346108+00	2024-09-29 15:49:22.346108+00	0
2177	HUNTER HOLMES MCGUIRE VA MEDICAL CENTER		1236	\N	\N	2024-09-29 15:49:22.349083+00	2024-09-29 15:49:22.349083+00	0
2178	SALEM VA MEDICAL CENTER		1236	\N	\N	2024-09-29 15:49:22.350818+00	2024-09-29 15:49:22.350818+00	0
2179	W G (BILL) HEFNER VA MEDICAL CENTER-SALISBURY		1236	\N	\N	2024-09-29 15:49:22.352476+00	2024-09-29 15:49:22.352476+00	0
2180	ATLANTA VA HEALTH CARE SYSTEM		1237	\N	\N	2024-09-29 15:49:22.354205+00	2024-09-29 15:49:22.354205+00	0
2181	BIRMINGHAM VA MEDICAL CENTER		1237	\N	\N	2024-09-29 15:49:22.355934+00	2024-09-29 15:49:22.355934+00	0
2182	CARL VINSON VA MEDICAL CENTER		1237	\N	\N	2024-09-29 15:49:22.357592+00	2024-09-29 15:49:22.357592+00	0
2183	CENTRAL ALABAMA VETERANS HEALTH CARE SYSTEM EAST CAMPUS		1237	\N	\N	2024-09-29 15:49:22.359482+00	2024-09-29 15:49:22.359482+00	0
2184	CENTRAL ALABAMA VETERANS HEALTH CARE SYSTEM WEST CAMPUS		1237	\N	\N	2024-09-29 15:49:22.361133+00	2024-09-29 15:49:22.361133+00	0
2185	CHARLIE NORWOOD VA MEDICAL CENTER		1237	\N	\N	2024-09-29 15:49:22.362778+00	2024-09-29 15:49:22.362778+00	0
2186	COLUMBIA VA HEALTH CARE SYSTEM		1237	\N	\N	2024-09-29 15:49:22.364496+00	2024-09-29 15:49:22.364496+00	0
2187	RALPH H. JOHNSON VA MEDICAL CENTER		1237	\N	\N	2024-09-29 15:49:22.366072+00	2024-09-29 15:49:22.366072+00	0
2188	TUSCALOOSA VA MEDICAL CENTER		1237	\N	\N	2024-09-29 15:49:22.367808+00	2024-09-29 15:49:22.367808+00	0
2189	BAY PINES VA HEALTHCARE SYSTEM		1238	\N	\N	2024-09-29 15:49:22.369569+00	2024-09-29 15:49:22.369569+00	0
2190	JAMES A. HALEY VETERANS' HOSPITAL		1238	\N	\N	2024-09-29 15:49:22.371534+00	2024-09-29 15:49:22.371534+00	0
2191	LAKE CITY VA MEDICAL CENTER		1238	\N	\N	2024-09-29 15:49:22.375568+00	2024-09-29 15:49:22.375568+00	0
2192	MALCOM RANDALL VA MEDICAL CENTER		1238	\N	\N	2024-09-29 15:49:22.377813+00	2024-09-29 15:49:22.377813+00	0
2193	MIAMI VA HEALTHCARE SYSTEM		1238	\N	\N	2024-09-29 15:49:22.379632+00	2024-09-29 15:49:22.379632+00	0
2194	NORTH FLORIDA/SOUTH GEORGIA VETERANS HEALTH SYSTEM		1238	\N	\N	2024-09-29 15:49:22.381603+00	2024-09-29 15:49:22.381603+00	0
2195	ORLANDO VA MEDICAL CENTER		1238	\N	\N	2024-09-29 15:49:22.38334+00	2024-09-29 15:49:22.38334+00	0
2196	SAN JUAN VET CENTER		1238	\N	\N	2024-09-29 15:49:22.385087+00	2024-09-29 15:49:22.385087+00	0
2197	VA CARIBBEAN HEALTHCARE SYSTEM		1238	\N	\N	2024-09-29 15:49:22.386683+00	2024-09-29 15:49:22.386683+00	0
2198	WEST PALM BEACH VA MEDICAL CENTER		1238	\N	\N	2024-09-29 15:49:22.388259+00	2024-09-29 15:49:22.388259+00	0
2199	ALVIN C. YORK VA MEDICAL CENTER		1239	\N	\N	2024-09-29 15:49:22.390056+00	2024-09-29 15:49:22.390056+00	0
2200	JAMES H. QUILLEN VETERANS AFFAIRS MEDICAL CENTER		1239	\N	\N	2024-09-29 15:49:22.3917+00	2024-09-29 15:49:22.3917+00	0
2201	LEXINGTON VA HEALTH CARE SYSTEM		1239	\N	\N	2024-09-29 15:49:22.393491+00	2024-09-29 15:49:22.393491+00	0
2202	LEXINGTON VA MEDICAL CENTER: COOPER DIVISION		1239	\N	\N	2024-09-29 15:49:22.395058+00	2024-09-29 15:49:22.395058+00	0
2203	LEXINGTON VA MEDICAL CENTER: LEESTOWN DIVISION		1239	\N	\N	2024-09-29 15:49:22.396821+00	2024-09-29 15:49:22.396821+00	0
2204	MEMPHIS VA MEDICAL CENTER		1239	\N	\N	2024-09-29 15:49:22.398664+00	2024-09-29 15:49:22.398664+00	0
2205	NASHVILLE VA MEDICAL CENTER		1239	\N	\N	2024-09-29 15:49:22.401705+00	2024-09-29 15:49:22.401705+00	0
2206	ROBLEY REX VA MEDICAL CENTER		1239	\N	\N	2024-09-29 15:49:22.4036+00	2024-09-29 15:49:22.4036+00	0
2207	TENNESSEE VALLEY HEALTHCARE SYSTEM		1239	\N	\N	2024-09-29 15:49:22.405437+00	2024-09-29 15:49:22.405437+00	0
2208	ALEDA E. LUTZ VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.406954+00	2024-09-29 15:49:22.406954+00	0
2209	BATTLE CREEK VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.408477+00	2024-09-29 15:49:22.408477+00	0
2210	CHALMBERS P. WYLIE AMBULATORY CARE CENTER		1240	\N	\N	2024-09-29 15:49:22.411083+00	2024-09-29 15:49:22.411083+00	0
2211	CHILLICOTHE VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.413127+00	2024-09-29 15:49:22.413127+00	0
2212	CINCINNATI VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.41485+00	2024-09-29 15:49:22.41485+00	0
2213	CINCINNATI VA MEDICAL CENTER - FORT THOMAS		1240	\N	\N	2024-09-29 15:49:22.416724+00	2024-09-29 15:49:22.416724+00	0
2214	DAYTON VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.41832+00	2024-09-29 15:49:22.41832+00	0
2215	JOHN D. DINGELL VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.42008+00	2024-09-29 15:49:22.42008+00	0
2216	LOUIS STOKES VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.421668+00	2024-09-29 15:49:22.421668+00	0
2217	RICHARD L. ROUDEBUSH VA MEDICAL CENTER		1240	\N	\N	2024-09-29 15:49:22.423187+00	2024-09-29 15:49:22.423187+00	0
2218	VA ANN ARBOR HEALTHCARE SYSTEM		1240	\N	\N	2024-09-29 15:49:22.425949+00	2024-09-29 15:49:22.425949+00	0
2219	VA NORTHERN INDIANA HEALTH CARE - FORT WAYNE CAMPUS		1240	\N	\N	2024-09-29 15:49:22.427673+00	2024-09-29 15:49:22.427673+00	0
2220	VA NORTHERN INDIANA HEALTH CARE SYSTEM - MARION CAMPUS		1240	\N	\N	2024-09-29 15:49:22.429512+00	2024-09-29 15:49:22.429512+00	0
2221	CAPTAIN JAMES A. LOVELL FEDERAL HEALTH CARE CENTER		1241	\N	\N	2024-09-29 15:49:22.431348+00	2024-09-29 15:49:22.431348+00	0
2222	CLEMENT J ZABLOCKI VA MEDICAL CENTER-MILWAUKEE		1241	\N	\N	2024-09-29 15:49:22.433164+00	2024-09-29 15:49:22.433164+00	0
2223	EDWARD HINES JR. VA HOSPITAL		1241	\N	\N	2024-09-29 15:49:22.435181+00	2024-09-29 15:49:22.435181+00	0
2224	JESSE BROWN VA MEDICAL CENTER		1241	\N	\N	2024-09-29 15:49:22.436879+00	2024-09-29 15:49:22.436879+00	0
2225	OSCAR G. JOHNSON VA MEDICAL CENTER		1241	\N	\N	2024-09-29 15:49:22.442146+00	2024-09-29 15:49:22.442146+00	0
2226	TOMAH VA MEDICAL CENTER		1241	\N	\N	2024-09-29 15:49:22.445651+00	2024-09-29 15:49:22.445651+00	0
2227	VA ILLIANA HEALTH CARE SYSTEM		1241	\N	\N	2024-09-29 15:49:22.448568+00	2024-09-29 15:49:22.448568+00	0
2228	WILLIAM S. MIDDELTON MEMORIAL VETERANS HOSPITAL		1241	\N	\N	2024-09-29 15:49:22.450414+00	2024-09-29 15:49:22.450414+00	0
2229	COLMERY-O'NEIL VA MEDICAL CENTER		1242	\N	\N	2024-09-29 15:49:22.452177+00	2024-09-29 15:49:22.452177+00	0
2230	DWIGHT D. EISENHOWER VA MEDICAL CENTER		1242	\N	\N	2024-09-29 15:49:22.453838+00	2024-09-29 15:49:22.453838+00	0
2231	HARRY S. TRUMAN MEMORIAL VETERANS' HOSPITAL		1242	\N	\N	2024-09-29 15:49:22.455625+00	2024-09-29 15:49:22.455625+00	0
2232	JOHN J. PERSHING VA MEDICAL CENTER		1242	\N	\N	2024-09-29 15:49:22.457301+00	2024-09-29 15:49:22.457301+00	0
2233	KANSAS CITY VA MEDICAL CENTER		1242	\N	\N	2024-09-29 15:49:22.458821+00	2024-09-29 15:49:22.458821+00	0
2234	MARION VA MEDICAL CENTER		1242	\N	\N	2024-09-29 15:49:22.460508+00	2024-09-29 15:49:22.460508+00	0
2235	ROBERT J. DOLE VA MEDICAL CENTER		1242	\N	\N	2024-09-29 15:49:22.462092+00	2024-09-29 15:49:22.462092+00	0
2236	VA ST. LOUIS HEALTH CARE SYSTEM		1242	\N	\N	2024-09-29 15:49:22.463863+00	2024-09-29 15:49:22.463863+00	0
2237	VA ST. LOUIS HEALTH CARE SYSTEM - JEFFERSON BARRACKS DIVISION		1242	\N	\N	2024-09-29 15:49:22.465425+00	2024-09-29 15:49:22.465425+00	0
2238	VA ST. LOUIS HEALTH CARE SYSTEM - JOHN COCHRAN DIVISION		1242	\N	\N	2024-09-29 15:49:22.468189+00	2024-09-29 15:49:22.468189+00	0
2239	ALEXANDRIA VA HEALTH CARE SYSTEM		1243	\N	\N	2024-09-29 15:49:22.47009+00	2024-09-29 15:49:22.47009+00	0
2240	EUGENE J. TOWBIN HEALTHCARE CENTER		1243	\N	\N	2024-09-29 15:49:22.471793+00	2024-09-29 15:49:22.471793+00	0
2241	G.V. (SONNY) MONTGOMERY VA MEDICAL CENTER		1243	\N	\N	2024-09-29 15:49:22.473429+00	2024-09-29 15:49:22.473429+00	0
2242	GULF COAST VETERANS HEALTH CARE SYSTEM		1243	\N	\N	2024-09-29 15:49:22.475919+00	2024-09-29 15:49:22.475919+00	0
2243	JOHN L. MCCLELLAN MEMORIAL VETERANS HOSPITAL		1243	\N	\N	2024-09-29 15:49:22.47773+00	2024-09-29 15:49:22.47773+00	0
2244	MICHAEL E DEBAKEY VA MEDICAL CENTER-HOUSTON		1243	\N	\N	2024-09-29 15:49:22.479358+00	2024-09-29 15:49:22.479358+00	0
2245	OVERTON BROOKS VA MEDICAL CENTER		1243	\N	\N	2024-09-29 15:49:22.481115+00	2024-09-29 15:49:22.481115+00	0
2246	SOUTHEAST LOUISIANA VETERANS HEALTH CARE SYSTEM		1243	\N	\N	2024-09-29 15:49:22.482723+00	2024-09-29 15:49:22.482723+00	0
2247	VETERANS HEALTH CARE SYSTEM OF THE OZARKS		1243	\N	\N	2024-09-29 15:49:22.484638+00	2024-09-29 15:49:22.484638+00	0
2248	AMARILLO VA HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.486317+00	2024-09-29 15:49:22.486317+00	0
2249	CENTRAL TEXAS VETERANS HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.487883+00	2024-09-29 15:49:22.487883+00	0
2250	DALLAS VA MEDICAL CENTER		1244	\N	\N	2024-09-29 15:49:22.489729+00	2024-09-29 15:49:22.489729+00	0
2251	DORIS MILLER DEPARTMENT OF VETERANS AFFAIRS MEDICAL CENTER		1244	\N	\N	2024-09-29 15:49:22.491294+00	2024-09-29 15:49:22.491294+00	0
2252	EL PASO VA HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.493058+00	2024-09-29 15:49:22.493058+00	0
2253	KERRVILLE VA HOSPITAL		1244	\N	\N	2024-09-29 15:49:22.494662+00	2024-09-29 15:49:22.494662+00	0
2254	SAM RAYBURN MEMORIAL VETERANS CENTER		1244	\N	\N	2024-09-29 15:49:22.496473+00	2024-09-29 15:49:22.496473+00	0
2255	SOUTH TEXAS VETERANS HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.498061+00	2024-09-29 15:49:22.498061+00	0
2256	VA NORTH TEXAS HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.499676+00	2024-09-29 15:49:22.499676+00	0
2257	VA TEXAS VALLEY COASTAL BEND HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.501375+00	2024-09-29 15:49:22.501375+00	0
2258	WEST TEXAS VA HEALTH CARE SYSTEM		1244	\N	\N	2024-09-29 15:49:22.503089+00	2024-09-29 15:49:22.503089+00	0
2259	CHEYENNE VA MEDICAL CENTER		1245	\N	\N	2024-09-29 15:49:22.504993+00	2024-09-29 15:49:22.504993+00	0
2260	EASTERN OKLAHOMA VA HEALTH CARE SYSTEM JACK C. MONTGOMERY VAMC		1245	\N	\N	2024-09-29 15:49:22.506519+00	2024-09-29 15:49:22.506519+00	0
2261	FORT HARRISON VA MEDICAL CENTER		1245	\N	\N	2024-09-29 15:49:22.508317+00	2024-09-29 15:49:22.508317+00	0
2262	MILES CITY VA CLINIC AND COMMUNITY LIVING CENTER		1245	\N	\N	2024-09-29 15:49:22.509846+00	2024-09-29 15:49:22.509846+00	0
2263	OKLAHOMA CITY VA HEALTH CARE SYSTEM		1245	\N	\N	2024-09-29 15:49:22.511451+00	2024-09-29 15:49:22.511451+00	0
2264	SHERIDAN VA MEDICAL CENTER		1245	\N	\N	2024-09-29 15:49:22.514342+00	2024-09-29 15:49:22.514342+00	0
2265	VA EASTERN COLORADO HEALTH CARE SYSTEM (ECHCS)		1245	\N	\N	2024-09-29 15:49:22.516004+00	2024-09-29 15:49:22.516004+00	0
2266	VA SALT LAKE CITY HEALTH CARE SYSTEM		1245	\N	\N	2024-09-29 15:49:22.517744+00	2024-09-29 15:49:22.517744+00	0
2267	VA WESTERN COLORADO HEALTH CARE SYSTEM		1245	\N	\N	2024-09-29 15:49:22.52189+00	2024-09-29 15:49:22.52189+00	0
2268	ALASKA VA HEALTHCARE SYSTEM		1246	\N	\N	2024-09-29 15:49:22.523556+00	2024-09-29 15:49:22.523556+00	0
2269	BOISE VA MEDICAL CENTER		1246	\N	\N	2024-09-29 15:49:22.525364+00	2024-09-29 15:49:22.525364+00	0
2270	JONATHAN M. WAINWRIGHT MEMORIAL MEDICAL CENTER		1246	\N	\N	2024-09-29 15:49:22.527048+00	2024-09-29 15:49:22.527048+00	0
2271	MANN-GRANDSTAFF VA MEDICAL CENTER		1246	\N	\N	2024-09-29 15:49:22.528785+00	2024-09-29 15:49:22.528785+00	0
2272	ROSEBURG VA HEALTH CARE SYSTEM		1246	\N	\N	2024-09-29 15:49:22.530498+00	2024-09-29 15:49:22.530498+00	0
2273	SOUTHER OREGON - WHITE CITY REHABILITATION CENTER & CLINICS (SORCC)		1246	\N	\N	2024-09-29 15:49:22.532437+00	2024-09-29 15:49:22.532437+00	0
2274	VA PORTLAND HEALTH CARE SYSTEM		1246	\N	\N	2024-09-29 15:49:22.534166+00	2024-09-29 15:49:22.534166+00	0
2275	VA PUGET SOUND HEALTH CARE SYSTEM - AMERICAN LAKE DIVISION		1246	\N	\N	2024-09-29 15:49:22.535834+00	2024-09-29 15:49:22.535834+00	0
2276	VA PUGET SOUND HEALTH CARE SYSTEM - SEATTLE DIVISION		1246	\N	\N	2024-09-29 15:49:22.53744+00	2024-09-29 15:49:22.53744+00	0
2277	CENTRAL CALIFORNIA VA HEALTH CARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.53941+00	2024-09-29 15:49:22.53941+00	0
2278	PALO ALTO VA MEDICAL CENTER - LIVERMORE		1247	\N	\N	2024-09-29 15:49:22.541152+00	2024-09-29 15:49:22.541152+00	0
2279	PALO ALTO VA MEDICAL CENTER - MENLO PARK		1247	\N	\N	2024-09-29 15:49:22.542747+00	2024-09-29 15:49:22.542747+00	0
2280	SAN FRANCISCO VA HEALTH CARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.544573+00	2024-09-29 15:49:22.544573+00	0
2281	VA NORTHERN CALIFORNIA HEALTH CARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.546135+00	2024-09-29 15:49:22.546135+00	0
2282	VA PACIFIC ISLANDS HEALTH CARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.547844+00	2024-09-29 15:49:22.547844+00	0
2283	VA PALO ALTO HEALTH CARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.549501+00	2024-09-29 15:49:22.549501+00	0
2284	VA SIERRA NEVADA HEALTH CARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.551329+00	2024-09-29 15:49:22.551329+00	0
2285	VA SOUTHERN NEVADA HEALTHCARE SYSTEM		1247	\N	\N	2024-09-29 15:49:22.553063+00	2024-09-29 15:49:22.553063+00	0
2286	NEW MEXICO VA HEALTH CARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.555189+00	2024-09-29 15:49:22.555189+00	0
2287	NORTHERN ARIZONA VA HEALTH CARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.557111+00	2024-09-29 15:49:22.557111+00	0
2288	PHOENIX VA HEALTH CARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.558705+00	2024-09-29 15:49:22.558705+00	0
2289	SOUTHERN ARIZONA VA HEALTH CARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.560323+00	2024-09-29 15:49:22.560323+00	0
2290	VA GREATER LOS ANGELES HEALTHCARE SYSTEM (GLA)		1248	\N	\N	2024-09-29 15:49:22.561947+00	2024-09-29 15:49:22.561947+00	0
2291	VA LLOMA LINDA HEALTHCARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.563571+00	2024-09-29 15:49:22.563571+00	0
2292	VA LONG BEACH HEALTHCARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.565265+00	2024-09-29 15:49:22.565265+00	0
2293	VA SAN DIEGO HEALTHCARE SYSTEM		1248	\N	\N	2024-09-29 15:49:22.566803+00	2024-09-29 15:49:22.566803+00	0
2294	FARGO VA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.568669+00	2024-09-29 15:49:22.568669+00	0
2295	GRAND ISLAND VA MEDICAL CENTER		1249	\N	\N	2024-09-29 15:49:22.570294+00	2024-09-29 15:49:22.570294+00	0
2296	IOWA CITY VA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.573264+00	2024-09-29 15:49:22.573264+00	0
2297	MINNEAPOLIS VA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.574936+00	2024-09-29 15:49:22.574936+00	0
2298	OMAHA VA MEDICAL CENTER - VA NEBRASKA-WESTERN IOWA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.576775+00	2024-09-29 15:49:22.576775+00	0
2299	SIOUX FALLS VA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.57826+00	2024-09-29 15:49:22.57826+00	0
2300	ST. CLOUD VA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.579862+00	2024-09-29 15:49:22.579862+00	0
2301	VA BLACK HILLS HEALTH CARE SYSTEM - FORT MEADE CAMPUS		1249	\N	\N	2024-09-29 15:49:22.581606+00	2024-09-29 15:49:22.581606+00	0
2302	VA BLACK HILLS HEALTH CARE SYSTEM - HOT SPRINGS CAMPUS		1249	\N	\N	2024-09-29 15:49:22.58329+00	2024-09-29 15:49:22.58329+00	0
2303	VA CENTRAL IOWA HEALTH CARE SYSTEM		1249	\N	\N	2024-09-29 15:49:22.584925+00	2024-09-29 15:49:22.584925+00	0
\.


--
-- Data for Name: opportunities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opportunities (id, title, description, user_knows_contract_value, user_contract_value, crawler_contract_value, solicitation_number, multi_award, user_id, staff_id, approved_at, requested, duplicated, deprecated, need_to_review, market, department, agency, office, naics, fiscal_year, set_aside, contract_vehicle, is_draft, created_at, updated_at, deleted_at) FROM stdin;
2	Innovation challenge	Join our innovation challenge! This is a great chance to showcase your skills and make a real impact on our company. We're looking for creative thinkers who are ready to take on a challenge.	t	800000		50000P	f	\N	\N	\N	f	f	f	f	Market Sample	Department Sample	Agency Sample	Office Sample	5411	2020	Set Aside Sample	Contract Vehicle Sample	f	2024-09-29 15:49:22.650837+00	2024-09-29 15:49:22.650837+00	0
1	Opportunity Sample	Are you ready to be a part of an exciting and dynamic team? We are currently offering a unique opportunity that could shape your career and make a significant impact on our organization. Join us in our quest for excellence as we work on innovative projects and contribute to our success.	t	800000		50000P	f	\N	\N	\N	f	f	f	f	Market Sample	Department Sample	Agency Sample	Office Sample	5411	2020	Set Aside Sample	Contract Vehicle Sample	f	2024-09-29 15:49:22.650837+00	2024-09-29 15:49:22.650837+00	0
3	TTT		f		3466816	47qtcb22q0016	f	\N	\N	\N	f	f	f	f	Civilian	WOOR TAHER TESTING	OFF VET						f	2024-09-29 16:19:32.29529+00	2024-09-29 16:19:32.297513+00	0
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, failed_reason, price_amount, paid_at, opportunity_id, stripe_event_id, user_id, created_at, updated_at, deleted_at, refunded_at) FROM stdin;
2		100000	2024-10-06 11:04:24.753631+00	3	evt_1Q6sGCHiup0sF8jzh5DJFXdc	\N	2024-10-06 11:03:57.048112+00	2024-10-14 11:07:52.220499+00	0	2024-10-14 11:07:52.219918+00
\.


--
-- Data for Name: passive_revenues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passive_revenues (id, company_name, full_name, email, level_one_count, level_two_count, level_three_count, level_four_count, level_five_count, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: register_invites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register_invites (id, host_id, user_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, title, created_at, updated_at, deleted_at) FROM stdin;
1	Admin	2024-10-17 10:48:37.224975+00	2024-10-17 10:48:37.224975+00	\N
2	Reviewer	2024-10-17 10:48:37.224975+00	2024-10-17 10:48:37.224975+00	\N
3	User	2024-10-17 10:48:37.224975+00	2024-10-17 10:48:37.224975+00	\N
\.


--
-- Data for Name: set_asides; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.set_asides (id, name, acronym, user_id, created_at, updated_at, deleted_at) FROM stdin;
1	8(a) Sole Source		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
2	Economically Disadvantaged Women-Owned Small Business		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
3	HUBZone		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
4	Service-Disabled Veteran-Owned Small Business		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
5	Small Business Set-Aside - Partial		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
6	Small Business Set-Aside - Total		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
7	Unrestricted		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
8	Women-Owned Small Business		\N	2024-09-29 15:49:22.635681+00	2024-09-29 15:49:22.635681+00	0
\.


--
-- Data for Name: site_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.site_infos (id, company_name, mission_statement, history, goal, value, achievement, member, general_contact, address, social_media, phone_number, email_address, office_hours, physical_address, map_or_directions, emergency_contact, feedback_link, support_link, created_at, updated_at, deleted_at) FROM stdin;
1	Capture411	Your Mission Statement	Your History	Your Goals	Your Values	Your Achievements	Your Member	General Contact Info	P.O. Box 1074, Dumfries, VA 22026 	instagram.com/your_business, telegram.com/you_business	123-456-7890	info@capture411.com	Monday-Friday 9 AM - 5 PM	Your Company Physical Address	Map or Directions Link	Emergency Contact Info	Feedback Link	Support Link	2024-09-29 15:49:17.998766+00	2024-09-29 15:49:17.998766+00	0
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tokens (id, user_id, access_token, refresh_token, created_at, deleted_at) FROM stdin;
1	1	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBdWRpZW5jZSI6InN0YWdpbmctYXBpLmNhcHR1cmU0MTEuY29tIiwiRXhwaXJlc0F0IjoxNzczNzAwNjE5LCJJZCI6IjEiLCJJc3N1ZWRBdCI6MTcxMzcwMDY3OSwiSXNzdWVyIjoidXNlciBUYWhlciIsIk5vdEJlZm9yZSI6MTcxMzcwMDY3OSwiUm9sZXMiOlsiQWRtaW4iXSwiU3ViamVjdCI6Ijk2NDc4Mjg4MTcxMzkifQ.giFjhoYxAkTfzonnDZWvZdVaZQ2m0uihu6I04DIKkLA	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBdWRpZW5jZSI6InN0YWdpbmctYXBpLmNhcHR1cmU0MTEuY29tIiwiRXhwaXJlc0F0IjoyMzEzNzAwNjE5LCJJZCI6IjEiLCJJc3N1ZWRBdCI6MTcxMzcwMDY3OSwiSXNzdWVyIjoidXNlciBUYWhlciIsIk5vdEJlZm9yZSI6MTcxMzcwMDY3OSwiUm9sZXMiOlsiQWRtaW4iXSwiU3ViamVjdCI6Ijk2NDc4Mjg4MTcxMzkifQ.H-32ksKeAUA_J-c3BY_a6koxzDhpLpYSRM1vXqJTkqo	2024-04-21 11:57:59.092092+00	0
\.


--
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_role (user_id, role_id) FROM stdin;
1	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, title, name, email, phone, id_code, password, last_name, username, date_of_birth, gender, address, town_city, state, zip_code, country, company_name, suspended_at, phone_verified_at, email_verified_at, profile_completed_at, policy_approved_at, contributor_id, referral_code, referred_with_code, should_change_password, stripe_customer_id, subscription_id, subscription, credits, created_at, updated_at, deleted_at, sam_uei_code) FROM stdin;
3		Matthew	matt.gonzales@gmail.com	720-931-1196	\N	$2a$14$ALuVvY5tXovI9WFyxed/eORguxkDhWaEgHARuOMdekOloWFL2zuMO	L.Gonzales	mattgoz	\N								\N	2024-09-29 15:49:18.017891+00	2024-09-29 15:49:18.017893+00	\N	2024-10-17 08:24:23.355471+00	\N	mattgoz		f			\N	0	2024-09-29 15:49:18.018263+00	2024-10-17 09:06:36.688463+00	0	\N
1		Christina	christina.mee@gmail.com	7203511106	\N	$2a$14$ALuVvY5tXovI9WFyxed/eORguxkDhWaEgHARuOMdekOloWFL2zuMO	Mee	bosslady	\N								\N	2024-09-29 15:49:18.017895+00	2024-09-29 15:49:18.017896+00	\N	2024-09-29 16:03:43.668172+00	\N	BOSSLADY		f			\N	0	2024-09-29 15:49:18.018263+00	2024-09-29 16:03:43.668226+00	0	\N
\.


--
-- Data for Name: verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifications (id, phone, email, code, session_code, exchanged_at, expires_at, created_at, updated_at, deleted_at) FROM stdin;
1		ardizaji1377@yahoo.com	809342	4e507da3-6ea9-4952-8c2b-b33920375d19	2024-10-08 11:11:41.2564+00	2024-10-08 11:16:01.091901+00	2024-10-08 11:11:01.13329+00	2024-10-08 11:11:41.25683+00	1728385978
3		milad.jurablu@gmail.com	709219	b7b86a37-ff4a-47ca-a9f7-4c680c6cc4ae	0001-01-01 00:00:00+00	2024-10-11 07:57:10.871388+00	2024-10-11 07:52:10.873202+00	2024-10-11 07:52:10.873202+00	0
2		milad.jurablu@gmail.com	542212	aa6641e8-b49a-4e59-ae19-96278006f2ce	2024-10-11 07:52:34.299118+00	2024-10-11 07:56:23.210899+00	2024-10-11 07:51:23.212731+00	2024-10-11 07:52:34.299548+00	1728633187
4		christina.mee@gmail.com	203587	8be338e3-a3ec-4e10-8bb1-fc17bf1822b3	0001-01-01 00:00:00+00	2024-10-24 00:13:08.120385+00	2024-10-24 00:08:08.121602+00	2024-10-24 00:08:08.121602+00	0
5		capture411.help@gmail.com	425466	a2bc9e63-03ba-4d02-a3b2-c0ec004b417b	0001-01-01 00:00:00+00	2024-10-24 00:17:23.955962+00	2024-10-24 00:12:23.957009+00	2024-10-24 00:12:23.957009+00	0
\.


--
-- Data for Name: wishlists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wishlists (id, user_id, opportunity_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 3, true);


--
-- Name: agencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agencies_id_seq', 593, true);


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, false);


--
-- Name: capture_costs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.capture_costs_id_seq', 1, false);


--
-- Name: contract_vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contract_vehicles_id_seq', 281, true);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_id_seq', 114, true);


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documents_id_seq', 1, true);


--
-- Name: entity_hunts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entity_hunts_id_seq', 2, true);


--
-- Name: fiscal_years_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fiscal_years_id_seq', 15, true);


--
-- Name: invites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invites_id_seq', 1, false);


--
-- Name: markets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.markets_id_seq', 2, true);


--
-- Name: naics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.naics_id_seq', 1012, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 13, true);


--
-- Name: offices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offices_id_seq', 2303, true);


--
-- Name: opportunities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opportunities_id_seq', 3, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 2, true);


--
-- Name: passive_revenues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.passive_revenues_id_seq', 1, false);


--
-- Name: register_invites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.register_invites_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- Name: set_asides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.set_asides_id_seq', 8, true);


--
-- Name: site_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.site_infos_id_seq', 1, true);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tokens_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verifications_id_seq', 5, true);


--
-- Name: wishlists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wishlists_id_seq', 1, false);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: agencies agencies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencies
    ADD CONSTRAINT agencies_pkey PRIMARY KEY (id);


--
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: capture_costs capture_costs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capture_costs
    ADD CONSTRAINT capture_costs_pkey PRIMARY KEY (id);


--
-- Name: contract_vehicles contract_vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_vehicles
    ADD CONSTRAINT contract_vehicles_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: entity_hunts entity_hunts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_hunts
    ADD CONSTRAINT entity_hunts_pkey PRIMARY KEY (id);


--
-- Name: fiscal_years fiscal_years_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiscal_years
    ADD CONSTRAINT fiscal_years_pkey PRIMARY KEY (id);


--
-- Name: invites invites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invites
    ADD CONSTRAINT invites_pkey PRIMARY KEY (id);


--
-- Name: markets markets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.markets
    ADD CONSTRAINT markets_pkey PRIMARY KEY (id);


--
-- Name: naics naics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.naics
    ADD CONSTRAINT naics_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: offices offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_pkey PRIMARY KEY (id);


--
-- Name: opportunities opportunities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opportunities
    ADD CONSTRAINT opportunities_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: passive_revenues passive_revenues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passive_revenues
    ADD CONSTRAINT passive_revenues_pkey PRIMARY KEY (id);


--
-- Name: register_invites register_invites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_invites
    ADD CONSTRAINT register_invites_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: set_asides set_asides_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.set_asides
    ADD CONSTRAINT set_asides_pkey PRIMARY KEY (id);


--
-- Name: site_infos site_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site_infos
    ADD CONSTRAINT site_infos_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: users uni_users_sam_uei_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uni_users_sam_uei_code UNIQUE (sam_uei_code);


--
-- Name: user_role user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_id_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_code_key UNIQUE (id_code);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: verifications verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifications
    ADD CONSTRAINT verifications_pkey PRIMARY KEY (id);


--
-- Name: wishlists wishlists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlists
    ADD CONSTRAINT wishlists_pkey PRIMARY KEY (id);


--
-- Name: idx_users_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_email ON public.users USING btree (email);


--
-- Name: idx_users_id_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_id_code ON public.users USING btree (id_code);


--
-- Name: idx_users_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_phone ON public.users USING btree (phone);


--
-- Name: idx_users_sam_uei_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_sam_uei_code ON public.users USING btree (sam_uei_code);


--
-- Name: idx_users_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_username ON public.users USING btree (username);


--
-- Name: idx_verifications_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_verifications_email ON public.verifications USING btree (email);


--
-- Name: idx_verifications_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_verifications_phone ON public.verifications USING btree (phone);


--
-- Name: idx_verifications_session_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_verifications_session_code ON public.verifications USING btree (session_code);


--
-- Name: udx_Opportunities; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "udx_Opportunities" ON public.opportunities USING btree (id, deleted_at);


--
-- Name: udx_addresses; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_addresses ON public.addresses USING btree (id, deleted_at);


--
-- Name: udx_agencies; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_agencies ON public.agencies USING btree (id, deleted_at);


--
-- Name: udx_attachments; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_attachments ON public.attachments USING btree (id, deleted_at);


--
-- Name: udx_capture_costs; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_capture_costs ON public.capture_costs USING btree (id, deleted_at);


--
-- Name: udx_contract_vehicles; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_contract_vehicles ON public.contract_vehicles USING btree (id, deleted_at);


--
-- Name: udx_departments; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_departments ON public.departments USING btree (name, deleted_at);


--
-- Name: udx_documents; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_documents ON public.documents USING btree (id, deleted_at);


--
-- Name: udx_entity_hunts; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_entity_hunts ON public.entity_hunts USING btree (id, deleted_at);


--
-- Name: udx_fiscal_years; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_fiscal_years ON public.fiscal_years USING btree (id, year, deleted_at);


--
-- Name: udx_invites; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_invites ON public.invites USING btree (code, deleted_at);


--
-- Name: udx_markets; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_markets ON public.markets USING btree (name, acronym, deleted_at);


--
-- Name: udx_naicses; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_naicses ON public.naics USING btree (id, deleted_at);


--
-- Name: udx_notifications; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_notifications ON public.notifications USING btree (id, deleted_at);


--
-- Name: udx_offices; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_offices ON public.offices USING btree (id, deleted_at);


--
-- Name: udx_passive_revenues; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_passive_revenues ON public.passive_revenues USING btree (id, deleted_at);


--
-- Name: udx_register_invites; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_register_invites ON public.register_invites USING btree (id, deleted_at);


--
-- Name: udx_roles; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_roles ON public.roles USING btree (id, deleted_at);


--
-- Name: udx_set_asides; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_set_asides ON public.set_asides USING btree (id, deleted_at);


--
-- Name: udx_site_infos; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_site_infos ON public.site_infos USING btree (id, deleted_at);


--
-- Name: udx_tokens; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_tokens ON public.tokens USING btree (id, deleted_at);


--
-- Name: udx_users; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_users ON public.users USING btree (id, deleted_at);


--
-- Name: udx_verifications; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_verifications ON public.verifications USING btree (id, deleted_at);


--
-- Name: udx_wishlists; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX udx_wishlists ON public.wishlists USING btree (id, deleted_at);


--
-- Name: uni_roles_title; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uni_roles_title ON public.roles USING btree (title);


--
-- Name: offices fk_agencies_offices; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT fk_agencies_offices FOREIGN KEY (agency_id) REFERENCES public.agencies(id);


--
-- Name: agencies fk_agencies_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencies
    ADD CONSTRAINT fk_agencies_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: contract_vehicles fk_contract_vehicles_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_vehicles
    ADD CONSTRAINT fk_contract_vehicles_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: agencies fk_departments_agencies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencies
    ADD CONSTRAINT fk_departments_agencies FOREIGN KEY (department_id) REFERENCES public.departments(id);


--
-- Name: departments fk_departments_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk_departments_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: documents fk_documents_staff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_documents_staff FOREIGN KEY (staff_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: documents fk_documents_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT fk_documents_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fiscal_years fk_fiscal_years_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiscal_years
    ADD CONSTRAINT fk_fiscal_years_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: departments fk_markets_departments; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk_markets_departments FOREIGN KEY (market_id) REFERENCES public.markets(id);


--
-- Name: markets fk_markets_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.markets
    ADD CONSTRAINT fk_markets_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: naics fk_naics_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.naics
    ADD CONSTRAINT fk_naics_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: notifications fk_notifications_sender_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_sender_user FOREIGN KEY (sender_user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: notifications fk_notifications_target_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_target_user FOREIGN KEY (target_user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: offices fk_offices_children; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT fk_offices_children FOREIGN KEY (parent_id) REFERENCES public.offices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: offices fk_offices_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT fk_offices_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders fk_opportunities_orders; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_opportunities_orders FOREIGN KEY (opportunity_id) REFERENCES public.opportunities(id);


--
-- Name: opportunities fk_opportunities_staff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opportunities
    ADD CONSTRAINT fk_opportunities_staff FOREIGN KEY (staff_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opportunities fk_opportunities_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opportunities
    ADD CONSTRAINT fk_opportunities_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders fk_orders_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: register_invites fk_register_invites_host; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_invites
    ADD CONSTRAINT fk_register_invites_host FOREIGN KEY (host_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: register_invites fk_register_invites_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_invites
    ADD CONSTRAINT fk_register_invites_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: set_asides fk_set_asides_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.set_asides
    ADD CONSTRAINT fk_set_asides_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: user_role fk_user_role_role; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fk_user_role_role FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_role fk_user_role_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fk_user_role_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: users fk_users_contributor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_contributor FOREIGN KEY (contributor_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: invites fk_users_invite; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invites
    ADD CONSTRAINT fk_users_invite FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: wishlists fk_wishlists_opportunity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlists
    ADD CONSTRAINT fk_wishlists_opportunity FOREIGN KEY (opportunity_id) REFERENCES public.opportunities(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wishlists fk_wishlists_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wishlists
    ADD CONSTRAINT fk_wishlists_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

