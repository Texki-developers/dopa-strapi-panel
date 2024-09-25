--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Homebrew)
-- Dumped by pg_dump version 14.13 (Homebrew)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: about_us_pages; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.about_us_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.about_us_pages OWNER TO dopa_owner;

--
-- Name: about_us_pages_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.about_us_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.about_us_pages_components OWNER TO dopa_owner;

--
-- Name: about_us_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.about_us_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_pages_components_id_seq OWNER TO dopa_owner;

--
-- Name: about_us_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.about_us_pages_components_id_seq OWNED BY public.about_us_pages_components.id;


--
-- Name: about_us_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.about_us_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_us_pages_id_seq OWNER TO dopa_owner;

--
-- Name: about_us_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.about_us_pages_id_seq OWNED BY public.about_us_pages.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO dopa_owner;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO dopa_owner;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO dopa_owner;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO dopa_owner;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO dopa_owner;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO dopa_owner;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO dopa_owner;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO dopa_owner;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO dopa_owner;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO dopa_owner;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: components_blocks_app_card_rows; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_app_card_rows (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_app_card_rows OWNER TO dopa_owner;

--
-- Name: components_blocks_app_card_rows_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_app_card_rows_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_app_card_rows_components OWNER TO dopa_owner;

--
-- Name: components_blocks_app_card_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_app_card_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_app_card_rows_components_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_app_card_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_app_card_rows_components_id_seq OWNED BY public.components_blocks_app_card_rows_components.id;


--
-- Name: components_blocks_app_card_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_app_card_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_app_card_rows_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_app_card_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_app_card_rows_id_seq OWNED BY public.components_blocks_app_card_rows.id;


--
-- Name: components_blocks_banners; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_banners (
    id integer NOT NULL,
    heading character varying(255),
    description text,
    split_header boolean
);


ALTER TABLE public.components_blocks_banners OWNER TO dopa_owner;

--
-- Name: components_blocks_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_banners_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_banners_id_seq OWNED BY public.components_blocks_banners.id;


--
-- Name: components_blocks_course_card_rows; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_course_card_rows (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_course_card_rows OWNER TO dopa_owner;

--
-- Name: components_blocks_course_card_rows_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_course_card_rows_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_course_card_rows_components OWNER TO dopa_owner;

--
-- Name: components_blocks_course_card_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_course_card_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_course_card_rows_components_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_course_card_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_course_card_rows_components_id_seq OWNED BY public.components_blocks_course_card_rows_components.id;


--
-- Name: components_blocks_course_card_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_course_card_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_course_card_rows_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_course_card_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_course_card_rows_id_seq OWNED BY public.components_blocks_course_card_rows.id;


--
-- Name: components_blocks_course_sections; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_course_sections (
    id integer NOT NULL,
    subtitle character varying(255),
    is_title_bold boolean,
    is_subtitle_bold boolean,
    name character varying(255)
);


ALTER TABLE public.components_blocks_course_sections OWNER TO dopa_owner;

--
-- Name: components_blocks_course_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_course_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_course_sections_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_course_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_course_sections_id_seq OWNED BY public.components_blocks_course_sections.id;


--
-- Name: components_blocks_directors_sections; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_directors_sections (
    id integer NOT NULL,
    directors character varying(255),
    description text,
    image_alt character varying(255)
);


ALTER TABLE public.components_blocks_directors_sections OWNER TO dopa_owner;

--
-- Name: components_blocks_directors_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_directors_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_directors_sections_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_directors_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_directors_sections_id_seq OWNED BY public.components_blocks_directors_sections.id;


--
-- Name: components_blocks_dopa_updates; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_dopa_updates (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_dopa_updates OWNER TO dopa_owner;

--
-- Name: components_blocks_dopa_updates_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_dopa_updates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_dopa_updates_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_dopa_updates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_dopa_updates_id_seq OWNED BY public.components_blocks_dopa_updates.id;


--
-- Name: components_blocks_faculty_card_rows; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_faculty_card_rows (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_faculty_card_rows OWNER TO dopa_owner;

--
-- Name: components_blocks_faculty_card_rows_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_faculty_card_rows_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_faculty_card_rows_components OWNER TO dopa_owner;

--
-- Name: components_blocks_faculty_card_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_faculty_card_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_faculty_card_rows_components_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_faculty_card_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_faculty_card_rows_components_id_seq OWNED BY public.components_blocks_faculty_card_rows_components.id;


--
-- Name: components_blocks_faculty_card_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_faculty_card_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_faculty_card_rows_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_faculty_card_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_faculty_card_rows_id_seq OWNED BY public.components_blocks_faculty_card_rows.id;


--
-- Name: components_blocks_feature_card_rows; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_feature_card_rows (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_feature_card_rows OWNER TO dopa_owner;

--
-- Name: components_blocks_feature_card_rows_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_feature_card_rows_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_feature_card_rows_components OWNER TO dopa_owner;

--
-- Name: components_blocks_feature_card_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_feature_card_rows_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_feature_card_rows_components_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_feature_card_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_feature_card_rows_components_id_seq OWNED BY public.components_blocks_feature_card_rows_components.id;


--
-- Name: components_blocks_feature_card_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_feature_card_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_feature_card_rows_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_feature_card_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_feature_card_rows_id_seq OWNED BY public.components_blocks_feature_card_rows.id;


--
-- Name: components_blocks_home_banners; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_home_banners (
    id integer NOT NULL,
    main_head character varying(255),
    description text,
    button_name character varying(255),
    button_link character varying(255)
);


ALTER TABLE public.components_blocks_home_banners OWNER TO dopa_owner;

--
-- Name: components_blocks_home_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_home_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_home_banners_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_home_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_home_banners_id_seq OWNED BY public.components_blocks_home_banners.id;


--
-- Name: components_blocks_image_blocks; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_image_blocks (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_image_blocks OWNER TO dopa_owner;

--
-- Name: components_blocks_image_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_image_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_image_blocks_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_image_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_image_blocks_id_seq OWNED BY public.components_blocks_image_blocks.id;


--
-- Name: components_blocks_results; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_blocks_results (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_results OWNER TO dopa_owner;

--
-- Name: components_blocks_results_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_blocks_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_blocks_results_id_seq OWNER TO dopa_owner;

--
-- Name: components_blocks_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_blocks_results_id_seq OWNED BY public.components_blocks_results.id;


--
-- Name: components_elements_app_cards; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_elements_app_cards (
    id integer NOT NULL,
    title character varying(255),
    description text,
    is_list boolean
);


ALTER TABLE public.components_elements_app_cards OWNER TO dopa_owner;

--
-- Name: components_elements_app_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_elements_app_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_app_cards_id_seq OWNER TO dopa_owner;

--
-- Name: components_elements_app_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_elements_app_cards_id_seq OWNED BY public.components_elements_app_cards.id;


--
-- Name: components_elements_course_cards; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_elements_course_cards (
    id integer NOT NULL,
    heading character varying(255),
    sub_heading character varying(255)
);


ALTER TABLE public.components_elements_course_cards OWNER TO dopa_owner;

--
-- Name: components_elements_course_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_elements_course_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_course_cards_id_seq OWNER TO dopa_owner;

--
-- Name: components_elements_course_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_elements_course_cards_id_seq OWNED BY public.components_elements_course_cards.id;


--
-- Name: components_elements_faculty_cards; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_elements_faculty_cards (
    id integer NOT NULL,
    name character varying(255),
    designation character varying(255),
    education character varying(255),
    experience character varying(255)
);


ALTER TABLE public.components_elements_faculty_cards OWNER TO dopa_owner;

--
-- Name: components_elements_faculty_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_elements_faculty_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_faculty_cards_id_seq OWNER TO dopa_owner;

--
-- Name: components_elements_faculty_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_elements_faculty_cards_id_seq OWNED BY public.components_elements_faculty_cards.id;


--
-- Name: components_elements_feature_cards; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.components_elements_feature_cards (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_elements_feature_cards OWNER TO dopa_owner;

--
-- Name: components_elements_feature_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.components_elements_feature_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_feature_cards_id_seq OWNER TO dopa_owner;

--
-- Name: components_elements_feature_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.components_elements_feature_cards_id_seq OWNED BY public.components_elements_feature_cards.id;


--
-- Name: contact_form_datas; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.contact_form_datas (
    id integer NOT NULL,
    name character varying(255),
    district character varying(255),
    number character varying(255),
    class character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.contact_form_datas OWNER TO dopa_owner;

--
-- Name: contact_form_datas_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.contact_form_datas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_form_datas_id_seq OWNER TO dopa_owner;

--
-- Name: contact_form_datas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.contact_form_datas_id_seq OWNED BY public.contact_form_datas.id;


--
-- Name: dopa_app_pages; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_app_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.dopa_app_pages OWNER TO dopa_owner;

--
-- Name: dopa_app_pages_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_app_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.dopa_app_pages_components OWNER TO dopa_owner;

--
-- Name: dopa_app_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_app_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_app_pages_components_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_app_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_app_pages_components_id_seq OWNED BY public.dopa_app_pages_components.id;


--
-- Name: dopa_app_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_app_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_app_pages_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_app_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_app_pages_id_seq OWNED BY public.dopa_app_pages.id;


--
-- Name: dopa_calicut_pages; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_calicut_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.dopa_calicut_pages OWNER TO dopa_owner;

--
-- Name: dopa_calicut_pages_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_calicut_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.dopa_calicut_pages_components OWNER TO dopa_owner;

--
-- Name: dopa_calicut_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_calicut_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_calicut_pages_components_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_calicut_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_calicut_pages_components_id_seq OWNED BY public.dopa_calicut_pages_components.id;


--
-- Name: dopa_calicut_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_calicut_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_calicut_pages_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_calicut_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_calicut_pages_id_seq OWNED BY public.dopa_calicut_pages.id;


--
-- Name: dopa_kottakkal_campuses; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_kottakkal_campuses (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.dopa_kottakkal_campuses OWNER TO dopa_owner;

--
-- Name: dopa_kottakkal_campuses_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_kottakkal_campuses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.dopa_kottakkal_campuses_components OWNER TO dopa_owner;

--
-- Name: dopa_kottakkal_campuses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_kottakkal_campuses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_kottakkal_campuses_components_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_kottakkal_campuses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_kottakkal_campuses_components_id_seq OWNED BY public.dopa_kottakkal_campuses_components.id;


--
-- Name: dopa_kottakkal_campuses_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_kottakkal_campuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_kottakkal_campuses_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_kottakkal_campuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_kottakkal_campuses_id_seq OWNED BY public.dopa_kottakkal_campuses.id;


--
-- Name: dopa_thrissur_pages; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_thrissur_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.dopa_thrissur_pages OWNER TO dopa_owner;

--
-- Name: dopa_thrissur_pages_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.dopa_thrissur_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.dopa_thrissur_pages_components OWNER TO dopa_owner;

--
-- Name: dopa_thrissur_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_thrissur_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_thrissur_pages_components_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_thrissur_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_thrissur_pages_components_id_seq OWNED BY public.dopa_thrissur_pages_components.id;


--
-- Name: dopa_thrissur_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.dopa_thrissur_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dopa_thrissur_pages_id_seq OWNER TO dopa_owner;

--
-- Name: dopa_thrissur_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.dopa_thrissur_pages_id_seq OWNED BY public.dopa_thrissur_pages.id;


--
-- Name: faculties_pages; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.faculties_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.faculties_pages OWNER TO dopa_owner;

--
-- Name: faculties_pages_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.faculties_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.faculties_pages_components OWNER TO dopa_owner;

--
-- Name: faculties_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.faculties_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faculties_pages_components_id_seq OWNER TO dopa_owner;

--
-- Name: faculties_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.faculties_pages_components_id_seq OWNED BY public.faculties_pages_components.id;


--
-- Name: faculties_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.faculties_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faculties_pages_id_seq OWNER TO dopa_owner;

--
-- Name: faculties_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.faculties_pages_id_seq OWNED BY public.faculties_pages.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO dopa_owner;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO dopa_owner;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO dopa_owner;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO dopa_owner;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO dopa_owner;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO dopa_owner;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: home_pages; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.home_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.home_pages OWNER TO dopa_owner;

--
-- Name: home_pages_components; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.home_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.home_pages_components OWNER TO dopa_owner;

--
-- Name: home_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.home_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_pages_components_id_seq OWNER TO dopa_owner;

--
-- Name: home_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.home_pages_components_id_seq OWNED BY public.home_pages_components.id;


--
-- Name: home_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_pages_id_seq OWNER TO dopa_owner;

--
-- Name: home_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO dopa_owner;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO dopa_owner;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO dopa_owner;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO dopa_owner;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO dopa_owner;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO dopa_owner;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO dopa_owner;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO dopa_owner;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO dopa_owner;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO dopa_owner;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_release_links_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_releases OWNER TO dopa_owner;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_releases_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO dopa_owner;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO dopa_owner;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO dopa_owner;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO dopa_owner;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO dopa_owner;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO dopa_owner;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO dopa_owner;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO dopa_owner;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO dopa_owner;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO dopa_owner;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO dopa_owner;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO dopa_owner;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO dopa_owner;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO dopa_owner;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO dopa_owner;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO dopa_owner;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO dopa_owner;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: dopa_owner
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO dopa_owner;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dopa_owner
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO dopa_owner;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dopa_owner
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: about_us_pages id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages ALTER COLUMN id SET DEFAULT nextval('public.about_us_pages_id_seq'::regclass);


--
-- Name: about_us_pages_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages_components ALTER COLUMN id SET DEFAULT nextval('public.about_us_pages_components_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: components_blocks_app_card_rows id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_app_card_rows ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_app_card_rows_id_seq'::regclass);


--
-- Name: components_blocks_app_card_rows_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_app_card_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_app_card_rows_components_id_seq'::regclass);


--
-- Name: components_blocks_banners id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_banners ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_banners_id_seq'::regclass);


--
-- Name: components_blocks_course_card_rows id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_card_rows ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_course_card_rows_id_seq'::regclass);


--
-- Name: components_blocks_course_card_rows_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_card_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_course_card_rows_components_id_seq'::regclass);


--
-- Name: components_blocks_course_sections id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_sections ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_course_sections_id_seq'::regclass);


--
-- Name: components_blocks_directors_sections id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_directors_sections ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_directors_sections_id_seq'::regclass);


--
-- Name: components_blocks_dopa_updates id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_dopa_updates ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_dopa_updates_id_seq'::regclass);


--
-- Name: components_blocks_faculty_card_rows id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_faculty_card_rows ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_faculty_card_rows_id_seq'::regclass);


--
-- Name: components_blocks_faculty_card_rows_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_faculty_card_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_faculty_card_rows_components_id_seq'::regclass);


--
-- Name: components_blocks_feature_card_rows id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_feature_card_rows ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_feature_card_rows_id_seq'::regclass);


--
-- Name: components_blocks_feature_card_rows_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_feature_card_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_feature_card_rows_components_id_seq'::regclass);


--
-- Name: components_blocks_home_banners id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_home_banners ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_home_banners_id_seq'::regclass);


--
-- Name: components_blocks_image_blocks id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_image_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_image_blocks_id_seq'::regclass);


--
-- Name: components_blocks_results id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_results ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_results_id_seq'::regclass);


--
-- Name: components_elements_app_cards id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_app_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_app_cards_id_seq'::regclass);


--
-- Name: components_elements_course_cards id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_course_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_course_cards_id_seq'::regclass);


--
-- Name: components_elements_faculty_cards id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_faculty_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_faculty_cards_id_seq'::regclass);


--
-- Name: components_elements_feature_cards id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_feature_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_feature_cards_id_seq'::regclass);


--
-- Name: contact_form_datas id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.contact_form_datas ALTER COLUMN id SET DEFAULT nextval('public.contact_form_datas_id_seq'::regclass);


--
-- Name: dopa_app_pages id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages ALTER COLUMN id SET DEFAULT nextval('public.dopa_app_pages_id_seq'::regclass);


--
-- Name: dopa_app_pages_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages_components ALTER COLUMN id SET DEFAULT nextval('public.dopa_app_pages_components_id_seq'::regclass);


--
-- Name: dopa_calicut_pages id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages ALTER COLUMN id SET DEFAULT nextval('public.dopa_calicut_pages_id_seq'::regclass);


--
-- Name: dopa_calicut_pages_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages_components ALTER COLUMN id SET DEFAULT nextval('public.dopa_calicut_pages_components_id_seq'::regclass);


--
-- Name: dopa_kottakkal_campuses id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses ALTER COLUMN id SET DEFAULT nextval('public.dopa_kottakkal_campuses_id_seq'::regclass);


--
-- Name: dopa_kottakkal_campuses_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses_components ALTER COLUMN id SET DEFAULT nextval('public.dopa_kottakkal_campuses_components_id_seq'::regclass);


--
-- Name: dopa_thrissur_pages id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages ALTER COLUMN id SET DEFAULT nextval('public.dopa_thrissur_pages_id_seq'::regclass);


--
-- Name: dopa_thrissur_pages_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages_components ALTER COLUMN id SET DEFAULT nextval('public.dopa_thrissur_pages_components_id_seq'::regclass);


--
-- Name: faculties_pages id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages ALTER COLUMN id SET DEFAULT nextval('public.faculties_pages_id_seq'::regclass);


--
-- Name: faculties_pages_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages_components ALTER COLUMN id SET DEFAULT nextval('public.faculties_pages_components_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: home_pages id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);


--
-- Name: home_pages_components id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: about_us_pages; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.about_us_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: about_us_pages_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.about_us_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	[]	2024-09-20 16:15:30.451	2024-09-20 16:15:30.451	\N	\N
2	plugin::content-manager.explorer.create	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	[]	2024-09-20 16:15:30.457	2024-09-20 16:15:30.457	\N	\N
3	plugin::content-manager.explorer.create	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	[]	2024-09-20 16:15:30.458	2024-09-20 16:15:30.458	\N	\N
4	plugin::content-manager.explorer.create	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.461	2024-09-20 16:15:30.461	\N	\N
5	plugin::content-manager.explorer.create	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.464	2024-09-20 16:15:30.464	\N	\N
6	plugin::content-manager.explorer.create	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.465	2024-09-20 16:15:30.465	\N	\N
7	plugin::content-manager.explorer.create	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	[]	2024-09-20 16:15:30.467	2024-09-20 16:15:30.467	\N	\N
9	plugin::content-manager.explorer.read	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	[]	2024-09-20 16:15:30.471	2024-09-20 16:15:30.471	\N	\N
10	plugin::content-manager.explorer.read	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	[]	2024-09-20 16:15:30.474	2024-09-20 16:15:30.474	\N	\N
11	plugin::content-manager.explorer.read	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	[]	2024-09-20 16:15:30.476	2024-09-20 16:15:30.476	\N	\N
12	plugin::content-manager.explorer.read	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.478	2024-09-20 16:15:30.478	\N	\N
13	plugin::content-manager.explorer.read	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.481	2024-09-20 16:15:30.481	\N	\N
14	plugin::content-manager.explorer.read	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.483	2024-09-20 16:15:30.483	\N	\N
15	plugin::content-manager.explorer.read	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	[]	2024-09-20 16:15:30.485	2024-09-20 16:15:30.485	\N	\N
17	plugin::content-manager.explorer.update	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	[]	2024-09-20 16:15:30.489	2024-09-20 16:15:30.489	\N	\N
18	plugin::content-manager.explorer.update	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	[]	2024-09-20 16:15:30.491	2024-09-20 16:15:30.491	\N	\N
19	plugin::content-manager.explorer.update	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	[]	2024-09-20 16:15:30.493	2024-09-20 16:15:30.493	\N	\N
124	plugin::content-manager.explorer.publish	{}	api::dopa-calicut-page.dopa-calicut-page	{}	[]	2024-09-20 16:15:30.661	2024-09-20 16:15:30.661	\N	\N
20	plugin::content-manager.explorer.update	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.495	2024-09-20 16:15:30.495	\N	\N
21	plugin::content-manager.explorer.update	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.497	2024-09-20 16:15:30.497	\N	\N
22	plugin::content-manager.explorer.update	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.499	2024-09-20 16:15:30.499	\N	\N
23	plugin::content-manager.explorer.update	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	[]	2024-09-20 16:15:30.501	2024-09-20 16:15:30.501	\N	\N
25	plugin::content-manager.explorer.delete	{}	api::about-us-page.about-us-page	{}	[]	2024-09-20 16:15:30.504	2024-09-20 16:15:30.504	\N	\N
26	plugin::content-manager.explorer.delete	{}	api::contact-form-data.contact-form-data	{}	[]	2024-09-20 16:15:30.505	2024-09-20 16:15:30.505	\N	\N
27	plugin::content-manager.explorer.delete	{}	api::dopa-app-page.dopa-app-page	{}	[]	2024-09-20 16:15:30.507	2024-09-20 16:15:30.507	\N	\N
28	plugin::content-manager.explorer.delete	{}	api::dopa-calicut-page.dopa-calicut-page	{}	[]	2024-09-20 16:15:30.509	2024-09-20 16:15:30.509	\N	\N
29	plugin::content-manager.explorer.delete	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{}	[]	2024-09-20 16:15:30.51	2024-09-20 16:15:30.51	\N	\N
30	plugin::content-manager.explorer.delete	{}	api::dopa-thrissur-page.dopa-thrissur-page	{}	[]	2024-09-20 16:15:30.512	2024-09-20 16:15:30.512	\N	\N
31	plugin::content-manager.explorer.delete	{}	api::faculties-page.faculties-page	{}	[]	2024-09-20 16:15:30.514	2024-09-20 16:15:30.514	\N	\N
32	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2024-09-20 16:15:30.515	2024-09-20 16:15:30.515	\N	\N
33	plugin::content-manager.explorer.publish	{}	api::about-us-page.about-us-page	{}	[]	2024-09-20 16:15:30.517	2024-09-20 16:15:30.517	\N	\N
34	plugin::content-manager.explorer.publish	{}	api::contact-form-data.contact-form-data	{}	[]	2024-09-20 16:15:30.519	2024-09-20 16:15:30.519	\N	\N
35	plugin::content-manager.explorer.publish	{}	api::dopa-app-page.dopa-app-page	{}	[]	2024-09-20 16:15:30.523	2024-09-20 16:15:30.523	\N	\N
36	plugin::content-manager.explorer.publish	{}	api::dopa-calicut-page.dopa-calicut-page	{}	[]	2024-09-20 16:15:30.524	2024-09-20 16:15:30.524	\N	\N
37	plugin::content-manager.explorer.publish	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{}	[]	2024-09-20 16:15:30.526	2024-09-20 16:15:30.526	\N	\N
38	plugin::content-manager.explorer.publish	{}	api::dopa-thrissur-page.dopa-thrissur-page	{}	[]	2024-09-20 16:15:30.527	2024-09-20 16:15:30.527	\N	\N
39	plugin::content-manager.explorer.publish	{}	api::faculties-page.faculties-page	{}	[]	2024-09-20 16:15:30.528	2024-09-20 16:15:30.528	\N	\N
40	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2024-09-20 16:15:30.53	2024-09-20 16:15:30.53	\N	\N
41	plugin::upload.read	{}	\N	{}	[]	2024-09-20 16:15:30.531	2024-09-20 16:15:30.531	\N	\N
42	plugin::upload.configure-view	{}	\N	{}	[]	2024-09-20 16:15:30.532	2024-09-20 16:15:30.532	\N	\N
43	plugin::upload.assets.create	{}	\N	{}	[]	2024-09-20 16:15:30.534	2024-09-20 16:15:30.534	\N	\N
44	plugin::upload.assets.update	{}	\N	{}	[]	2024-09-20 16:15:30.536	2024-09-20 16:15:30.536	\N	\N
45	plugin::upload.assets.download	{}	\N	{}	[]	2024-09-20 16:15:30.537	2024-09-20 16:15:30.537	\N	\N
46	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-09-20 16:15:30.539	2024-09-20 16:15:30.539	\N	\N
47	plugin::content-manager.explorer.create	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	["admin::is-creator"]	2024-09-20 16:15:30.542	2024-09-20 16:15:30.542	\N	\N
48	plugin::content-manager.explorer.create	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	["admin::is-creator"]	2024-09-20 16:15:30.544	2024-09-20 16:15:30.544	\N	\N
49	plugin::content-manager.explorer.create	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	["admin::is-creator"]	2024-09-20 16:15:30.546	2024-09-20 16:15:30.546	\N	\N
50	plugin::content-manager.explorer.create	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.547	2024-09-20 16:15:30.547	\N	\N
51	plugin::content-manager.explorer.create	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.549	2024-09-20 16:15:30.549	\N	\N
52	plugin::content-manager.explorer.create	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.55	2024-09-20 16:15:30.55	\N	\N
125	plugin::content-manager.explorer.publish	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{}	[]	2024-09-20 16:15:30.662	2024-09-20 16:15:30.662	\N	\N
53	plugin::content-manager.explorer.create	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	["admin::is-creator"]	2024-09-20 16:15:30.552	2024-09-20 16:15:30.552	\N	\N
55	plugin::content-manager.explorer.read	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	["admin::is-creator"]	2024-09-20 16:15:30.554	2024-09-20 16:15:30.554	\N	\N
56	plugin::content-manager.explorer.read	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	["admin::is-creator"]	2024-09-20 16:15:30.555	2024-09-20 16:15:30.555	\N	\N
57	plugin::content-manager.explorer.read	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	["admin::is-creator"]	2024-09-20 16:15:30.556	2024-09-20 16:15:30.556	\N	\N
58	plugin::content-manager.explorer.read	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.557	2024-09-20 16:15:30.557	\N	\N
59	plugin::content-manager.explorer.read	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.558	2024-09-20 16:15:30.558	\N	\N
60	plugin::content-manager.explorer.read	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.559	2024-09-20 16:15:30.559	\N	\N
61	plugin::content-manager.explorer.read	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	["admin::is-creator"]	2024-09-20 16:15:30.56	2024-09-20 16:15:30.56	\N	\N
63	plugin::content-manager.explorer.update	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	["admin::is-creator"]	2024-09-20 16:15:30.563	2024-09-20 16:15:30.563	\N	\N
64	plugin::content-manager.explorer.update	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	["admin::is-creator"]	2024-09-20 16:15:30.564	2024-09-20 16:15:30.564	\N	\N
65	plugin::content-manager.explorer.update	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	["admin::is-creator"]	2024-09-20 16:15:30.565	2024-09-20 16:15:30.565	\N	\N
66	plugin::content-manager.explorer.update	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.566	2024-09-20 16:15:30.566	\N	\N
67	plugin::content-manager.explorer.update	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.567	2024-09-20 16:15:30.567	\N	\N
68	plugin::content-manager.explorer.update	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	["admin::is-creator"]	2024-09-20 16:15:30.568	2024-09-20 16:15:30.568	\N	\N
69	plugin::content-manager.explorer.update	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	["admin::is-creator"]	2024-09-20 16:15:30.569	2024-09-20 16:15:30.569	\N	\N
126	plugin::content-manager.explorer.publish	{}	api::dopa-thrissur-page.dopa-thrissur-page	{}	[]	2024-09-20 16:15:30.663	2024-09-20 16:15:30.663	\N	\N
127	plugin::content-manager.explorer.publish	{}	api::faculties-page.faculties-page	{}	[]	2024-09-20 16:15:30.664	2024-09-20 16:15:30.664	\N	\N
71	plugin::content-manager.explorer.delete	{}	api::about-us-page.about-us-page	{}	["admin::is-creator"]	2024-09-20 16:15:30.571	2024-09-20 16:15:30.571	\N	\N
72	plugin::content-manager.explorer.delete	{}	api::contact-form-data.contact-form-data	{}	["admin::is-creator"]	2024-09-20 16:15:30.572	2024-09-20 16:15:30.572	\N	\N
73	plugin::content-manager.explorer.delete	{}	api::dopa-app-page.dopa-app-page	{}	["admin::is-creator"]	2024-09-20 16:15:30.573	2024-09-20 16:15:30.573	\N	\N
74	plugin::content-manager.explorer.delete	{}	api::dopa-calicut-page.dopa-calicut-page	{}	["admin::is-creator"]	2024-09-20 16:15:30.575	2024-09-20 16:15:30.575	\N	\N
75	plugin::content-manager.explorer.delete	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{}	["admin::is-creator"]	2024-09-20 16:15:30.576	2024-09-20 16:15:30.576	\N	\N
76	plugin::content-manager.explorer.delete	{}	api::dopa-thrissur-page.dopa-thrissur-page	{}	["admin::is-creator"]	2024-09-20 16:15:30.577	2024-09-20 16:15:30.577	\N	\N
77	plugin::content-manager.explorer.delete	{}	api::faculties-page.faculties-page	{}	["admin::is-creator"]	2024-09-20 16:15:30.578	2024-09-20 16:15:30.578	\N	\N
78	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	["admin::is-creator"]	2024-09-20 16:15:30.579	2024-09-20 16:15:30.579	\N	\N
79	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-09-20 16:15:30.58	2024-09-20 16:15:30.58	\N	\N
80	plugin::upload.configure-view	{}	\N	{}	[]	2024-09-20 16:15:30.582	2024-09-20 16:15:30.582	\N	\N
81	plugin::upload.assets.create	{}	\N	{}	[]	2024-09-20 16:15:30.584	2024-09-20 16:15:30.584	\N	\N
82	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-09-20 16:15:30.586	2024-09-20 16:15:30.586	\N	\N
83	plugin::upload.assets.download	{}	\N	{}	[]	2024-09-20 16:15:30.587	2024-09-20 16:15:30.587	\N	\N
84	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-09-20 16:15:30.588	2024-09-20 16:15:30.588	\N	\N
85	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-09-20 16:15:30.604	2024-09-20 16:15:30.604	\N	\N
86	plugin::content-manager.explorer.create	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	[]	2024-09-20 16:15:30.606	2024-09-20 16:15:30.606	\N	\N
87	plugin::content-manager.explorer.create	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	[]	2024-09-20 16:15:30.608	2024-09-20 16:15:30.608	\N	\N
88	plugin::content-manager.explorer.create	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	[]	2024-09-20 16:15:30.609	2024-09-20 16:15:30.609	\N	\N
89	plugin::content-manager.explorer.create	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.61	2024-09-20 16:15:30.61	\N	\N
90	plugin::content-manager.explorer.create	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.612	2024-09-20 16:15:30.612	\N	\N
91	plugin::content-manager.explorer.create	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.616	2024-09-20 16:15:30.616	\N	\N
92	plugin::content-manager.explorer.create	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	[]	2024-09-20 16:15:30.625	2024-09-20 16:15:30.625	\N	\N
94	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-09-20 16:15:30.627	2024-09-20 16:15:30.627	\N	\N
95	plugin::content-manager.explorer.read	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	[]	2024-09-20 16:15:30.628	2024-09-20 16:15:30.628	\N	\N
96	plugin::content-manager.explorer.read	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	[]	2024-09-20 16:15:30.629	2024-09-20 16:15:30.629	\N	\N
97	plugin::content-manager.explorer.read	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	[]	2024-09-20 16:15:30.63	2024-09-20 16:15:30.63	\N	\N
128	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2024-09-20 16:15:30.665	2024-09-20 16:15:30.665	\N	\N
129	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-09-20 16:15:30.666	2024-09-20 16:15:30.666	\N	\N
70	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	["admin::is-creator"]	2024-09-20 16:15:30.57	2024-09-25 15:48:16.447	\N	\N
98	plugin::content-manager.explorer.read	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.631	2024-09-20 16:15:30.631	\N	\N
99	plugin::content-manager.explorer.read	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.632	2024-09-20 16:15:30.632	\N	\N
100	plugin::content-manager.explorer.read	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.633	2024-09-20 16:15:30.633	\N	\N
101	plugin::content-manager.explorer.read	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	[]	2024-09-20 16:15:30.634	2024-09-20 16:15:30.634	\N	\N
103	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-09-20 16:15:30.636	2024-09-20 16:15:30.636	\N	\N
104	plugin::content-manager.explorer.update	{}	api::about-us-page.about-us-page	{"fields": ["about_banner.heading", "about_banner.description", "about_banner.image", "about_banner.split_header", "directors_section.directors", "directors_section.description", "directors_section.image", "directors_section.image_alt"]}	[]	2024-09-20 16:15:30.637	2024-09-20 16:15:30.637	\N	\N
105	plugin::content-manager.explorer.update	{}	api::contact-form-data.contact-form-data	{"fields": ["name", "district", "number", "class"]}	[]	2024-09-20 16:15:30.638	2024-09-20 16:15:30.638	\N	\N
106	plugin::content-manager.explorer.update	{}	api::dopa-app-page.dopa-app-page	{"fields": ["app_banner.heading", "app_banner.description", "app_banner.image", "app_banner.split_header", "dopa_app_cards.app_cards.title", "dopa_app_cards.app_cards.description", "dopa_app_cards.app_cards.image", "dopa_app_cards.app_cards.is_list"]}	[]	2024-09-20 16:15:30.639	2024-09-20 16:15:30.639	\N	\N
107	plugin::content-manager.explorer.update	{}	api::dopa-calicut-page.dopa-calicut-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.641	2024-09-20 16:15:30.641	\N	\N
108	plugin::content-manager.explorer.update	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.642	2024-09-20 16:15:30.642	\N	\N
109	plugin::content-manager.explorer.update	{}	api::dopa-thrissur-page.dopa-thrissur-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "course_card.course_card.heading", "course_card.course_card.sub_heading", "feature_card_row.feature_card.title", "feature_card_row.feature_card.icon", "gallery.images"]}	[]	2024-09-20 16:15:30.643	2024-09-20 16:15:30.643	\N	\N
110	plugin::content-manager.explorer.update	{}	api::faculties-page.faculties-page	{"fields": ["banner.heading", "banner.description", "banner.image", "banner.split_header", "faculty_card_row.faculty_card.name", "faculty_card_row.faculty_card.designation", "faculty_card_row.faculty_card.education", "faculty_card_row.faculty_card.experience", "faculty_card_row.faculty_card.photo"]}	[]	2024-09-20 16:15:30.644	2024-09-20 16:15:30.644	\N	\N
112	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-09-20 16:15:30.647	2024-09-20 16:15:30.647	\N	\N
113	plugin::content-manager.explorer.delete	{}	api::about-us-page.about-us-page	{}	[]	2024-09-20 16:15:30.649	2024-09-20 16:15:30.649	\N	\N
114	plugin::content-manager.explorer.delete	{}	api::contact-form-data.contact-form-data	{}	[]	2024-09-20 16:15:30.65	2024-09-20 16:15:30.65	\N	\N
115	plugin::content-manager.explorer.delete	{}	api::dopa-app-page.dopa-app-page	{}	[]	2024-09-20 16:15:30.651	2024-09-20 16:15:30.651	\N	\N
116	plugin::content-manager.explorer.delete	{}	api::dopa-calicut-page.dopa-calicut-page	{}	[]	2024-09-20 16:15:30.652	2024-09-20 16:15:30.652	\N	\N
117	plugin::content-manager.explorer.delete	{}	api::dopa-kottakkal-campus.dopa-kottakkal-campus	{}	[]	2024-09-20 16:15:30.653	2024-09-20 16:15:30.653	\N	\N
118	plugin::content-manager.explorer.delete	{}	api::dopa-thrissur-page.dopa-thrissur-page	{}	[]	2024-09-20 16:15:30.654	2024-09-20 16:15:30.654	\N	\N
119	plugin::content-manager.explorer.delete	{}	api::faculties-page.faculties-page	{}	[]	2024-09-20 16:15:30.656	2024-09-20 16:15:30.656	\N	\N
120	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2024-09-20 16:15:30.657	2024-09-20 16:15:30.657	\N	\N
121	plugin::content-manager.explorer.publish	{}	api::about-us-page.about-us-page	{}	[]	2024-09-20 16:15:30.658	2024-09-20 16:15:30.658	\N	\N
122	plugin::content-manager.explorer.publish	{}	api::contact-form-data.contact-form-data	{}	[]	2024-09-20 16:15:30.659	2024-09-20 16:15:30.659	\N	\N
123	plugin::content-manager.explorer.publish	{}	api::dopa-app-page.dopa-app-page	{}	[]	2024-09-20 16:15:30.66	2024-09-20 16:15:30.66	\N	\N
130	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-09-20 16:15:30.667	2024-09-20 16:15:30.667	\N	\N
131	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-09-20 16:15:30.668	2024-09-20 16:15:30.668	\N	\N
132	plugin::content-type-builder.read	{}	\N	{}	[]	2024-09-20 16:15:30.669	2024-09-20 16:15:30.669	\N	\N
133	plugin::email.settings.read	{}	\N	{}	[]	2024-09-20 16:15:30.67	2024-09-20 16:15:30.67	\N	\N
134	plugin::upload.read	{}	\N	{}	[]	2024-09-20 16:15:30.671	2024-09-20 16:15:30.671	\N	\N
135	plugin::upload.assets.create	{}	\N	{}	[]	2024-09-20 16:15:30.673	2024-09-20 16:15:30.673	\N	\N
136	plugin::upload.assets.update	{}	\N	{}	[]	2024-09-20 16:15:30.674	2024-09-20 16:15:30.674	\N	\N
137	plugin::upload.assets.download	{}	\N	{}	[]	2024-09-20 16:15:30.675	2024-09-20 16:15:30.675	\N	\N
138	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-09-20 16:15:30.676	2024-09-20 16:15:30.676	\N	\N
139	plugin::upload.configure-view	{}	\N	{}	[]	2024-09-20 16:15:30.676	2024-09-20 16:15:30.676	\N	\N
140	plugin::upload.settings.read	{}	\N	{}	[]	2024-09-20 16:15:30.677	2024-09-20 16:15:30.677	\N	\N
141	plugin::i18n.locale.create	{}	\N	{}	[]	2024-09-20 16:15:30.678	2024-09-20 16:15:30.678	\N	\N
142	plugin::i18n.locale.read	{}	\N	{}	[]	2024-09-20 16:15:30.679	2024-09-20 16:15:30.679	\N	\N
143	plugin::i18n.locale.update	{}	\N	{}	[]	2024-09-20 16:15:30.68	2024-09-20 16:15:30.68	\N	\N
144	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-09-20 16:15:30.681	2024-09-20 16:15:30.681	\N	\N
145	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-09-20 16:15:30.683	2024-09-20 16:15:30.683	\N	\N
146	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-09-20 16:15:30.684	2024-09-20 16:15:30.684	\N	\N
147	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-09-20 16:15:30.685	2024-09-20 16:15:30.685	\N	\N
148	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-09-20 16:15:30.686	2024-09-20 16:15:30.686	\N	\N
149	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-09-20 16:15:30.687	2024-09-20 16:15:30.687	\N	\N
150	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-09-20 16:15:30.688	2024-09-20 16:15:30.688	\N	\N
151	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-09-20 16:15:30.689	2024-09-20 16:15:30.689	\N	\N
152	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-09-20 16:15:30.69	2024-09-20 16:15:30.69	\N	\N
153	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-09-20 16:15:30.691	2024-09-20 16:15:30.691	\N	\N
154	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-09-20 16:15:30.692	2024-09-20 16:15:30.692	\N	\N
155	admin::marketplace.read	{}	\N	{}	[]	2024-09-20 16:15:30.693	2024-09-20 16:15:30.693	\N	\N
156	admin::webhooks.create	{}	\N	{}	[]	2024-09-20 16:15:30.695	2024-09-20 16:15:30.695	\N	\N
157	admin::webhooks.read	{}	\N	{}	[]	2024-09-20 16:15:30.695	2024-09-20 16:15:30.695	\N	\N
158	admin::webhooks.update	{}	\N	{}	[]	2024-09-20 16:15:30.696	2024-09-20 16:15:30.696	\N	\N
159	admin::webhooks.delete	{}	\N	{}	[]	2024-09-20 16:15:30.698	2024-09-20 16:15:30.698	\N	\N
160	admin::users.create	{}	\N	{}	[]	2024-09-20 16:15:30.698	2024-09-20 16:15:30.698	\N	\N
161	admin::users.read	{}	\N	{}	[]	2024-09-20 16:15:30.7	2024-09-20 16:15:30.7	\N	\N
162	admin::users.update	{}	\N	{}	[]	2024-09-20 16:15:30.701	2024-09-20 16:15:30.701	\N	\N
163	admin::users.delete	{}	\N	{}	[]	2024-09-20 16:15:30.701	2024-09-20 16:15:30.701	\N	\N
164	admin::roles.create	{}	\N	{}	[]	2024-09-20 16:15:30.702	2024-09-20 16:15:30.702	\N	\N
165	admin::roles.read	{}	\N	{}	[]	2024-09-20 16:15:30.703	2024-09-20 16:15:30.703	\N	\N
166	admin::roles.update	{}	\N	{}	[]	2024-09-20 16:15:30.704	2024-09-20 16:15:30.704	\N	\N
167	admin::roles.delete	{}	\N	{}	[]	2024-09-20 16:15:30.705	2024-09-20 16:15:30.705	\N	\N
168	admin::api-tokens.access	{}	\N	{}	[]	2024-09-20 16:15:30.706	2024-09-20 16:15:30.706	\N	\N
169	admin::api-tokens.create	{}	\N	{}	[]	2024-09-20 16:15:30.707	2024-09-20 16:15:30.707	\N	\N
170	admin::api-tokens.read	{}	\N	{}	[]	2024-09-20 16:15:30.708	2024-09-20 16:15:30.708	\N	\N
171	admin::api-tokens.update	{}	\N	{}	[]	2024-09-20 16:15:30.709	2024-09-20 16:15:30.709	\N	\N
172	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-09-20 16:15:30.71	2024-09-20 16:15:30.71	\N	\N
173	admin::api-tokens.delete	{}	\N	{}	[]	2024-09-20 16:15:30.711	2024-09-20 16:15:30.711	\N	\N
174	admin::project-settings.update	{}	\N	{}	[]	2024-09-20 16:15:30.712	2024-09-20 16:15:30.712	\N	\N
175	admin::project-settings.read	{}	\N	{}	[]	2024-09-20 16:15:30.713	2024-09-20 16:15:30.713	\N	\N
176	admin::transfer.tokens.access	{}	\N	{}	[]	2024-09-20 16:15:30.714	2024-09-20 16:15:30.714	\N	\N
177	admin::transfer.tokens.create	{}	\N	{}	[]	2024-09-20 16:15:30.715	2024-09-20 16:15:30.715	\N	\N
178	admin::transfer.tokens.read	{}	\N	{}	[]	2024-09-20 16:15:30.716	2024-09-20 16:15:30.716	\N	\N
179	admin::transfer.tokens.update	{}	\N	{}	[]	2024-09-20 16:15:30.717	2024-09-20 16:15:30.717	\N	\N
180	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-09-20 16:15:30.718	2024-09-20 16:15:30.718	\N	\N
181	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-09-20 16:15:30.719	2024-09-20 16:15:30.719	\N	\N
182	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.name", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	[]	2024-09-25 15:48:16.411	2024-09-25 15:48:16.411	\N	\N
183	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.name", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	[]	2024-09-25 15:48:16.417	2024-09-25 15:48:16.417	\N	\N
184	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.name", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	[]	2024-09-25 15:48:16.419	2024-09-25 15:48:16.419	\N	\N
8	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	[]	2024-09-20 16:15:30.47	2024-09-25 15:48:16.447	\N	\N
16	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	[]	2024-09-20 16:15:30.487	2024-09-25 15:48:16.447	\N	\N
24	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	[]	2024-09-20 16:15:30.502	2024-09-25 15:48:16.447	\N	\N
54	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	["admin::is-creator"]	2024-09-20 16:15:30.553	2024-09-25 15:48:16.447	\N	\N
62	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["HomeBanner.MainHead", "HomeBanner.description", "HomeBanner.buttonName", "HomeBanner.buttonLink", "HomeBanner.image", "HomeAboutUsbanner.heading", "HomeAboutUsbanner.description", "HomeAboutUsbanner.image", "HomeAboutUsbanner.split_header", "Courses.subtitle", "Courses.isTitleBold", "Courses.isSubtitleBold", "DopaUpdates.DopaUpdatesImages", "HOMERESULT.FirstColumnImage", "HOMERESULT.SecondColumnImage", "HomepageDirectors.directors", "HomepageDirectors.description", "HomepageDirectors.image", "HomepageDirectors.image_alt"]}	["admin::is-creator"]	2024-09-20 16:15:30.562	2024-09-25 15:48:16.447	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
42	42	2	42
43	43	2	43
44	44	2	44
45	45	2	45
46	46	2	46
47	47	3	1
48	48	3	2
49	49	3	3
50	50	3	4
51	51	3	5
52	52	3	6
53	53	3	7
54	54	3	8
55	55	3	9
56	56	3	10
57	57	3	11
58	58	3	12
59	59	3	13
60	60	3	14
61	61	3	15
62	62	3	16
63	63	3	17
64	64	3	18
65	65	3	19
66	66	3	20
67	67	3	21
68	68	3	22
69	69	3	23
70	70	3	24
71	71	3	25
72	72	3	26
73	73	3	27
74	74	3	28
75	75	3	29
76	76	3	30
77	77	3	31
78	78	3	32
79	79	3	33
80	80	3	34
81	81	3	35
82	82	3	36
83	83	3	37
84	84	3	38
85	85	1	1
86	86	1	2
87	87	1	3
88	88	1	4
89	89	1	5
90	90	1	6
91	91	1	7
92	92	1	8
94	94	1	10
95	95	1	11
96	96	1	12
97	97	1	13
98	98	1	14
99	99	1	15
100	100	1	16
101	101	1	17
103	103	1	19
104	104	1	20
105	105	1	21
106	106	1	22
107	107	1	23
108	108	1	24
109	109	1	25
110	110	1	26
112	112	1	28
113	113	1	29
114	114	1	30
115	115	1	31
116	116	1	32
117	117	1	33
118	118	1	34
119	119	1	35
120	120	1	36
121	121	1	37
122	122	1	38
123	123	1	39
124	124	1	40
125	125	1	41
126	126	1	42
127	127	1	43
128	128	1	44
129	129	1	45
130	130	1	46
131	131	1	47
132	132	1	48
133	133	1	49
134	134	1	50
135	135	1	51
136	136	1	52
137	137	1	53
138	138	1	54
139	139	1	55
140	140	1	56
141	141	1	57
142	142	1	58
143	143	1	59
144	144	1	60
145	145	1	61
146	146	1	62
147	147	1	63
148	148	1	64
149	149	1	65
150	150	1	66
151	151	1	67
152	152	1	68
153	153	1	69
154	154	1	70
155	155	1	71
156	156	1	72
157	157	1	73
158	158	1	74
159	159	1	75
160	160	1	76
161	161	1	77
162	162	1	78
163	163	1	79
164	164	1	80
165	165	1	81
166	166	1	82
167	167	1	83
168	168	1	84
169	169	1	85
170	170	1	86
171	171	1	87
172	172	1	88
173	173	1	89
174	174	1	90
175	175	1	91
176	176	1	92
177	177	1	93
178	178	1	94
179	179	1	95
180	180	1	96
181	181	1	97
182	182	1	98
183	183	1	99
184	184	1	100
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-09-20 16:15:30.44	2024-09-20 16:15:30.44	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-09-20 16:15:30.444	2024-09-20 16:15:30.444	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-09-20 16:15:30.445	2024-09-20 16:15:30.445	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	dopa	admin	\N	dopaprep@gmail.com	$2a$10$n6ZpgG22Yc3/N3K0gxybY.bET/sKZLUllgy9PgO66HzsMpeFvu34G	\N	\N	t	f	\N	2024-09-20 16:16:49.663	2024-09-20 16:16:49.663	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: components_blocks_app_card_rows; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_app_card_rows (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_app_card_rows_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_app_card_rows_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_banners; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_banners (id, heading, description, split_header) FROM stdin;
1	About Us	DOPA is an initiative started by a group of young doctors who have completed MBBS from Calicut Medical College, Kerala. we support medical aspirants to ace the NEET along with extensive board exam preparations. Studying for entrance exams alongside +1 and +2 is more beneficial than spending years on entrance preparation after completing +2. DOPA's NEET INTEGRATED SCHOOL is here to help turn your dream into reality	f
\.


--
-- Data for Name: components_blocks_course_card_rows; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_course_card_rows (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_course_card_rows_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_course_card_rows_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_course_sections; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_course_sections (id, subtitle, is_title_bold, is_subtitle_bold, name) FROM stdin;
2	BATCH	t	f	TEST AND DISCUSSION
1	REPEATERS	t	f	TAMIL
3	SCHOOL	t	f	INTEGRATED
4	ONLINE	f	t	REPEATERS
5	OFFLINE	f	t	REPEATERS
7	CRASH COURSE	t	f	CAPSULE
6	RESIDENTIAL	f	t	REPEATERS
8	\N	t	f	FOUNDATION
9	WITH ENTRANCE	t	f	+1 , +2
\.


--
-- Data for Name: components_blocks_directors_sections; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_directors_sections (id, directors, description, image_alt) FROM stdin;
1	Directors of DOPA - Dr.Niyas P, Dr.Asif PP, Dr.Ashique, Dr Jemshith Ahmed, Mr.Muneer	Dream big; we're here to guide you! “ DOPA offers entrance coaching that is accessible and affordable for all students. We have highly educated and passionate faculties who are committed to providing exceptional support to NEET and JEE aspirants. Offering personalized medical mentors and one-on-one interaction sessions to ensure dedicated guidance towards achieving your goals. giving you the best chance at achieving your dreams of becoming a doctor.”	dopa coaching center 
\.


--
-- Data for Name: components_blocks_dopa_updates; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_dopa_updates (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_faculty_card_rows; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_faculty_card_rows (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_faculty_card_rows_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_faculty_card_rows_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_feature_card_rows; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_feature_card_rows (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_feature_card_rows_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_feature_card_rows_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_home_banners; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_home_banners (id, main_head, description, button_name, button_link) FROM stdin;
1	Start your NEET\\JEE preparation with expert faculties	"Dream it, we'll guide the way."	Apply Now	/dopa-contact
\.


--
-- Data for Name: components_blocks_image_blocks; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_image_blocks (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_results; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_blocks_results (id) FROM stdin;
1
\.


--
-- Data for Name: components_elements_app_cards; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_elements_app_cards (id, title, description, is_list) FROM stdin;
\.


--
-- Data for Name: components_elements_course_cards; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_elements_course_cards (id, heading, sub_heading) FROM stdin;
\.


--
-- Data for Name: components_elements_faculty_cards; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_elements_faculty_cards (id, name, designation, education, experience) FROM stdin;
\.


--
-- Data for Name: components_elements_feature_cards; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.components_elements_feature_cards (id, title) FROM stdin;
\.


--
-- Data for Name: contact_form_datas; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.contact_form_datas (id, name, district, number, class, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: dopa_app_pages; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_app_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: dopa_app_pages_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_app_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: dopa_calicut_pages; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_calicut_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: dopa_calicut_pages_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_calicut_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: dopa_kottakkal_campuses; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_kottakkal_campuses (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: dopa_kottakkal_campuses_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_kottakkal_campuses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: dopa_thrissur_pages; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_thrissur_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: dopa_thrissur_pages_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.dopa_thrissur_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: faculties_pages; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.faculties_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: faculties_pages_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.faculties_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Artboard 1@4x-100@3x.png	 ⁠Best neet coaching center in calicut	\N	741	400	{"small": {"ext": ".png", "url": "/uploads/small_Artboard_1_4x_100_3x_cdf6648f78.png", "hash": "small_Artboard_1_4x_100_3x_cdf6648f78", "mime": "image/png", "name": "small_Artboard 1@4x-100@3x.png", "path": null, "size": 122.67, "width": 500, "height": 270, "sizeInBytes": 122672}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Artboard_1_4x_100_3x_cdf6648f78.png", "hash": "thumbnail_Artboard_1_4x_100_3x_cdf6648f78", "mime": "image/png", "name": "thumbnail_Artboard 1@4x-100@3x.png", "path": null, "size": 36.52, "width": 245, "height": 132, "sizeInBytes": 36522}}	Artboard_1_4x_100_3x_cdf6648f78	.png	image/png	93.04	/uploads/Artboard_1_4x_100_3x_cdf6648f78.png	\N	local	\N	/	2024-09-24 10:05:24.146	2024-09-25 14:05:50.719	1	1
3	integratted_banner.png	\N	\N	616	386	{"small": {"ext": ".png", "url": "/uploads/small_integratted_banner_41bdb47040.png", "hash": "small_integratted_banner_41bdb47040", "mime": "image/png", "name": "small_integratted_banner.png", "path": null, "size": 210.9, "width": 500, "height": 313, "sizeInBytes": 210897}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_integratted_banner_41bdb47040.png", "hash": "thumbnail_integratted_banner_41bdb47040", "mime": "image/png", "name": "thumbnail_integratted_banner.png", "path": null, "size": 62.67, "width": 245, "height": 154, "sizeInBytes": 62666}}	integratted_banner_41bdb47040	.png	image/png	73.95	/uploads/integratted_banner_41bdb47040.png	\N	local	\N	/	2024-09-25 14:17:54.943	2024-09-25 14:17:54.943	1	1
4	Frame 512977.png	 ⁠Best neet coaching center in calicut	\N	519	532	{"small": {"ext": ".png", "url": "/uploads/small_Frame_512977_2e35d2894b.png", "hash": "small_Frame_512977_2e35d2894b", "mime": "image/png", "name": "small_Frame 512977.png", "path": null, "size": 404.4, "width": 488, "height": 500, "sizeInBytes": 404395}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Frame_512977_2e35d2894b.png", "hash": "thumbnail_Frame_512977_2e35d2894b", "mime": "image/png", "name": "thumbnail_Frame 512977.png", "path": null, "size": 56.68, "width": 152, "height": 156, "sizeInBytes": 56684}}	Frame_512977_2e35d2894b	.png	image/png	105.74	/uploads/Frame_512977_2e35d2894b.png	\N	local	\N	/	2024-09-25 15:58:33.431	2024-09-25 15:59:14.439	1	1
5	Artboard 4 1 (2).png	 ⁠Best neet coaching center in calicut	\N	806	571	{"small": {"ext": ".png", "url": "/uploads/small_Artboard_4_1_2_b6c892198b.png", "hash": "small_Artboard_4_1_2_b6c892198b", "mime": "image/png", "name": "small_Artboard 4 1 (2).png", "path": null, "size": 276.4, "width": 500, "height": 354, "sizeInBytes": 276402}, "medium": {"ext": ".png", "url": "/uploads/medium_Artboard_4_1_2_b6c892198b.png", "hash": "medium_Artboard_4_1_2_b6c892198b", "mime": "image/png", "name": "medium_Artboard 4 1 (2).png", "path": null, "size": 560.4, "width": 750, "height": 531, "sizeInBytes": 560400}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Artboard_4_1_2_b6c892198b.png", "hash": "thumbnail_Artboard_4_1_2_b6c892198b", "mime": "image/png", "name": "thumbnail_Artboard 4 1 (2).png", "path": null, "size": 66.98, "width": 220, "height": 156, "sizeInBytes": 66977}}	Artboard_4_1_2_b6c892198b	.png	image/png	140.48	/uploads/Artboard_4_1_2_b6c892198b.png	\N	local	\N	/	2024-09-25 15:58:47.287	2024-09-25 15:59:09.095	1	1
6	Directors 1.png	\N	\N	593	384	{"small": {"ext": ".png", "url": "/uploads/small_Directors_1_26942307b7.png", "hash": "small_Directors_1_26942307b7", "mime": "image/png", "name": "small_Directors 1.png", "path": null, "size": 271.96, "width": 500, "height": 324, "sizeInBytes": 271963}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Directors_1_26942307b7.png", "hash": "thumbnail_Directors_1_26942307b7", "mime": "image/png", "name": "thumbnail_Directors 1.png", "path": null, "size": 76.23, "width": 241, "height": 156, "sizeInBytes": 76232}}	Directors_1_26942307b7	.png	image/png	96.32	/uploads/Directors_1_26942307b7.png	\N	local	\N	/	2024-09-25 16:09:30.525	2024-09-25 16:09:30.525	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
22	1	1	blocks.home-banner	image	1
23	3	1	blocks.banner	image	1
24	4	1	blocks.results	FirstColumnImage	1
25	5	1	blocks.results	SecondColumnImage	1
26	6	1	blocks.directors-section	image	1
\.


--
-- Data for Name: home_pages; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.home_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2024-09-24 10:03:51.827	2024-09-25 16:09:42.791	2024-09-25 13:38:21.134	1	1
\.


--
-- Data for Name: home_pages_components; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.home_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
4	1	1	blocks.banner	HomeAboutUsbanner	1
43	1	1	blocks.results	HOMERESULT	2
15	1	2	blocks.course-section	Courses	3
16	1	1	blocks.course-section	Courses	4
25	1	3	blocks.course-section	Courses	5
26	1	4	blocks.course-section	Courses	6
27	1	5	blocks.course-section	Courses	7
28	1	6	blocks.course-section	Courses	8
29	1	7	blocks.course-section	Courses	9
1	1	1	blocks.home-banner	HomeBanner	10
30	1	8	blocks.course-section	Courses	11
31	1	9	blocks.course-section	Courses	12
56	1	1	blocks.directors-section	HomepageDirectors	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-09-20 16:15:30.37	2024-09-20 16:15:30.37	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::about-us-page.about-us-page":{"kind":"singleType","collectionName":"about_us_pages","info":{"singularName":"about-us-page","pluralName":"about-us-pages","displayName":"About Us page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"about_banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"directors_section":{"displayName":"Directors Section","type":"component","repeatable":false,"component":"blocks.directors-section"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"about_us_pages","info":{"singularName":"about-us-page","pluralName":"about-us-pages","displayName":"About Us page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"about_banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"directors_section":{"displayName":"Directors Section","type":"component","repeatable":false,"component":"blocks.directors-section"}},"kind":"singleType"},"modelType":"contentType","modelName":"about-us-page","connection":"default","uid":"api::about-us-page.about-us-page","apiName":"about-us-page","globalId":"AboutUsPage","actions":{},"lifecycles":{}},"api::contact-form-data.contact-form-data":{"kind":"collectionType","collectionName":"contact_form_datas","info":{"singularName":"contact-form-data","pluralName":"contact-form-datas","displayName":"Contact Form Data"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"district":{"type":"string"},"number":{"type":"string"},"class":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contact_form_datas","info":{"singularName":"contact-form-data","pluralName":"contact-form-datas","displayName":"Contact Form Data"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"district":{"type":"string"},"number":{"type":"string"},"class":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"contact-form-data","connection":"default","uid":"api::contact-form-data.contact-form-data","apiName":"contact-form-data","globalId":"ContactFormData","actions":{},"lifecycles":{}},"api::dopa-app-page.dopa-app-page":{"kind":"singleType","collectionName":"dopa_app_pages","info":{"singularName":"dopa-app-page","pluralName":"dopa-app-pages","displayName":"Dopa App Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"app_banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"dopa_app_cards":{"type":"component","repeatable":false,"component":"blocks.app-card-row"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"dopa_app_pages","info":{"singularName":"dopa-app-page","pluralName":"dopa-app-pages","displayName":"Dopa App Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"app_banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"dopa_app_cards":{"type":"component","repeatable":false,"component":"blocks.app-card-row"}},"kind":"singleType"},"modelType":"contentType","modelName":"dopa-app-page","connection":"default","uid":"api::dopa-app-page.dopa-app-page","apiName":"dopa-app-page","globalId":"DopaAppPage","actions":{},"lifecycles":{}},"api::dopa-calicut-page.dopa-calicut-page":{"kind":"singleType","collectionName":"dopa_calicut_pages","info":{"singularName":"dopa-calicut-page","pluralName":"dopa-calicut-pages","displayName":"Dopa Calicut Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"course_card":{"type":"component","repeatable":false,"component":"blocks.course-card-row"},"feature_card_row":{"type":"component","repeatable":false,"component":"blocks.feature-card-row"},"gallery":{"type":"component","repeatable":false,"component":"blocks.image-block"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"dopa_calicut_pages","info":{"singularName":"dopa-calicut-page","pluralName":"dopa-calicut-pages","displayName":"Dopa Calicut Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"course_card":{"type":"component","repeatable":false,"component":"blocks.course-card-row"},"feature_card_row":{"type":"component","repeatable":false,"component":"blocks.feature-card-row"},"gallery":{"type":"component","repeatable":false,"component":"blocks.image-block"}},"kind":"singleType"},"modelType":"contentType","modelName":"dopa-calicut-page","connection":"default","uid":"api::dopa-calicut-page.dopa-calicut-page","apiName":"dopa-calicut-page","globalId":"DopaCalicutPage","actions":{},"lifecycles":{}},"api::dopa-kottakkal-campus.dopa-kottakkal-campus":{"kind":"singleType","collectionName":"dopa_kottakkal_campuses","info":{"singularName":"dopa-kottakkal-campus","pluralName":"dopa-kottakkal-campuses","displayName":"Dopa Kottakkal Campus","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"course_card":{"type":"component","repeatable":false,"component":"blocks.course-card-row"},"feature_card_row":{"type":"component","repeatable":false,"component":"blocks.feature-card-row"},"gallery":{"type":"component","repeatable":false,"component":"blocks.image-block"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"dopa_kottakkal_campuses","info":{"singularName":"dopa-kottakkal-campus","pluralName":"dopa-kottakkal-campuses","displayName":"Dopa Kottakkal Campus","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"course_card":{"type":"component","repeatable":false,"component":"blocks.course-card-row"},"feature_card_row":{"type":"component","repeatable":false,"component":"blocks.feature-card-row"},"gallery":{"type":"component","repeatable":false,"component":"blocks.image-block"}},"kind":"singleType"},"modelType":"contentType","modelName":"dopa-kottakkal-campus","connection":"default","uid":"api::dopa-kottakkal-campus.dopa-kottakkal-campus","apiName":"dopa-kottakkal-campus","globalId":"DopaKottakkalCampus","actions":{},"lifecycles":{}},"api::dopa-thrissur-page.dopa-thrissur-page":{"kind":"singleType","collectionName":"dopa_thrissur_pages","info":{"singularName":"dopa-thrissur-page","pluralName":"dopa-thrissur-pages","displayName":"Dopa Thrissur Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"course_card":{"type":"component","repeatable":false,"component":"blocks.course-card-row"},"feature_card_row":{"type":"component","repeatable":false,"component":"blocks.feature-card-row"},"gallery":{"type":"component","repeatable":false,"component":"blocks.image-block"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"dopa_thrissur_pages","info":{"singularName":"dopa-thrissur-page","pluralName":"dopa-thrissur-pages","displayName":"Dopa Thrissur Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"course_card":{"type":"component","repeatable":false,"component":"blocks.course-card-row"},"feature_card_row":{"type":"component","repeatable":false,"component":"blocks.feature-card-row"},"gallery":{"type":"component","repeatable":false,"component":"blocks.image-block"}},"kind":"singleType"},"modelType":"contentType","modelName":"dopa-thrissur-page","connection":"default","uid":"api::dopa-thrissur-page.dopa-thrissur-page","apiName":"dopa-thrissur-page","globalId":"DopaThrissurPage","actions":{},"lifecycles":{}},"api::faculties-page.faculties-page":{"kind":"singleType","collectionName":"faculties_pages","info":{"singularName":"faculties-page","pluralName":"faculties-pages","displayName":"Faculties Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"faculty_card_row":{"type":"component","repeatable":false,"component":"blocks.faculty-card-row"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"faculties_pages","info":{"singularName":"faculties-page","pluralName":"faculties-pages","displayName":"Faculties Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"banner":{"type":"component","repeatable":false,"component":"blocks.banner"},"faculty_card_row":{"type":"component","repeatable":false,"component":"blocks.faculty-card-row"}},"kind":"singleType"},"modelType":"contentType","modelName":"faculties-page","connection":"default","uid":"api::faculties-page.faculties-page","apiName":"faculties-page","globalId":"FacultiesPage","actions":{},"lifecycles":{}},"api::home-page.home-page":{"kind":"singleType","collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"home page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"HomeBanner":{"displayName":"HomeBanner","type":"component","repeatable":false,"component":"blocks.home-banner"},"HomeAboutUsbanner":{"type":"component","repeatable":true,"component":"blocks.banner"},"Courses":{"type":"component","repeatable":true,"component":"blocks.course-section"},"DopaUpdates":{"displayName":"DopaUpdates","type":"component","repeatable":false,"component":"blocks.dopa-updates"},"HOMERESULT":{"displayName":"Results","type":"component","repeatable":true,"component":"blocks.results"},"HomepageDirectors":{"type":"component","repeatable":true,"component":"blocks.directors-section"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"home page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"HomeBanner":{"displayName":"HomeBanner","type":"component","repeatable":false,"component":"blocks.home-banner"},"HomeAboutUsbanner":{"type":"component","repeatable":true,"component":"blocks.banner"},"Courses":{"type":"component","repeatable":true,"component":"blocks.course-section"},"DopaUpdates":{"displayName":"DopaUpdates","type":"component","repeatable":false,"component":"blocks.dopa-updates"},"HOMERESULT":{"displayName":"Results","type":"component","repeatable":true,"component":"blocks.results"},"HomepageDirectors":{"type":"component","repeatable":true,"component":"blocks.directors-section"}},"kind":"singleType"},"modelType":"contentType","modelName":"home-page","connection":"default","uid":"api::home-page.home-page","apiName":"home-page","globalId":"HomePage","actions":{},"lifecycles":{}}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
37	plugin_content_manager_configuration_content_types::api::home-page.home-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"HomeBanner":{"edit":{"label":"HomeBanner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"HomeBanner","searchable":false,"sortable":false}},"HomeAboutUsbanner":{"edit":{"label":"HomeAboutUsbanner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"HomeAboutUsbanner","searchable":false,"sortable":false}},"Courses":{"edit":{"label":"Courses","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Courses","searchable":false,"sortable":false}},"DopaUpdates":{"edit":{"label":"DopaUpdates","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DopaUpdates","searchable":false,"sortable":false}},"HOMERESULT":{"edit":{"label":"HOMERESULT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"HOMERESULT","searchable":false,"sortable":false}},"HomepageDirectors":{"edit":{"label":"HomepageDirectors","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"HomepageDirectors","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","HomeBanner","HomeAboutUsbanner","Courses"],"edit":[[{"name":"HomeBanner","size":12}],[{"name":"HomeAboutUsbanner","size":12}],[{"name":"Courses","size":12}],[{"name":"DopaUpdates","size":12}],[{"name":"HOMERESULT","size":12}],[{"name":"HomepageDirectors","size":12}]]},"uid":"api::home-page.home-page"}	object	\N	\N
40	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
41	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
10	plugin_content_manager_configuration_components::blocks.feature-card-row	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"feature_card":{"edit":{"label":"feature_card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature_card","searchable":false,"sortable":false}}},"layouts":{"list":["id","feature_card"],"edit":[[{"name":"feature_card","size":12}]]},"uid":"blocks.feature-card-row","isComponent":true}	object	\N	\N
14	plugin_content_manager_configuration_components::blocks.banner	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"split_header":{"edit":{"label":"split_header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"split_header","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","description","image"],"edit":[[{"name":"heading","size":6},{"name":"description","size":6}],[{"name":"image","size":6},{"name":"split_header","size":4}]]},"uid":"blocks.banner","isComponent":true}	object	\N	\N
42	plugin_upload_metrics	{"weeklySchedule":"54 11 13 * * 3","lastWeeklyUpdate":1727250114067}	object	\N	\N
22	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
35	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
15	plugin_content_manager_configuration_components::blocks.image-block	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"images":{"edit":{"label":"images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"images","searchable":false,"sortable":false}}},"layouts":{"list":["id","images"],"edit":[[{"name":"images","size":6}]]},"uid":"blocks.image-block","isComponent":true}	object	\N	\N
9	plugin_content_manager_configuration_components::blocks.dopa-updates	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"DopaUpdatesImages":{"edit":{"label":"DopaUpdatesImages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DopaUpdatesImages","searchable":false,"sortable":false}}},"layouts":{"list":["id","DopaUpdatesImages"],"edit":[[{"name":"DopaUpdatesImages","size":6}]]},"uid":"blocks.dopa-updates","isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
13	plugin_content_manager_configuration_components::blocks.course-section	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"isTitleBold":{"edit":{"label":"isTitleBold","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isTitleBold","searchable":true,"sortable":true}},"isSubtitleBold":{"edit":{"label":"isSubtitleBold","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isSubtitleBold","searchable":true,"sortable":true}}},"layouts":{"list":["id","subtitle","isTitleBold","name"],"edit":[[{"name":"name","size":6},{"name":"subtitle","size":6}],[{"name":"isTitleBold","size":4},{"name":"isSubtitleBold","size":4}]]},"uid":"blocks.course-section","isComponent":true}	object	\N	\N
24	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::dopa-app-page.dopa-app-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"app_banner":{"edit":{"label":"app_banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"app_banner","searchable":false,"sortable":false}},"dopa_app_cards":{"edit":{"label":"dopa_app_cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dopa_app_cards","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","app_banner","dopa_app_cards","createdAt"],"edit":[[{"name":"app_banner","size":12}],[{"name":"dopa_app_cards","size":12}]]},"uid":"api::dopa-app-page.dopa-app-page"}	object	\N	\N
12	plugin_content_manager_configuration_components::blocks.directors-section	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"directors","defaultSortBy":"directors","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"directors":{"edit":{"label":"directors","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"directors","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"image_alt":{"edit":{"label":"image_alt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image_alt","searchable":true,"sortable":true}}},"layouts":{"list":["id","directors","description","image"],"edit":[[{"name":"directors","size":6},{"name":"description","size":6}],[{"name":"image","size":6},{"name":"image_alt","size":6}]]},"uid":"blocks.directors-section","isComponent":true}	object	\N	\N
16	plugin_content_manager_configuration_components::blocks.app-card-row	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"app_cards":{"edit":{"label":"app_cards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"app_cards","searchable":false,"sortable":false}}},"layouts":{"list":["id","app_cards"],"edit":[[{"name":"app_cards","size":12}]]},"uid":"blocks.app-card-row","isComponent":true}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
33	plugin_content_manager_configuration_content_types::api::dopa-calicut-page.dopa-calicut-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":false,"sortable":false}},"course_card":{"edit":{"label":"course_card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"course_card","searchable":false,"sortable":false}},"feature_card_row":{"edit":{"label":"feature_card_row","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature_card_row","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","banner","course_card","feature_card_row"],"edit":[[{"name":"banner","size":12}],[{"name":"course_card","size":12}],[{"name":"feature_card_row","size":12}],[{"name":"gallery","size":12}]]},"uid":"api::dopa-calicut-page.dopa-calicut-page"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::dopa-kottakkal-campus.dopa-kottakkal-campus	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":false,"sortable":false}},"course_card":{"edit":{"label":"course_card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"course_card","searchable":false,"sortable":false}},"feature_card_row":{"edit":{"label":"feature_card_row","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature_card_row","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","banner","course_card","feature_card_row"],"edit":[[{"name":"banner","size":12}],[{"name":"course_card","size":12}],[{"name":"feature_card_row","size":12}],[{"name":"gallery","size":12}]]},"uid":"api::dopa-kottakkal-campus.dopa-kottakkal-campus"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
36	plugin_content_manager_configuration_content_types::api::faculties-page.faculties-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":false,"sortable":false}},"faculty_card_row":{"edit":{"label":"faculty_card_row","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faculty_card_row","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","banner","faculty_card_row","createdAt"],"edit":[[{"name":"banner","size":12}],[{"name":"faculty_card_row","size":12}]]},"uid":"api::faculties-page.faculties-page"}	object	\N	\N
43	plugin_i18n_default_locale	"en"	string	\N	\N
44	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
45	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
46	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::contact-form-data.contact-form-data	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"district":{"edit":{"label":"district","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"district","searchable":true,"sortable":true}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"class":{"edit":{"label":"class","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","district","number"],"edit":[[{"name":"name","size":6},{"name":"district","size":6}],[{"name":"number","size":6},{"name":"class","size":6}]]},"uid":"api::contact-form-data.contact-form-data"}	object	\N	\N
39	plugin_content_manager_configuration_content_types::api::dopa-thrissur-page.dopa-thrissur-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":false,"sortable":false}},"course_card":{"edit":{"label":"course_card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"course_card","searchable":false,"sortable":false}},"feature_card_row":{"edit":{"label":"feature_card_row","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature_card_row","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","banner","course_card","feature_card_row"],"edit":[[{"name":"banner","size":12}],[{"name":"course_card","size":12}],[{"name":"feature_card_row","size":12}],[{"name":"gallery","size":12}]]},"uid":"api::dopa-thrissur-page.dopa-thrissur-page"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
38	plugin_content_manager_configuration_content_types::api::about-us-page.about-us-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"about_banner":{"edit":{"label":"about_banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"about_banner","searchable":false,"sortable":false}},"directors_section":{"edit":{"label":"directors_section","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"directors_section","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","about_banner","directors_section","createdAt"],"edit":[[{"name":"about_banner","size":12}],[{"name":"directors_section","size":12}]]},"uid":"api::about-us-page.about-us-page"}	object	\N	\N
47	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
4	plugin_content_manager_configuration_components::blocks.results	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"FirstColumnImage":{"edit":{"label":"FirstColumnImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FirstColumnImage","searchable":false,"sortable":false}},"SecondColumnImage":{"edit":{"label":"SecondColumnImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SecondColumnImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","FirstColumnImage","SecondColumnImage"],"edit":[[{"name":"FirstColumnImage","size":6},{"name":"SecondColumnImage","size":6}]]},"uid":"blocks.results","isComponent":true}	object	\N	\N
3	plugin_content_manager_configuration_components::elements.feature-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","icon"],"edit":[[{"name":"title","size":6},{"name":"icon","size":6}]]},"uid":"elements.feature-card","isComponent":true}	object	\N	\N
8	plugin_content_manager_configuration_components::elements.course-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"sub_heading":{"edit":{"label":"sub_heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sub_heading","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","sub_heading"],"edit":[[{"name":"heading","size":6},{"name":"sub_heading","size":6}]]},"uid":"elements.course-card","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::blocks.faculty-card-row	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"faculty_card":{"edit":{"label":"faculty_card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faculty_card","searchable":false,"sortable":false}}},"layouts":{"list":["id","faculty_card"],"edit":[[{"name":"faculty_card","size":12}]]},"uid":"blocks.faculty-card-row","isComponent":true}	object	\N	\N
2	plugin_content_manager_configuration_components::elements.app-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"is_list":{"edit":{"label":"is_list","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_list","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","image"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"image","size":6},{"name":"is_list","size":4}]]},"uid":"elements.app-card","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::elements.faculty-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"designation":{"edit":{"label":"designation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"designation","searchable":true,"sortable":true}},"education":{"edit":{"label":"education","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"education","searchable":true,"sortable":true}},"experience":{"edit":{"label":"experience","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"experience","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","designation","education"],"edit":[[{"name":"name","size":6},{"name":"designation","size":6}],[{"name":"education","size":6},{"name":"experience","size":6}],[{"name":"photo","size":6}]]},"uid":"elements.faculty-card","isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::blocks.home-banner	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"MainHead","defaultSortBy":"MainHead","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"MainHead":{"edit":{"label":"MainHead","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainHead","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"buttonName":{"edit":{"label":"buttonName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonName","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","MainHead","description","buttonName"],"edit":[[{"name":"MainHead","size":6},{"name":"description","size":6}],[{"name":"buttonName","size":6},{"name":"buttonLink","size":6}],[{"name":"image","size":6}]]},"uid":"blocks.home-banner","isComponent":true}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
11	plugin_content_manager_configuration_components::blocks.course-card-row	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"course_card":{"edit":{"label":"course_card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"course_card","searchable":false,"sortable":false}}},"layouts":{"list":["id","course_card"],"edit":[[{"name":"course_card","size":12}]]},"uid":"blocks.course-card-row","isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
3	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_us_pages","indexes":[{"name":"about_us_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"about_us_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_us_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_us_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contact_form_datas","indexes":[{"name":"contact_form_datas_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_form_datas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_form_datas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_form_datas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"district","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_app_pages","indexes":[{"name":"dopa_app_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"dopa_app_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"dopa_app_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"dopa_app_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_calicut_pages","indexes":[{"name":"dopa_calicut_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"dopa_calicut_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"dopa_calicut_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"dopa_calicut_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_kottakkal_campuses","indexes":[{"name":"dopa_kottakkal_campuses_created_by_id_fk","columns":["created_by_id"]},{"name":"dopa_kottakkal_campuses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"dopa_kottakkal_campuses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"dopa_kottakkal_campuses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_thrissur_pages","indexes":[{"name":"dopa_thrissur_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"dopa_thrissur_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"dopa_thrissur_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"dopa_thrissur_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"faculties_pages","indexes":[{"name":"faculties_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"faculties_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"faculties_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"faculties_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages","indexes":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_elements_feature_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_faculty_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"designation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"education","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"experience","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_course_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_elements_app_cards","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_list","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_results","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_image_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_home_banners","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"main_head","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_feature_card_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_faculty_card_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_dopa_updates","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_directors_sections","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"directors","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"image_alt","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_course_sections","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_title_bold","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_subtitle_bold","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_course_card_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_banners","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"split_header","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_app_card_rows","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_us_pages_components","indexes":[{"name":"about_us_pages_field_index","columns":["field"]},{"name":"about_us_pages_component_type_index","columns":["component_type"]},{"name":"about_us_pages_entity_fk","columns":["entity_id"]},{"name":"about_us_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"about_us_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"about_us_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_app_pages_components","indexes":[{"name":"dopa_app_pages_field_index","columns":["field"]},{"name":"dopa_app_pages_component_type_index","columns":["component_type"]},{"name":"dopa_app_pages_entity_fk","columns":["entity_id"]},{"name":"dopa_app_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"dopa_app_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"dopa_app_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_calicut_pages_components","indexes":[{"name":"dopa_calicut_pages_field_index","columns":["field"]},{"name":"dopa_calicut_pages_component_type_index","columns":["component_type"]},{"name":"dopa_calicut_pages_entity_fk","columns":["entity_id"]},{"name":"dopa_calicut_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"dopa_calicut_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"dopa_calicut_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_kottakkal_campuses_components","indexes":[{"name":"dopa_kottakkal_campuses_field_index","columns":["field"]},{"name":"dopa_kottakkal_campuses_component_type_index","columns":["component_type"]},{"name":"dopa_kottakkal_campuses_entity_fk","columns":["entity_id"]},{"name":"dopa_kottakkal_campuses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"dopa_kottakkal_campuses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"dopa_kottakkal_campuses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dopa_thrissur_pages_components","indexes":[{"name":"dopa_thrissur_pages_field_index","columns":["field"]},{"name":"dopa_thrissur_pages_component_type_index","columns":["component_type"]},{"name":"dopa_thrissur_pages_entity_fk","columns":["entity_id"]},{"name":"dopa_thrissur_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"dopa_thrissur_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"dopa_thrissur_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"faculties_pages_components","indexes":[{"name":"faculties_pages_field_index","columns":["field"]},{"name":"faculties_pages_component_type_index","columns":["component_type"]},{"name":"faculties_pages_entity_fk","columns":["entity_id"]},{"name":"faculties_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"faculties_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"faculties_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"home_pages_components","indexes":[{"name":"home_pages_field_index","columns":["field"]},{"name":"home_pages_component_type_index","columns":["component_type"]},{"name":"home_pages_entity_fk","columns":["entity_id"]},{"name":"home_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"home_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"home_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_feature_card_rows_components","indexes":[{"name":"components_blocks_feature_card_rows_field_index","columns":["field"]},{"name":"components_blocks_feature_card_rows_component_type_index","columns":["component_type"]},{"name":"components_blocks_feature_card_rows_entity_fk","columns":["entity_id"]},{"name":"components_blocks_feature_card_rows_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_feature_card_rows_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_feature_card_rows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_faculty_card_rows_components","indexes":[{"name":"components_blocks_faculty_card_rows_field_index","columns":["field"]},{"name":"components_blocks_faculty_card_rows_component_type_index","columns":["component_type"]},{"name":"components_blocks_faculty_card_rows_entity_fk","columns":["entity_id"]},{"name":"components_blocks_faculty_card_rows_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_faculty_card_rows_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_faculty_card_rows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_course_card_rows_components","indexes":[{"name":"components_blocks_course_card_rows_field_index","columns":["field"]},{"name":"components_blocks_course_card_rows_component_type_index","columns":["component_type"]},{"name":"components_blocks_course_card_rows_entity_fk","columns":["entity_id"]},{"name":"components_blocks_course_card_rows_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_course_card_rows_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_course_card_rows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_app_card_rows_components","indexes":[{"name":"components_blocks_app_card_rows_field_index","columns":["field"]},{"name":"components_blocks_app_card_rows_component_type_index","columns":["component_type"]},{"name":"components_blocks_app_card_rows_entity_fk","columns":["entity_id"]},{"name":"components_blocks_app_card_rows_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_app_card_rows_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_app_card_rows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-09-25 16:37:52.234	27a824e46d5532907c1b5dbecff7297d
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-09-20 16:15:30.394	2024-09-20 16:15:30.394	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-09-20 16:15:30.394	2024-09-20 16:15:30.394	\N	\N
3	plugin::users-permissions.auth.connect	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
4	plugin::users-permissions.auth.callback	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
5	plugin::users-permissions.auth.register	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
6	plugin::users-permissions.auth.forgotPassword	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
7	plugin::users-permissions.auth.resetPassword	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2024-09-20 16:15:30.419	2024-09-20 16:15:30.419	\N	\N
11	api::home-page.home-page.find	2024-09-24 10:08:52.88	2024-09-24 10:08:52.88	\N	\N
12	api::about-us-page.about-us-page.find	2024-09-25 16:17:41.928	2024-09-25 16:17:41.928	\N	\N
13	api::dopa-app-page.dopa-app-page.find	2024-09-25 16:17:41.928	2024-09-25 16:17:41.928	\N	\N
14	api::dopa-calicut-page.dopa-calicut-page.find	2024-09-25 16:17:41.928	2024-09-25 16:17:41.928	\N	\N
15	api::dopa-kottakkal-campus.dopa-kottakkal-campus.find	2024-09-25 16:17:41.928	2024-09-25 16:17:41.928	\N	\N
16	api::dopa-thrissur-page.dopa-thrissur-page.find	2024-09-25 16:17:41.928	2024-09-25 16:17:41.928	\N	\N
17	api::faculties-page.faculties-page.find	2024-09-25 16:17:41.929	2024-09-25 16:17:41.929	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	4	2	1
5	5	2	1
6	6	2	1
7	7	2	1
8	8	2	2
9	9	2	1
11	11	2	3
12	12	2	4
13	13	2	4
14	14	2	5
15	15	2	5
17	17	2	6
16	16	2	6
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-09-20 16:15:30.388	2024-09-20 16:15:30.388	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-09-20 16:15:30.391	2024-09-25 16:18:40.91	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: dopa_owner
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: about_us_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.about_us_pages_components_id_seq', 1, false);


--
-- Name: about_us_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.about_us_pages_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 184, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 184, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: components_blocks_app_card_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_app_card_rows_components_id_seq', 1, false);


--
-- Name: components_blocks_app_card_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_app_card_rows_id_seq', 1, false);


--
-- Name: components_blocks_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_banners_id_seq', 1, true);


--
-- Name: components_blocks_course_card_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_course_card_rows_components_id_seq', 1, false);


--
-- Name: components_blocks_course_card_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_course_card_rows_id_seq', 1, false);


--
-- Name: components_blocks_course_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_course_sections_id_seq', 9, true);


--
-- Name: components_blocks_directors_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_directors_sections_id_seq', 1, true);


--
-- Name: components_blocks_dopa_updates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_dopa_updates_id_seq', 1, false);


--
-- Name: components_blocks_faculty_card_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_faculty_card_rows_components_id_seq', 1, false);


--
-- Name: components_blocks_faculty_card_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_faculty_card_rows_id_seq', 1, false);


--
-- Name: components_blocks_feature_card_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_feature_card_rows_components_id_seq', 1, false);


--
-- Name: components_blocks_feature_card_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_feature_card_rows_id_seq', 1, false);


--
-- Name: components_blocks_home_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_home_banners_id_seq', 1, true);


--
-- Name: components_blocks_image_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_image_blocks_id_seq', 1, false);


--
-- Name: components_blocks_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_blocks_results_id_seq', 1, true);


--
-- Name: components_elements_app_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_elements_app_cards_id_seq', 1, false);


--
-- Name: components_elements_course_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_elements_course_cards_id_seq', 1, false);


--
-- Name: components_elements_faculty_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_elements_faculty_cards_id_seq', 1, false);


--
-- Name: components_elements_feature_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.components_elements_feature_cards_id_seq', 1, false);


--
-- Name: contact_form_datas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.contact_form_datas_id_seq', 1, false);


--
-- Name: dopa_app_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_app_pages_components_id_seq', 1, false);


--
-- Name: dopa_app_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_app_pages_id_seq', 1, false);


--
-- Name: dopa_calicut_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_calicut_pages_components_id_seq', 1, false);


--
-- Name: dopa_calicut_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_calicut_pages_id_seq', 1, false);


--
-- Name: dopa_kottakkal_campuses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_kottakkal_campuses_components_id_seq', 1, false);


--
-- Name: dopa_kottakkal_campuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_kottakkal_campuses_id_seq', 1, false);


--
-- Name: dopa_thrissur_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_thrissur_pages_components_id_seq', 1, false);


--
-- Name: dopa_thrissur_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.dopa_thrissur_pages_id_seq', 1, false);


--
-- Name: faculties_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.faculties_pages_components_id_seq', 1, false);


--
-- Name: faculties_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.faculties_pages_id_seq', 1, false);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.files_id_seq', 6, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 26, true);


--
-- Name: home_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.home_pages_components_id_seq', 56, true);


--
-- Name: home_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 47, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 3, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 17, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 17, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dopa_owner
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: about_us_pages_components about_us_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages_components
    ADD CONSTRAINT about_us_pages_components_pkey PRIMARY KEY (id);


--
-- Name: about_us_pages about_us_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages
    ADD CONSTRAINT about_us_pages_pkey PRIMARY KEY (id);


--
-- Name: about_us_pages_components about_us_pages_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages_components
    ADD CONSTRAINT about_us_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: components_blocks_app_card_rows_components components_blocks_app_card_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_app_card_rows_components
    ADD CONSTRAINT components_blocks_app_card_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_app_card_rows components_blocks_app_card_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_app_card_rows
    ADD CONSTRAINT components_blocks_app_card_rows_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_app_card_rows_components components_blocks_app_card_rows_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_app_card_rows_components
    ADD CONSTRAINT components_blocks_app_card_rows_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_banners components_blocks_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_banners
    ADD CONSTRAINT components_blocks_banners_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_course_card_rows_components components_blocks_course_card_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_card_rows_components
    ADD CONSTRAINT components_blocks_course_card_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_course_card_rows components_blocks_course_card_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_card_rows
    ADD CONSTRAINT components_blocks_course_card_rows_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_course_card_rows_components components_blocks_course_card_rows_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_card_rows_components
    ADD CONSTRAINT components_blocks_course_card_rows_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_course_sections components_blocks_course_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_sections
    ADD CONSTRAINT components_blocks_course_sections_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_directors_sections components_blocks_directors_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_directors_sections
    ADD CONSTRAINT components_blocks_directors_sections_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_dopa_updates components_blocks_dopa_updates_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_dopa_updates
    ADD CONSTRAINT components_blocks_dopa_updates_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_faculty_card_rows_components components_blocks_faculty_card_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_faculty_card_rows_components
    ADD CONSTRAINT components_blocks_faculty_card_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_faculty_card_rows components_blocks_faculty_card_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_faculty_card_rows
    ADD CONSTRAINT components_blocks_faculty_card_rows_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_faculty_card_rows_components components_blocks_faculty_card_rows_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_faculty_card_rows_components
    ADD CONSTRAINT components_blocks_faculty_card_rows_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_feature_card_rows_components components_blocks_feature_card_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_feature_card_rows_components
    ADD CONSTRAINT components_blocks_feature_card_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_feature_card_rows components_blocks_feature_card_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_feature_card_rows
    ADD CONSTRAINT components_blocks_feature_card_rows_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_feature_card_rows_components components_blocks_feature_card_rows_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_feature_card_rows_components
    ADD CONSTRAINT components_blocks_feature_card_rows_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_home_banners components_blocks_home_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_home_banners
    ADD CONSTRAINT components_blocks_home_banners_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_image_blocks components_blocks_image_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_image_blocks
    ADD CONSTRAINT components_blocks_image_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_results components_blocks_results_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_results
    ADD CONSTRAINT components_blocks_results_pkey PRIMARY KEY (id);


--
-- Name: components_elements_app_cards components_elements_app_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_app_cards
    ADD CONSTRAINT components_elements_app_cards_pkey PRIMARY KEY (id);


--
-- Name: components_elements_course_cards components_elements_course_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_course_cards
    ADD CONSTRAINT components_elements_course_cards_pkey PRIMARY KEY (id);


--
-- Name: components_elements_faculty_cards components_elements_faculty_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_faculty_cards
    ADD CONSTRAINT components_elements_faculty_cards_pkey PRIMARY KEY (id);


--
-- Name: components_elements_feature_cards components_elements_feature_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_elements_feature_cards
    ADD CONSTRAINT components_elements_feature_cards_pkey PRIMARY KEY (id);


--
-- Name: contact_form_datas contact_form_datas_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.contact_form_datas
    ADD CONSTRAINT contact_form_datas_pkey PRIMARY KEY (id);


--
-- Name: dopa_app_pages_components dopa_app_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages_components
    ADD CONSTRAINT dopa_app_pages_components_pkey PRIMARY KEY (id);


--
-- Name: dopa_app_pages dopa_app_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages
    ADD CONSTRAINT dopa_app_pages_pkey PRIMARY KEY (id);


--
-- Name: dopa_app_pages_components dopa_app_pages_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages_components
    ADD CONSTRAINT dopa_app_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: dopa_calicut_pages_components dopa_calicut_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages_components
    ADD CONSTRAINT dopa_calicut_pages_components_pkey PRIMARY KEY (id);


--
-- Name: dopa_calicut_pages dopa_calicut_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages
    ADD CONSTRAINT dopa_calicut_pages_pkey PRIMARY KEY (id);


--
-- Name: dopa_calicut_pages_components dopa_calicut_pages_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages_components
    ADD CONSTRAINT dopa_calicut_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: dopa_kottakkal_campuses_components dopa_kottakkal_campuses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses_components
    ADD CONSTRAINT dopa_kottakkal_campuses_components_pkey PRIMARY KEY (id);


--
-- Name: dopa_kottakkal_campuses dopa_kottakkal_campuses_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses
    ADD CONSTRAINT dopa_kottakkal_campuses_pkey PRIMARY KEY (id);


--
-- Name: dopa_kottakkal_campuses_components dopa_kottakkal_campuses_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses_components
    ADD CONSTRAINT dopa_kottakkal_campuses_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: dopa_thrissur_pages_components dopa_thrissur_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages_components
    ADD CONSTRAINT dopa_thrissur_pages_components_pkey PRIMARY KEY (id);


--
-- Name: dopa_thrissur_pages dopa_thrissur_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages
    ADD CONSTRAINT dopa_thrissur_pages_pkey PRIMARY KEY (id);


--
-- Name: dopa_thrissur_pages_components dopa_thrissur_pages_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages_components
    ADD CONSTRAINT dopa_thrissur_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: faculties_pages_components faculties_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages_components
    ADD CONSTRAINT faculties_pages_components_pkey PRIMARY KEY (id);


--
-- Name: faculties_pages faculties_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages
    ADD CONSTRAINT faculties_pages_pkey PRIMARY KEY (id);


--
-- Name: faculties_pages_components faculties_pages_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages_components
    ADD CONSTRAINT faculties_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: home_pages_components home_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_components_pkey PRIMARY KEY (id);


--
-- Name: home_pages home_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);


--
-- Name: home_pages_components home_pages_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: about_us_pages_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX about_us_pages_component_type_index ON public.about_us_pages_components USING btree (component_type);


--
-- Name: about_us_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX about_us_pages_created_by_id_fk ON public.about_us_pages USING btree (created_by_id);


--
-- Name: about_us_pages_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX about_us_pages_entity_fk ON public.about_us_pages_components USING btree (entity_id);


--
-- Name: about_us_pages_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX about_us_pages_field_index ON public.about_us_pages_components USING btree (field);


--
-- Name: about_us_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX about_us_pages_updated_by_id_fk ON public.about_us_pages USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: components_blocks_app_card_rows_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_app_card_rows_component_type_index ON public.components_blocks_app_card_rows_components USING btree (component_type);


--
-- Name: components_blocks_app_card_rows_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_app_card_rows_entity_fk ON public.components_blocks_app_card_rows_components USING btree (entity_id);


--
-- Name: components_blocks_app_card_rows_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_app_card_rows_field_index ON public.components_blocks_app_card_rows_components USING btree (field);


--
-- Name: components_blocks_course_card_rows_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_course_card_rows_component_type_index ON public.components_blocks_course_card_rows_components USING btree (component_type);


--
-- Name: components_blocks_course_card_rows_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_course_card_rows_entity_fk ON public.components_blocks_course_card_rows_components USING btree (entity_id);


--
-- Name: components_blocks_course_card_rows_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_course_card_rows_field_index ON public.components_blocks_course_card_rows_components USING btree (field);


--
-- Name: components_blocks_faculty_card_rows_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_faculty_card_rows_component_type_index ON public.components_blocks_faculty_card_rows_components USING btree (component_type);


--
-- Name: components_blocks_faculty_card_rows_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_faculty_card_rows_entity_fk ON public.components_blocks_faculty_card_rows_components USING btree (entity_id);


--
-- Name: components_blocks_faculty_card_rows_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_faculty_card_rows_field_index ON public.components_blocks_faculty_card_rows_components USING btree (field);


--
-- Name: components_blocks_feature_card_rows_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_feature_card_rows_component_type_index ON public.components_blocks_feature_card_rows_components USING btree (component_type);


--
-- Name: components_blocks_feature_card_rows_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_feature_card_rows_entity_fk ON public.components_blocks_feature_card_rows_components USING btree (entity_id);


--
-- Name: components_blocks_feature_card_rows_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX components_blocks_feature_card_rows_field_index ON public.components_blocks_feature_card_rows_components USING btree (field);


--
-- Name: contact_form_datas_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX contact_form_datas_created_by_id_fk ON public.contact_form_datas USING btree (created_by_id);


--
-- Name: contact_form_datas_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX contact_form_datas_updated_by_id_fk ON public.contact_form_datas USING btree (updated_by_id);


--
-- Name: dopa_app_pages_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_app_pages_component_type_index ON public.dopa_app_pages_components USING btree (component_type);


--
-- Name: dopa_app_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_app_pages_created_by_id_fk ON public.dopa_app_pages USING btree (created_by_id);


--
-- Name: dopa_app_pages_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_app_pages_entity_fk ON public.dopa_app_pages_components USING btree (entity_id);


--
-- Name: dopa_app_pages_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_app_pages_field_index ON public.dopa_app_pages_components USING btree (field);


--
-- Name: dopa_app_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_app_pages_updated_by_id_fk ON public.dopa_app_pages USING btree (updated_by_id);


--
-- Name: dopa_calicut_pages_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_calicut_pages_component_type_index ON public.dopa_calicut_pages_components USING btree (component_type);


--
-- Name: dopa_calicut_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_calicut_pages_created_by_id_fk ON public.dopa_calicut_pages USING btree (created_by_id);


--
-- Name: dopa_calicut_pages_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_calicut_pages_entity_fk ON public.dopa_calicut_pages_components USING btree (entity_id);


--
-- Name: dopa_calicut_pages_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_calicut_pages_field_index ON public.dopa_calicut_pages_components USING btree (field);


--
-- Name: dopa_calicut_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_calicut_pages_updated_by_id_fk ON public.dopa_calicut_pages USING btree (updated_by_id);


--
-- Name: dopa_kottakkal_campuses_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_kottakkal_campuses_component_type_index ON public.dopa_kottakkal_campuses_components USING btree (component_type);


--
-- Name: dopa_kottakkal_campuses_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_kottakkal_campuses_created_by_id_fk ON public.dopa_kottakkal_campuses USING btree (created_by_id);


--
-- Name: dopa_kottakkal_campuses_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_kottakkal_campuses_entity_fk ON public.dopa_kottakkal_campuses_components USING btree (entity_id);


--
-- Name: dopa_kottakkal_campuses_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_kottakkal_campuses_field_index ON public.dopa_kottakkal_campuses_components USING btree (field);


--
-- Name: dopa_kottakkal_campuses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_kottakkal_campuses_updated_by_id_fk ON public.dopa_kottakkal_campuses USING btree (updated_by_id);


--
-- Name: dopa_thrissur_pages_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_thrissur_pages_component_type_index ON public.dopa_thrissur_pages_components USING btree (component_type);


--
-- Name: dopa_thrissur_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_thrissur_pages_created_by_id_fk ON public.dopa_thrissur_pages USING btree (created_by_id);


--
-- Name: dopa_thrissur_pages_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_thrissur_pages_entity_fk ON public.dopa_thrissur_pages_components USING btree (entity_id);


--
-- Name: dopa_thrissur_pages_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_thrissur_pages_field_index ON public.dopa_thrissur_pages_components USING btree (field);


--
-- Name: dopa_thrissur_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX dopa_thrissur_pages_updated_by_id_fk ON public.dopa_thrissur_pages USING btree (updated_by_id);


--
-- Name: faculties_pages_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX faculties_pages_component_type_index ON public.faculties_pages_components USING btree (component_type);


--
-- Name: faculties_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX faculties_pages_created_by_id_fk ON public.faculties_pages USING btree (created_by_id);


--
-- Name: faculties_pages_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX faculties_pages_entity_fk ON public.faculties_pages_components USING btree (entity_id);


--
-- Name: faculties_pages_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX faculties_pages_field_index ON public.faculties_pages_components USING btree (field);


--
-- Name: faculties_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX faculties_pages_updated_by_id_fk ON public.faculties_pages USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: home_pages_component_type_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX home_pages_component_type_index ON public.home_pages_components USING btree (component_type);


--
-- Name: home_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);


--
-- Name: home_pages_entity_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX home_pages_entity_fk ON public.home_pages_components USING btree (entity_id);


--
-- Name: home_pages_field_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX home_pages_field_index ON public.home_pages_components USING btree (field);


--
-- Name: home_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dopa_owner
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: about_us_pages about_us_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages
    ADD CONSTRAINT about_us_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: about_us_pages_components about_us_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages_components
    ADD CONSTRAINT about_us_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.about_us_pages(id) ON DELETE CASCADE;


--
-- Name: about_us_pages about_us_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.about_us_pages
    ADD CONSTRAINT about_us_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_blocks_app_card_rows_components components_blocks_app_card_rows_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_app_card_rows_components
    ADD CONSTRAINT components_blocks_app_card_rows_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_app_card_rows(id) ON DELETE CASCADE;


--
-- Name: components_blocks_course_card_rows_components components_blocks_course_card_rows_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_course_card_rows_components
    ADD CONSTRAINT components_blocks_course_card_rows_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_course_card_rows(id) ON DELETE CASCADE;


--
-- Name: components_blocks_faculty_card_rows_components components_blocks_faculty_card_rows_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_faculty_card_rows_components
    ADD CONSTRAINT components_blocks_faculty_card_rows_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_faculty_card_rows(id) ON DELETE CASCADE;


--
-- Name: components_blocks_feature_card_rows_components components_blocks_feature_card_rows_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.components_blocks_feature_card_rows_components
    ADD CONSTRAINT components_blocks_feature_card_rows_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_feature_card_rows(id) ON DELETE CASCADE;


--
-- Name: contact_form_datas contact_form_datas_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.contact_form_datas
    ADD CONSTRAINT contact_form_datas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_form_datas contact_form_datas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.contact_form_datas
    ADD CONSTRAINT contact_form_datas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_app_pages dopa_app_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages
    ADD CONSTRAINT dopa_app_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_app_pages_components dopa_app_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages_components
    ADD CONSTRAINT dopa_app_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.dopa_app_pages(id) ON DELETE CASCADE;


--
-- Name: dopa_app_pages dopa_app_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_app_pages
    ADD CONSTRAINT dopa_app_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_calicut_pages dopa_calicut_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages
    ADD CONSTRAINT dopa_calicut_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_calicut_pages_components dopa_calicut_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages_components
    ADD CONSTRAINT dopa_calicut_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.dopa_calicut_pages(id) ON DELETE CASCADE;


--
-- Name: dopa_calicut_pages dopa_calicut_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_calicut_pages
    ADD CONSTRAINT dopa_calicut_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_kottakkal_campuses dopa_kottakkal_campuses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses
    ADD CONSTRAINT dopa_kottakkal_campuses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_kottakkal_campuses_components dopa_kottakkal_campuses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses_components
    ADD CONSTRAINT dopa_kottakkal_campuses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.dopa_kottakkal_campuses(id) ON DELETE CASCADE;


--
-- Name: dopa_kottakkal_campuses dopa_kottakkal_campuses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_kottakkal_campuses
    ADD CONSTRAINT dopa_kottakkal_campuses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_thrissur_pages dopa_thrissur_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages
    ADD CONSTRAINT dopa_thrissur_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dopa_thrissur_pages_components dopa_thrissur_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages_components
    ADD CONSTRAINT dopa_thrissur_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.dopa_thrissur_pages(id) ON DELETE CASCADE;


--
-- Name: dopa_thrissur_pages dopa_thrissur_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.dopa_thrissur_pages
    ADD CONSTRAINT dopa_thrissur_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: faculties_pages faculties_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages
    ADD CONSTRAINT faculties_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: faculties_pages_components faculties_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages_components
    ADD CONSTRAINT faculties_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.faculties_pages(id) ON DELETE CASCADE;


--
-- Name: faculties_pages faculties_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.faculties_pages
    ADD CONSTRAINT faculties_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: home_pages home_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: home_pages_components home_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;


--
-- Name: home_pages home_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dopa_owner
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

