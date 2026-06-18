--
-- PostgreSQL database dump
--

\restrict asVGjbI2E3TMucfGwZXToFDkNs8uLx8D4Wxu66MbhLhrlspbLHqxzggeWlaRdKx

-- Dumped from database version 16.13
-- Dumped by pg_dump version 16.13

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    trial529 character(1)
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial529 character(1)
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    trial529 character(1)
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp(6) without time zone,
    is_superuser smallint NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff smallint NOT NULL,
    is_active smallint NOT NULL,
    date_joined timestamp(6) without time zone NOT NULL,
    trial529 character(1)
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    trial532 character(1)
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial532 character(1)
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: bitacora; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bitacora (
    id_log integer NOT NULL,
    id_usuario integer,
    accion text,
    fecha_accion timestamp without time zone,
    trial532 character(1)
);


--
-- Name: bitacora_id_log_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bitacora_id_log_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bitacora_id_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bitacora_id_log_seq OWNED BY public.bitacora.id_log;


--
-- Name: calificacion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.calificacion (
    id_opinion integer NOT NULL,
    id_res integer,
    id_producto integer,
    id_usuario integer,
    restaurante_califi smallint,
    producto_califi smallint,
    servicio_califi smallint,
    observaciones_califi text,
    trial536 character(1)
);


--
-- Name: calificacion_id_opinion_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.calificacion_id_opinion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calificacion_id_opinion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.calificacion_id_opinion_seq OWNED BY public.calificacion.id_opinion;


--
-- Name: calificaciones_clientes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.calificaciones_clientes (
    id_calificacion integer NOT NULL,
    id_usuario integer,
    id_pedido integer,
    calificacion_comida smallint,
    calificacion_servicio smallint,
    calificacion_ambiente smallint,
    observaciones text,
    fecha_calificacion timestamp without time zone,
    trial536 character(1)
);


--
-- Name: calificaciones_clientes_id_calificacion_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.calificaciones_clientes_id_calificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calificaciones_clientes_id_calificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.calificaciones_clientes_id_calificacion_seq OWNED BY public.calificaciones_clientes.id_calificacion;


--
-- Name: carrito; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carrito (
    id_carrito integer NOT NULL,
    id_usuario integer,
    id_pedido integer,
    subtotal_carrito numeric(10,2),
    cantidad_producto integer,
    trial539 character(1)
);


--
-- Name: carrito_id_carrito_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carrito_id_carrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: carrito_id_carrito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carrito_id_carrito_seq OWNED BY public.carrito.id_carrito;


--
-- Name: categorias; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categorias (
    id_cate integer NOT NULL,
    nombre_cate character varying(100),
    trial532 character(1)
);


--
-- Name: categorias_id_cate_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categorias_id_cate_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categorias_id_cate_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categorias_id_cate_seq OWNED BY public.categorias.id_cate;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp(6) without time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag integer NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    trial539 character(1)
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    trial529 character(1)
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp(6) without time zone NOT NULL,
    trial539 character(1)
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp(6) without time zone NOT NULL,
    trial539 character(1)
);


--
-- Name: empleados_restaurante; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.empleados_restaurante (
    id_empleado_res integer NOT NULL,
    id_usuario integer,
    id_res integer,
    rol_empleado character varying(50),
    trial539 character(1)
);


--
-- Name: empleados_restaurante_id_empleado_res_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empleados_restaurante_id_empleado_res_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: empleados_restaurante_id_empleado_res_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empleados_restaurante_id_empleado_res_seq OWNED BY public.empleados_restaurante.id_empleado_res;


--
-- Name: historial_pedidos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.historial_pedidos (
    id_historial integer NOT NULL,
    id_usuario integer,
    id_restaurante integer,
    total_historial numeric(10,2),
    fecha_historial date,
    trial539 character(1)
);


--
-- Name: historial_pedidos_id_historial_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.historial_pedidos_id_historial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: historial_pedidos_id_historial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.historial_pedidos_id_historial_seq OWNED BY public.historial_pedidos.id_historial;


--
-- Name: mensajes_chat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mensajes_chat (
    id integer NOT NULL,
    remitente character varying(50) NOT NULL,
    destinatario character varying(50) NOT NULL,
    mensaje text NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    trial539 character(1)
);


--
-- Name: mensajes_chat_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mensajes_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mensajes_chat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mensajes_chat_id_seq OWNED BY public.mensajes_chat.id;


--
-- Name: menu; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.menu (
    id_menu integer NOT NULL,
    nombre_menu character varying(300),
    descripcion_menu character varying(300),
    trial532 character(1)
);


--
-- Name: menu_id_menu_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.menu_id_menu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: menu_id_menu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.menu_id_menu_seq OWNED BY public.menu.id_menu;


--
-- Name: mesas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesas (
    id_mesa integer NOT NULL,
    numero_mesa integer,
    capacidad integer,
    id_res integer,
    nombre character varying(120),
    estado character varying(20) DEFAULT 'disponible'::character varying NOT NULL,
    activa smallint DEFAULT 1 NOT NULL,
    id_usuario_actual integer,
    fecha_creacion timestamp(6) without time zone,
    fecha_actualizacion timestamp(6) without time zone,
    asignado_en timestamp(6) without time zone,
    id_pedido_actual integer,
    id_mesero_asignado integer,
    fecha_ocupacion timestamp(6) without time zone,
    fecha_solicitud_pago timestamp(6) without time zone,
    fecha_pago timestamp(6) without time zone,
    fecha_liberacion timestamp(6) without time zone,
    trial539 character(1)
);


--
-- Name: mesas_id_mesa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mesas_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mesas_id_mesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mesas_id_mesa_seq OWNED BY public.mesas.id_mesa;


--
-- Name: metodos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.metodos (
    id_metodo integer NOT NULL,
    nombre_metodo character varying(50),
    trial542 character(1)
);


--
-- Name: metodos_id_metodo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.metodos_id_metodo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: metodos_id_metodo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.metodos_id_metodo_seq OWNED BY public.metodos.id_metodo;


--
-- Name: musica; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.musica (
    id_musica integer NOT NULL,
    nombre_musica character varying(100),
    artista_musica character varying(100),
    duracion_musica numeric(10,2),
    trial542 character(1)
);


--
-- Name: musica_id_musica_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.musica_id_musica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: musica_id_musica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.musica_id_musica_seq OWNED BY public.musica.id_musica;


--
-- Name: notificaciones_clientes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notificaciones_clientes (
    id_notificacion integer NOT NULL,
    id_usuario integer,
    titulo character varying(120) NOT NULL,
    mensaje text NOT NULL,
    tipo character varying(30) NOT NULL,
    leida smallint NOT NULL,
    fecha_envio timestamp(6) without time zone NOT NULL,
    fecha_lectura timestamp(6) without time zone,
    trial542 character(1)
);


--
-- Name: notificaciones_clientes_id_notificacion_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notificaciones_clientes_id_notificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notificaciones_clientes_id_notificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notificaciones_clientes_id_notificacion_seq OWNED BY public.notificaciones_clientes.id_notificacion;


--
-- Name: pagos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pagos (
    id_pago integer NOT NULL,
    id_pedido integer,
    id_metodo integer,
    estado_pago character varying(9),
    trial542 character(1)
);


--
-- Name: pagos_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pagos_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pagos_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pagos_id_pago_seq OWNED BY public.pagos.id_pago;


--
-- Name: pedido_detalle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pedido_detalle (
    id_detalle integer NOT NULL,
    id_pedido integer,
    id_producto bigint,
    cantidad integer,
    precio numeric(10,2),
    trial542 character(1)
);


--
-- Name: pedido_detalle_id_detalle_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pedido_detalle_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pedido_detalle_id_detalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pedido_detalle_id_detalle_seq OWNED BY public.pedido_detalle.id_detalle;


--
-- Name: pedido_encabezado; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pedido_encabezado (
    id_pedido integer NOT NULL,
    id_usuario integer,
    id_restaurante integer,
    tipo_pedido character varying(20) DEFAULT 'restaurante'::character varying NOT NULL,
    mesa_id integer,
    fecha_pedido date,
    total_pedido numeric(10,2),
    estado_pedido character varying(20) DEFAULT 'abierto'::character varying NOT NULL,
    fecha_finalizacion timestamp(6) without time zone,
    trial536 character(1)
);


--
-- Name: pedido_encabezado_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pedido_encabezado_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pedido_encabezado_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pedido_encabezado_id_pedido_seq OWNED BY public.pedido_encabezado.id_pedido;


--
-- Name: permisos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permisos (
    id_permiso integer NOT NULL,
    nombre_permiso character varying(100) NOT NULL,
    descripcion text,
    trial542 character(1)
);


--
-- Name: permisos_id_permiso_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.permisos_id_permiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: permisos_id_permiso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.permisos_id_permiso_seq OWNED BY public.permisos.id_permiso;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(300),
    precio_producto numeric(10,2),
    descripcion_producto character varying(300),
    id_menu integer,
    id_cate integer,
    id_res integer,
    estado character varying(8) DEFAULT 'activo'::character varying,
    trial536 character(1)
);


--
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- Name: reservas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reservas (
    id_reser integer NOT NULL,
    id_usuario integer,
    id_res integer,
    fecha_reser date,
    estado_reser character varying(10),
    hora_reser character varying(5),
    nombre_evento character varying(120),
    detalle_evento character varying(300),
    mesa_id integer,
    trial542 character(1)
);


--
-- Name: reservas_id_reser_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reservas_id_reser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reservas_id_reser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reservas_id_reser_seq OWNED BY public.reservas.id_reser;


--
-- Name: restaurantes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.restaurantes (
    id_res integer NOT NULL,
    nombre_res character varying(100),
    direccion_res character varying(120),
    telefono_res character varying(20),
    id_menu integer,
    trial532 character(1)
);


--
-- Name: restaurantes_id_res_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.restaurantes_id_res_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: restaurantes_id_res_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.restaurantes_id_res_seq OWNED BY public.restaurantes.id_res;


--
-- Name: rol_permisos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rol_permisos (
    id_rol integer NOT NULL,
    id_permiso integer NOT NULL,
    trial542 character(1)
);


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roles (
    id_rol integer NOT NULL,
    nombre_rol character varying(50) NOT NULL,
    trial532 character(1)
);


--
-- Name: roles_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.roles_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: roles_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.roles_id_rol_seq OWNED BY public.roles.id_rol;


--
-- Name: solicitud_mesero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.solicitud_mesero (
    id_solicitud_mesero integer NOT NULL,
    id_usuario integer,
    id_res integer,
    id_mesa integer,
    fecha_solicitud timestamp without time zone,
    estado_solicitud character varying(9),
    trial542 character(1)
);


--
-- Name: solicitud_mesero_id_solicitud_mesero_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.solicitud_mesero_id_solicitud_mesero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: solicitud_mesero_id_solicitud_mesero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.solicitud_mesero_id_solicitud_mesero_seq OWNED BY public.solicitud_mesero.id_solicitud_mesero;


--
-- Name: solicitud_musica; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.solicitud_musica (
    id_solicitud integer NOT NULL,
    id_usuario integer,
    id_musica integer,
    id_res integer,
    estado_solicitud character varying(20),
    mesa_id integer,
    cancion character varying(150),
    artista character varying(150),
    posicion_orden integer,
    duracion_segundos integer,
    fecha_solicitud timestamp(6) without time zone,
    fecha_inicio_reproduccion timestamp(6) without time zone,
    fecha_finalizacion timestamp(6) without time zone,
    eliminado_por_id integer,
    motivo_eliminacion text,
    trial545 character(1)
);


--
-- Name: solicitud_musica_id_solicitud_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.solicitud_musica_id_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: solicitud_musica_id_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.solicitud_musica_id_solicitud_seq OWNED BY public.solicitud_musica.id_solicitud;


--
-- Name: solicitudes_pago; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.solicitudes_pago (
    id_solicitud_pago integer NOT NULL,
    id_pedido integer,
    id_usuario integer,
    mesa_id integer,
    metodo_pago character varying(40) NOT NULL,
    estado character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    id_mesero_atendio integer,
    fecha_creacion timestamp(6) without time zone NOT NULL,
    fecha_actualizacion timestamp(6) without time zone NOT NULL,
    finalizado_en timestamp(6) without time zone,
    notas text,
    trial545 character(1)
);


--
-- Name: solicitudes_pago_id_solicitud_pago_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.solicitudes_pago_id_solicitud_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: solicitudes_pago_id_solicitud_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.solicitudes_pago_id_solicitud_pago_seq OWNED BY public.solicitudes_pago.id_solicitud_pago;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    correo character varying(100),
    clave character varying(255),
    tipo_usuario character varying(13),
    id_rol integer,
    estado character varying(20) DEFAULT 'Activo'::character varying,
    telefono character varying(20),
    trial532 character(1)
);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: bitacora id_log; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bitacora ALTER COLUMN id_log SET DEFAULT nextval('public.bitacora_id_log_seq'::regclass);


--
-- Name: calificacion id_opinion; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificacion ALTER COLUMN id_opinion SET DEFAULT nextval('public.calificacion_id_opinion_seq'::regclass);


--
-- Name: calificaciones_clientes id_calificacion; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificaciones_clientes ALTER COLUMN id_calificacion SET DEFAULT nextval('public.calificaciones_clientes_id_calificacion_seq'::regclass);


--
-- Name: carrito id_carrito; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrito ALTER COLUMN id_carrito SET DEFAULT nextval('public.carrito_id_carrito_seq'::regclass);


--
-- Name: categorias id_cate; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id_cate SET DEFAULT nextval('public.categorias_id_cate_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: empleados_restaurante id_empleado_res; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleados_restaurante ALTER COLUMN id_empleado_res SET DEFAULT nextval('public.empleados_restaurante_id_empleado_res_seq'::regclass);


--
-- Name: historial_pedidos id_historial; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historial_pedidos ALTER COLUMN id_historial SET DEFAULT nextval('public.historial_pedidos_id_historial_seq'::regclass);


--
-- Name: mensajes_chat id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mensajes_chat ALTER COLUMN id SET DEFAULT nextval('public.mensajes_chat_id_seq'::regclass);


--
-- Name: menu id_menu; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menu ALTER COLUMN id_menu SET DEFAULT nextval('public.menu_id_menu_seq'::regclass);


--
-- Name: mesas id_mesa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesas ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesas_id_mesa_seq'::regclass);


--
-- Name: metodos id_metodo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.metodos ALTER COLUMN id_metodo SET DEFAULT nextval('public.metodos_id_metodo_seq'::regclass);


--
-- Name: musica id_musica; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.musica ALTER COLUMN id_musica SET DEFAULT nextval('public.musica_id_musica_seq'::regclass);


--
-- Name: notificaciones_clientes id_notificacion; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notificaciones_clientes ALTER COLUMN id_notificacion SET DEFAULT nextval('public.notificaciones_clientes_id_notificacion_seq'::regclass);


--
-- Name: pagos id_pago; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos ALTER COLUMN id_pago SET DEFAULT nextval('public.pagos_id_pago_seq'::regclass);


--
-- Name: pedido_detalle id_detalle; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_detalle ALTER COLUMN id_detalle SET DEFAULT nextval('public.pedido_detalle_id_detalle_seq'::regclass);


--
-- Name: pedido_encabezado id_pedido; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_encabezado ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedido_encabezado_id_pedido_seq'::regclass);


--
-- Name: permisos id_permiso; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permisos ALTER COLUMN id_permiso SET DEFAULT nextval('public.permisos_id_permiso_seq'::regclass);


--
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- Name: reservas id_reser; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas ALTER COLUMN id_reser SET DEFAULT nextval('public.reservas_id_reser_seq'::regclass);


--
-- Name: restaurantes id_res; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.restaurantes ALTER COLUMN id_res SET DEFAULT nextval('public.restaurantes_id_res_seq'::regclass);


--
-- Name: roles id_rol; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles ALTER COLUMN id_rol SET DEFAULT nextval('public.roles_id_rol_seq'::regclass);


--
-- Name: solicitud_mesero id_solicitud_mesero; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_mesero ALTER COLUMN id_solicitud_mesero SET DEFAULT nextval('public.solicitud_mesero_id_solicitud_mesero_seq'::regclass);


--
-- Name: solicitud_musica id_solicitud; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_musica ALTER COLUMN id_solicitud SET DEFAULT nextval('public.solicitud_musica_id_solicitud_seq'::regclass);


--
-- Name: solicitudes_pago id_solicitud_pago; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitudes_pago ALTER COLUMN id_solicitud_pago SET DEFAULT nextval('public.solicitudes_pago_id_solicitud_pago_seq'::regclass);


--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name, trial529) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id, trial529) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename, trial529) FROM stdin;
1	Can add log entry	1	add_logentry	T
2	Can change log entry	1	change_logentry	T
3	Can delete log entry	1	delete_logentry	T
4	Can view log entry	1	view_logentry	T
5	Can add permission	2	add_permission	T
6	Can change permission	2	change_permission	T
7	Can delete permission	2	delete_permission	T
8	Can view permission	2	view_permission	T
9	Can add group	3	add_group	T
10	Can change group	3	change_group	T
11	Can delete group	3	delete_group	T
12	Can view group	3	view_group	T
13	Can add user	4	add_user	T
14	Can change user	4	change_user	T
15	Can delete user	4	delete_user	T
16	Can view user	4	view_user	T
17	Can add content type	5	add_contenttype	T
18	Can change content type	5	change_contenttype	T
19	Can delete content type	5	delete_contenttype	T
20	Can view content type	5	view_contenttype	T
21	Can add session	6	add_session	T
22	Can change session	6	change_session	T
23	Can delete session	6	delete_session	T
24	Can view session	6	view_session	T
25	Can add Rol	7	add_rol	T
26	Can change Rol	7	change_rol	T
27	Can delete Rol	7	delete_rol	T
28	Can view Rol	7	view_rol	T
29	Can add Permiso	8	add_permiso	T
30	Can change Permiso	8	change_permiso	T
31	Can delete Permiso	8	delete_permiso	T
32	Can view Permiso	8	view_permiso	T
33	Can add rol permiso	9	add_rolpermiso	T
34	Can change rol permiso	9	change_rolpermiso	T
35	Can delete rol permiso	9	delete_rolpermiso	T
36	Can view rol permiso	9	view_rolpermiso	T
37	Can add Usuario	10	add_usuario	T
38	Can change Usuario	10	change_usuario	T
39	Can delete Usuario	10	delete_usuario	T
40	Can view Usuario	10	view_usuario	T
41	Can add Bitácora	11	add_bitacora	T
42	Can change Bitácora	11	change_bitacora	T
43	Can delete Bitácora	11	delete_bitacora	T
44	Can view Bitácora	11	view_bitacora	T
45	Can add Menú	12	add_menu	T
46	Can change Menú	12	change_menu	T
47	Can delete Menú	12	delete_menu	T
48	Can view Menú	12	view_menu	T
49	Can add Categoría	13	add_categoria	T
50	Can change Categoría	13	change_categoria	T
51	Can delete Categoría	13	delete_categoria	T
52	Can view Categoría	13	view_categoria	T
53	Can add Producto	14	add_producto	T
54	Can change Producto	14	change_producto	T
55	Can delete Producto	14	delete_producto	T
56	Can view Producto	14	view_producto	T
57	Can add Música	15	add_musica	T
58	Can change Música	15	change_musica	T
59	Can delete Música	15	delete_musica	T
60	Can view Música	15	view_musica	T
61	Can add Solicitud de Música	16	add_solicitudmusica	T
62	Can change Solicitud de Música	16	change_solicitudmusica	T
63	Can delete Solicitud de Música	16	delete_solicitudmusica	T
64	Can view Solicitud de Música	16	view_solicitudmusica	T
65	Can add Reserva	17	add_reserva	T
66	Can change Reserva	17	change_reserva	T
67	Can delete Reserva	17	delete_reserva	T
68	Can view Reserva	17	view_reserva	T
69	Can add Pedido	18	add_pedidoencabezado	T
70	Can change Pedido	18	change_pedidoencabezado	T
71	Can delete Pedido	18	delete_pedidoencabezado	T
72	Can view Pedido	18	view_pedidoencabezado	T
73	Can add Detalle de Pedido	19	add_pedidodetalle	T
74	Can change Detalle de Pedido	19	change_pedidodetalle	T
75	Can delete Detalle de Pedido	19	delete_pedidodetalle	T
76	Can view Detalle de Pedido	19	view_pedidodetalle	T
77	Can add Mensaje	20	add_mensajechat	T
78	Can change Mensaje	20	change_mensajechat	T
79	Can delete Mensaje	20	delete_mensajechat	T
80	Can view Mensaje	20	view_mensajechat	T
81	Can add Calificacion	21	add_calificacioncliente	T
82	Can change Calificacion	21	change_calificacioncliente	T
83	Can delete Calificacion	21	delete_calificacioncliente	T
84	Can view Calificacion	21	view_calificacioncliente	T
85	Can add Solicitud de pago	22	add_solicitudpago	\N
86	Can change Solicitud de pago	22	change_solicitudpago	\N
87	Can delete Solicitud de pago	22	delete_solicitudpago	\N
88	Can view Solicitud de pago	22	view_solicitudpago	\N
89	Can add Notificacion	23	add_notificacioncliente	\N
90	Can change Notificacion	23	change_notificacioncliente	\N
91	Can delete Notificacion	23	delete_notificacioncliente	\N
92	Can view Notificacion	23	view_notificacioncliente	\N
93	Can add Mesa	24	add_mesa	\N
94	Can change Mesa	24	change_mesa	\N
95	Can delete Mesa	24	delete_mesa	\N
96	Can view Mesa	24	view_mesa	\N
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, trial529) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id, trial532) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id, trial532) FROM stdin;
\.


--
-- Data for Name: bitacora; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bitacora (id_log, id_usuario, accion, fecha_accion, trial532) FROM stdin;
1	7	estado inactivo a juan martinez	2025-12-09 20:21:30	T
4	7	estado inactivo a juan martinez	2025-12-09 20:21:55	T
5	203	Creacion de usuario Pablo  Vela.	2026-03-22 18:02:40	T
6	203	Cierre de sesion del usuario Juanito.	2026-03-22 18:16:41	T
7	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-22 18:18:29	T
8	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-22 19:42:04	T
9	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-22 19:42:50	T
10	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-22 20:42:14	T
11	203	Cierre de sesion del usuario Juanito.	2026-03-22 20:42:50	T
12	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-23 17:22:20	T
13	203	Creacion de menu menu especial.	2026-03-23 17:24:50	T
14	203	Actualizacion de menu menu especial de la casa.	2026-03-23 17:25:12	T
15	203	Eliminacion de menu menu especial de la casa.	2026-03-23 17:25:16	T
16	203	Creacion de menu menu san juan especial.	2026-03-23 17:33:23	T
17	203	Actualizacion de menu menu san juan especial.	2026-03-23 17:33:46	T
18	203	Eliminacion de menu menu san juan especial.	2026-03-23 17:33:56	T
19	203	Cierre de sesion del usuario Juanito.	2026-03-23 17:38:47	T
20	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-23 17:40:47	T
21	203	Cierre de sesion del usuario Juanito.	2026-03-23 17:40:50	T
22	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-24 17:13:15	T
23	\N	Cierre de sesion del usuario Usuario.	2026-03-24 19:01:35	T
24	203	Inicio de sesion del usuario Juanito Garcia.	2026-03-25 15:43:43	T
25	203	Actualizacion de perfil del usuario Andres Samta Juana  Garcia.	2026-03-25 15:46:45	T
26	203	Actualizacion de usuario Andres Samta Juana  Garcia.	2026-03-25 15:47:14	T
27	203	Inicio de sesion del usuario Andres Samta Juana  Garcia.	2026-03-25 16:18:25	T
28	203	Inicio de sesion del usuario Andres Samta Juana  Garcia.	2026-03-25 19:08:15	T
29	203	Actualizacion de menu Brunch.	2026-03-25 19:13:57	T
30	203	Actualizacion de menu Brunch.	2026-03-25 19:14:17	T
31	203	Creacion de cancion Ordinary Girl de Hannah Montana.	2026-03-25 19:14:58	T
32	203	Actualizacion de perfil del usuario Andres Santa Juana  Garcia.	2026-03-25 19:23:10	T
33	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-25 22:58:52	T
34	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-27 17:18:22	T
35	203	Cambio de estado del usuario Camila Torres a Activo.	2026-03-27 17:20:58	T
36	203	Cambio de estado del usuario Paula Ramirez Torres a Inactivo.	2026-03-27 17:34:10	T
37	203	Creacion de usuario tipo mesero papitas bbq.	2026-03-27 17:52:43	T
38	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-27 18:30:01	T
39	203	Actualizacion manual del registro de bitacora 11.	2026-03-27 18:41:15	T
40	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-27 19:28:09	T
41	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-27 19:42:59	T
42	203	Creacion de usuario tipo mesero Jaime  Garzon.	2026-03-27 19:45:34	T
43	203	Eliminacion de cancion Mi gente.	2026-03-27 19:47:35	T
44	203	Eliminacion de cancion Bella traición.	2026-03-27 19:47:44	T
45	203	Actualizacion de evento 4 para Fiesta en la fecha 2026-04-06 a las 14:00 con estado activa.	2026-03-27 19:49:15	T
46	203	Importacion masiva de 20 menus desde archivo Excel.	2026-03-27 20:20:43	T
47	203	Importacion masiva de 20 menus desde archivo Excel.	2026-03-27 20:27:27	T
48	203	Importacion masiva de 20 menus desde archivo Excel.	2026-03-27 20:31:31	T
49	203	Importacion masiva de 20 menus desde archivo Excel.	2026-03-27 20:35:19	T
50	203	Importacion masiva de 20 menus desde archivo Excel.	2026-03-27 20:40:58	T
51	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-27 20:44:49	T
52	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-27 21:41:04	T
53	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-27 22:51:33	T
54	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-28 01:45:00	T
55	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-28 02:44:46	T
56	200	Inicio de sesion del usuario sebastian garcia.	2026-03-28 03:09:21	T
57	200	Cierre de sesion del usuario sebastian.	2026-03-28 03:10:07	T
58	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-29 16:46:34	T
59	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-29 16:47:30	T
60	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-29 17:13:00	T
61	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-29 17:29:47	T
62	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-29 19:24:56	T
63	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 14:40:23	T
64	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-31 14:44:42	T
65	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 15:46:33	T
66	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 15:48:00	T
67	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 15:58:37	T
68	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-31 16:03:06	T
69	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 16:05:08	T
70	203	Importacion masiva de 20 menus desde archivo Excel.	2026-03-31 16:44:33	T
71	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-31 16:45:13	T
72	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 17:05:10	T
73	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 17:47:20	T
74	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-31 18:00:40	T
75	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 18:03:21	T
76	203	Cierre de sesion del usuario Andres Santa Juana .	2026-03-31 18:51:12	T
77	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-03-31 18:51:39	T
78	\N	Cierre de sesion del usuario Usuario.	2026-04-02 03:46:28	T
79	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-02 03:46:52	T
80	203	Creacion de menu menu especial y unico especial.	2026-04-02 03:51:39	T
81	203	Eliminacion de menu menu especial y unico especial.	2026-04-02 03:51:59	T
82	203	Creacion de producto Huevos a la especial florentina.	2026-04-02 04:00:03	T
83	203	Eliminacion de producto Huevos a la especial florentina.	2026-04-02 04:02:05	T
84	203	Creacion de producto huevos a la florentina.	2026-04-02 04:03:49	T
85	203	Eliminacion de producto Producto prueba.	2026-04-02 04:04:15	T
86	203	Eliminacion de producto huevos a la florentina.	2026-04-02 04:04:23	T
87	203	Creacion de cancion all or nothing de glee.	2026-04-02 04:07:18	T
88	203	Eliminacion de cancion all or nothing.	2026-04-02 04:07:36	T
89	203	Creacion de evento para Boda del Verano el 2026-07-24	2026-04-02 04:10:16	T
90	203	Cancelacion o eliminacion de evento Boda del Verano.	2026-04-02 04:10:43	T
91	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-02 04:25:45	T
92	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-02 04:30:45	T
93	203	Creacion de usuario tipo mesero Daniela  Gaitan.	2026-04-02 04:31:23	T
94	203	Cambio de estado del usuario Daniela  Gaitan a Inactivo.	2026-04-02 04:31:37	T
95	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-02 04:51:57	T
96	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-04 01:17:46	T
97	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-05 00:56:16	T
98	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-05 00:58:43	T
99	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 16:40:31	T
100	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 16:47:38	T
101	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 16:47:39	T
102	203	Importacion masiva de 20 canciones desde archivo Excel.	2026-04-06 17:32:55	T
103	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-06 17:42:14	T
104	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 18:26:03	T
105	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 18:43:55	T
106	203	Creacion de usuario tipo mesero Antonio Torres.	2026-04-06 18:45:35	T
107	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 20:03:48	T
108	203	Cambio de estado del usuario Paula Ramirez Torres a Activo.	2026-04-06 20:04:26	T
109	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-06 20:54:09	T
110	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 20:54:44	T
111	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-06 20:54:51	T
112	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 20:56:00	T
113	203	Importacion masiva de 20 canciones desde archivo Excel.	2026-04-06 20:56:26	T
114	203	Eliminacion de menu Café Premium.	2026-04-06 21:30:40	T
115	203	Eliminacion de menu Té Especial.	2026-04-06 21:30:46	T
116	\N	Cierre de sesion del usuario Usuario.	2026-04-06 22:10:46	T
117	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-06 22:16:12	T
118	203	Importacion masiva de 20 canciones desde archivo Excel.	2026-04-06 22:18:59	T
119	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-10 16:54:53	T
120	203	Envio de notificacion 'Santa Juana Gastrobar tiene algo preparado para ti…' al cliente Andres Conde.	2026-04-10 17:38:08	T
121	200	Inicio de sesion del usuario sebastian garcia.	2026-04-10 17:57:33	T
122	200	Cierre de sesion del usuario sebastian.	2026-04-10 17:58:09	T
123	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-10 17:58:44	T
124	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-11 22:01:58	T
125	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-13 15:48:43	T
126	203	Creacion de usuario tipo mesero Sebastian Garcia.	2026-04-13 16:38:17	T
127	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-13 19:50:09	T
128	\N	Asignacion de mesa 1 a usuario 207.	2026-04-13 19:52:26	T
129	203	Ingreso al modulo Mesas en vivo.	2026-04-13 20:03:19	T
130	203	Ingreso al modulo Mesas en vivo.	2026-04-13 20:03:46	T
131	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-24 20:49:26	T
132	203	Ingreso al modulo Mesas en vivo.	2026-04-24 20:57:02	T
133	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-27 12:51:24	T
134	203	Ingreso al modulo Mesas.	2026-04-27 12:51:36	T
135	203	Ingreso al modulo Mesas.	2026-04-27 12:51:45	T
136	203	Ingreso al modulo Mesas.	2026-04-27 12:52:05	T
137	2	Ingreso al modulo Mesas.	2026-04-27 12:53:32	T
138	203	Ingreso al modulo Mesas.	2026-04-27 12:54:20	T
139	203	Ingreso al modulo Mesas.	2026-04-27 13:50:32	T
140	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-27 13:51:47	T
141	203	Importacion masiva de 20 canciones desde archivo Excel.	2026-04-27 13:51:59	T
142	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 17:24:05	T
143	203	Ingreso al modulo Mesas.	2026-04-28 17:24:08	T
144	\N	Asignacion de mesa 1 a usuario 207.	2026-04-28 17:34:37	T
145	203	Ingreso al modulo Mesas.	2026-04-28 17:36:29	T
146	203	Actualizacion de estado de mesa 1 a pendiente_pago.	2026-04-28 17:37:55	T
147	203	Ingreso al modulo Mesas.	2026-04-28 17:38:10	T
148	203	Actualizacion de estado de mesa 1 a pendiente_pago.	2026-04-28 17:38:19	T
149	203	Actualizacion de estado de mesa 1 a pendiente_pago.	2026-04-28 17:38:36	T
150	203	Actualizacion de estado de mesa 1 a pendiente_pago.	2026-04-28 17:38:38	T
151	203	Actualizacion de estado de mesa 1 a pendiente_pago.	2026-04-28 17:38:40	T
152	203	Ingreso al modulo Mesas.	2026-04-28 17:38:42	T
153	215	Solicitud de pago 1 marcada como atendida para Mesa 1.	2026-04-28 17:40:51	T
154	215	Solicitud de pago 1 marcada como finalizada para Mesa 1.	2026-04-28 17:40:55	T
155	203	Ingreso al modulo Mesas.	2026-04-28 17:41:05	T
156	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:41:17	T
157	203	Ingreso al modulo Mesas.	2026-04-28 17:41:23	T
158	203	Ingreso al modulo Mesas.	2026-04-28 17:41:24	T
159	203	Ingreso al modulo Mesas.	2026-04-28 17:41:25	T
160	203	Ingreso al modulo Mesas.	2026-04-28 17:41:26	T
161	203	Ingreso al modulo Mesas.	2026-04-28 17:41:26	T
162	203	Ingreso al modulo Mesas.	2026-04-28 17:41:27	T
163	203	Ingreso al modulo Mesas.	2026-04-28 17:41:27	T
164	203	Ingreso al modulo Mesas.	2026-04-28 17:41:27	T
165	203	Ingreso al modulo Mesas.	2026-04-28 17:41:27	T
166	203	Ingreso al modulo Mesas.	2026-04-28 17:41:29	T
167	203	Ingreso al modulo Mesas.	2026-04-28 17:41:29	T
168	203	Ingreso al modulo Mesas.	2026-04-28 17:41:33	T
169	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:41:45	T
170	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:41:47	T
171	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:41:48	T
172	203	Ingreso al modulo Mesas.	2026-04-28 17:42:51	T
173	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:42:59	T
174	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:43:01	T
175	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:43:01	T
176	203	Actualizacion de estado de mesa 1 a disponible.	2026-04-28 17:43:02	T
177	203	Ingreso al modulo Mesas.	2026-04-28 17:43:39	T
178	218	Pago confirmado para mesa 6.	2026-04-28 18:20:21	T
179	203	Ingreso al modulo Mesas.	2026-04-28 18:23:53	T
180	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 18:24:20	T
181	203	Ingreso al modulo Mesas.	2026-04-28 18:24:22	T
182	203	Ingreso al modulo Mesas.	2026-04-28 18:24:41	T
183	203	Ingreso al modulo Mesas.	2026-04-28 18:24:44	T
184	203	Liberacion de mesa 6.	2026-04-28 18:25:12	T
185	203	Ingreso al modulo Mesas.	2026-04-28 18:25:16	T
186	\N	Asignacion de mesa 1 a usuario 207.	2026-04-28 18:27:59	T
187	203	Ingreso al modulo Mesas.	2026-04-28 18:28:31	T
188	203	Liberacion de mesa 1.	2026-04-28 18:29:07	T
189	\N	Asignacion de mesa 2 a usuario 207.	2026-04-28 18:29:13	T
190	203	Ingreso al modulo Mesas.	2026-04-28 18:29:38	T
191	203	Liberacion de mesa 1.	2026-04-28 18:31:57	T
192	203	Liberacion de mesa 1.	2026-04-28 18:31:59	T
193	203	Ingreso al modulo Mesas.	2026-04-28 18:32:13	T
194	203	Liberacion de mesa 1.	2026-04-28 18:32:28	T
195	203	Liberacion de mesa 1.	2026-04-28 18:32:29	T
196	203	Liberacion de mesa 1.	2026-04-28 18:32:29	T
197	203	Ingreso al modulo Mesas.	2026-04-28 18:32:31	T
198	203	Reactivacion de mesa 1.	2026-04-28 18:32:35	T
199	203	Reactivacion de mesa 1.	2026-04-28 18:32:36	T
200	203	Bloqueo de mesa 1.	2026-04-28 18:32:38	T
201	203	Reactivacion de mesa 1.	2026-04-28 18:32:41	T
202	\N	Pago confirmado para mesa 2.	2026-04-28 18:33:43	T
203	203	Ingreso al modulo Mesas.	2026-04-28 18:33:48	T
204	203	Liberacion de mesa 2.	2026-04-28 18:33:53	T
205	203	Reactivacion de mesa 2.	2026-04-28 18:34:04	T
206	203	Liberacion de mesa 2.	2026-04-28 18:34:05	T
207	\N	Asignacion de mesa 2 a usuario 207.	2026-04-28 18:35:52	T
208	203	Ingreso al modulo Mesas.	2026-04-28 19:02:53	T
209	203	Liberacion de mesa 1.	2026-04-28 19:03:02	T
210	203	Liberacion de mesa 2.	2026-04-28 19:03:03	T
211	\N	Asignacion de mesa 4 a usuario 207.	2026-04-28 19:03:15	T
212	203	Ingreso al modulo Mesas.	2026-04-28 19:18:13	T
213	203	Ingreso al modulo Mesas.	2026-04-28 19:18:41	T
214	\N	Asignacion de mesa 5 a usuario 207.	2026-04-28 19:22:28	T
215	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 19:24:31	T
216	\N	Cierre de sesion del usuario Usuario.	2026-04-28 20:26:30	T
217	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 20:27:12	T
218	\N	Asignacion de mesa 6 a usuario 207.	2026-04-28 20:34:42	T
219	203	Ingreso al modulo Mesas.	2026-04-28 20:34:48	T
220	203	Ingreso al modulo Mesas.	2026-04-28 20:35:42	T
221	203	Ingreso al modulo Mesas.	2026-04-28 20:36:04	T
222	203	Ingreso al modulo Mesas.	2026-04-28 20:37:13	T
223	\N	Asignacion de mesa 7 a usuario 207.	2026-04-28 20:37:21	T
224	203	Ingreso al modulo Mesas.	2026-04-28 20:37:44	T
225	203	Solicitud musical 30 marcada como reproducida.	2026-04-28 20:38:30	T
226	203	Solicitud musical 30 marcada como reproducida.	2026-04-28 20:38:31	T
227	203	Eliminacion logica de solicitud musical 29.	2026-04-28 20:38:34	T
228	203	Eliminacion logica de solicitud musical 30.	2026-04-28 20:38:35	T
229	203	Solicitud musical 30 marcada como reproducida.	2026-04-28 20:38:38	T
230	203	Solicitud musical 18 marcada como reproducida.	2026-04-28 20:41:06	T
231	203	Ingreso al modulo Mesas.	2026-04-28 20:41:11	T
232	203	Ingreso al modulo Mesas.	2026-04-28 20:41:12	T
233	203	Liberacion de mesa 7.	2026-04-28 20:43:30	T
234	203	Ingreso al modulo Mesas.	2026-04-28 20:43:54	T
235	203	Eliminacion logica de solicitud musical 30.	2026-04-28 20:44:03	T
236	203	Eliminacion logica de solicitud musical 30.	2026-04-28 20:44:04	T
237	203	Eliminacion logica de solicitud musical 30.	2026-04-28 20:44:05	T
238	203	Solicitud musical 22 marcada como reproducida.	2026-04-28 20:44:08	T
239	203	Eliminacion logica de solicitud musical 23.	2026-04-28 20:44:11	T
240	203	Eliminacion logica de solicitud musical 23.	2026-04-28 20:44:11	T
241	203	Eliminacion logica de solicitud musical 23.	2026-04-28 20:44:11	T
242	\N	Asignacion de mesa 7 a usuario 207.	2026-04-28 20:44:35	T
243	203	Ingreso al modulo Mesas.	2026-04-28 20:45:02	T
244	203	Solicitud musical 31 marcada como reproducida.	2026-04-28 20:46:25	T
245	203	Eliminacion logica de solicitud musical 31.	2026-04-28 20:46:29	T
246	203	Ingreso al modulo Mesas.	2026-04-28 20:48:31	T
247	203	Liberacion de mesa 7.	2026-04-28 20:48:38	T
248	203	Liberacion de mesa 7.	2026-04-28 20:48:41	T
249	203	Liberacion de mesa 7.	2026-04-28 20:48:42	T
250	\N	Asignacion de mesa 2 a usuario 207.	2026-04-28 20:48:50	T
251	203	Ingreso al modulo Mesas.	2026-04-28 20:49:15	T
252	203	Ingreso al modulo Mesas.	2026-04-28 20:56:16	T
253	203	Liberacion de mesa 2.	2026-04-28 20:56:24	T
254	203	Liberacion de mesa 2.	2026-04-28 20:57:29	T
255	203	Ingreso al modulo Mesas.	2026-04-28 20:57:34	T
256	\N	Asignacion de mesa 3 a usuario 207.	2026-04-28 20:58:18	T
257	203	Ingreso al modulo Mesas.	2026-04-28 20:58:37	T
258	203	Liberacion de mesa 3.	2026-04-28 20:58:47	T
259	\N	Asignacion de mesa 3 a usuario 207.	2026-04-28 20:58:59	T
260	203	Ingreso al modulo Mesas.	2026-04-28 20:59:09	T
261	203	Liberacion de mesa 3.	2026-04-28 20:59:19	T
262	\N	Asignacion de mesa 2 a usuario 207.	2026-04-28 20:59:27	T
263	203	Ingreso al modulo Mesas.	2026-04-28 21:00:13	T
264	203	Ingreso al modulo Mesas.	2026-04-28 21:01:50	T
265	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-28 21:01:53	T
266	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 21:07:56	T
267	203	Solicitud musical 32 marcada como reproducida.	2026-04-28 21:08:01	T
268	203	Eliminacion logica de solicitud musical 28.	2026-04-28 21:08:06	T
269	203	Eliminacion logica de solicitud musical 26.	2026-04-28 21:08:06	T
270	203	Solicitud musical 27 marcada como reproducida.	2026-04-28 21:08:07	T
271	203	Solicitud musical 25 marcada como reproducida.	2026-04-28 21:08:11	T
272	203	Eliminacion logica de solicitud musical 27.	2026-04-28 21:08:12	T
273	203	Solicitud musical 24 marcada como reproducida.	2026-04-28 21:08:22	T
274	203	Solicitud musical 21 marcada como reproducida.	2026-04-28 21:08:26	T
275	203	Eliminacion logica de solicitud musical 21.	2026-04-28 21:08:27	T
276	203	Solicitud musical 19 marcada como reproducida.	2026-04-28 21:08:31	T
277	203	Eliminacion logica de solicitud musical 20.	2026-04-28 21:08:38	T
278	203	Solicitud musical 17 marcada como reproducida.	2026-04-28 21:08:45	T
279	203	Eliminacion logica de solicitud musical 17.	2026-04-28 21:09:00	T
280	203	Eliminacion logica de solicitud musical 5.	2026-04-28 21:09:04	T
281	203	Ingreso al modulo Mesas.	2026-04-28 21:09:12	T
282	203	Ingreso al modulo Mesas.	2026-04-28 21:11:27	T
283	203	Liberacion manual de mesa 2.	2026-04-28 21:11:30	T
284	\N	Asignacion de mesa 2 a usuario 207.	2026-04-28 21:11:36	T
285	203	Liberacion manual de mesa 99.	2026-04-28 21:11:56	T
286	203	Actualizacion de estado de mesa 2 a en_limpieza.	2026-04-28 21:15:42	T
287	203	Liberacion manual de mesa 2.	2026-04-28 21:15:45	T
288	203	Reactivacion de mesa 2.	2026-04-28 21:15:46	T
289	203	Reactivacion de mesa 2.	2026-04-28 21:15:48	T
290	203	Ingreso al modulo Mesas.	2026-04-28 21:16:11	T
291	203	Ingreso al modulo Mesas.	2026-04-28 21:17:35	T
292	203	Ingreso al modulo Mesas.	2026-04-28 21:24:59	T
293	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-28 21:25:37	T
294	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 21:31:04	T
295	203	Ingreso al modulo Mesas.	2026-04-28 21:31:10	T
296	\N	Asignacion de mesa 6 a usuario 207.	2026-04-28 21:34:41	T
297	215	Llamado 56 marcado como atendido para Mesa 6.	2026-04-28 21:35:17	T
298	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 21:43:06	T
299	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-28 21:45:44	T
300	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 21:46:20	T
301	203	Cambio de estado del usuario Paula Ramirez Torres a Inactivo.	2026-04-28 21:49:09	T
302	\N	Asignacion de mesa 6 a usuario 207.	2026-04-28 21:51:54	T
303	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-28 21:52:23	T
304	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 21:53:39	T
305	\N	Asignacion de mesa 6 a usuario 207.	2026-04-28 21:53:52	T
306	\N	Asignacion de mesa 6 a usuario 207.	2026-04-28 21:54:50	T
307	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-28 22:00:16	T
308	203	Actualizacion de menu Brunch.	2026-04-28 22:02:11	T
309	203	Creacion de usuario tipo mesero Alexa  Gaitan.	2026-04-28 22:13:56	T
310	203	Actualizacion de producto SODA DE CEREZA.	2026-04-28 22:19:03	T
311	203	Actualizacion de producto SODA DE MANZANILLA.	2026-04-28 22:19:44	T
312	203	Actualizacion de menu Bebidas frias.	2026-04-28 22:20:56	T
313	203	Actualizacion de menu Bebidas calientes.	2026-04-28 22:21:21	T
314	203	Creacion de producto Limonada de mandarina.	2026-04-28 22:24:23	T
315	203	Eliminacion de producto Limonada de mandarina.	2026-04-28 22:24:59	T
316	203	Creacion de cancion Encantadora.	2026-04-28 22:26:35	T
317	203	Eliminacion logica de solicitud musical 33.	2026-04-28 22:27:41	T
318	\N	Asignacion de mesa 6 a usuario 207.	2026-04-28 22:28:09	T
319	203	Solicitud musical 34 marcada como reproducida.	2026-04-28 22:28:51	T
320	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-29 01:05:11	T
321	203	Creacion de cancion broadway baby.	2026-04-29 01:05:49	T
322	203	Creacion de cancion broadway baby y agregado a la cola.	2026-04-29 01:09:26	T
323	203	Solicitud musical 35 marcada como reproducida.	2026-04-29 01:09:34	T
324	203	Eliminacion logica de solicitud musical 35.	2026-04-29 01:09:46	T
325	203	Eliminacion logica de solicitud musical 16.	2026-04-29 01:09:47	T
326	203	Eliminacion logica de solicitud musical 15.	2026-04-29 01:09:48	T
327	203	Eliminacion logica de solicitud musical 14.	2026-04-29 01:09:48	T
328	203	Ingreso al modulo Mesas.	2026-04-29 01:25:53	T
329	203	Liberacion manual de mesa 6.	2026-04-29 01:26:05	T
330	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-29 12:26:26	T
331	203	Cierre de sesion del usuario Andres Santa Juana .	2026-04-29 12:26:29	T
332	\N	Solicitud de recuperacion por enlace preparada en modo demo para appbongusto@gmail.com.	2026-04-29 12:44:24	T
333	\N	Solicitud de recuperacion por enlace preparada en modo demo para appbongusto@gmail.com.	2026-04-29 12:44:49	T
334	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-29 13:54:31	T
335	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-30 00:37:01	T
336	203	Creacion de cancion Breakaway y agregado a la cola.	2026-04-30 00:39:13	T
337	203	Eliminacion logica de solicitud musical 36.	2026-04-30 00:39:42	T
338	203	Eliminacion logica de solicitud musical 13.	2026-04-30 00:39:49	T
339	203	Creacion de cancion Give Your Heart a Break y agregado a la cola.	2026-04-30 00:40:28	T
340	203	Creacion de cancion Get Free y agregado a la cola.	2026-04-30 00:42:14	T
341	203	Creacion de evento para El cumpleaños de Alaska el 2026-05-09	2026-04-30 01:20:10	T
342	203	Actualizacion de evento El cumpleaños de Alaska.	2026-04-30 01:22:04	T
343	203	Cancelacion o eliminacion de evento El cumpleaños de Alaska.	2026-04-30 01:22:19	T
344	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-30 02:01:01	T
345	203	Envío de notificación masiva 'Descuento exclusivo por tiempo limitado' a 16 clientes.	2026-04-30 02:04:03	T
346	203	Ingreso al modulo Mesas.	2026-04-30 02:23:05	T
347	203	Reconstruccion del estado operativo de mesas y limpieza de cache.	2026-04-30 02:23:16	T
348	203	Liberacion manual de mesa 1.	2026-04-30 02:24:58	T
349	203	Ingreso al modulo Mesas.	2026-04-30 02:25:18	T
350	203	Operacion de eliminacion/desactivacion sobre mesa 99.	2026-04-30 02:27:13	T
351	203	Reactivacion de mesa 99.	2026-04-30 02:27:22	T
352	203	Ingreso al modulo Mesas.	2026-04-30 02:27:22	T
353	203	Operacion de eliminacion/desactivacion sobre mesa 99.	2026-04-30 02:27:32	T
354	203	Ingreso al modulo Mesas.	2026-04-30 02:27:37	T
355	203	Actualizacion de mesa 13.	2026-04-30 02:28:20	T
356	203	Ingreso al modulo Mesas.	2026-04-30 02:28:20	T
357	203	Ingreso al modulo Mesas.	2026-04-30 02:28:28	T
358	203	Actualizacion de mesa 13.	2026-04-30 02:28:35	T
359	203	Ingreso al modulo Mesas.	2026-04-30 02:28:35	T
360	203	Ingreso al modulo Mesas.	2026-04-30 02:28:44	T
361	203	Creacion de mesa 11.	2026-04-30 02:29:30	T
362	203	Ingreso al modulo Mesas.	2026-04-30 02:29:30	T
363	203	Reconstruccion del estado operativo de mesas y limpieza de cache.	2026-04-30 02:29:42	T
364	203	Ingreso al modulo Mesas.	2026-04-30 02:29:52	T
365	203	Actualizacion de mesa 12.	2026-04-30 02:29:59	T
366	203	Ingreso al modulo Mesas.	2026-04-30 02:29:59	T
367	203	Creacion de mesa 13.	2026-04-30 02:39:13	T
368	203	Ingreso al modulo Mesas.	2026-04-30 02:39:13	T
369	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-30 03:12:02	T
370	203	Ingreso al modulo Mesas.	2026-04-30 03:32:37	T
371	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-30 18:08:52	T
372	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-04-30 21:17:46	T
373	203	Ingreso al modulo Mesas.	2026-04-30 21:17:59	T
374	\N	Asignacion de mesa 6 a usuario 207.	2026-05-01 19:40:57	T
375	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-01 19:52:31	T
376	203	Ingreso al modulo Mesas.	2026-05-01 19:52:37	T
377	203	Liberacion manual de mesa 6.	2026-05-01 19:52:44	T
378	\N	Asignacion de mesa 1 a usuario 207.	2026-05-01 19:53:04	T
379	\N	Asignacion de mesa 1 a usuario 207.	2026-05-01 20:15:55	T
380	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 11:27:42	T
381	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 17:26:34	T
382	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-05 18:01:01	T
383	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 18:04:18	T
384	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-05 18:04:54	T
385	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 18:07:37	T
386	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-05 18:07:41	T
387	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 18:16:47	T
388	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 18:26:22	T
389	203	Ingreso al modulo Mesas.	2026-05-05 18:28:35	T
390	203	Ingreso al modulo Mesas.	2026-05-05 18:31:33	T
391	203	Ingreso al modulo Mesas.	2026-05-05 18:34:33	T
392	203	Ingreso al modulo Mesas.	2026-05-05 18:47:04	T
393	203	Ingreso al modulo Mesas.	2026-05-05 18:58:06	T
394	203	Liberacion manual de mesa 1.	2026-05-05 18:58:10	T
395	203	Ingreso al modulo Mesas.	2026-05-05 19:03:45	T
396	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 20:47:03	T
397	\N	Asignacion de mesa 2 a usuario 207.	2026-05-05 20:53:12	T
398	203	Ingreso al modulo Mesas.	2026-05-05 20:53:36	T
399	203	Cambio de estado del usuario sebastian garcia a Inactivo.	2026-05-05 21:02:14	T
400	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-05 21:02:18	T
401	200	Inicio de sesion del usuario sebastian garcia.	2026-05-05 21:02:53	T
402	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 21:05:28	T
403	203	Ingreso al modulo Mesas.	2026-05-05 21:05:30	T
404	203	Liberacion manual de mesa 2.	2026-05-05 21:05:35	T
405	\N	Asignacion de mesa 2 a usuario 207.	2026-05-05 21:05:40	T
406	203	Ingreso al modulo Mesas.	2026-05-05 21:06:04	T
407	203	Cambio de estado del usuario Antonio Torres a Inactivo.	2026-05-05 21:08:20	T
408	203	Cambio de estado del usuario Antonio Torres a Activo.	2026-05-05 21:09:21	T
409	203	Cambio de estado del usuario Antonio Torres a Inactivo.	2026-05-05 21:10:51	T
410	203	Ingreso al modulo Mesas.	2026-05-05 21:12:52	T
411	203	Liberacion manual de mesa 2.	2026-05-05 21:12:56	T
412	\N	Asignacion de mesa 3 a usuario 207.	2026-05-05 21:12:58	T
413	203	Ingreso al modulo Mesas.	2026-05-05 21:13:31	T
414	203	Liberacion manual de mesa 3.	2026-05-05 21:13:38	T
415	203	Creacion de usuario tipo mesero Juan Carlos Guzman.	2026-05-05 21:14:45	T
416	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-05 21:20:42	T
417	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-05 21:21:48	T
418	203	Cambio de estado del usuario Antonio Torres a Activo.	2026-05-05 21:22:05	T
419	203	Cambio de estado del usuario Antonio Torres a Inactivo.	2026-05-05 21:22:18	T
420	203	Cambio de estado del usuario Antonio Torres a Activo.	2026-05-05 21:22:45	T
421	203	Cambio de estado del usuario sebastian garcia a Activo.	2026-05-05 21:23:45	T
422	203	Cambio de estado del usuario sebastian garcia a Inactivo.	2026-05-05 21:24:59	T
423	203	Creacion de menu Bebidas frias.	2026-05-05 21:26:50	T
424	203	Creacion de menu Bruch.	2026-05-05 21:27:33	T
425	203	Eliminacion de menu Bruch.	2026-05-05 21:27:40	T
426	203	Creacion de menu Brunch.	2026-05-05 21:28:01	T
427	203	Eliminacion de menu Brunch.	2026-05-05 21:28:06	T
428	203	Actualizacion de menu Brunc.	2026-05-05 21:31:39	T
429	203	Actualizacion de menu Brunch.	2026-05-05 21:31:58	T
430	203	Creacion de menu Bruch.	2026-05-05 21:33:51	T
431	203	Eliminacion de menu Bruch.	2026-05-05 21:33:56	T
432	203	Eliminacion de menu Bebidas frias.	2026-05-05 21:36:16	T
433	203	Creacion de menu Bebidas frias.	2026-05-05 21:37:42	T
434	203	Creacion de producto Soda con hielo.	2026-05-05 21:38:19	T
435	203	Eliminacion de menu Bebidas frias.	2026-05-05 21:38:44	T
436	203	Creacion de menu Bebidas frias.	2026-05-05 21:41:16	T
437	203	Creacion de menu bruch.	2026-05-05 21:41:35	T
438	203	Eliminacion de menu bruch.	2026-05-05 21:42:39	T
439	203	Eliminacion de producto Soda con hielo.	2026-05-05 21:43:08	T
440	203	Creacion de producto Soda Helada.	2026-05-05 21:44:56	T
441	203	Creacion de producto Soda.	2026-05-05 21:48:51	T
442	203	Actualizacion de producto Soda con cereza (hielo).	2026-05-05 21:52:10	T
443	203	Creacion de producto Agua.	2026-05-05 22:01:20	T
444	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 13:40:41	T
445	203	Creacion de producto Tiramisu de pistacho (Postre temporada).	2026-05-07 13:42:42	T
446	203	Eliminacion de producto Tiramisu de pistacho (Postre temporada).	2026-05-07 13:43:50	T
447	203	Actualizacion de producto Agua.	2026-05-07 13:53:51	T
448	203	Ingreso al modulo Mesas.	2026-05-07 13:57:34	T
449	203	Creacion de mesa 14.	2026-05-07 13:58:42	T
450	203	Ingreso al modulo Mesas.	2026-05-07 13:58:43	T
451	203	Ingreso al modulo Mesas.	2026-05-07 14:01:54	T
452	203	Ingreso al modulo Mesas.	2026-05-07 14:02:26	T
453	203	Ingreso al modulo Mesas.	2026-05-07 14:02:31	T
454	203	Actualizacion de mesa 1.	2026-05-07 14:03:11	T
455	203	Ingreso al modulo Mesas.	2026-05-07 14:03:11	T
456	203	Ingreso al modulo Mesas.	2026-05-07 14:03:53	T
457	203	Actualizacion de mesa 1.	2026-05-07 14:04:00	T
458	203	Ingreso al modulo Mesas.	2026-05-07 14:04:00	T
459	203	Ingreso al modulo Mesas.	2026-05-07 14:04:11	T
460	203	Actualizacion de mesa 1.	2026-05-07 14:04:17	T
461	203	Ingreso al modulo Mesas.	2026-05-07 14:04:17	T
462	203	Ingreso al modulo Mesas.	2026-05-07 14:04:29	T
463	203	Actualizacion de mesa 1.	2026-05-07 14:04:58	T
464	203	Ingreso al modulo Mesas.	2026-05-07 14:04:58	T
465	203	Ingreso al modulo Mesas.	2026-05-07 14:05:30	T
466	203	Actualizacion de mesa 2.	2026-05-07 14:06:26	T
467	203	Ingreso al modulo Mesas.	2026-05-07 14:06:26	T
468	203	Ingreso al modulo Mesas.	2026-05-07 14:07:08	T
469	203	Ingreso al modulo Mesas.	2026-05-07 14:07:11	T
470	203	Ingreso al modulo Mesas.	2026-05-07 14:07:15	T
471	203	Operacion de eliminacion/desactivacion sobre mesa 14.	2026-05-07 14:09:28	T
472	203	Ingreso al modulo Mesas.	2026-05-07 14:12:48	T
473	203	Operacion de eliminacion/desactivacion sobre mesa 1.	2026-05-07 14:13:06	T
474	203	Reactivacion de mesa 1.	2026-05-07 14:13:56	T
475	203	Ingreso al modulo Mesas.	2026-05-07 14:13:56	T
476	203	Desactivacion de mesa 1.	2026-05-07 14:15:18	T
477	203	Ingreso al modulo Mesas.	2026-05-07 14:15:18	T
478	203	Reactivacion de mesa 1.	2026-05-07 14:15:34	T
479	203	Ingreso al modulo Mesas.	2026-05-07 14:15:34	T
480	203	Liberacion manual de mesa 3.	2026-05-07 14:19:44	T
481	203	Ingreso al modulo Mesas.	2026-05-07 14:19:55	T
482	203	Reconstruccion del estado operativo de mesas y limpieza de cache.	2026-05-07 14:20:03	T
483	203	Operacion de eliminacion/desactivacion sobre mesa 1.	2026-05-07 14:20:47	T
484	203	Reactivacion de mesa 1.	2026-05-07 14:20:59	T
485	203	Ingreso al modulo Mesas.	2026-05-07 14:20:59	T
486	203	Operacion de eliminacion/desactivacion sobre mesa 1.	2026-05-07 14:21:04	T
487	203	Reactivacion de mesa 1.	2026-05-07 14:21:12	T
488	203	Ingreso al modulo Mesas.	2026-05-07 14:21:12	T
489	203	Operacion de eliminacion/desactivacion sobre mesa 1.	2026-05-07 14:21:17	T
490	203	Reactivacion de mesa 1.	2026-05-07 14:21:25	T
491	203	Ingreso al modulo Mesas.	2026-05-07 14:21:25	T
492	203	Ingreso al modulo Mesas.	2026-05-07 14:23:42	T
493	203	Ingreso al modulo Mesas.	2026-05-07 14:23:47	T
494	203	Ingreso al modulo Mesas.	2026-05-07 14:25:52	T
495	203	Ingreso al modulo Mesas.	2026-05-07 14:25:56	T
496	203	Eliminacion definitiva de mesa 1 con historial.	2026-05-07 14:25:59	T
497	203	Eliminacion definitiva de mesa 2 con historial.	2026-05-07 14:26:08	T
498	203	Eliminacion definitiva de mesa 3 con historial.	2026-05-07 14:26:10	T
499	203	Eliminacion definitiva de mesa 4 con historial.	2026-05-07 14:26:12	T
500	203	Eliminacion definitiva de mesa 5 con historial.	2026-05-07 14:26:14	T
501	203	Eliminacion definitiva de mesa 6 con historial.	2026-05-07 14:26:16	T
502	203	Eliminacion definitiva de mesa 6 con historial.	2026-05-07 14:26:18	T
503	203	Eliminacion definitiva de mesa 7 con historial.	2026-05-07 14:26:20	T
504	203	Eliminacion definitiva de mesa 9 con historial.	2026-05-07 14:26:25	T
505	203	Eliminacion definitiva de mesa 11 con historial.	2026-05-07 14:26:28	T
506	203	Eliminacion definitiva de mesa 12 con historial.	2026-05-07 14:26:30	T
507	203	Eliminacion definitiva de mesa 13 con historial.	2026-05-07 14:26:31	T
508	203	Ingreso al modulo Mesas.	2026-05-07 14:26:36	T
509	203	Ingreso al modulo Mesas.	2026-05-07 14:33:19	T
510	203	Creacion de mesa 1.	2026-05-07 14:33:27	T
511	203	Ingreso al modulo Mesas.	2026-05-07 14:33:27	T
512	203	Bloqueo previo a eliminacion de mesa 1.	2026-05-07 14:33:30	T
513	203	Eliminacion definitiva de mesa 1.	2026-05-07 14:33:37	T
514	203	Creacion de mesa 1.	2026-05-07 14:33:43	T
515	203	Ingreso al modulo Mesas.	2026-05-07 14:33:43	T
516	203	Creacion de mesa 2.	2026-05-07 14:33:47	T
517	203	Ingreso al modulo Mesas.	2026-05-07 14:33:47	T
518	203	Creacion de mesa 3.	2026-05-07 14:33:52	T
519	203	Ingreso al modulo Mesas.	2026-05-07 14:33:52	T
520	203	Creacion de mesa 4.	2026-05-07 14:33:57	T
521	203	Ingreso al modulo Mesas.	2026-05-07 14:33:57	T
522	203	Creacion de mesa 5.	2026-05-07 14:34:02	T
523	203	Ingreso al modulo Mesas.	2026-05-07 14:34:02	T
524	203	Creacion de mesa 6.	2026-05-07 14:34:07	T
525	203	Ingreso al modulo Mesas.	2026-05-07 14:34:07	T
526	203	Creacion de mesa 7.	2026-05-07 14:34:12	T
527	203	Ingreso al modulo Mesas.	2026-05-07 14:34:12	T
528	203	Creacion de mesa 8.	2026-05-07 14:34:16	T
529	203	Ingreso al modulo Mesas.	2026-05-07 14:34:16	T
530	203	Creacion de mesa 9.	2026-05-07 14:34:22	T
531	203	Ingreso al modulo Mesas.	2026-05-07 14:34:22	T
532	\N	Asignacion de mesa 6 a usuario 207.	2026-05-07 17:26:11	T
533	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 17:27:17	T
534	203	Ingreso al modulo Mesas.	2026-05-07 17:27:20	T
535	203	Liberacion manual de mesa 6.	2026-05-07 17:56:48	T
536	\N	Asignacion de mesa 6 a usuario 207.	2026-05-07 17:57:48	T
537	203	Ingreso al modulo Mesas.	2026-05-07 17:58:13	T
538	\N	Pago confirmado para mesa 6.	2026-05-07 18:03:35	T
539	203	Actualizacion de estado de mesa 6 a en_limpieza.	2026-05-07 18:05:40	T
540	203	Liberacion manual de mesa 6.	2026-05-07 18:05:43	T
541	203	Ingreso al modulo Mesas.	2026-05-07 18:05:50	T
542	\N	Asignacion de mesa 5 a usuario 207.	2026-05-07 18:09:53	T
543	203	Ingreso al modulo Mesas.	2026-05-07 18:11:12	T
544	203	Ingreso al modulo Mesas.	2026-05-07 18:12:15	T
545	203	Liberacion manual de mesa 5.	2026-05-07 18:12:22	T
546	203	Ingreso al modulo Mesas.	2026-05-07 18:12:26	T
547	203	Bloqueo previo a eliminacion de mesa 5.	2026-05-07 18:12:57	T
548	203	Eliminacion definitiva de mesa 5 con historial.	2026-05-07 18:13:05	T
549	203	Bloqueo previo a eliminacion de mesa 1.	2026-05-07 18:14:08	T
550	\N	Asignacion de mesa 2 a usuario 207.	2026-05-07 18:16:08	T
551	203	Ingreso al modulo Mesas.	2026-05-07 18:16:55	T
552	203	Liberacion manual de mesa 2.	2026-05-07 18:17:21	T
553	\N	Asignacion de mesa 3 a usuario 207.	2026-05-07 18:17:32	T
554	203	Ingreso al modulo Mesas.	2026-05-07 18:18:28	T
555	203	Liberacion manual de mesa 1.	2026-05-07 18:19:14	T
556	203	Reactivacion de mesa 1.	2026-05-07 18:19:17	T
557	203	Ingreso al modulo Mesas.	2026-05-07 18:19:22	T
558	203	Ingreso al modulo Mesas.	2026-05-07 18:22:53	T
559	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 18:34:50	T
560	203	Ingreso al modulo Mesas.	2026-05-07 18:34:52	T
561	203	Liberacion manual de mesa 3.	2026-05-07 18:34:58	T
562	203	Reconstruccion del estado operativo de mesas y limpieza de cache.	2026-05-07 18:35:03	T
563	203	Reconstruccion del estado operativo de mesas y limpieza de cache.	2026-05-07 18:35:04	T
564	203	Ingreso al modulo Mesas.	2026-05-07 18:35:12	T
565	\N	Asignacion de mesa 1 a usuario 207.	2026-05-07 18:36:26	T
566	203	Ingreso al modulo Mesas.	2026-05-07 18:36:54	T
567	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-07 18:41:49	T
568	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 18:47:05	T
569	203	Ingreso al modulo Mesas.	2026-05-07 18:48:34	T
570	203	Ingreso al modulo Mesas.	2026-05-07 18:50:14	T
571	203	Liberacion manual de mesa 1.	2026-05-07 18:50:23	T
572	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-07 18:59:47	T
573	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 18:59:50	T
574	203	Ingreso al modulo Mesas.	2026-05-07 18:59:53	T
575	\N	Asignacion de mesa 1 a usuario 215.	2026-05-07 19:02:02	T
576	203	Ingreso al modulo Mesas.	2026-05-07 19:02:28	T
577	203	Liberacion manual de mesa 1.	2026-05-07 19:03:04	T
578	\N	Asignacion de mesa 1 a usuario 207.	2026-05-07 19:03:12	T
579	203	Ingreso al modulo Mesas.	2026-05-07 19:03:23	T
580	203	Liberacion manual de mesa 1.	2026-05-07 19:03:42	T
581	\N	Asignacion de mesa 2 a usuario 207.	2026-05-07 19:03:50	T
582	203	Liberacion manual de mesa 2.	2026-05-07 19:04:36	T
583	\N	Asignacion de mesa 1 a usuario 207.	2026-05-07 19:04:37	T
584	203	Ingreso al modulo Mesas.	2026-05-07 19:05:29	T
585	203	Liberacion manual de mesa 1.	2026-05-07 19:05:34	T
586	\N	Asignacion de mesa 1 a usuario 207.	2026-05-07 19:06:07	T
587	203	Ingreso al modulo Mesas.	2026-05-07 19:06:27	T
588	203	Liberacion manual de mesa 1.	2026-05-07 19:06:50	T
589	203	Ingreso al modulo Mesas.	2026-05-07 19:06:53	T
590	203	Ingreso al modulo Mesas.	2026-05-07 19:12:14	T
591	\N	Asignacion de mesa 2 a usuario 207.	2026-05-07 19:13:39	T
592	203	Liberacion manual de mesa 2.	2026-05-07 19:14:01	T
593	203	Ingreso al modulo Mesas.	2026-05-07 19:20:53	T
594	203	Liberacion manual de mesa 2.	2026-05-07 19:21:38	T
595	\N	Asignacion de mesa 6 a usuario 207.	2026-05-07 19:21:47	T
596	203	Ingreso al modulo Mesas.	2026-05-07 19:22:07	T
597	203	Ingreso al modulo Mesas.	2026-05-07 19:22:24	T
598	203	Ingreso al modulo Mesas.	2026-05-07 19:22:47	T
599	203	Cancelacion o eliminacion de evento Fiesta.	2026-05-07 19:24:32	T
600	203	Cancelacion o eliminacion de evento 5.	2026-05-07 19:24:47	T
601	203	Ingreso al modulo Mesas.	2026-05-07 19:27:38	T
602	203	Liberacion manual de mesa 6.	2026-05-07 19:27:44	T
603	203	Ingreso al modulo Mesas.	2026-05-07 19:27:48	T
604	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 20:41:07	T
605	203	Ingreso al modulo Mesas.	2026-05-07 20:41:11	T
606	203	Ingreso al modulo Mesas.	2026-05-07 20:46:24	T
607	\N	Asignacion de mesa 7 a usuario 207.	2026-05-07 20:48:06	T
608	203	Ingreso al modulo Mesas.	2026-05-07 20:48:40	T
609	203	Liberacion manual de mesa 7.	2026-05-07 20:49:00	T
610	\N	Asignacion de mesa 3 a usuario 207.	2026-05-07 20:49:09	T
611	203	Ingreso al modulo Mesas.	2026-05-07 20:49:53	T
612	203	Liberacion manual de mesa 3.	2026-05-07 20:50:06	T
613	203	Ingreso al modulo Mesas.	2026-05-07 20:50:08	T
614	203	Eliminacion logica de solicitud musical 38.	2026-05-07 20:57:59	T
615	203	Eliminacion logica de solicitud musical 37.	2026-05-07 20:58:01	T
616	203	Creacion de evento para Dia de las madres el 2026-05-10	2026-05-07 21:02:04	T
617	203	Solicitud musical 41 marcada como reproducida.	2026-05-07 21:13:46	T
618	203	Actualizacion de evento Dia de las madres.	2026-05-07 21:21:12	T
619	203	Actualizacion de evento Dia de las madres.	2026-05-07 21:22:00	T
620	203	Ingreso al modulo Mesas.	2026-05-07 21:26:24	T
621	203	Liberacion manual de mesa 3.	2026-05-07 21:27:00	T
622	203	Liberacion manual de mesa 3.	2026-05-07 21:27:01	T
623	203	Ingreso al modulo Mesas.	2026-05-07 21:27:05	T
624	\N	Asignacion de mesa 8 a usuario 207.	2026-05-07 21:27:11	T
625	203	Eliminacion logica de solicitud musical 40.	2026-05-07 21:32:41	T
626	203	Ingreso al modulo Mesas.	2026-05-07 21:34:03	T
627	203	Liberacion manual de mesa 8.	2026-05-07 21:34:14	T
628	203	Creacion de mesa 5.	2026-05-07 21:35:10	T
629	203	Ingreso al modulo Mesas.	2026-05-07 21:35:10	T
630	\N	Asignacion de mesa 5 a usuario 207.	2026-05-07 21:35:22	T
631	203	Eliminacion logica de solicitud musical 1.	2026-05-07 21:39:05	T
632	203	Eliminacion logica de solicitud musical 4.	2026-05-07 21:39:06	T
633	203	Eliminacion logica de solicitud musical 3.	2026-05-07 21:39:07	T
634	203	Eliminacion logica de solicitud musical 7.	2026-05-07 21:39:08	T
635	203	Eliminacion logica de solicitud musical 8.	2026-05-07 21:39:09	T
636	203	Eliminacion logica de solicitud musical 6.	2026-05-07 21:39:11	T
637	203	Eliminacion logica de solicitud musical 9.	2026-05-07 21:39:11	T
638	203	Eliminacion logica de solicitud musical 10.	2026-05-07 21:39:12	T
639	203	Eliminacion logica de solicitud musical 11.	2026-05-07 21:39:13	T
640	203	Eliminacion logica de solicitud musical 12.	2026-05-07 21:39:15	T
641	203	Eliminacion logica de solicitud musical 39.	2026-05-07 21:39:16	T
642	203	Eliminacion logica de solicitud musical 43.	2026-05-07 21:39:17	T
643	203	Eliminacion logica de solicitud musical 44.	2026-05-07 21:39:18	T
644	203	Eliminacion logica de solicitud musical 45.	2026-05-07 21:39:20	T
645	203	Eliminacion logica de solicitud musical 42.	2026-05-07 21:39:21	T
646	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 21:44:14	T
647	203	Ingreso al modulo Mesas.	2026-05-07 21:44:47	T
648	203	Creacion de cancion Dont Forget y agregado a la cola.	2026-05-07 21:47:35	T
649	203	Creacion de cancion Traitor y agregado a la cola.	2026-05-07 21:47:51	T
650	203	Creacion de cancion Al aire y agregado a la cola.	2026-05-07 21:48:12	T
651	203	Creacion de cancion Catch Me y agregado a la cola.	2026-05-07 21:48:26	T
652	203	Creacion de cancion Arabella y agregado a la cola.	2026-05-07 21:49:04	T
653	203	Solicitud musical 47 marcada como reproducida.	2026-05-07 21:51:22	T
654	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-07 21:58:47	T
655	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-07 21:58:51	T
656	203	Ingreso al modulo Mesas.	2026-05-07 22:06:28	T
657	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 17:00:06	T
658	203	Reuso de cancion duplicada Dont Forget y agregado a la cola.	2026-05-09 17:11:33	T
659	203	Creacion de cancion stars y agregado a la cola.	2026-05-09 17:11:57	T
660	203	Ingreso al modulo Mesas.	2026-05-09 17:14:19	T
661	203	Ingreso al modulo Mesas.	2026-05-09 17:31:01	T
662	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 18:00:59	T
663	203	Ingreso al modulo Mesas.	2026-05-09 18:01:02	T
664	203	Liberacion manual de mesa 5.	2026-05-09 18:01:06	T
665	\N	Asignacion de mesa 9 a usuario 207.	2026-05-09 18:01:13	T
666	203	Liberacion manual de mesa 9.	2026-05-09 18:01:46	T
667	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 18:02:00	T
668	203	Ingreso al modulo Mesas.	2026-05-09 18:04:06	T
669	203	Liberacion manual de mesa 3.	2026-05-09 18:04:22	T
670	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 18:04:37	T
671	215	Llamado 61 marcado como atendido para Mesa 6.	2026-05-09 18:08:34	T
672	203	Liberacion manual de mesa 3.	2026-05-09 18:16:58	T
673	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 18:16:59	T
674	203	Liberacion manual de mesa 4.	2026-05-09 18:17:34	T
675	\N	Asignacion de mesa 6 a usuario 207.	2026-05-09 18:17:39	T
676	203	Ingreso al modulo Mesas.	2026-05-09 18:18:37	T
677	203	Liberacion manual de mesa 6.	2026-05-09 18:18:40	T
678	\N	Asignacion de mesa 1 a usuario 207.	2026-05-09 18:19:09	T
679	203	Ingreso al modulo Mesas.	2026-05-09 18:19:21	T
680	203	Liberacion manual de mesa 1.	2026-05-09 18:19:26	T
681	203	Ingreso al modulo Mesas.	2026-05-09 18:19:43	T
682	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 18:27:52	T
683	203	Ingreso al modulo Mesas.	2026-05-09 18:28:28	T
684	203	Liberacion manual de mesa 4.	2026-05-09 18:28:34	T
685	203	Ingreso al modulo Mesas.	2026-05-09 18:29:03	T
686	\N	Asignacion de mesa 6 a usuario 207.	2026-05-09 18:29:09	T
687	203	Liberacion manual de mesa 6.	2026-05-09 18:29:27	T
688	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 18:30:13	T
689	203	Liberacion manual de mesa 3.	2026-05-09 18:30:37	T
690	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 18:45:08	T
691	203	Liberacion manual de mesa 4.	2026-05-09 18:45:41	T
692	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 18:45:56	T
693	203	Liberacion manual de mesa 4.	2026-05-09 18:46:12	T
694	203	Ingreso al modulo Mesas.	2026-05-09 18:58:09	T
695	203	Liberacion manual de mesa 4.	2026-05-09 18:58:14	T
696	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 18:59:22	T
697	203	Liberacion manual de mesa 3.	2026-05-09 18:59:53	T
698	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 19:12:26	T
699	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 19:12:32	T
700	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 19:12:33	T
701	203	Ingreso al modulo Mesas.	2026-05-09 19:12:34	T
702	203	Liberacion manual de mesa 4.	2026-05-09 19:13:03	T
703	203	Ingreso al modulo Mesas.	2026-05-09 19:13:16	T
704	\N	Asignacion de mesa 8 a usuario 207.	2026-05-09 19:13:21	T
705	203	Liberacion manual de mesa 8.	2026-05-09 19:13:46	T
706	\N	Asignacion de mesa 9 a usuario 207.	2026-05-09 19:14:09	T
707	203	Ingreso al modulo Mesas.	2026-05-09 19:14:39	T
708	203	Liberacion manual de mesa 9.	2026-05-09 19:14:44	T
709	\N	Asignacion de mesa 1 a usuario 207.	2026-05-09 19:15:03	T
710	203	Ingreso al modulo Mesas.	2026-05-09 19:15:20	T
711	203	Ingreso al modulo Mesas.	2026-05-09 19:15:23	T
712	203	Ingreso al modulo Mesas.	2026-05-09 19:15:25	T
713	203	Ingreso al modulo Mesas.	2026-05-09 19:15:26	T
714	203	Liberacion manual de mesa 1.	2026-05-09 19:15:38	T
715	\N	Asignacion de mesa 6 a usuario 207.	2026-05-09 19:16:04	T
716	203	Ingreso al modulo Mesas.	2026-05-09 19:16:25	T
717	203	Liberacion manual de mesa 6.	2026-05-09 19:16:35	T
718	203	Cambio de estado del usuario Antonio Torres a Inactivo.	2026-05-09 19:57:01	T
719	203	Cambio de estado del usuario Antonio Torres a Activo.	2026-05-09 19:58:35	T
720	203	Ingreso al modulo Mesas.	2026-05-09 20:02:35	T
721	203	Desactivacion de mesa 1.	2026-05-09 20:02:39	T
722	203	Ingreso al modulo Mesas.	2026-05-09 20:02:39	T
723	203	Desactivacion de mesa 2.	2026-05-09 20:02:42	T
724	203	Ingreso al modulo Mesas.	2026-05-09 20:02:42	T
725	203	Desactivacion de mesa 3.	2026-05-09 20:02:44	T
726	203	Ingreso al modulo Mesas.	2026-05-09 20:02:44	T
727	203	Desactivacion de mesa 4.	2026-05-09 20:02:50	T
728	203	Ingreso al modulo Mesas.	2026-05-09 20:02:50	T
729	203	Desactivacion de mesa 5.	2026-05-09 20:02:52	T
730	203	Ingreso al modulo Mesas.	2026-05-09 20:02:52	T
731	203	Desactivacion de mesa 6.	2026-05-09 20:02:54	T
732	203	Ingreso al modulo Mesas.	2026-05-09 20:02:54	T
733	203	Desactivacion de mesa 7.	2026-05-09 20:02:55	T
734	203	Ingreso al modulo Mesas.	2026-05-09 20:02:56	T
735	203	Desactivacion de mesa 8.	2026-05-09 20:02:57	T
736	203	Ingreso al modulo Mesas.	2026-05-09 20:02:58	T
737	203	Desactivacion de mesa 9.	2026-05-09 20:02:59	T
738	203	Ingreso al modulo Mesas.	2026-05-09 20:02:59	T
739	203	Reactivacion de mesa 1.	2026-05-09 20:04:28	T
740	203	Ingreso al modulo Mesas.	2026-05-09 20:04:28	T
741	203	Reactivacion de mesa 2.	2026-05-09 20:04:30	T
742	203	Ingreso al modulo Mesas.	2026-05-09 20:04:31	T
743	203	Reactivacion de mesa 3.	2026-05-09 20:04:32	T
744	203	Ingreso al modulo Mesas.	2026-05-09 20:04:32	T
745	203	Reactivacion de mesa 4.	2026-05-09 20:04:34	T
746	203	Ingreso al modulo Mesas.	2026-05-09 20:04:34	T
747	203	Reactivacion de mesa 5.	2026-05-09 20:04:35	T
748	203	Ingreso al modulo Mesas.	2026-05-09 20:04:36	T
749	203	Reactivacion de mesa 6.	2026-05-09 20:04:37	T
750	203	Ingreso al modulo Mesas.	2026-05-09 20:04:38	T
751	203	Reactivacion de mesa 7.	2026-05-09 20:04:39	T
752	203	Ingreso al modulo Mesas.	2026-05-09 20:04:39	T
753	203	Reactivacion de mesa 8.	2026-05-09 20:04:40	T
754	203	Ingreso al modulo Mesas.	2026-05-09 20:04:41	T
755	203	Reactivacion de mesa 9.	2026-05-09 20:04:42	T
756	203	Ingreso al modulo Mesas.	2026-05-09 20:04:43	T
757	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 20:06:06	T
758	203	Liberacion manual de mesa 3.	2026-05-09 20:08:12	T
759	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 20:08:24	T
760	203	Liberacion manual de mesa 3.	2026-05-09 20:11:32	T
761	\N	Asignacion de mesa 2 a usuario 207.	2026-05-09 20:16:40	T
762	\N	Asignacion de mesa 5 a usuario 224.	2026-05-09 20:22:10	T
763	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 20:25:50	T
764	203	Ingreso al modulo Mesas.	2026-05-09 20:25:55	T
765	203	Liberacion manual de mesa 2.	2026-05-09 20:26:00	T
766	203	Liberacion manual de mesa 5.	2026-05-09 20:26:01	T
767	\N	Asignacion de mesa 1 a usuario 207.	2026-05-09 20:26:12	T
768	\N	Asignacion de mesa 2 a usuario 224.	2026-05-09 20:27:15	T
769	203	Liberacion manual de mesa 1.	2026-05-09 20:29:48	T
770	203	Liberacion manual de mesa 2.	2026-05-09 20:29:49	T
771	\N	Asignacion de mesa 1 a usuario 207.	2026-05-09 20:30:11	T
772	203	Liberacion manual de mesa 1.	2026-05-09 20:30:56	T
773	\N	Asignacion de mesa 1 a usuario 207.	2026-05-09 20:31:07	T
774	203	Liberacion manual de mesa 1.	2026-05-09 20:32:25	T
775	\N	Asignacion de mesa 1 a usuario 207.	2026-05-09 20:32:35	T
776	\N	Actualizacion de estado de mesa 1 a esperando_pago.	2026-05-09 21:28:01	T
777	\N	Pago confirmado para mesa 1.	2026-05-09 21:28:19	T
778	\N	Liberacion de mesa 1.	2026-05-09 21:30:53	T
779	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 21:35:09	T
780	203	Cambio de estado del usuario Daniel Leal a Inactivo.	2026-05-09 21:49:13	T
781	203	Cambio de estado del usuario Daniel Leal a Activo.	2026-05-09 21:53:59	T
782	\N	Asignacion de mesa 1 a usuario 225.	2026-05-09 21:54:09	T
783	\N	Asignacion de mesa 2 a usuario 225.	2026-05-09 21:57:57	T
784	203	Actualizacion de producto Agua.	2026-05-09 21:58:31	T
785	203	Eliminacion de producto Agua.	2026-05-09 21:58:45	T
786	\N	Asignacion de mesa 2 a usuario 225.	2026-05-09 21:59:39	T
787	203	Eliminacion de producto Soda con cereza (hielo).	2026-05-09 22:00:50	T
788	203	Eliminacion de producto Soda Helada.	2026-05-09 22:00:54	T
789	203	Eliminacion de menu Bebidas frias.	2026-05-09 22:01:02	T
790	203	Eliminacion de menu Sabores del Mar.	2026-05-09 22:01:08	T
791	\N	Asignacion de mesa 3 a usuario 207.	2026-05-09 22:01:57	T
792	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 22:04:57	T
793	\N	Asignacion de mesa 4 a usuario 207.	2026-05-09 22:05:28	T
794	203	Ingreso al modulo Mesas.	2026-05-09 22:05:50	T
795	203	Liberacion manual de mesa 2.	2026-05-09 22:05:55	T
796	203	Liberacion manual de mesa 4.	2026-05-09 22:05:56	T
797	203	Liberacion manual de mesa 2.	2026-05-09 22:05:59	T
798	203	Ingreso al modulo Mesas.	2026-05-09 22:29:17	T
799	203	Ingreso al modulo Mesas.	2026-05-09 22:29:20	T
800	203	Liberacion manual de mesa 4.	2026-05-09 22:29:24	T
801	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-09 23:35:19	T
802	203	Ingreso al modulo Mesas.	2026-05-09 23:35:21	T
803	203	Liberacion manual de mesa 4.	2026-05-09 23:35:30	T
804	203	Ingreso al modulo Mesas.	2026-05-09 23:36:02	T
805	203	Ingreso al modulo Mesas.	2026-05-09 23:38:43	T
806	203	Ingreso al modulo Mesas.	2026-05-09 23:58:21	T
807	203	Ingreso al modulo Mesas.	2026-05-10 00:10:52	T
808	203	Ingreso al modulo Mesas.	2026-05-10 00:32:56	T
809	203	Pedido 65 actualizado a estado finalizado.	2026-05-10 00:33:16	T
810	203	Pedido 64 actualizado a estado finalizado.	2026-05-10 00:33:17	T
811	203	Pedido 63 actualizado a estado finalizado.	2026-05-10 00:33:18	T
812	203	Pedido 63 actualizado a estado finalizado.	2026-05-10 00:33:20	T
813	\N	Asignacion de mesa 6 a usuario 207.	2026-05-10 00:35:28	T
814	\N	Pedido 66 actualizado a estado finalizado.	2026-05-10 00:35:35	T
815	\N	Pedido 66 actualizado a estado finalizado.	2026-05-10 00:35:40	T
816	\N	Pedido 66 actualizado a estado finalizado.	2026-05-10 00:35:41	T
817	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-10 00:35:50	T
818	203	Ingreso al modulo Mesas.	2026-05-10 00:35:53	T
819	203	Ingreso al modulo Mesas.	2026-05-10 00:35:55	T
820	203	Ingreso al modulo Mesas.	2026-05-10 00:42:28	T
821	203	Liberacion manual de mesa 6.	2026-05-10 00:42:43	T
822	203	Ingreso al modulo Mesas.	2026-05-10 00:42:49	T
823	\N	Asignacion de mesa 1 a usuario 207.	2026-05-10 00:43:25	T
824	203	Ingreso al modulo Mesas.	2026-05-10 00:43:53	T
825	203	Liberacion manual de mesa 1.	2026-05-10 00:44:12	T
826	203	Ingreso al modulo Mesas.	2026-05-10 00:44:30	T
827	203	Ingreso al modulo Mesas.	2026-05-10 00:44:46	T
828	203	Pedido 67 actualizado a estado finalizado.	2026-05-10 00:45:01	T
829	203	Ingreso al modulo Mesas.	2026-05-10 00:48:27	T
830	203	Ingreso al modulo Mesas.	2026-05-10 00:51:45	T
831	215	Solicitud de pago 49 marcada como finalizada para Mesa -.	2026-05-10 01:28:02	T
832	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-10 01:39:43	T
833	203	Ingreso al modulo Mesas.	2026-05-10 01:39:46	T
834	203	Ingreso al modulo Mesas.	2026-05-10 01:42:15	T
835	215	Solicitud de pago 50 marcada como finalizada para Mesa -.	2026-05-10 01:49:11	T
836	215	Solicitud de pago 50 marcada como finalizada para Mesa -.	2026-05-10 01:49:19	T
837	203	Creacion de cancion traitor y agregado a la cola.	2026-05-10 01:53:19	T
838	203	Creacion de cancion get free y agregado a la cola.	2026-05-10 01:53:49	T
839	203	Creacion de cancion hate on mee y agregado a la cola.	2026-05-10 01:54:05	T
840	203	Creacion de cancion beatiful y agregado a la cola.	2026-05-10 01:54:21	T
841	203	Creacion de cancion pressure y agregado a la cola.	2026-05-10 01:54:43	T
842	\N	Asignacion de mesa 1 a usuario 207.	2026-05-10 01:55:01	T
843	203	Solicitud musical 56 marcada como reproducida.	2026-05-10 01:57:48	T
844	203	Solicitud musical 58 marcada como reproducida.	2026-05-10 01:57:50	T
845	203	Solicitud musical 59 marcada como reproducida.	2026-05-10 01:57:52	T
846	203	Solicitud musical 57 marcada como reproducida.	2026-05-10 01:57:53	T
847	203	Solicitud musical 60 marcada como reproducida.	2026-05-10 01:57:57	T
848	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-11 17:32:14	T
849	203	Ingreso al modulo Mesas.	2026-05-11 17:32:18	T
850	203	Ingreso al modulo Mesas.	2026-05-11 17:32:21	T
851	203	Liberacion manual de mesa 1.	2026-05-11 17:32:44	T
852	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-11 18:45:48	T
853	203	Creacion de usuario tipo mesero Paula Leal.	2026-05-11 18:48:01	T
854	203	Actualizacion de menu Brunc.	2026-05-11 19:08:31	T
855	203	Actualizacion de menu Brunch.	2026-05-11 19:08:58	T
856	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-11 20:23:09	T
857	203	Creacion de menu Bebidas con hielo.	2026-05-11 20:24:18	T
858	203	Eliminacion de menu Bebidas con hielo.	2026-05-11 20:24:58	T
859	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-11 21:35:18	T
860	203	Ingreso al modulo Mesas.	2026-05-11 21:35:20	T
861	203	Bloqueo previo a eliminacion de mesa 9.	2026-05-11 21:35:28	T
862	203	Reactivacion de mesa 9.	2026-05-11 21:36:29	T
863	203	Ingreso al modulo Mesas.	2026-05-11 21:36:29	T
865	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-13 17:59:21.133948	\N
872	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-13 20:33:28.397861	\N
878	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-26 18:52:25.617631	\N
885	203	Ingreso al modulo Mesas.	2026-05-27 23:34:10.084491	\N
892	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-06-05 18:47:00.631919	\N
866	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-13 17:59:24.719491	\N
873	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-13 20:35:56.431361	\N
879	203	Ingreso al modulo Mesas.	2026-05-26 18:52:51.207641	\N
886	203	Ingreso al modulo Mesas.	2026-05-28 00:03:55.862333	\N
893	203	Ingreso al modulo Mesas.	2026-06-05 18:49:26.272372	\N
867	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-13 18:56:04.497047	\N
874	\N	Cierre de sesion del usuario Usuario.	2026-05-13 22:17:30.313433	\N
880	203	Ingreso al modulo Mesas.	2026-05-26 18:52:52.64963	\N
887	203	Ingreso al modulo Mesas.	2026-05-28 00:05:05.093777	\N
894	203	Ingreso al modulo Mesas.	2026-06-05 18:51:22.158297	\N
868	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-13 18:57:03.878278	\N
875	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-18 23:31:41.367782	\N
881	203	Ingreso al modulo Mesas.	2026-05-26 18:52:54.178954	\N
888	203	Ingreso al modulo Mesas.	2026-05-28 00:05:06.589323	\N
895	203	Ingreso al modulo Mesas.	2026-06-05 18:51:24.284604	\N
869	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-13 20:22:51.023557	\N
876	203	Ingreso al modulo Mesas.	2026-05-18 23:33:40.099279	\N
882	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-26 18:53:17.112122	\N
889	203	Ingreso al modulo Mesas.	2026-05-28 00:05:07.842715	\N
896	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-06-05 18:54:46.59544	\N
870	203	Creacion de usuario tipo mesero Alejandro  Hernandez.	2026-05-13 20:26:39.207149	\N
877	203	Ingreso al modulo Mesas.	2026-05-18 23:35:17.387724	\N
883	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-27 23:33:55.099573	\N
890	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-28 00:42:15.001456	\N
864	203	Inicio de sesion del usuario Andres Santa Juana  Garcia.	2026-05-13 15:06:01.857387	\N
871	203	Cambio de estado del usuario sebastian garcia a Activo.	2026-05-13 20:33:25.221918	\N
884	203	Ingreso al modulo Mesas.	2026-05-27 23:34:02.879699	\N
891	203	Cierre de sesion del usuario Andres Santa Juana .	2026-05-28 01:35:20.112155	\N
\.


--
-- Data for Name: calificacion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.calificacion (id_opinion, id_res, id_producto, id_usuario, restaurante_califi, producto_califi, servicio_califi, observaciones_califi, trial536) FROM stdin;
1	1	1	6	5	4	5	Ambiente muy agradable y comida rica.	T
2	1	2	7	4	5	4	Hamburguesa muy buena, servicio un poco demorado.	T
3	1	3	8	5	4	5	Pasta en su punto, volvería.	T
4	1	4	9	4	4	4	Todo bien, pero algo ruidoso.	T
5	1	5	10	5	5	5	Brownie espectacular.	T
6	1	\N	6	5	4	5	Postre muy rico, porción justa	T
\.


--
-- Data for Name: calificaciones_clientes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.calificaciones_clientes (id_calificacion, id_usuario, id_pedido, calificacion_comida, calificacion_servicio, calificacion_ambiente, observaciones, fecha_calificacion, trial536) FROM stdin;
1	207	12	5	3	5	las bebidas estaban muy dulces	2026-03-27 20:46:36	T
2	207	13	5	2	3		2026-03-28 01:32:18	T
3	212	14	5	5	5	todo excelente	2026-03-31 17:06:21	T
4	207	15	5	4	4	excelente la mayoría	2026-03-31 19:05:57	T
5	207	16	3	4	4	no fue lo mejor que he probado en el restaurante	2026-03-31 19:40:23	T
6	207	17	5	4	3	buen servicio	2026-04-06 20:11:22	T
7	207	18	5	3	4	bien	2026-04-13 15:49:41	T
8	207	21	5	5	2	buuuu	2026-04-28 18:35:42	T
9	207	21	5	4	3		2026-04-28 20:59:57	T
10	207	21	5	5	5	muy rico	2026-04-28 21:58:52	T
11	207	21	5	5	5		2026-05-01 19:42:08	T
12	207	21	5	5	5	excelente producto	2026-05-05 20:56:00	T
13	207	21	2	2	2	malo	2026-05-05 21:06:11	T
14	207	26	1	1	2	muy infantiles	2026-05-05 21:13:55	T
15	207	26	5	2	4		2026-05-07 18:09:40	T
16	207	26	3	3	3		2026-05-07 18:12:11	T
17	207	26	3	3	3		2026-05-07 19:03:38	T
18	207	26	3	5	4		2026-05-07 19:04:23	T
19	207	26	3	5	5		2026-05-07 19:05:24	T
20	207	26	4	5	5		2026-05-07 19:06:44	T
21	207	48	4	4	4		2026-05-07 19:21:29	T
22	207	48	3	3	4		2026-05-07 19:22:21	T
23	207	48	3	3	4		2026-05-07 20:48:36	T
24	207	48	2	5	4		2026-05-07 20:49:50	T
25	207	49	2	4	2		2026-05-09 18:01:50	T
26	207	48	4	2	3	muy rico pero un par de cosas no tanto	2026-05-09 18:17:30	T
27	207	26	3	4	2	bien	2026-05-09 18:18:02	T
28	207	21	2	4	5		2026-05-09 18:19:40	T
29	207	19	2	2	2	rico	2026-05-09 18:28:38	T
30	207	50	5	5	5	excelente	2026-05-09 19:12:59	T
31	207	11	5	3	5	más a menos	2026-05-09 19:13:53	T
32	207	51	5	5	1	noe gusto la decoración	2026-05-09 19:14:47	T
33	207	52	3	3	3		2026-05-09 19:15:43	T
34	207	53	5	4	4	muy bueno	2026-05-09 19:16:45	T
35	207	54	3	3	3		2026-05-09 20:08:17	T
36	207	55	5	5	5		2026-05-09 20:31:00	T
37	207	57	3	3	3		2026-05-09 20:32:29	T
38	207	58	4	4	4		2026-05-09 20:33:11	T
39	207	59	5	5	5		2026-05-09 23:39:05	T
40	207	65	5	5	5		2026-05-10 00:35:22	T
41	207	66	5	5	5	delicioso espectacular	2026-05-10 00:44:06	T
42	207	64	5	5	2		2026-05-10 00:45:07	T
43	207	68	5	5	3		2026-05-10 01:49:50	T
44	207	69	4	3	4	excelente comida, excelente servicio y todo espectacular	2026-05-10 02:01:41	T
\.


--
-- Data for Name: carrito; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.carrito (id_carrito, id_usuario, id_pedido, subtotal_carrito, cantidad_producto, trial539) FROM stdin;
1	6	1	52000.00	2	T
2	7	2	29000.00	1	T
3	8	3	34000.00	1	T
4	9	4	45000.00	2	T
5	10	5	31000.00	1	T
6	6	6	43000.00	2	T
7	7	7	60000.00	3	T
8	8	8	38000.00	2	T
9	9	9	25000.00	1	T
10	10	10	19000.00	1	T
\.


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categorias (id_cate, nombre_cate, trial532) FROM stdin;
74	Brunch	T
75	Entradas	T
76	Platos Principales	T
77	Receta de Autor	T
78	Postres	T
79	Bebidas (Sin Alcohol)	T
80	Bebidas Calientes	T
81	Bebidas Frias	T
82	Bebidas con Alcohol	T
83	Cócteles	T
84	Opciones Saludables	T
85	Vegetarianos y Veganos	T
86	Desayunos	T
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id, trial539) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model, trial529) FROM stdin;
1	admin	logentry	T
2	auth	permission	T
3	auth	group	T
4	auth	user	T
5	contenttypes	contenttype	T
6	sessions	session	T
7	domain	rol	T
8	domain	permiso	T
9	domain	rolpermiso	T
10	domain	usuario	T
11	domain	bitacora	T
12	domain	menu	T
13	domain	categoria	T
14	domain	producto	T
15	domain	musica	T
16	domain	solicitudmusica	T
17	domain	reserva	T
18	domain	pedidoencabezado	T
19	domain	pedidodetalle	T
20	domain	mensajechat	T
21	domain	calificacioncliente	T
22	domain	solicitudpago	\N
23	domain	notificacioncliente	\N
24	modules_mesas	mesa	\N
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied, trial539) FROM stdin;
1	contenttypes	0001_initial	2026-03-20 19:28:45.121237	T
2	auth	0001_initial	2026-03-20 19:28:45.995436	T
3	admin	0001_initial	2026-03-20 19:28:46.192745	T
4	admin	0002_logentry_remove_auto_add	2026-03-20 19:28:46.204586	T
5	admin	0003_logentry_add_action_flag_choices	2026-03-20 19:28:46.213424	T
6	contenttypes	0002_remove_content_type_name	2026-03-20 19:28:46.31115	T
7	auth	0002_alter_permission_name_max_length	2026-03-20 19:28:46.403025	T
8	auth	0003_alter_user_email_max_length	2026-03-20 19:28:46.429525	T
9	auth	0004_alter_user_username_opts	2026-03-20 19:28:46.440927	T
10	auth	0005_alter_user_last_login_null	2026-03-20 19:28:46.514171	T
11	auth	0006_require_contenttypes_0002	2026-03-20 19:28:46.521493	T
12	auth	0007_alter_validators_add_error_messages	2026-03-20 19:28:46.537486	T
13	auth	0008_alter_user_username_max_length	2026-03-20 19:28:46.562485	T
14	auth	0009_alter_user_last_name_max_length	2026-03-20 19:28:46.586345	T
15	auth	0010_alter_group_name_max_length	2026-03-20 19:28:46.610997	T
16	auth	0011_update_proxy_permissions	2026-03-20 19:28:46.632752	T
17	auth	0012_alter_user_first_name_max_length	2026-03-20 19:28:46.654639	T
18	sessions	0001_initial	2026-03-20 19:28:46.736765	T
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date, trial539) FROM stdin;
09ima1y9jshi9xl41d72wli6qg507cyh	eyJ1c3VhcmlvX2lkIjoyMTgsInVzdWFyaW9fdGlwbyI6ImFkbWluaXN0cmFkb3IifQ:1wHn2j:_5pN5DtB8s2FyQghcbkUtiTx-9FbKJLeh6lOMKc5qvw	2026-04-28 19:20:21.607374	T
09ocju5gjmsc7xc29f6bxmjbia323o9z	eyJsYW5ndWFnZSI6ImVuIn0:1wCKJh:PbYLyW4XsTwX2hlAcA_bP0Svmmr9fxJlwRp_lw8TOFM	2026-04-13 17:39:17.797958	T
0nt33wymuymmbe7usjny31061u944bho	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w6EvQ:ENMS-2BwPJjdA1PJh3WR0UGJRhJ1QOdbKq_Z8nfHqH4	2026-03-27 22:41:04.88047	T
1p35qk4bhf81vor3gdcxm6ie7m9kmdbn	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w6ApC:lvzkzGK-9okDQXwA7p3vBmPwFfzyt6oCHn6jQb7dyDo	2026-03-27 18:18:22.726675	T
2c4oajis9ooup4tnfsl5ro8ko10o160h	eyJsYW5ndWFnZSI6ImVzIn0:1wHq2W:zYWFi9NMHXyH75PvY655yYqLEVs-ezFA5HwPeY28C6k	2026-04-28 22:32:20.129355	T
31hpue1u31dn8ddy3hk7aeubfkt1i5ar	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w9sEu:QhXU9H011BJQtb57ZfpwPFMCJmZce_MauDt_yxk8Kmo	2026-04-06 23:16:12.131737	T
37f53d02hsylfhk3d9ww9earo2a42o1i	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLoFC:oVU4cOEKsLoHOtjWadaorqeh4ID3lDMglMZYHWXBXDU	2026-05-09 21:25:50.905133	T
3zxtqo4xyhnh3cz5qfdf1126avno125j	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKXmVJuZlluQrIaRKMgvylayUElNyM_Myi0uKElPyi5RqAQ6XG3Q:1w4LXj:O8-96Ok2mrOgTzEpCZSsA94lm913gvbVZ_BwFJCYnCo	2026-03-22 17:20:47.78929	T
44mslqbuhou4zgqm9gpbshwzjmdqst9j	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wGNSo:dFOLH-Bh6d2o-EF2-K_LwrpaHMJpkbkXuZpSxhtpA24	2026-04-24 21:49:26.635718	T
4jqy7hopkztahfeo2asjpcrakv84t64e	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w9n6w:sMeZoMVrIGLWFoDDhdMwLnopqheDJ5wXrYXT2Rja4eo	2026-04-06 17:47:38.702582	T
4jukqtl7c3w1dl4jkr28jc1663i83u1a	eyJsYW5ndWFnZSI6ImVuIn0:1wBi3i:AfNeqgYZJChZdKg33D7gHmzdPGHdzmLF_82aYNJ-W7M	2026-04-12 00:48:14.042262	T
4yndobrxunragpd9b4mlqhie2qusttqy	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLt8x:V65ZKqM2C5JVuqMO11eNmi2CRZY_tFb4fPoBYDOVpIY	2026-05-10 02:39:43.23434	T
5cecqb8vfziep2jdkb2chmq73c6h5lqu	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wIYlW:0SW91T-okegO1PbZJaCHeWfKcFwH22NaFgHJYhkdoJY	2026-04-30 22:17:46.284881	T
5lg7r6wfjwg0u8lc7nunva681e7ujtp8	eyJsYW5ndWFnZSI6ImVuIn0:1wHq2V:8rmTEuMQm-KopRWAK1TrfYY0gdqf2d3pg5h53N-tGWI	2026-04-28 22:32:19.153698	T
6chyro9gnnx0so4msuwo3h10vwq66ogl	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wIFOn:3JlBjbw_C4BOyCOO-m7v0_IkqB90EgY8AtfOiEXWxf0	2026-04-30 01:37:01.374599	T
7ihkxnet9ybjww9wg1ala69znv2d51ja	eyJsYW5ndWFnZSI6ImVzIn0:1wCIXz:4Ya2xHN0aDe51nuXgSZEcpS_sLZUoVdCymGC9KDBADM	2026-04-13 15:45:55.627336	T
7rw1w2bvod1kxs5tzstuogak8qwqfkbz	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w9ovT:9c2Q6KLVYtFB8G259HuLx5TnLGWKldATn4LUMuhW8OY	2026-04-06 19:43:55.888163	T
80yvj85toftd733v8wjmk34cmmeodf9s	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLn6H:jcynsOAdGBuTC9cl-leki_IjrwfX0C1Hw8A930G2Qjg	2026-05-09 20:12:33.092936	T
8lsb2nrjhdrczpbfact8x95sznfneih8	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wL6k7:_QMPvTG7HRPI9O-QNsADviveCd7phXqurJxrad5bQSM	2026-05-07 22:58:51.524429	T
8z4vmx38bya84n9e508mm1yc8ul4xwcv	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLl26:ePkBbb2mr2dXtLvpzOBAtEx38MJwmQ4d_bRATA6h1RE	2026-05-09 18:00:06.681686	T
9roul5zjb9277ki9vqyfhdkgyz7po8nt	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aWJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBaUR88:1w5Qw5:QEMpwgRVAXi8FQjZYl0P41QY3PUMPmTsLgonlROOLYU	2026-03-25 17:18:25.230871	T
9s4tibtwwmpkqi4b7ndrgy3rjwaf4e5b	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wIGi5:Pn-VNCv3JQosv_Z3endgQDOiU8qXr-Wd6J3Lf5rHpjE	2026-04-30 03:01:01.732171	T
9stz59sis2xtdaafuf46aonxzxlcadno	eyJ1c3VhcmlvX2lkIjoyLCJ1c3VhcmlvX3RpcG8iOiJtZXNlcm8ifQ:1wHLSu:sy8PQOWmO765jTlOeHt3gBeHmLjoYAjcRqF8SxOua0I	2026-04-27 13:53:32.515383	T
9ulxwvsmb9fe8vc73x3e2i2h92nosgin	eyJsYW5ndWFnZSI6ImVuIn0:1wCIXx:AWqdnc3zZN6SNZIvKXEeaZZbZ1ph_BWSxPdLGI9DVL8	2026-04-13 15:45:53.088629	T
9ypd4lov4oww4y83snvhwomdtrbiadio	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wI5N1:GAnZ6IS0ikKRPRGBsNe8YGO5L7j9KZY3AIS9T-yuVQc	2026-04-29 14:54:31.717841	T
a96x9v464hubire0jk7hs1fvt1fj9in3	eyJsYW5ndWFnZSI6ImVuIn0:1wL6FX:EZdAPpPFfzVBeCMjqJJHdPOgYDd-gDacYQwp8eqDNNA	2026-05-07 22:27:15.201815	T
b1cp4sza6i8wt36v7w5kk36vc96egl9x	.eJyrViotLk0sysyPz0xRsjIyMNCBC-Tl5yYVpSpZKRWnJiUWl2Qm5ikhJEsyC_KVrJQSU3Iz8zKLS4oSU_KLlGoBS10cUQ:1w42Ic:ncfDJKJdBQr8AAprvxOxwB5NA52d_LIsCeN95p1u0Gk	2026-03-21 20:47:54.215126	T
b7cm9b9xw291e3mktop8zwdzpij46jhy	eyJsYW5ndWFnZSI6ImVzIn0:1wCJV7:3iRKLnpvvaw4OsgnmQk3bFnNs4yfwfUOXusOKWpgdzM	2026-04-13 16:47:01.155719	T
bezadugvxd6j4az6xfeu65ttx7gayzpm	eyJsYW5ndWFnZSI6ImVzIn0:1wCKt3:2PwUl6MdbyTMK1eL8dTeneC4GCzKmlWZWA9u_I_4lr8	2026-04-13 18:15:49.53329	T
bktcoa25f1ia8hnc7ajpz6i0si7srp8y	eyJsYW5ndWFnZSI6ImVzIn0:1wCKJh:HTEJNm-Rwbt20l_Os12ItjqAPr0lByWCNPAxRKWyBBw	2026-04-13 17:39:17.117669	T
d4ecuzmyr5bszoaiwkwxexpm37qh1ree	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wKDwE:kDDHu3rtmDHHhQWdKRlHw6S2AhWmdK7IkEtJxS4U7GM	2026-05-05 12:27:42.14108	T
dd90qh39r8xipu7oyrtqwlbvhcba168x	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w9qzI:RwS3NLdq4bITF50jFypd-R7JZEPlqklv1O0ZsDaxGU0	2026-04-06 21:56:00.098522	T
djw8ib86zi3bh4i2us0zmcupl77313d3	.eJyrViotLk0sysyPz0xRsjIyMNCBC-Tl5yYVpSpZKRWnJiUWl2Qm5ikhJEsyC_KVrJQSU3Iz8zKLS4oSU_KLlGoBS10cUQ:1w3gTP:iWwIEYRbrDOVHYZLj8HUoCv7kyN-j-AiPmYw9G-e9Wo	2026-03-20 21:29:35.176059	T
e1gcig8zh3szfrdywb70yy2xfosjwzwo	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLrCZ:ehiGfp9kjIUV1Rm26gcAt6exI7fyF6z17NXM5qWPGVs	2026-05-10 00:35:19.381516	T
e9z4uf7pcx7uf5m9sq6vd71l89gpke41	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHo2p:Bvkt4njaTtgPdYRZCvYgX_Dh4cc5lO14VvMdOvUbYbw	2026-04-28 20:24:31.537539	T
ejmml11i7hj7s6x1x83aflg1k7vmxcp8	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w6G1d:MxKxqQx30WW2fHznDX97EDfmIlxRBiHwkGvMpHG5OBM	2026-03-27 23:51:33.974723	T
ep8m3rqzjvmjgaq7f8zbdazdp1eatsv5	eyJsYW5ndWFnZSI6ImVzIn0:1wCJV2:3BNp6eAWUvf7-CQZNCZC1AeqQ9DjYqhAWt0VkV8uIz0	2026-04-13 16:46:56.261271	T
erjyuoiw9zhr0p53qkr51qro2diojn5o	eyJsYW5ndWFnZSI6ImVzIn0:1wBhjn:L24lAYGqPer1Iz0Mb7ZkHbUaWEFYTtX7hQRI6BVJxaU	2026-04-12 00:27:39.97227	T
es5myphjm0ouyqmkc9k3oddsy1td6o2m	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wL5Wt:0E5f_VZ0u4ZSOTmkD-VJVRGtJzP4I2YWweuFv5OOJxs	2026-05-07 21:41:07.830138	T
etsvx7g4y6kicy1u4033f9d4s3hnzxqt	eyJsYW5ndWFnZSI6ImVzIn0:1wCKNj:viZFIrF-szpvcpIPPp3noLAuen_AiBKa3y8PB4vgEOA	2026-04-13 17:43:27.643806	T
evizwcp2tl5f9sk3pck3eibw2lr6uuns	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w5Tos:p9F0tLKf56OAY1WHuHKATW1R68mTdJNtb4eR-C0Km3w	2026-03-25 20:23:10.994436	T
f13vttta14f2gz7xccyc4tqzri689uu9	eyJ1c3VhcmlvX2lkIjoxLCJ1c3VhcmlvX3RpcG8iOiJhZG1pbmlzdHJhZG9yIn0:1wHLSd:EgVNpdwAo8qjr7OloBlTA0mtiWqa4jti6Gqk4v5i-As	2026-04-27 13:53:15.575455	T
fsqic6x46j8639x7utnauh0sukhy61lm	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wIHoo:gPbw0t2GtIv6YC0Tz6rygOp53AzVvvIOd72uVwdrPkE	2026-04-30 04:12:02.589553	T
fxf7brtpof9z32hhe1kzv5xany48366a	eyJsYW5ndWFnZSI6ImVzIn0:1wCJVl:781mmv46KocyplTTqJksV80TD-IfE29hNdCdXPpWfYY	2026-04-13 16:47:41.051799	T
h34lpxf9uakvx1doum88vn480wanntmt	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wBF89:IShQEKUHcRoxKZBQkYt4jq8R8Ilf4VfBH8DrMgCANlo	2026-04-10 17:54:53.810539	T
hsm6mhaz4uqemd7r1dkpvlkak37gxspj	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLn6G:VZlydp4oymhxwGxConKRGW4nLZeL_o67wM9veiZIXRM	2026-05-09 20:12:32.446537	T
i8m80b66qrznrnsp7d9yti4sa6lhxqew	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHLQq:crcUYfG9sQl1quTU-3LH36tcrnna91yHnokINtPhytA	2026-04-27 13:51:24.990785	T
imsm3jl1k521q4i2i3ndrgedm63nvodc	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wL2VJ:uleNvMpXa0Mg-86Va8xA-bH9zsrc9GIyTr2rneZnInI	2026-05-07 18:27:17.14259	T
japyuzc2mvowepaurnucc7bvd1zahx8p	.eJyrViotLk0sysyPz0xRsjIyMNCBC-Tl5yYVpSpZKRWnJiUWl2Qm5ikhJEsyC_KVrJQSU3Iz8zKLS4oSU_KLlGoBS10cUQ:1w3iOK:TXJ7PY6tMb95xpDLH0TZDkb9QP9D47RXTimFNPzRiwI	2026-03-20 23:32:28.624617	T
jc8ow3101egw9g4pcgias7l11ne9aipo	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHqTY:BPTRDQLKG6T3FcJBQI5V61Zx_JY7Zj7HuxweWCQ3cMo	2026-04-28 23:00:16.021626	T
k18uxw51f1h93yky504vhfri4onorp1w	.eJxFzDEKAjEQRuGrhL9OEVywSGdr6wHCSIZlwJ1ZZhJQxLvLNto-Pt4bMya5WJOOeipL_gW17e6Miot250g30kHpOkkp4c-G7IYK6puoxHDq5showRFi2vi5i79Ql3MpGQ_SddJ6bDnw-QIjqCwd:1wCJYT:LQl9fj-dDo1lLrlpOvHfEx6Kd2XUzLFxhH01Fmlp_a4	2026-04-13 16:50:29.706667	T
klund8oksnflqmhy2gjbtbjda9holzdg	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wItua:GrPKBJwWFlE384z5GQW7YW-MHaXF_tnwq8jxeAO6gk0	2026-05-01 20:52:32.007731	T
l16u5v24m5luwehvfd931wvt2zrmzaz2	eyJsYW5ndWFnZSI6ImVuIn0:1wCJVG:0npjx2YLwxXPoDNLR_IhBN1EyGFgG6dxlY8Mo4DvVro	2026-04-13 16:47:10.030345	T
l94aku5ddbnki6b5ekjvt0huvxmsfegl	.eJyrViotLk0sysyPz0xRsjIyMNCBC-Tl5yYVpSpZKRWnJiUWl2Qm5ikhJEsyC_KVrJQSU3Iz8zKLS4oSU_KLlGoBS10cUQ:1w7chQ:sXr9GcWdww70s3UndvvDQ0AcM8YQhggfUFoAXZqnJU8	2026-03-31 18:16:20.628279	T
lflny4wrclhdvrqwhuvetrjkixx92ym6	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLpKH:N8UpuHeqbsVY6zTF8sUmhZLscBWwax8BVPXMocMMbB4	2026-05-09 22:35:09.131553	T
lp46ho0qebwjzbfpr4st708yglov66km	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wKNDA:eGVqV4rP6ZMau8dU_S1IFQTY0ysOcqUTztRPvXwMC8E	2026-05-05 22:21:48.580159	T
ltyz075dtnkqdgq43dyb2up5fsozz33c	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLlz1:VBaEa_EHjCHg6NExJs71Etn767NXmvuPq0jMkUqPJ-s	2026-05-09 19:00:59.994225	T
lu802e9n1wp5tzvbyhpakpg06pts0jgf	eyJsYW5ndWFnZSI6ImVuIn0:1wCIYa:HaThxU-dfqtWvxUPDhkG0muD3D35z1mhg2YOBHLFRBk	2026-04-13 15:46:32.063405	T
m66cfm0rqefwkn07p8hegaqnpyzuua98	eyJsYW5ndWFnZSI6ImVzIn0:1wCKc9:ogYB4cMo-m2Um7vky3GpOpax_wUPQMNrpLlLH84qKcw	2026-04-13 17:58:21.2523	T
n8xfsxw1givk00nn9ytx3epwtl4gbxin	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wMX9h:wySe3mXy5qqZwlcKdgnDB72EjkoUhDHd5hUjMDdWBfo	2026-05-11 21:23:09.056718	T
nny4jhwymgfzyibp8zd54gl1ljpr63o4	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHMNH:QWLDAWEYhzgzXkM7it0lRYRE7DfdMHzNpGFkAZ4zrAA	2026-04-27 14:51:47.871056	T
nq1p6ok18vysymgvdzdh3j2n0qoe5m7v	eyJsYW5ndWFnZSI6ImVzIn0:1wCJVG:2j9Mp0tixJrN7riv20gSzDIrrOaszTrHzsqeJLZIaO4	2026-04-13 16:47:10.925141	T
nthfmld4mrvx3396bto57zrjry4uhyjp	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w9oeB:zGUgeVumhQZSNnx7UlmbB1HuS1NpFipSKVHX_7DMRJE	2026-04-06 19:26:03.837494	T
ph9wxwwuhunqa76y7xgw7hcvpqyb2p7v	eyJsYW5ndWFnZSI6ImVuIn0:1wCKc2:urZB-bzncriLCdPsZzwkBXBz2OzYGu9ntpJs4VuB0wQ	2026-04-13 17:58:14.212876	T
po1e09azft97jv9xxro40bh3i31x3ojq	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHmAH:n_eT5TDx7SQ2Dq8vRvvArBpDbyVwv2xExCW-BtSWXgw	2026-04-28 18:24:05.4514	T
pp96d4a2ck6w2cwastyvhndgme5emn73	eyJsYW5ndWFnZSI6ImVzIn0:1wCIYa:PcV_EriGQj1xr1U0MdiI6B56wxLIFhGX2shXi6JOhL0	2026-04-13 15:46:32.700324	T
pw769tcsjayl25fwdodaf828ieg7ektw	eyJsYW5ndWFnZSI6ImVuIn0:1wBhb3:MVK2u1bAR5gfFdLLR-Y0wNQaGsvmTQK1m6cJO1pYu9k	2026-04-12 00:18:37.059951	T
q6bcqxx238wz9zriwil86y9vchqp0s66	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wMVdU:gv1F0Ww4vZDeL1HNv33BQo7pit30ucdRpRM9braAfeg	2026-05-11 19:45:48.577502	T
q9svq7b7wmjyktlbjblyplzrce7am4iq	eyJsYW5ndWFnZSI6ImVzIn0:1wCKar:EFts8zP-Aa6xbEJinqPu7Twy9ZN-smjn-tnJt5cSNh8	2026-04-13 17:57:01.311623	T
qjerzcgea49pme1hxrcgdsels05ra644	eyJsYW5ndWFnZSI6ImVuIn0:1wCIYd:7I3dXpKNGTP9WxtCCbv3kb3M-4YNMphQcPhbde3Lfro	2026-04-13 15:46:35.922585	T
qlfzd82kyhxaj80trj24hihiq5exo04r	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wCNIP:7v0gQFilVKoIejTxSWG7m6h9NS7LGE6wrX7-VXX3KhY	2026-04-13 20:50:09.323885	T
qzubbvwe2gsh8y728ixxwpe991rm0wkf	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w6D59:bu9LuLgf0EEz_Im4hw9CLvNJF-tsLY-I688Mrvr4sWc	2026-03-27 20:42:59.233483	T
r97y0257m565qt2skdhvuu5mekfa3wmm	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wL3ws:tpmqD0zR5FQpFhWZkFy6fu57RMvaDbYapHnHDNDoxUo	2026-05-07 19:59:50.979783	T
rmktm97zgp77dp2q7wm4mujkuq1r9xot	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wMUUI:uJCLCBUFHuZbxz4HnwnFsKxPo29QQrVjhbpQQDQR76Q	2026-05-11 18:32:14.917967	T
rn27b4zy001hnlmhd9m4e679ckyo7d6h	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKXmVJuZlluQrIaRKMgvylayUElNyM_Myi0uKElPyi5RqAQ6XG3Q:1w55Jb:LuT4KxI3gEMEU4zpgcbbVZAbaGycpg9cmSlOGlU6BrQ	2026-03-24 18:13:15.380809	T
snnla3vykq3xmjqij3ol23o5nzvqjaaw	eyJsYW5ndWFnZSI6ImVzIn0:1wCIXy:HxADr7w0lkjYEA_FHZUfOOBNUWTGuSAVUV_VVWtspOk	2026-04-13 15:45:54.074309	T
sq3ach62tb2tq6913dcuvf76omtflu36	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKXmVJuZlluQrIaRKMgvylayUElNyM_Myi0uKElPyi5RqAQ6XG3Q:1w4JeO:ZIw0xUIoFtyhb2NdFqBzDnl3OD9jUmDyVercktdxbQA	2026-03-22 15:19:32.633542	T
srmdvot5xm7x48z6eoa5st9p2zqahdzy	eyJsYW5ndWFnZSI6ImVuIn0:1wCIXy:4t3CBjBoZnhwFdaKW_g7PEl8q9_b71uA_7BWeZUt3f4	2026-04-13 15:45:54.785917	T
svgzgc9qp8igbdjy5j7bdpdnix4txhrj	eyJsYW5ndWFnZSI6ImVzIn0:1wBi3i:tjkMcaUAkgN0LrbewP-GQNodDa-pNc8nvk8_FBG_Vck	2026-04-12 00:48:14.884897	T
t35sk9hrt77xhjwt0fr73fuz0w5ssik7	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w6txL:OCDqj8cKk4A4m5Bhcv5ccoqXrEqN_Y8bssofN9j6AsM	2026-03-29 18:29:47.587185	T
teu6wir049byhi30946ujng487ckls8f	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHn6a:bV8M_oCGipnvxJhMJZNBZbIIdByxD_idmJYN3IB58pE	2026-04-28 19:24:20.513056	T
tqt5zkmfuvkfopphjcjl212dvt00krk8	eyJsYW5ndWFnZSI6ImVuIn0:1wCKao:iuFpbIPrGghSwhh2OMzBQxo-dqWseypEiIk2aQca66U	2026-04-13 17:56:58.468882	T
u8foa819s4dymrqvl85xd3xmgnyyfoa1	eyJsYW5ndWFnZSI6ImVzIn0:1wL6FY:11K19A6sjS-1td_E3YnPiuSpEpT81Ya5J7qHdO4LnCo	2026-05-07 22:27:16.856286	T
uilebxc0ksngqgx7vnl3s531jajo680v	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w5XBc:48Gte42qORfiB8XiU0xfmJPDah-el7bCWIbwUZHuwSU	2026-03-25 23:58:52.748954	T
v1uxdl67ip85nrnzrbrmgjv02jdak6rm	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wLs98:Zm3FLXDx8FdwnWERX1jdg6Ted8QHSJIAas5353rlcIo	2026-05-10 01:35:50.336697	T
v2cl4eu3u43wtfd7w14xf65v5q995jbq	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKXmVJuZlluQrIaRKMgvylayUElNyM_Myi0uKElPyi5RqAQ6XG3Q:1w4NNd:fOU1mVLJm87OaxkZLnCiXgkc9qVNEB6VOz96tXpQ4UA	2026-03-22 19:18:29.398686	T
v34shyeyk3hbo3fg0lc6a2l7pjcbgcsi	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKTnmpRSlFisEJ-aVJCp4lSbmJSooIZSVZBbkK1kpJabkZuZlFpcUJabkFynVAgBafB89:1w6vkm:5e-czkn9oJaFa3vE1GQ_FVVBX1oDB4F1lQDKEuDJs2g	2026-03-29 20:24:56.421629	T
vauju2ejk11rokzx1q4k14mi479arqoa	eyJsYW5ndWFnZSI6ImVuIn0:1wCKJd:B5tZY8bRU2Bezcvlt7X9LxV2hwTW9bGUIXPJgwxwSjw	2026-04-13 17:39:13.965439	T
vurv8x69k6qsxiqel1pfutliptckdutv	.eJxFzDEKAjEQRuGrhL9OEVywSGdr6wHCSIZlwJ1ZZhJQxLvLNto-Pt4bMya5WJOOeipL_gW17e6Miot250g30kHpOkkp4c-G7IYK6puoxHDq5showRFi2vi5i79Ql3MpGQ_SddJ6bDnw-QIjqCwd:1wBgcO:DLB6lPooEGc43gFLujRpQPpB7uqRtnoWMsPFxFTz71o	2026-04-11 23:15:56.389471	T
w0ial96ae6y3z2cgqs1i50wjytuvwrn2	eyJsYW5ndWFnZSI6ImVuIn0:1wCKt2:RQlEvHRs7VAjsyr-GZAnCW04CRhOaXyReIvmU2y4A3o	2026-04-13 18:15:48.898042	T
w0opfddv7igcbzv0vpmz318xqs6ji3np	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wBG7w:529VUZp5EaVV1M6Xkd2Ulv-YZX-4H3f27k2et6Cv5CY	2026-04-10 18:58:44.072087	T
w1gpwkuu9upsc0m4q4kfwrix0pkt6m3v	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w7eBf:hlmCwxjU_qZRYJkJ5tSSmMstbK8p0EViXHlffwWwA4Y	2026-03-31 19:51:39.796385	T
w4wlaq2zc9n6nv0zxiwhocr50qt2gwpk	eyJsYW5ndWFnZSI6ImVuIn0:1wCJV4:6tBFmuKBiIzp2ajqICSQ0acmDkkNsFxi-Sr7GiQK0b4	2026-04-13 16:46:58.70331	T
w85qanegt0cqhstpqmwxx0rbrautc45l	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wHtMV:ypJMG9un0bAPw0NObjpipcN67rfkbfo6E75L0pN0kIg	2026-04-29 02:05:11.696212	T
whyyfglag0kmzri0jydyx297w8umeaop	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wIVoi:rth28mGdeYGzx8bMFFiTdK3s7qN7KfLQfWTksDL8WAw	2026-04-30 19:08:52.850789	T
wj14hy0btrq5lw32h8plkbokaeowo6au	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wKyy1:-rV9dcOwq45aCf4Eqa67y19-GuRNywEcr2Hpc8zWNTA	2026-05-07 14:40:41.550907	T
xygj95m5w1x0y8aytkt0178d0jf3vddy	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wKKTO:L3whvEF49Z4EzhXr0T1zhXGwijqjZyx1l-KnHBkAh1s	2026-05-05 19:26:22.605456	T
y9bopurj58dj3vjkxlfo5n750gzc3a6t	eyJsYW5ndWFnZSI6ImVzIn0:1wCKan:NUNRAkxCzzTJYz5WhPg8jt0qShH7R9U0qIBKMDpcbhE	2026-04-13 17:56:57.372641	T
yavkeuwet01p8deyjti499wbjyuimssm	.eJyrViotLk0sysyPz0xRsjLUgXPz8nOTilKVrJSKU5MSi0syE_OUEJIlmQX5SlZKiSm5mXmZxSVFiSn5RUq1ACjvG_A:1w4PQT:5I7Sn-hZ57TS4Zks-V-XYFzWGhU_rt4gLseGP7iSVdk	2026-03-22 21:29:33.611984	T
yel840a3jz9m4435ymy7qeexhdlejzey	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wMYHW:O6sD0ya9O9_zaFYfsbmXPei_Q5h6S0xrjhW4nscnrrQ	2026-05-11 22:35:18.977381	T
yhtutnc6udb0xa3xgyl502gipxmyqdk0	eyJsYW5ndWFnZSI6ImVuIn0:1wCKam:jYRTxw8Nwsm99oka2jvF_xO5e00t1pwrA73feW0uecM	2026-04-13 17:56:56.814295	T
yj7wwjk7mprscf4tq46agimh4fn47ejf	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1w8pdy:rwO2Uv6khgnlZh1oJppMXOTkZlmj2vd7l1ArOYI-I40	2026-04-04 02:17:46.788032	T
z29fgt2bpx5n3b0012pqgzo9p8b5vtvu	eyJsYW5ndWFnZSI6ImVuIn0:1wCJVI:2gQhJFIFL0AXTi0NPmDK1fvZUVmemsLG3wAb2_2KBL4	2026-04-13 16:47:12.857347	T
zzrbikvanwulk39iq3b9g5s91gv529tw	.eJyrViotLk0sysyPz0xRsjIyMNaBC-Tl5yYVpSpZKXmVJuZlluQrIaRKMgvylayUElNyM_Myi0uKElPyi5RqAQ6XG3Q:1w4Kat:wk0_j3_uY4EWG3DKUFUsSyttZtVxnyP8uzFw1FqH-H4	2026-03-22 16:19:59.028255	T
fvo8xep9c0f4pcmawabbyvml32dxv16e	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wNB9t:-AjLJoEIwyrBw6ylW5tTA0i7aQ09-mter1JZ36Fdmxk	2026-05-13 16:06:01.904902	\N
bq5tpt02nk1yeahpk9onaapunznu6guy	.eJwVyEEKgzAQBdC7_G1VvpEEM6seontJdRChNiGJtCDevfQt34kUSvnEvExZi1bICd3D9oIgpPSM7_UoNd7X_3Vz3NFgjotC4B0NHRroN21ZyxQqBIbGtbRtPzz6UejFjp31nhxupJC4rh_mRyL6:1wNDsH:b8QnsQ5T8_ZQ9Fuy-nQC7Ybhk7zUnJUJKVyZCYguFNo	2026-05-13 19:00:01.825527	\N
4eewwktey2flwmlm9j0c5xevfn1yw26x	.eJwVyE0KgzAQBtC7fNuqTOIPdVYewr2kOohQOyGTUkG8e3H53okYzH6alimJSQafkD1sbzBCjC_9rF_LOqz3VbPuKDDrImA01JMnFJAjbklsChkMT74rqS1dPbonO2Kiqvdd3TYPuoHr-gPjJiLg:1wNDsJ:c13vniJq4CEZrlEkl-yx8gpcnbCTmmst5TJ8D8Ymd4w	2026-05-13 19:00:03.442276	\N
drqtmm8x7yp99pe5rest3narnrvz9l3s	.eJwVyEEOgjAQBdC7_K1ApqjQzspDuCcVJoREnKZTAwnh7sa3fAdSNNs0T0MWkwI-IGtc3mDElF76mb9W9DH_rxl1RYVRJwGDbr33PSrInpYsNsQCRkttV9O9dten8-yIyTUhhM7ThYiJcJ4_58UjAA:1wNDsK:nsbm5lpBAvVOaHjcNd9BDhkPM5Svv5m1z0WSKR9zwGs	2026-05-13 19:00:04.544164	\N
83cghfb38ifg9mamng03oqk5yedviuub	.eJwVyEEKgzAQBdC7_G1VJokRMysP0b2kOohQOyFJaUG8e-lbvhMplvLRvM5ZilTwCTni_gQjpvTQ1_YuVaftf92iBxosugoYwY5udGgg37RnKXOsYFiyQ0u-Ne5uAtuBfd8Z05MPNyImwnX9AOeoIvo:1wNF4k:0l3w9EJo6aud5LWnDklbp34LXgQCQ8W_RlzgQw_qtTE	2026-05-13 20:16:58.929361	\N
nvki2vgopx7xgm6njd1a2cthrpvh2ns9	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wNGJA:P15fNFlk9bfat_v_fZKS-x59AA97U8iUANqzyykLMZ8	2026-05-13 21:35:56.440654	\N
d821qsfmhuzt2gy7st3g2dcxxlb4iv81	e30:1wNHwv:4vCqY2aNnkxLwysKrdxgrR0GdTQKFajW-0ZzDoEoCZU	2026-05-13 23:21:05.420475	\N
tb85totbhz8jbzt60255mvn0vbxn4xmo	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wP7Qz:PMGr6prm85p02IYKd5vjS7YZUupsR-Y32u3Cp6i0gB0	2026-05-19 00:31:41.389905	\N
tybyikdzgbf9to67bmk5445y707dgcwd	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wSNl5:NjnIcvjThapZI1e3hs_fkYXC7rk8yumgHg-LEGTuJB8	2026-05-28 00:33:55.118304	\N
6r2oaleex5qwj9ry6xzsv3f6t4xqeidp	.eJxFyjEKwzAMBdCrmD9nMDF08Na1aw5gFOxBgyUj2dBSevdszfp4XyxfZKyFK_Ie0_YH0X5aQ8ZTqjUPB8mk8FokFHC3yUORQbWzsE-jqoYNxZs7q5T2Hmwf5PSI8XcBiUYnEw:1wVZgs:FK8U70ZM7KurzKofpJzqGsU2QPY3bXkVU-p5HR0Fy0s	2026-06-05 19:54:46.598954	\N
\.


--
-- Data for Name: empleados_restaurante; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.empleados_restaurante (id_empleado_res, id_usuario, id_res, rol_empleado, trial539) FROM stdin;
\.


--
-- Data for Name: historial_pedidos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.historial_pedidos (id_historial, id_usuario, id_restaurante, total_historial, fecha_historial, trial539) FROM stdin;
1	6	1	52000.00	2025-01-05	T
2	7	1	29000.00	2025-01-06	T
3	8	1	34000.00	2025-01-07	T
4	9	1	45000.00	2025-01-08	T
5	10	1	31000.00	2025-01-09	T
6	6	1	43000.00	2025-01-10	T
7	7	1	60000.00	2025-01-11	T
8	8	1	38000.00	2025-01-12	T
9	9	1	25000.00	2025-01-13	T
10	10	1	19000.00	2025-01-14	T
\.


--
-- Data for Name: mensajes_chat; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mensajes_chat (id, remitente, destinatario, mensaje, fecha, trial539) FROM stdin;
1	Mesero	administrador	hflbdk	2025-12-09 18:07:13	T
2	Mesero	administrador	hdkdvsj	2025-12-09 18:07:16	T
3	Mesero	administrador	holi	2025-12-09 18:07:17	T
4	Mesero	administrador	funcionó!!!	2025-12-09 18:07:30	T
5	Mesero	administrador	hola	2025-12-11 12:17:23	T
6	Mesero	administrador	funciona?	2025-12-11 12:17:28	T
7	Mesero	administrador	holi	2025-12-11 12:48:31	T
8	Mesero	administrador	hola estoy funcionando 	2025-12-11 14:11:39	T
9	Mesero	administrador	jdksbs	2025-12-11 14:12:17	T
10	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-27T21:32:04.234937+00:00"}	2026-03-27 21:31:52	T
11	administrador	mesero	jdkldes	2026-03-27 21:41:12	T
12	administrador	mesero	hopli	2026-03-27 21:41:55	T
13	mesero	administrador	bdkdbsmdk	2026-03-27 21:42:01	T
14	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T18:16:02.959646+00:00"}	2026-03-28 01:18:11	T
15	administrador	mesero	funciono	2026-03-28 01:45:11	T
16	administrador	mesero	si estoy bien	2026-03-28 01:45:15	T
17	mesero	administrador	tu también estás bien	2026-03-28 01:45:22	T
18	David Emanuel Ramírez	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 212, "cliente_nombre": "David Emanuel Ram\\u00edrez", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T18:16:01.588332+00:00"}	2026-03-31 17:03:55	T
19	mesero	administrador	hola desde mesero test tiempo real	2026-03-31 17:15:42	T
20	administrador	mesero	mensaje desde admin web session	2026-03-31 17:16:20	T
21	mesero	administrador	mensaje desde mesero token	2026-03-31 17:16:20	T
22	administrador	mesero	mbldv;d,	2026-03-31 17:18:51	T
23	mesero	administrador	api fallback test	2026-03-31 17:23:27	T
24	administrador	mesero	vmomfvlsd	2026-03-31 17:26:33	T
25	administrador	mesero	fiogjsdopf	2026-03-31 17:26:54	T
26	administrador	mesero	skifnoksd	2026-03-31 17:47:40	T
27	administrador	mesero	ugyjkno	2026-03-31 17:47:52	T
28	administrador	mesero	jgbodpf\\	2026-03-31 17:48:35	T
29	mesero	administrador	ws dev mesero ok	2026-03-31 17:58:40	T
30	mesero	administrador	dev mesero fallback ok	2026-03-31 17:58:40	T
31	administrador	mesero	holoi	2026-03-31 18:03:29	T
32	mesero	administrador	funciona	2026-03-31 18:03:33	T
33	mesero	administrador	me barres el piso porfa o te echo	2026-03-31 18:03:45	T
34	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T18:16:00.986202+00:00"}	2026-03-31 18:05:53	T
35	Camila Torres	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 6, "cliente_nombre": "Camila Torres", "mensaje": "llamado test cliente mesero", "estado": "atendido", "atendido_en": "2026-03-31T18:09:26.193428+00:00"}	2026-03-31 18:09:26	T
36	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T18:16:00.315131+00:00"}	2026-03-31 18:15:45	T
37	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": null, "mesa_label": "Sin mesa", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T19:04:20.744736+00:00"}	2026-03-31 18:16:17	T
38	Camila Torres	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 6, "cliente_nombre": "Camila Torres", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Necesito ayuda en mi mesa", "estado": "atendido", "atendido_en": "2026-03-31T19:04:20.027589+00:00"}	2026-03-31 18:30:24	T
39	mesero	administrador	bdksbdkd	2026-03-31 18:53:24	T
40	administrador	mesero	si funciono	2026-03-31 18:53:40	T
41	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T19:04:19.267853+00:00"}	2026-03-31 18:54:42	T
42	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-03-31T19:04:27.833440+00:00"}	2026-03-31 19:03:52	T
43	mesero	administrador	hola buenas tardes	2026-04-06 17:00:17	T
44	administrador	mesero	holi	2026-04-06 17:00:20	T
45	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-06T19:26:11.189327+00:00"}	2026-04-06 17:00:41	T
46	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-06T19:26:10.850437+00:00"}	2026-04-06 17:14:45	T
47	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-06T19:26:10.427215+00:00"}	2026-04-06 17:15:49	T
48	mesero	administrador	holi	2026-04-06 19:26:31	T
49	administrador	mesero	hello	2026-04-06 19:26:36	T
50	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-06T19:30:23.172650+00:00"}	2026-04-06 19:27:02	T
51	paula keal	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 216, "cliente_nombre": "paula keal", "mesa_id": 2, "mesa_label": "Mesa 2", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-06T19:30:23.670552+00:00"}	2026-04-06 19:30:17	T
52	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 1, "mesa_label": "Mesa 1", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-06T22:32:11.908403+00:00"}	2026-04-06 22:29:06	T
53	mesero	administrador	lleno	2026-04-06 22:32:40	T
54	mesero	administrador	lleno	2026-04-06 22:32:53	T
55	administrador	mesero	No	2026-04-06 22:32:58	T
56	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 6, "mesa_label": "Mesa 6", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-04-28T21:35:17.387397+00:00"}	2026-04-28 21:34:54	T
57	mesero	administrador	holii	2026-04-28 21:35:58	T
58	administrador	mesero	HOLA	2026-04-28 21:36:12	T
59	mesero	administrador	pedidoo	2026-04-28 21:37:15	T
60	administrador	mesero	OK	2026-04-28 21:37:24	T
61	Andres Conde	mesero_call	{"tipo": "llamado_mesero", "id_usuario": 207, "cliente_nombre": "Andres Conde", "mesa_id": 6, "mesa_label": "Mesa 6", "mensaje": "Cliente solicita mesero", "estado": "atendido", "atendido_en": "2026-05-09T18:08:34.473091+00:00"}	2026-04-28 21:57:10	T
62	mesero	administrador	hola	2026-05-09 19:18:13	T
63	administrador	mesero	estoy funcionando	2026-05-09 19:18:28	T
64	mesero	administrador	perfecto	2026-05-09 19:18:36	T
65	mesero	administrador	funcionó	2026-05-09 21:34:40	T
66	administrador	mesero	hola	2026-05-09 21:35:14	T
67	mesero	administrador	buenas tardes jefe que tal esta? cuales serían mis función de hoy	2026-05-09 21:35:33	T
\.


--
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.menu (id_menu, nombre_menu, descripcion_menu, trial532) FROM stdin;
1	Brunch	Comida que combina desayuno y almuerzo	T
2	Las Tostadas de Juana	Opciones de brunch gourmet sobre pan artesanal	T
3	Waffles & Flat	Opciones de brunch creativas con masa	T
4	Fuertes Brunch	Platos completos y contundentes	T
5	Huevos & Omelettes	Opciones clásicas con toque gourmet	T
6	Vegetarianos - Veganos	Preparaciones sin carne	T
13	Sweet Pancakes	Opciones dulces de brunch	T
15	Menu infantil	Opciones sencillas para niños	T
16	Entradas Frias	Preparaciones frescas y ligeras	T
17	Entradas Crocantes	Texturas crujientes	T
18	A Fuego	Preparaciones intensas y sofisticadas	T
19	Ensaladas	Opciones frescas y saludables	T
20	Sushi	Preparaciones japonesas	T
21	Pastas	Platos con inspiración italiana	T
22	Arroces	Platos cremosos y sabrosos	T
23	Fuertes	Platos principales contundentes	T
24	Postres	Opciones dulces creativas	T
26	Juanas Cocktails	Cócteles de autor	T
27	Traditional Cocktails	Clásicos internacionales	T
28	Sodas Inglesas & Mocktails	Bebidas sin alcohol	T
31	Bebidas calientes	Café, té y más	T
\.


--
-- Data for Name: mesas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesas (id_mesa, numero_mesa, capacidad, id_res, nombre, estado, activa, id_usuario_actual, fecha_creacion, fecha_actualizacion, asignado_en, id_pedido_actual, id_mesero_asignado, fecha_ocupacion, fecha_solicitud_pago, fecha_pago, fecha_liberacion, trial539) FROM stdin;
17	1	2	\N	\N	libre	1	\N	2026-05-07 14:33:43.045929	2026-05-11 17:32:44.303025	\N	\N	\N	\N	\N	\N	2026-05-11 17:32:44.3029	T
18	2	2	\N	\N	libre	1	\N	2026-05-07 14:33:47.712813	2026-05-09 22:05:59.530762	\N	\N	\N	\N	\N	\N	2026-05-09 22:05:59.530633	T
19	3	2	\N	\N	libre	1	\N	2026-05-07 14:33:52.395182	2026-05-09 22:04:53.832945	\N	\N	\N	\N	\N	\N	\N	T
20	4	2	\N	\N	libre	1	\N	2026-05-07 14:33:57.359758	2026-05-09 23:35:30.761913	\N	\N	\N	\N	\N	\N	2026-05-09 23:35:30.761728	T
22	6	2	\N	\N	libre	1	\N	2026-05-07 14:34:07.834635	2026-05-10 00:42:43.89302	\N	\N	\N	\N	\N	\N	2026-05-10 00:42:43.892937	T
23	7	2	\N	\N	libre	1	\N	2026-05-07 14:34:12.390424	2026-05-09 20:04:39.112803	\N	\N	\N	\N	\N	\N	2026-05-09 20:04:39.112491	T
24	8	2	\N	\N	libre	1	\N	2026-05-07 14:34:16.672099	2026-05-09 20:04:40.67255	\N	\N	\N	\N	\N	\N	2026-05-09 20:04:40.672385	T
25	9	2	\N	\N	libre	1	\N	2026-05-07 14:34:22.108808	2026-05-11 21:36:29.90744	\N	\N	\N	\N	\N	\N	2026-05-11 21:36:29.907255	T
26	5	2	\N	\N	libre	1	\N	2026-05-07 21:35:10.329901	2026-05-09 20:26:01.961133	\N	\N	\N	\N	\N	\N	2026-05-09 20:26:01.960941	T
\.


--
-- Data for Name: metodos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.metodos (id_metodo, nombre_metodo, trial542) FROM stdin;
1	Efectivo	T
2	Tarjeta débito	T
3	Tarjeta crédito	T
4	Transferencia bancaria	T
5	Nequi	T
6	Daviplata	T
7	PSE	T
8	Bono de consumo	T
9	Pago mixto	T
10	Cortesía interna	T
\.


--
-- Data for Name: musica; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.musica (id_musica, nombre_musica, artista_musica, duracion_musica, trial542) FROM stdin;
11	Tus besos son 	Pastor Lopez	\N	T
12	Ordinary Girl	Hannah Montana	3.00	T
15	Cancion prueba	Artista prueba	3.50	T
21	Flowers	Miley Cyrus	3.20	T
22	Greedy	Tate McRae	2.45	T
23	Houdini	Dua Lipa	3.05	T
24	Paint The Town Red	Doja Cat	3.50	T
25	Calm Down	Selena Gomez	3.59	T
26	Classy 101	Feid	3.35	T
27	Perro Negro	Bad Bunny	4.10	T
28	LALA	Myke Towers	3.17	T
29	QLONA	Karol G	3.25	T
30	Si Antes Te Hubiera Conocido	Karol G	3.15	T
31	Un x100to	Grupo Frontera	3.15	T
32	La Bachata	Manuel Turizo	2.42	T
33	Monaco	Bad Bunny	4.28	T
34	Gata Only	FloyyMenor	3.40	T
35	Los del Espacio	Lit Killah	5.10	T
36	Dance The Night	Dua Lipa	2.56	T
37	Cruel Summer	Taylor Swift	2.58	T
38	Kill Bill	SZA	2.33	T
39	Seven	Jungkook	3.12	T
40	As It Was	Harry Styles	2.47	T
41	Die With A Smile	Lady Gaga, Bruno Mars	4.11	T
42	Birds of a Feather	Billie Eilish	3.30	T
43	Please Please Please	Sabrina Carpenter	3.06	T
44	A Bar Song (Tipsy)	Shaboozey	2.51	T
45	Fortnight	Taylor Swift, Post Malone	3.48	T
46	Good Luck, Babe!	Chappell Roan	3.38	T
47	we can't be friends	Ariana Grande	3.48	T
48	MILLION DOLLAR BABY	Tommy Richman	2.35	T
49	I Had Some Help	Post Malone, Morgan Wallen	2.58	T
50	TEXAS HOLD 'EM	Beyonce	3.55	T
51	Beautiful Things	Benson Boone	3.00	T
52	Espresso	Sabrina Carpenter	2.55	T
53	Too Sweet	Hozier	4.11	T
54	Lose Control	Teddy Swims	3.31	T
55	Belong Together	Mark Ambor	2.28	T
56	Saturn	SZA	3.06	T
57	Gata Only	FloyyMenor, Cris Mj	3.42	T
58	Perro Negro	Bad Bunny, Feid	4.14	T
59	Luna	Feid, ATL Jacob	3.16	T
60	hoje	portugués	\N	T
64	la boda	Romeo Santos	\N	T
66	Encantadora	Yandel	\N	T
67	broadway baby	lea michele	4.00	T
74	heart attack	Demi Lovato	\N	T
79	Dont Forget	Demi Lovato	\N	T
80	Traitor	Sabrina Carpenter	\N	T
81	Al aire	Morat	\N	T
82	Catch Me	Demi Lovato	\N	T
83	Arabella	Artic Monkeys	\N	T
84	stars	demi lovato	\N	T
85	love song baby	Selena Gomez	\N	T
86	since u been gone	Kelly Clarkson	\N	T
87	traitor	olivia rodrigo	\N	T
88	get free	lana del rey	\N	T
89	hate on mee	glee	\N	T
90	beatiful	moby	\N	T
91	pressure	paramore	\N	T
92	bella traición	Belinda	\N	T
93	hell to the no	glee	\N	T
94	Brooklyn baby	lana del rey	\N	T
\.


--
-- Data for Name: notificaciones_clientes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notificaciones_clientes (id_notificacion, id_usuario, titulo, mensaje, tipo, leida, fecha_envio, fecha_lectura, trial542) FROM stdin;
1	207	Santa Juana Gastrobar tiene algo preparado para ti…	Hola, Andres?\r\nTu mesa está lista y la noche apenas comienza.\r\n\r\n? La música ya está sonando\r\n?️ Nuestro menú está disponible para ti\r\n?️ Y el ambiente… está perfecto\r\n\r\nVen y vive la experiencia Santa Juana.\r\nTe estamos esperando. ?	general	1	2026-04-10 17:38:08.398295	2026-04-10 17:38:20.891974	T
2	207	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	1	2026-04-30 02:04:03.025549	2026-05-01 19:42:18.810261	T
3	9	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025629	\N	T
4	221	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025666	\N	T
5	6	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025702	\N	T
6	219	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025733	\N	T
7	206	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025766	\N	T
8	214	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025797	\N	T
9	212	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.02583	\N	T
10	204	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025862	\N	T
11	7	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025894	\N	T
12	10	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025926	\N	T
13	8	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.025959	\N	T
14	12	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.02599	\N	T
15	205	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.026056	\N	T
16	216	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.026091	\N	T
17	209	Descuento exclusivo por tiempo limitado	Activa este beneficio desde BonGusto y aprovecha un descuento especial en platos, bebidas o combos seleccionados.	promo	0	2026-04-30 02:04:03.026124	\N	T
\.


--
-- Data for Name: pagos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pagos (id_pago, id_pedido, id_metodo, estado_pago, trial542) FROM stdin;
1	1	3	pagado	T
2	2	2	pagado	T
3	3	1	pagado	T
4	4	5	pendiente	T
5	5	4	pagado	T
6	6	5	pagado	T
7	7	3	pendiente	T
8	8	2	pagado	T
9	9	1	pagado	T
10	10	6	pendiente	T
\.


--
-- Data for Name: pedido_detalle; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pedido_detalle (id_detalle, id_pedido, id_producto, cantidad, precio, trial542) FROM stdin;
1	1	1	1	19000.00	T
2	1	2	1	29000.00	T
3	2	2	1	29000.00	T
4	3	4	1	34000.00	T
5	4	3	1	32000.00	T
6	4	7	1	13000.00	T
7	5	5	1	18000.00	T
8	6	6	1	19000.00	T
9	7	8	2	21000.00	T
10	8	9	2	9000.00	T
14	14	19	2	37500.00	T
15	14	108	2	48000.00	T
210	49	19	2	37500.00	T
211	49	20	2	39500.00	T
212	49	22	2	34000.00	T
213	49	23	2	51500.00	T
230	48	1	3	35000.00	T
231	48	2	3	28000.00	T
232	48	3	2	34800.00	T
233	48	4	3	28000.00	T
237	26	50	3	44500.00	T
238	26	52	3	16500.00	T
239	26	89	2	64800.00	T
240	21	35	3	39500.00	T
241	19	19	2	37500.00	T
245	18	19	2	37500.00	T
246	18	21	2	48500.00	T
247	18	23	2	51500.00	T
249	17	1	2	35000.00	T
253	16	47	3	37000.00	T
254	16	46	3	37500.00	T
255	16	48	3	64500.00	T
257	15	19	2	37500.00	T
258	15	20	2	39500.00	T
259	50	19	2	37500.00	T
263	13	19	2	37500.00	T
264	13	21	2	48500.00	T
265	13	23	2	51500.00	T
267	12	28	3	35000.00	T
268	12	29	3	44500.00	T
269	11	19	1	37500.00	T
270	51	67	2	63500.00	T
277	52	19	2	37500.00	T
278	52	20	2	39500.00	T
279	52	21	2	48500.00	T
280	52	22	2	34000.00	T
282	53	19	2	37500.00	T
283	53	23	2	51500.00	T
284	54	1	2	35000.00	T
288	55	19	2	37500.00	T
289	55	46	2	37500.00	T
290	55	5	5	26000.00	T
291	56	1	5	35000.00	T
292	57	19	2	37500.00	T
293	58	23	4	51500.00	T
298	59	108	1	48000.00	T
299	59	109	1	48000.00	T
300	59	110	1	48000.00	T
301	59	111	1	48000.00	T
314	63	1	2	35000.00	T
315	64	19	2	37500.00	T
316	65	19	2	37500.00	T
317	66	19	3	37500.00	T
319	62	80	3	69500.00	T
320	62	82	3	60500.00	T
321	67	46	4	37500.00	T
322	68	19	3	37500.00	T
323	69	4	2	28000.00	T
324	69	5	2	26000.00	T
325	69	17	1	28000.00	T
326	61	19	1	37500.00	T
\.


--
-- Data for Name: pedido_encabezado; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pedido_encabezado (id_pedido, id_usuario, id_restaurante, tipo_pedido, mesa_id, fecha_pedido, total_pedido, estado_pedido, fecha_finalizacion, trial536) FROM stdin;
1	6	1	restaurante	\N	2025-01-05	52000.00	abierto	\N	T
2	7	1	restaurante	\N	2025-01-06	29000.00	abierto	\N	T
3	8	1	restaurante	\N	2025-01-07	34000.00	abierto	\N	T
4	9	1	restaurante	\N	2025-01-08	45000.00	abierto	\N	T
5	10	1	restaurante	\N	2025-01-09	31000.00	abierto	\N	T
6	6	1	restaurante	\N	2025-01-10	43000.00	abierto	\N	T
7	7	1	restaurante	\N	2025-01-11	60000.00	abierto	\N	T
8	8	1	restaurante	\N	2025-01-12	38000.00	abierto	\N	T
9	9	1	restaurante	\N	2025-01-13	25000.00	abierto	\N	T
10	10	1	restaurante	\N	2025-01-14	19000.00	abierto	\N	T
11	207	1	restaurante	24	2026-05-09	37500.00	finalizado	2026-05-09 19:13:46.86806	T
12	207	1	restaurante	20	2026-05-09	238500.00	finalizado	2026-05-09 19:13:03.333472	T
13	207	1	restaurante	19	2026-05-09	275000.00	finalizado	2026-05-09 18:59:53.674913	T
14	212	1	restaurante	\N	2026-03-31	171000.00	abierto	\N	T
15	207	1	restaurante	20	2026-05-09	154000.00	finalizado	2026-05-09 18:46:12.788827	T
16	207	1	restaurante	20	2026-05-09	417000.00	finalizado	2026-05-09 18:45:41.370569	T
17	207	1	restaurante	19	2026-05-09	70000.00	finalizado	2026-05-09 18:30:37.348585	T
18	207	1	restaurante	22	2026-05-09	275000.00	finalizado	2026-05-09 18:29:27.442767	T
19	207	1	restaurante	20	2026-05-09	75000.00	finalizado	2026-05-09 18:28:34.085459	T
20	219	1	restaurante	\N	\N	30000.00	abierto	\N	T
21	207	1	restaurante	17	2026-05-09	118500.00	finalizado	2026-05-09 18:19:26.611913	T
22	221	1	restaurante	\N	\N	10.00	abierto	\N	T
26	207	1	restaurante	22	2026-05-09	312600.00	finalizado	2026-05-09 18:18:40.696885	T
48	207	1	restaurante	20	2026-05-09	342600.00	finalizado	2026-05-09 18:17:34.006852	T
49	207	1	restaurante	25	2026-05-09	325000.00	finalizado	2026-05-09 18:01:46.410858	T
50	207	1	restaurante	20	2026-05-09	75000.00	finalizado	2026-05-09 18:58:14.823991	T
51	207	1	restaurante	25	2026-05-09	127000.00	finalizado	2026-05-09 19:14:44.744492	T
52	207	1	restaurante	17	2026-05-09	319000.00	finalizado	2026-05-09 19:15:38.273092	T
53	207	1	restaurante	22	2026-05-09	178000.00	finalizado	2026-05-09 19:16:35.048605	T
54	207	1	restaurante	19	2026-05-09	70000.00	finalizado	2026-05-09 20:08:12.736741	T
55	207	1	restaurante	17	2026-05-09	280000.00	finalizado	2026-05-09 20:29:48.831792	T
56	224	1	restaurante	18	2026-05-09	175000.00	finalizado	2026-05-09 20:29:49.819571	T
57	207	1	restaurante	17	2026-05-09	75000.00	finalizado	2026-05-09 20:30:56.361372	T
58	207	1	restaurante	17	2026-05-09	206000.00	finalizado	2026-05-09 20:32:25.219664	T
59	207	1	restaurante	17	2026-05-09	192000.00	finalizado	2026-05-09 21:28:19.347843	T
61	207	1	restaurante	17	2026-05-09	37500.00	finalizado	2026-05-11 17:32:44.273249	T
62	207	1	restaurante	17	2026-05-09	390000.00	finalizado	2026-05-10 00:44:12.147199	T
63	207	1	para_llevar	\N	2026-05-09	70000.00	finalizado	2026-05-10 00:33:18.264429	T
64	207	1	para_llevar	\N	2026-05-09	75000.00	finalizado	2026-05-10 00:33:17.506363	T
65	207	1	para_llevar	\N	2026-05-09	75000.00	finalizado	2026-05-10 00:33:16.231568	T
66	207	1	para_llevar	22	2026-05-09	112500.00	finalizado	2026-05-10 00:35:35.930917	T
67	207	1	para_llevar	\N	2026-05-09	150000.00	finalizado	2026-05-10 00:45:01.062175	T
68	207	1	para_llevar	\N	2026-05-09	112500.00	finalizado	2026-05-10 01:28:02.501613	T
69	207	1	para_llevar	\N	2026-05-09	136000.00	finalizado	2026-05-10 01:49:11.423171	T
\.


--
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.permisos (id_permiso, nombre_permiso, descripcion, trial542) FROM stdin;
1	gestionar_usuarios	Crear, editar y desactivar usuarios	T
2	gestionar_menu	Administrar productos del menú	T
3	gestionar_pedidos	Crear y actualizar pedidos	T
4	gestionar_reservas	Gestionar reservas de mesas	T
5	ver_reportes	Ver reportes y estadísticas del local	T
6	gestionar_musica	Agregar y aprobar solicitudes de música	T
7	gestionar_empleados	Asignar empleados al restaurante	T
8	gestionar_pagos	Registrar y confirmar pagos	T
9	ver_carta	Ver carta completa del restaurante	T
10	hacer_pedidos	Hacer pedidos desde la app cliente	T
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.productos (id_producto, nombre_producto, precio_producto, descripcion_producto, id_menu, id_cate, id_res, estado, trial536) FROM stdin;
1	CHIA PUDDING PARFAI	35000.00	Chía pudding infusionado en pitaya rosada, yogurt griego, granola de la casa, arándanos, kiwi y frambuesas.	1	75	1	activo	T
2	JUANA’S BOWL	28000.00	Cremoso de leche de coco mantequilla de maní y mango, granola de la casa,kiwi, pitaya y frambuesas.	1	75	1	activo	T
3	AÇAI BOWL	34800.00	Cremoso de açai, banano, arándanos, fresa, granola de la casa y miel del vichada.	1	75	1	activo	T
4	AVENA TRASNOCHADA DE AÇAI	28000.00	Avena hidratada en leche de coco, pink pitaya, yogurt griego, frambuesa, arándanos, fresa, con helado de açai y granola de la casa.	1	74	1	activo	T
5	AVENA TRASNOCHADA	26000.00	Avena hidratada en leche de coco, matcha y pistacho, yogurt griego,manzana verde, kiwi y granola de la casa.	1	74	1	activo	T
17	AGUACHILE DE FRUTAS	28000.00	Melón, sandia, manzana verde, aguachile de limón y chile serrano.	1	74	\N	activo	T
18	FETA SANDIA	30000.00	Sandia, queso feta, miel y nuez pecan caramelizada.	1	74	\N	activo	T
19	BRIE TOAST	37500.00	Queso brie con miel trufada, fruto secos, puré de manzana con mantequilla avellanada y tostadas de pan artesanal.	2	74	\N	activo	T
20	STRACCIATELLA TOAST	39500.00	Tostada en pan artesanal, queso stracciatella, huevos pochados, queso Parmigiano Reggiano D.O.P, prosciutto, pistacho y miel de albahaca.	2	74	\N	activo	T
21	AVOCADO TOAST	48500.00	Tostada de pan artesanal, salmón ahumado, huevo pochado, salsa bernesa, aguacate fresco y crocante de parmesano.	2	74	\N	activo	T
22	BANANA TOAST	34000.00	Pan artesanal de banano con crema de maní, queso crema, nuez pecan, miel de maple, banano y açai.	2	74	\N	activo	T
23	TOSTADA FRANCESAS DE PISTACHO	51500.00	Pan artesanal de banano con cremoso de pistacho, crema aireada de limón, queso mozzarella y gelato de pistacho de la casa.	2	74	\N	activo	T
24	BURRATA WAFFLES	52500.00	Waffles con prosciutto o salmón ahumado, pesto, burrata, mermelada de tomate cherry, tierra de achiras y miel de albahaca.	3	74	\N	activo	T
25	WAFFLES ROTOS	42500.00	Waffles de la casa en harina de yuca, pesto genovese, huevo pochado, salsa bernesa, espárragos salteados y tomate cherry. Opción: Salmón ahumado o prosciutto.	3	74	\N	activo	T
26	STRACIATELLA FLAT CROISSANT	48500.00	Croissant sandwich, stracciatella, reducción de balsámico con óleo trufado, prosciutto, rúgula, pistacho y miel de albahaca.	3	74	\N	activo	T
27	FLAT CROISSANT BEEF	45500.00	Croissant flat, bife de paleta en ponzu de sésamo, guacamole, crocante de maíz y mix asiatico.	3	74	\N	activo	T
28	CHOCLO PANCAKES	35000.00	Pancakes de maíz choclo y carne mechada, queso 7 cueros, suero costeño, salsa criolla de la casa, elotes, salsa bernesa y huevo frito.	4	74	\N	activo	T
29	MINI AREPAS DE PULPO	44500.00	Arepas santandereanas, cremoso de ají amarillo, pulpo rebozado en harina de arroz, chimichurri de almendras y sésamo.	4	74	\N	activo	T
30	AREPA DE LOMO SALTADO	35000.00	Arepa de maíz peto, cebolla caramelizada en reducción, lomo saltado, Cremoso de aji amarillo, aguacate y tortilla de huevo.	4	74	\N	activo	T
31	AREPA DE CHOCLO	27000.00	Arepa de choclo, miel, suero costeño, crocante de prosciutto, stracciatella Acompañada de miel de albahaca.	4	74	\N	activo	T
32	CHILAQUILES	34500.00	Salsa de chiles secos y tomates rostizados, nachos, suero costeño, queso costeño, aguacate, cebolla morada, pollo mechado, huevo frito. Opción con salsa verde o salsa roja.	4	74	\N	activo	T
33	MR. AVOCADO	37000.00	Aguacate encostrado en sesamo y quinoa real, huevo pochado, salsa de stracciatella y queso azul, mix asiáticos, espárragos y portobellos crotantes.	4	74	\N	activo	T
34	HUEVOS ROTOS	35500.00	Huevos rotos, papa criolla crocante, salsa de tomates asados y chiles secos y prosciutto, gratinado en queso mozzarella y parmigiano.	4	74	\N	activo	T
35	OMELETTE DE SALMÓN	39500.00	Salmon ahumado, pesto de cilantro, setas crocantes y espárragos.	5	74	\N	activo	T
36	OMELETTE STRACIATELLA	32500.00	Crocante de prosciutto, stracciatella, miel de albahaca.	5	74	\N	activo	T
37	OMELETTE DE PAVO	32500.00	Queso, pavo y rúgula.	5	74	\N	activo	T
38	HUEVOS AL GUSTO	22500.00	Revueltos, fritos, pochados y claras acompañados con rúgula y pan artesanal. A elección: queso mozarella, queso costeño, tofu parrillado, salsa bernesa, cebolla, tomate, ocineta, maíz, pavo, salmón o prosciutto.	5	74	\N	activo	T
39	BLUEBERRY	42500.00	Pancakes de blueberry y vainilla, compota de arándanos, chocolate blanco, frambuesas, reducción de lychee y cremoso de limón con nuez pecán garrapiñadas.	13	74	\N	activo	T
40	FIT PUMPKIN PANCAKES	42500.00	Pancakes de ahuyama en harina de almendra, miel de ahuyama, yogurt griego, nuez pecán, arándanos frescos.	13	74	\N	activo	T
41	TRES LECHES PANCAKES	42000.00	Pancakes de vainilla bañados en leche de coco, cremoso de tiramisú, frutos rojos, arequipe, almendras y helado de vainilla.	13	74	\N	activo	T
42	NUTELLA PANCAKES	44500.00	Pancakes de vainilla, nutella, avenalla crocante, banano, caramelo salado y kínder bueno.	13	74	\N	activo	T
43	FIT PANCAKES DE CREMINO DE PISTACHO	44500.00	Pancakes de pistacho en harina de almendras, avena, stevia, cremino de pistacho, cremoso de limón y frambuesa.	13	74	\N	activo	T
44	COCO PANCAKES	42500.00	Pancakes de vainilla con crema de coco, piñas en vino y canela, coco deshidratado, almendras laminadas, miel y salsa tres leches de coco.	13	74	\N	activo	T
45	SOUFFLÉ PANCAKES DE CREME BROULEE	42500.00	Fluffy pancakes, creme brulee de vainilla, miel, arándanos, frambuesas, nuez pecan y crumble de galleta.	13	74	\N	activo	T
46	HUEVOS ROTOS VEGETARIANOS	37500.00	Huevos rotos, papa criolla crocante, salsa de tomates asados y chiles secos, champiñón parís, portobello gratinado con queso mozzarella y parmigiano, col de bruselas y tomates secos. * Vegetariana.	6	74	\N	activo	T
47	MR. AVOCADO VEG	37000.00	Aguacate encostrado en sesamo y quinoa real, huevo pochado, salsa de stracciatella y queso azul, mix asiáticos, espárragos y portobellos crotantes y tofu. Opción vegana.	6	74	\N	activo	T
48	WAFFLES ROTOS DE BERENJENA	64500.00	Waffles de la casa en harina de yuca, pesto genovese, huevo pochado, salsa bernesa, espárragos salteados, tomate cherry, berenjena en ponzu de shitakes.	6	74	\N	activo	T
49	STRACIATELLA FLAT CROISSANT (VEGETARIANO)	40500.00	Croissant sandwich, stracciatella, reducción de balsámico con óleo trufado, rúgula, pistacho, miel de albahaca y portobellos.	6	74	\N	activo	T
50	PANCAKES DE NUTELLA	44500.00	Pancakes de vainilla, nutella, avenalla crocante, banano, caramelo salado y kínder bueno.	15	76	\N	activo	T
51	CHICKEN & WAFFLES	42500.00	Waffle de yuca con pollo crocante, miel de maple, yogurt griego y frutos rojos.	15	76	\N	activo	T
52	HUEVOS REVUELTOS	16500.00	Huevos con Queso mozarella, maíz y tocineta.	15	76	\N	activo	T
53	TIRADITO DE SALMÓN	54400.00	Salmón fresco en chili thai, salsa de queso mascarpone y jalapeño, tobiko negro y queso costeño frito.	16	75	\N	activo	T
54	SASHIMI DE SALMÓN	54400.00	Salmón fresco, stracciatella, pistachos caramelizados, miel trufada, quinoa crocante, tobiko y cremoso de jalapeño, en cama de tapioca crocante.	16	75	\N	activo	T
55	CEVICHE CARIBEÑO	61500.00	Pesca blanca, suero costeño, leche de tigre de coco, cebolla ocañera, cilantro, limón mandarino, maíz peto crocante, plátano maduro, chips de yuca y togarashi.	16	75	\N	activo	T
56	TARTAR DE ATÚN	64800.00	Atún en salsa de Anguila, suero costeño, leche de tigre de ají amarillo y uchuva, pepino europeo encurtido en albahaca, tapioca crocante y aguacate.	16	75	\N	activo	T
57	SALMÓN CRISPY RICE	58000.00	Tartar de Salmón en leche de tigre de rocoto, reducción de anguila, jengibre, limón mandarino y cubos de crispy rice.	16	75	\N	activo	T
58	TIRADITO DE PESCA BLANCA	64200.00	Pesca blanca, ponzu de shitake, leche de tigre de uchuva, semillas de mostaza, rábanos encurtidos en flor de Jamaica, aguacate tatemado y crocante de camote.	16	75	\N	activo	T
59	CEVICHE A LA JUANA	57500.00	Ceviche de pesca blanca, pulpo, maíz tostado, suero costeño, cebolla ocañera, leche de tigre, helado de chontaduro y romero en reducción de flor de clitoria, albahaca y limonaria.	16	75	\N	activo	T
60	TOSTADAS DE ATÚN	49500.00	Tortilla de maiz crocante, atún en salsa de anguila, suero costeño, aguacate al carbón, quinoa y camote crocante. (4 unidades)	16	75	\N	activo	T
61	BEEF TARTAR CRISPY RICE	44200.00	Tartar de lomo,shitakes, cremoso de philadelphia y titote crocante de arroz y trufa.	16	75	\N	activo	T
62	CARPACCIO DE RES JUANAS ON THE ROCKS	645000.00	Croquetas de jamón serrano, carpaccio de res trufado, tomates confitados en albahaca y hierbabuena, mix asiáticos, reducción de balsámico y lascas de queso parmesano.	16	75	\N	activo	T
63	CARPACCIO DE SALMÓN	65000.00	Salmón fresco en chili thai de gulupa, cremoso de mascarpone, chimichurri de almendras, crocante de maíz y masa philo.	16	75	\N	activo	T
64	TACOS DE JAIBA ACEVICHADA	74500.00	Tortilla de maíz, jaiba, suero costeño, mayonesa japonesa, cebolla ocañera, aguacate, limón mandarino, aceité de ajonjolí y crocante de camote. (3 unidades)	16	75	\N	activo	T
65	TACOS DE TARTAR DE SALMÓN	40500.00	Tortilla de maíz, salmón fresco en leche de tigre de guajillo, col de Bruselas miel de albahaca y vinagre de arroz. ( 3 unidades )	16	75	\N	activo	T
66	TACOS DE PANCETTA	32500.00	Tortilla de maíz morado, pancetta en bbq thai, cremoso de ají amarillo, maíz dulce y crocante de camote. (3 unidades)	16	75	\N	activo	T
67	CAMARONES ENCOCADOS	63500.00	Camarones crocantes en panko y coco, mayonesa trufada de shitake y aguacate tatemado con togarashi	17	75	\N	activo	T
68	DUMPLINGS DE SHIITAKE	43000.00	Dumplings de cerdo y shitake, salsa de chiles dulces, jengibre y coriandro con salsa nikiri de tamarindo.	17	75	\N	activo	T
69	DUMPLINGS VEGETARIANOS	58500.00	Papa nativa, shitake, portobello, kimchi parrillado, miel de romero y licor de almendras.	17	75	\N	activo	T
70	SCALLOPS Y MARISCOS AL FUEGO	64000.00	Scallops y mariscos a la robata, tartar de langostino, mantequilla avellanada, picadillo de portobello, pimentón ahumado, cebolla ocañera, cilantro y salsa de anguila.	18	76	\N	activo	T
71	PULPO A LA ROBATA	84000.00	Pulpo parrillado, puré de maíz dulce, col de Bruselas en vinagre de arroz, salsa de chiles secos tomillo y quinoa crocante.	18	76	\N	activo	T
72	ENSALADA DE HIGOS	35500.00	Higos al grill, queso feta y rúgula, nuez pecan, macadamia caramelizada en salsa de albaricoque y limonaria, tomates secos.  Adición de: pollo, camarones, setas crocantes.	19	84	\N	activo	T
73	COL DE BRUSELAS	39000.00	Col de Bruselas lacadas en miel de chía y amapola, salsa de romesco ahumada.	19	84	\N	activo	T
74	CARPACCIO DE BERENJENA	49500.00	Carpaccio de berenjena asada con ponzu de shiitake y sésamo, tzatziki, tomates osmotizados en albahaca y hierba buena, edamames trufados y tofu parrillado.  + Adición de pollo, lomo o camarones	19	84	\N	activo	T
75	BURRATA	48500.00	Burrata de búfala, tomates salteados en miel de togarashi, reducción de balsámico trufada, mix asiático, vinagre de arroz, ají dulce, crocante de tapioca y sésamo.	19	84	\N	activo	T
76	COLIFLOR	25500.00	Coliflor al horno lacado en salsa de tomillo y cítricos, tzatziki de hierba buena, albahaca y pepino europeo, pesto de cilantro.	19	84	\N	activo	T
77	SUSHI CARIBEÑO	52500.00	Arroz japones de coco, langostino crocante, queso philadelphia, mango, aguacate, tartar de cangrejo y crocante de coco.	20	76	\N	activo	T
78	SUSHI LANGOSTINO	55500.00	Langostinos apanados en harina de coco, aguacate, pepino, queso philadelphia leche de tigre de guajillo y masa philo.	20	76	\N	activo	T
79	SUSHI DE ANGUILA	57500.00	Salmón lacado en soya y aceite de sésamo, aguacate, pepino, queso philadelphia y anguila en ponzu de lulo.	20	76	\N	activo	T
80	SORRENTINOS DE ZAPALLO	69500.00	Rellenos de zapallo y romero en salsa de trufa y parmesano	21	76	\N	activo	T
81	RIGATONI A LA AMATRICCIANA	57500.00	Rigatoni, salsa amatriciana, guanciale, guindillas, tomates secos y queso pecorino.	21	76	\N	activo	T
82	CACIO Y PEPE	60500.00	Tonnarelli pecorino, pimienta negra, tartufo y tartar de atún.	21	76	\N	activo	T
83	TONARELLI AL PESTO	62500.00	Camarones al carbon, pesto de cilantro, queso mascarpone y pecorino rallado.	21	76	\N	activo	T
84	ARROZ CREMOSO DEL MAR	98000.00	Arroz encocado con salsa de tomates rostizados y furikake, langostinos, camarón, pulpo, quinoa crocante y mango encurtido en hierbabuena.	22	76	\N	activo	T
85	RISOTTO DE PANCETA	78500.00	Arroz arbóreo en salsa de pecorino, shitake, tomates secos, panceta en bbq thai, parmigiano y pistachos caramelizados.	22	76	\N	activo	T
86	RISOTTO AL CURRY	69500.00	Risotto de curry verde con camarón, atún de aleta amarilla sellado, hierbabuena y queso pecorino.	22	76	\N	activo	T
87	ARROZ AL WOK	76000.00	Arroz salteado en salsa de anguila, leche de coco, camarones, guanciale y panceta confitada en ponzu de shitake y pistachos caramelizados, con coco deshidratado.	22	76	\N	activo	T
88	RISSOTO DE PECORINO Y TOMATES SECOS	76500.00	Risotto en salsa de pecorino, shitake, tomates secos, sésamo, parmiggiano, pistachos caramelizados y crocante de setas. * Vegetariano.	22	76	\N	activo	T
89	POLLO CONFIT	64800.00	Pollo confitado en ponzu de setas, arroz en salsa de anguila, pesto de cilantro, edamames, tomates secos, quinoa crocante, tierra de pistacho y carantanta.	23	76	\N	activo	T
90	PESCA BLANCA	69000.00	Pesca lacada en ponzu de lulo, puré de plátano trufado, setas confitadas en pesto de cilantro, camarones salteados en mantequilla avellanada y quinua crocante.	23	76	\N	activo	T
91	COSTILLAS DE JUANA	67500.00	Costillas lacadas en bbq de pisco y miso, papa criolla crocante en salsa de Ají amarillo y cilantro, mix asiático y cebolla ocañera encurtida en flor de Jamaica	23	76	\N	activo	T
92	TARTAR DE ATÚN	64800.00	Atún en salsa de Anguila, suero costeño, leche de tigre de ají amarillo y uchuva, pepino europeo encurtido en albahaca, tapioca crocante y aguacate.	23	76	\N	activo	T
93	SALMÓN CRISPY RICE	58000.00	Tartar de Salmón en leche de tigre de rocoto, reducción de anguila, jengibre, limón mandarino y cubos de crispy rice.	23	76	\N	activo	T
94	TIRADITO DE PESCA BLANCA	64200.00	Pesca blanca, ponzu de shitake, leche de tigre de uchuva, semillas de mostaza, rábanos encurtidos en flor de Jamaica, aguacate tatemado y crocante de camote.	23	76	\N	activo	T
95	TOMAHAWK	345500.00	Corte certificado de 1000 Gr, Papa criolla con setas, ensalada de higos y mantequilla de romero trufada.	23	76	\N	activo	T
96	BIFE TATAKI	73900.00	Bife parrillado salsa de chiles secos y tomillo, cebolla morada, cilantro, salsa de camarones en ají amarillo con coco y tortillas de maíz .	23	76	\N	activo	T
97	LOMO PONZU PORCINI	98800.00	Lomo de res en ponzu de porcini, hummus de garbanzo y marañón, zanahoria baby lacada en miel de romero y togarashi, espinaca asada en vinagre de arroz.	23	76	\N	activo	T
98	TATAKI DE SALMÓN	65000.00	Salmón fresco, salsa de chiles, tomillo y cítricos, cebolla morada, cilantro y tortillas de maíz	23	76	\N	activo	T
99	TIRADITO DE ATÚN	65000.00	Atún aleta amarilla, en salsa de curry verde, picadillo de pimentón ahumado cebolla ocañera shitake y pulpo.	23	76	\N	activo	T
100	ENTRAÑA	98800.00	Entraña, chimichurri de almendras, cascos de papa criolla, setas crocantes, sal de togarashi, ralladura de limón, panela, salsa de trufa y shitake.	23	76	\N	activo	T
101	NEW YORK STEAK	132000.00	New york certificada, chimichurri de almendras, cascos de papa criolla, setas crocantes, sal de togarashi, ralladura de limón, panela, salsa de trufa y shitake.	23	76	\N	activo	T
102	LOMO PARMIGGIANO REGGIANO	89800.00	Lomo de res, puré de papa nativa, salsa de parmigiano y trufa, Scallops, shitake y mantequilla avellanada.	23	76	\N	activo	T
103	KEY LIME	32000.00	Curd de limón, merengue italiano, biscuit crumble y gelato de vainilla.	24	78	\N	activo	T
104	TARTA DE QUESO	32000.00	Tarta horneada de queso azul con un fino bruleado de anís y canela, acompañado de un crocante de alfajor.	24	78	\N	activo	T
105	GUANDUIA	32000.00	Souffle melcochudo de gianduia, avellanas tostadas, ganache de mantequilla quemada, pop corn de caramelo salado y teriyaki de lulo.	24	78	\N	activo	T
106	TORTA DE ZANAHORIA FIT	28000.00	Harina de almendras, almendras tostadas, canela, coco deshidratado, zanahoria con frosting de queso crema con limón y helado de vainilla y canela de la casa.	24	84	\N	activo	T
107	SOUFFLÉ PANCAKES DE CREME BROULEE	42500.00	Fluffy pancakes, creme brulee de vainilla, miel, arándanos, frambuesas, nuez pecan y crumble de galleta.	24	78	\N	activo	T
108	MARGARITA DE TAMARINDO	48000.00	Tequila Altos reposado, tamarindo, limoncello y sal cítrica. Perfil: Cítrico + tropical.	26	83	\N	activo	T
109	CHILI MARGARITA	48000.00	Mezcal, arancello, lulo y feijoa, mezcla de chiles ahumados, bañado en coco con almendras y sal con chipotle.	26	83	\N	activo	T
110	JUANA´S MEZCAL	48000.00	Mezcal, Tequila reposado, piña con coriandro y limoncello. Perfil: Ahumado + especiado.	26	83	\N	activo	T
111	DESQUITE	48000.00	Aguardiente Desquite, pepino, albahaca, vermouth bianco con notas aromáticas de cereza y nuez moscada Perfil: fresco + sofisticado.	26	83	\N	activo	T
112	TULUM	48000.00	Mezcal, mango con chile, beso trinidad, piña y sal de Tajín. Perfil: ahumado + tropical + picante.	26	83	\N	activo	T
113	NY SOUR TWIST	48000.00	Whiskey Glenlivet Founders, vino tempranillo, cordial de lulo, piña y limón.	26	83	\N	activo	T
114	PASSION GLENLIVET	48000.00	Whiskey Glenlivet founders, maracuyá y limón.	26	83	\N	activo	T
115	PISCO Y JALAPEÑO	48000.00	Pisco macerado con jalapeño y gulupa cítrica.	26	83	\N	activo	T
116	LUNA EN VENUS	48000.00	Gin infusionado en té oonlong, limón con pimienta blanca y rosada, vodka en extracto de pea té y rosas.	26	83	\N	activo	T
117	JUANA´S MULE	48000.00	Vodka, gin, infusión herbal con jengibre y ginger ale.	26	83	\N	activo	T
118	PISCO MARACUYÁ	48000.00	Pisco quebranta, maracuyá, uchuva y oporto blanco.	26	83	\N	activo	T
119	GEORGY 56	48000.00	Gin selva, eucalipto, cidrón, limoncello y prosecco.	26	83	\N	activo	T
120	PISCO VERANIEGO	48000.00	Pisco sour con hielo de tinto de verano.	26	83	\N	activo	T
121	CARAJILLO	48000.00	Espresso illy y licor 43.	26	83	\N	activo	T
122	ESPRESO MARTINI	48000.00	Vodka, espresso y licor de café de la casa.	26	83	\N	activo	T
123	EXCELSIOR	48000.00	Whisky Glenlivet founder’s, tamarindo y oporto blanco.	26	83	\N	activo	T
124	LULO OLD FASHIONED	48000.00	Whiskey Bourbon, elixir de lulo, bitter y mezcal	26	83	\N	activo	T
125	WHITE NEGRONI	48000.00	Gin, vermouth extra dry, bitter bianco de luxardo y espuma de maracuyá con limonaria.	26	83	\N	activo	T
126	VODKA LAVANDA	48000.00	Vodka, arándanos, lavanda, pepino, soda y vermouth bianco.	26	83	\N	activo	T
127	VICHE MANGLAR	48000.00	Viche Manglar, cordial de manzanilla con limonaria, vermouth bianco, brotes de manzanilla y beso de carolina.	26	83	\N	activo	T
128	GIN OCLOCK	48000.00	Gin Selva infusionada con té de frambuesa, ciruela orgánica, zumo de limón, sirope simple y soda.	26	83	\N	activo	T
129	JUANAS GIN	48000.00	Gin, cordial herbal, bitter de cardamomo y tónica.	26	83	\N	activo	T
130	MARGARITA A LAS NUBES	48000.00	Mezcal, Cointreau, frutos rojos, bitters de Angostura y aire salino.	26	83	\N	activo	T
131	VICHE	48000.00	Viche Manglar, cordial herbal, jengibre, ginger ale y beso de carolina.	26	83	\N	activo	T
132	TESORO DE BOTRÁN	48000.00	Botrán 12 años, cordial de limonaria y hierbabuena, jerez bañado en coco, soda de chipotle y morita.	26	83	\N	activo	T
133	PADRINO	48000.00	Whiskey Escoces, amaretto con albaricoques y naranja.	27	83	\N	activo	T
134	CAIPIRINHA DE MARACUYÁ	48000.00	Cachaza, zumo de limón, maracuyá y azúcar.	27	83	\N	activo	T
135	MOSCOW MULE	48000.00	Vodka Tito’s, zumo de limón y ginger beer.	27	83	\N	activo	T
136	JUANAS DAIQUIRI	48000.00	Ron Planas, té verde golden green, cordial de limón y pimientas.	27	83	\N	activo	T
137	DRY MARTINI	48000.00	Gin, Vermouth extra dry y olivas.	27	83	\N	activo	T
138	CAIPIROSKA	48000.00	Vodka, limón y azúcar.	27	83	\N	activo	T
139	MARGARITA CLASICO	48000.00	Tequila reposado Altos, cointreau y zumo de limón.	27	83	\N	activo	T
140	NEGRONI	48000.00	Gin brookers, vermouth rosso y campari.	27	83	\N	activo	T
141	PISCO SOUR	48000.00	Pisco, zumo de limón, clara de huevo, angostura y sirope regular.	27	83	\N	activo	T
142	MOJITO	48000.00	Ron Planas, hierbabuena, limonaria, limón y soda.	27	83	\N	activo	T
143	MOJITO SODA	19500.00		28	79	\N	activo	T
144	SODA DE SANDIA	19500.00	Soda de sandia, albahaca y pepino	28	79	\N	activo	T
145	SODA DE MARACUYA	19500.00	Soda de maracuyá con limonaria y pimienta blanca.	28	79	\N	activo	T
146	SODA HERBAL	19500.00	Soda Herbal, sidron, estragon y eucalipto.	28	79	\N	activo	T
147	SODA DE MANZANILLA	18999.99	Soda de manzanilla con limonaria.	28	79	\N	activo	T
148	SODA DE LULO	19500.00	Soda de lulo con feijoa, sal de tajín.	28	79	\N	activo	T
\.


--
-- Data for Name: reservas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reservas (id_reser, id_usuario, id_res, fecha_reser, estado_reser, hora_reser, nombre_evento, detalle_evento, mesa_id, trial542) FROM stdin;
3	2	\N	2025-12-18	activa	10:00	\N	\N	\N	T
6	6	\N	2025-12-21	finalizada	23:00	\N	\N	\N	T
7	7	\N	2026-01-14	cancelada	12:30	\N	\N	\N	T
8	8	\N	2025-12-25	activa	18:00	\N	\N	\N	T
9	9	1	2025-02-09	finalizada	\N	\N	\N	\N	T
10	10	1	2025-02-10	activa	\N	\N	\N	\N	T
12	12	\N	2025-12-18	activa	\N	\N	\N	\N	T
15	207	\N	2026-05-10	activa	13:00	Dia de las madres	Dia especial para las madres de la familia conde	\N	T
\.


--
-- Data for Name: restaurantes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.restaurantes (id_res, nombre_res, direccion_res, telefono_res, id_menu, trial532) FROM stdin;
1	BonGusto Gastrobar Chapinero	Cra 13 #60-30, Bogotá	3001234567	1	T
2	BonGusto Chapinero - Doble registro 2	Cra 13 #60-30, Bogotá	3001234567	1	T
3	BonGusto Chapinero - Doble registro 3	Cra 13 #60-30, Bogotá	3001234567	2	T
4	BonGusto Chapinero - Doble registro 4	Cra 13 #60-30, Bogotá	3001234567	2	T
5	BonGusto Chapinero - Doble registro 5	Cra 13 #60-30, Bogotá	3001234567	3	T
6	BonGusto Chapinero - Doble registro 6	Cra 13 #60-30, Bogotá	3001234567	3	T
7	BonGusto Chapinero - Doble registro 7	Cra 13 #60-30, Bogotá	3001234567	4	T
8	BonGusto Chapinero - Doble registro 8	Cra 13 #60-30, Bogotá	3001234567	4	T
9	BonGusto Chapinero - Doble registro 9	Cra 13 #60-30, Bogotá	3001234567	5	T
10	BonGusto Chapinero - Doble registro 10	Cra 13 #60-30, Bogotá	3001234567	5	T
\.


--
-- Data for Name: rol_permisos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.rol_permisos (id_rol, id_permiso, trial542) FROM stdin;
1	1	T
1	2	T
1	3	T
1	4	T
1	5	T
1	6	T
1	7	T
1	8	T
2	3	T
2	4	T
2	8	T
2	9	T
3	9	T
3	10	T
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roles (id_rol, nombre_rol, trial532) FROM stdin;
1	Administrador	T
2	Mesero	T
3	Cliente	T
\.


--
-- Data for Name: solicitud_mesero; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.solicitud_mesero (id_solicitud_mesero, id_usuario, id_res, id_mesa, fecha_solicitud, estado_solicitud, trial542) FROM stdin;
\.


--
-- Data for Name: solicitud_musica; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.solicitud_musica (id_solicitud, id_usuario, id_musica, id_res, estado_solicitud, mesa_id, cancion, artista, posicion_orden, duracion_segundos, fecha_solicitud, fecha_inicio_reproduccion, fecha_finalizacion, eliminado_por_id, motivo_eliminacion, trial545) FROM stdin;
1	6	\N	1	eliminada	\N	Levitating	Dua Lipa	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:59:26.566604	2026-05-07 21:39:05.751558	203	Eliminada por administrador	T
3	8	\N	1	eliminada	\N	Pepas	Farruko	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:59:29.663145	2026-05-07 21:39:07.343273	203	Eliminada por administrador	T
4	9	\N	1	eliminada	\N	Vivir mi vida	Marc Anthony	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:59:34.733079	2026-05-07 21:39:06.524805	203	Eliminada por administrador	T
5	10	\N	1	eliminada	\N	\N	\N	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:59:39.854562	2026-04-28 21:09:04.572447	203	Eliminada por administrador	T
6	6	\N	1	eliminada	\N	Dakiti	Bad Bunny	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:03:11.977192	2026-05-07 21:39:11.285212	203	Eliminada por administrador	T
7	7	\N	1	eliminada	\N	Ella y yo	Don Omar	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:06:27.39128	2026-05-07 21:39:08.241108	203	Eliminada por administrador	T
8	8	\N	1	eliminada	\N	Despechá	Rosalía	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:10:47.975643	2026-05-07 21:39:09.561511	203	Eliminada por administrador	T
9	9	\N	1	eliminada	\N	Felices los 4	Maluma	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:13:13.272852	2026-05-07 21:39:11.747343	203	Eliminada por administrador	T
10	10	\N	1	eliminada	\N	Tusa	Karol G	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:16:43.614525	2026-05-07 21:39:12.624509	203	Eliminada por administrador	T
11	207	\N	\N	eliminada	\N	Dakiti	Bad Bunny	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:23:29.212716	2026-05-07 21:39:13.122853	203	Eliminada por administrador	T
12	207	\N	\N	eliminada	\N	Dakiti	Bad Bunny	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:19:58.92856	2026-05-07 21:39:15.136419	203	Eliminada por administrador	T
13	207	\N	\N	eliminada	\N	Dakiti	Bad Bunny	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:26:59.229145	2026-04-30 00:39:49.637499	203	Eliminada por administrador	T
14	207	\N	\N	eliminada	\N	un montón de estrellas	Polo Montañez	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:30:29.597928	2026-04-29 01:09:48.612915	203	Eliminada por administrador	T
15	207	\N	\N	eliminada	\N	un montón de estrellas	Polo Montañez	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:33:59.993499	2026-04-29 01:09:48.074777	203	Eliminada por administrador	T
16	207	\N	\N	eliminada	\N	un montón de estrellas	Polo Montañez	1	\N	2026-04-27 08:25:42.637794	2026-04-28 21:37:30.360416	2026-04-29 01:09:47.47406	203	Eliminada por administrador	T
17	207	\N	\N	eliminada	\N	un montón de estrellas	Polo Montañez	11	\N	2026-04-27 08:25:42.637794	2026-04-28 21:08:45.636127	2026-04-28 21:09:00.692048	203	Eliminada por administrador	T
18	207	\N	\N	eliminada	\N	\N	\N	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:58:00.317782	2026-04-28 20:41:06.491581	203		T
19	207	\N	\N	eliminada	\N	tarde	morat	12	\N	2026-04-27 08:25:42.637794	2026-04-28 21:08:31.458437	2026-04-28 21:08:31.458437	203		T
20	207	\N	\N	eliminada	\N	woman's world	cher	12	\N	2026-04-27 08:25:42.637794	2026-04-28 21:08:38.749281	2026-04-28 21:08:38.749281	203	Eliminada por administrador	T
21	212	\N	\N	eliminada	\N	Hell to The no	Glee	14	\N	2026-04-27 08:25:42.637794	2026-04-28 21:08:26.034825	2026-04-28 21:08:27.519634	203	Eliminada por administrador	T
22	207	\N	\N	eliminada	\N	balas perdidas	morat	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:58:05.366629	2026-04-28 20:44:08.823829	203		T
23	216	\N	\N	eliminada	\N	tarde	morat	1	\N	2026-04-27 08:25:42.637794	2026-04-28 20:58:05.382066	2026-04-28 20:44:11.928704	203	Eliminada por administrador	T
24	207	60	\N	eliminada	\N	hoje	portugués	15	\N	2026-04-27 08:25:42.637794	2026-04-28 21:08:22.853947	2026-04-28 21:08:22.853947	203		T
25	207	\N	\N	eliminada	\N	balas perdidas	morat	16	\N	2026-04-28 19:03:44.31556	2026-04-28 21:08:10.995865	2026-04-28 21:08:10.995865	203		T
26	207	\N	\N	eliminada	\N	balas perdidas	morat	17	\N	2026-04-28 19:03:45.06222	2026-04-28 21:08:06.350917	2026-04-28 21:08:06.350917	203	Eliminada por administrador	T
27	207	\N	\N	eliminada	\N	yummy yummy	Justin Bieber	17	\N	2026-04-28 19:04:23.75711	2026-04-28 21:08:07.932834	2026-04-28 21:08:12.572844	203	Eliminada por administrador	T
28	207	\N	\N	eliminada	\N	Dakiti	Bad Bunny	19	\N	2026-04-28 19:22:43.571282	2026-04-28 21:08:06.117482	2026-04-28 21:08:06.117482	203	Eliminada por administrador	T
29	207	44	\N	eliminada	\N	A Bar Song (Tipsy)	Shaboozey	1	\N	2026-04-28 19:24:47.724631	2026-04-28 20:58:14.453605	2026-04-28 20:38:34.324494	203	Eliminada por administrador	T
30	207	\N	\N	eliminada	\N	yummi	justin	1	\N	2026-04-28 19:25:05.372262	2026-04-28 20:58:15.520974	2026-04-28 20:44:04.980723	203	Eliminada por administrador	T
31	207	\N	\N	eliminada	\N	baby	Justin Bieber	1	\N	2026-04-28 20:46:13.356759	2026-04-28 20:58:15.567134	2026-04-28 20:46:29.840609	203	Eliminada por administrador	T
32	207	64	\N	eliminada	\N	la boda	Romeo Santos	20	\N	2026-04-28 20:51:19.10335	2026-04-28 21:08:01.740464	2026-04-28 21:08:01.740464	203		T
33	207	\N	\N	eliminada	\N	Baby	Justin Bieber	1	\N	2026-04-28 21:56:58.368149	2026-04-28 21:56:58.376138	2026-04-28 22:27:41.573511	203	Eliminada por administrador	T
34	207	66	\N	eliminada	\N	encantadora	Yandel	1	\N	2026-04-28 22:28:32.897252	2026-04-28 22:28:32.915292	2026-04-28 22:28:51.166823	203		T
35	203	\N	\N	eliminada	\N	broadway baby	glee	1	\N	2026-04-29 01:09:26.727952	2026-04-29 01:09:26.746696	2026-04-29 01:09:46.461024	203	Eliminada por administrador	T
36	203	\N	\N	eliminada	\N	Breakaway	Kelly Clarkson	1	4	2026-04-30 00:39:13.096438	2026-04-30 00:39:13.120941	2026-04-30 00:39:42.747161	203	Eliminada por administrador	T
37	203	\N	\N	eliminada	\N	Give Your Heart a Break	Demi Lovato	1	4	2026-04-30 00:40:28.348753	2026-04-30 00:40:28.376344	2026-05-07 20:58:01.755896	203	Eliminada por administrador	T
38	203	\N	\N	eliminada	\N	Get Free	Lana del Rey	1	\N	2026-04-30 00:42:14.167701	2026-04-30 00:42:14.18518	2026-05-07 20:57:59.376176	203	Eliminada por administrador	T
39	207	\N	\N	eliminada	19	al aire	morat	1	\N	2026-05-07 21:06:11.818996	2026-05-07 21:06:11.836579	2026-05-07 21:39:16.453542	203	Eliminada por administrador	T
40	207	\N	\N	eliminada	19	dangerous woman	Ariana Grande	1	\N	2026-05-07 21:06:22.179104	2026-05-07 21:09:43.427575	2026-05-07 21:32:41.039481	203	Eliminada por administrador	T
41	207	74	\N	eliminada	19	heart attack	Demi Lovato	1	\N	2026-05-07 21:06:30.510867	2026-05-07 21:13:14.131334	2026-05-07 21:13:46.786419	203		T
42	207	\N	\N	eliminada	26	like a prayer	madonna	1	\N	2026-05-07 21:36:46.213945	2026-05-07 21:36:46.237636	2026-05-07 21:39:21.420202	203	Eliminada por administrador	T
43	207	\N	\N	eliminada	26	love song	glee	2	\N	2026-05-07 21:36:59.335078	2026-05-07 21:39:17.042599	2026-05-07 21:39:17.042599	203	Eliminada por administrador	T
44	207	\N	\N	eliminada	26	this is the life	Hannah Montana	2	\N	2026-05-07 21:37:16.02358	2026-05-07 21:39:18.498638	2026-05-07 21:39:18.498638	203	Eliminada por administrador	T
45	207	\N	\N	eliminada	26	ghost	demi Lovato	2	\N	2026-05-07 21:37:34.153084	2026-05-07 21:39:19.98653	2026-05-07 21:39:19.98653	203	Eliminada por administrador	T
46	203	79	\N	reproducida	\N	Dont Forget	Demi Lovato	1	\N	2026-05-07 21:47:35.682706	2026-05-07 21:47:35.697905	2026-05-07 21:51:07.948049	\N	\N	T
47	203	80	\N	eliminada	\N	Traitor	Sabrina Carpenter	1	\N	2026-05-07 21:47:51.215478	2026-05-07 21:51:07.948049	2026-05-07 21:51:22.692117	203		T
48	203	81	\N	reproducida	\N	Al aire	Morat	1	\N	2026-05-07 21:48:12.046112	2026-05-07 21:51:22.720812	2026-05-07 21:54:53.504912	\N	\N	T
49	203	82	\N	reproducida	\N	Catch Me	Demi Lovato	1	\N	2026-05-07 21:48:26.060779	2026-05-07 21:54:53.504912	2026-05-07 21:58:23.906351	\N	\N	T
50	203	83	\N	reproducida	\N	Arabella	Artic Monkeys	1	\N	2026-05-07 21:49:04.833285	2026-05-07 21:58:23.906351	2026-05-07 22:01:54.409356	\N	\N	T
51	203	79	\N	reproducida	\N	Dont Forget	Demi Lovato	1	\N	2026-05-09 17:11:33.515954	2026-05-09 17:11:33.546832	2026-05-09 17:15:05.572782	\N	\N	T
52	203	84	\N	reproducida	\N	stars	demi lovato	1	\N	2026-05-09 17:11:57.216955	2026-05-09 17:15:05.572782	2026-05-09 17:18:36.064023	\N	\N	T
53	207	85	\N	reproducida	19	love song baby	Selena Gomez	1	\N	2026-05-09 18:02:52.593777	2026-05-09 18:02:52.615803	2026-05-09 18:06:23.981785	\N	\N	T
54	207	86	\N	reproducida	19	since u been gone	Kelly Clarkson	1	\N	2026-05-09 18:03:02.87119	2026-05-09 18:06:23.981785	2026-05-09 18:09:54.457712	\N	\N	T
55	203	87	\N	reproducida	\N	traitor	olivia rodrigo	1	\N	2026-05-10 01:53:19.02454	2026-05-10 01:53:19.074667	2026-05-10 01:56:51.249048	\N	\N	T
56	203	88	\N	eliminada	\N	get free	lana del rey	1	\N	2026-05-10 01:53:49.311732	2026-05-10 01:56:51.249048	2026-05-10 01:57:48.643501	203		T
57	203	89	\N	eliminada	\N	hate on mee	glee	1	\N	2026-05-10 01:54:05.88887	2026-05-10 01:57:48.675101	2026-05-10 01:57:53.738723	203		T
58	203	90	\N	eliminada	\N	beatiful	moby	2	\N	2026-05-10 01:54:21.332326	2026-05-10 01:57:50.849051	2026-05-10 01:57:50.849051	203		T
59	203	91	\N	eliminada	\N	pressure	paramore	2	\N	2026-05-10 01:54:43.471952	2026-05-10 01:57:52.505517	2026-05-10 01:57:52.505517	203		T
60	207	92	\N	eliminada	17	bella traición	Belinda	1	\N	2026-05-10 01:55:38.319272	2026-05-10 01:57:53.829359	2026-05-10 01:57:56.951062	203		T
61	207	93	\N	reproducida	17	hell to the no	glee	1	\N	2026-05-10 01:59:08.071962	2026-05-10 01:59:08.087362	2026-05-10 02:02:38.512027	\N	\N	T
62	207	94	\N	reproducida	17	Brooklyn baby	lana del rey	1	\N	2026-05-10 01:59:40.7545	2026-05-10 02:02:38.512027	2026-05-10 02:06:09.069273	\N	\N	T
\.


--
-- Data for Name: solicitudes_pago; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.solicitudes_pago (id_solicitud_pago, id_pedido, id_usuario, mesa_id, metodo_pago, estado, id_mesero_atendio, fecha_creacion, fecha_actualizacion, finalizado_en, notas, trial545) FROM stdin;
1	19	207	\N	Tarjeta / datafono	finalizada	215	2026-04-28 17:36:19.107586	2026-04-28 17:40:54.699347	2026-04-28 17:40:54.699176	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
2	20	219	\N	Tarjeta / datafono	finalizada	218	2026-04-28 18:20:21.596881	2026-04-28 18:20:21.757942	2026-04-28 18:20:21.757888	\N	T
3	21	207	\N	Tarjeta / datafono	finalizada	215	2026-04-28 18:33:25.574881	2026-04-28 18:33:43.07036	2026-04-28 18:33:43.070186	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
4	21	207	\N	Tarjeta / datafono	finalizada	203	2026-04-28 20:59:53.109231	2026-04-28 21:11:30.710222	2026-04-28 21:11:30.708279	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
5	22	221	\N	Efectivo	finalizada	203	2026-04-28 21:10:01.877836	2026-04-28 21:11:56.01499	2026-04-28 21:11:56.012724	Cierre operativo por liberacion forzada de mesa.	T
6	21	207	\N	Tarjeta / datafono	finalizada	203	2026-04-28 21:58:31.624273	2026-04-29 01:26:05.268512	2026-04-29 01:26:05.263495	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
7	21	207	\N	Tarjeta / datafono	finalizada	203	2026-05-01 19:41:57.320353	2026-05-01 19:52:44.366353	2026-05-01 19:52:44.364767	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
8	21	207	\N	Efectivo	finalizada	203	2026-05-05 20:55:50.586814	2026-05-05 21:05:35.052372	2026-05-05 21:05:35.048971	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
9	21	207	\N	Tarjeta / datafono	finalizada	203	2026-05-05 21:06:02.786734	2026-05-05 21:12:56.211858	2026-05-05 21:12:56.20996	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
10	26	207	\N	Tarjeta / datafono	finalizada	203	2026-05-05 21:13:41.701765	2026-05-07 14:19:44.026102	2026-05-07 14:19:44.022405	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
11	26	207	22	Tarjeta / datafono	finalizada	215	2026-05-07 17:58:21.880947	2026-05-07 18:03:34.928658	2026-05-07 18:03:34.927948	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
12	26	207	\N	Efectivo	finalizada	203	2026-05-07 18:12:06.36345	2026-05-07 18:12:22.823549	2026-05-07 18:12:22.819494	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
13	26	207	17	Efectivo	finalizada	203	2026-05-07 19:03:33.568921	2026-05-07 19:03:42.249878	2026-05-07 19:03:42.24766	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
14	26	207	18	Efectivo	finalizada	203	2026-05-07 19:04:19.558317	2026-05-07 19:04:36.354643	2026-05-07 19:04:36.353369	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
15	26	207	17	Tarjeta / datafono	finalizada	203	2026-05-07 19:05:19.37032	2026-05-07 19:05:33.939966	2026-05-07 19:05:33.92185	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
16	26	207	17	Efectivo	finalizada	203	2026-05-07 19:06:40.614132	2026-05-07 19:06:50.737086	2026-05-07 19:06:50.733815	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
17	48	207	18	Otro metodo de pago	finalizada	203	2026-05-07 19:16:48.243925	2026-05-07 19:21:38.184476	2026-05-07 19:21:38.182178	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
18	48	207	22	Tarjeta / datafono	finalizada	203	2026-05-07 19:22:17.289126	2026-05-07 19:27:44.424069	2026-05-07 19:27:44.421667	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
19	48	207	23	Tarjeta / datafono	finalizada	203	2026-05-07 20:48:30.753581	2026-05-07 20:49:00.890326	2026-05-07 20:49:00.88632	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
20	48	207	19	Efectivo	finalizada	203	2026-05-07 20:49:44.610447	2026-05-07 20:50:06.670186	2026-05-07 20:50:06.667914	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
21	49	207	25	Tarjeta / datafono	finalizada	203	2026-05-09 18:01:40.480169	2026-05-09 18:01:46.407539	2026-05-09 18:01:46.403893	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
22	48	207	20	Tarjeta / datafono	finalizada	203	2026-05-09 18:17:15.069807	2026-05-09 18:17:33.999469	2026-05-09 18:17:33.997028	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
23	26	207	22	Otro metodo de pago	finalizada	203	2026-05-09 18:17:54.05751	2026-05-09 18:18:40.692546	2026-05-09 18:18:40.690141	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
24	21	207	17	Efectivo	finalizada	203	2026-05-09 18:19:18.492099	2026-05-09 18:19:26.602156	2026-05-09 18:19:26.596955	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
25	19	207	20	Tarjeta / datafono	finalizada	203	2026-05-09 18:28:03.489621	2026-05-09 18:28:34.082628	2026-05-09 18:28:34.080997	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
26	18	207	22	Efectivo	finalizada	203	2026-05-09 18:29:21.052862	2026-05-09 18:29:27.426905	2026-05-09 18:29:27.424513	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
27	17	207	19	Tarjeta / datafono	finalizada	203	2026-05-09 18:30:26.013767	2026-05-09 18:30:37.345947	2026-05-09 18:30:37.34391	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
28	16	207	20	Tarjeta / datafono	finalizada	203	2026-05-09 18:45:28.058633	2026-05-09 18:45:41.368002	2026-05-09 18:45:41.36559	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
29	15	207	20	Tarjeta / datafono	finalizada	203	2026-05-09 18:46:10.211316	2026-05-09 18:46:12.782746	2026-05-09 18:46:12.778478	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
30	50	207	20	Otro metodo de pago	finalizada	203	2026-05-09 18:46:59.708475	2026-05-09 18:58:14.810347	2026-05-09 18:58:14.80779	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
31	13	207	19	Efectivo	finalizada	203	2026-05-09 18:59:36.502188	2026-05-09 18:59:53.671855	2026-05-09 18:59:53.659271	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
32	12	207	20	Tarjeta / datafono	finalizada	203	2026-05-09 19:12:51.908278	2026-05-09 19:13:03.329195	2026-05-09 19:13:03.32478	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
33	11	207	24	Efectivo	finalizada	203	2026-05-09 19:13:32.076315	2026-05-09 19:13:46.86374	2026-05-09 19:13:46.859701	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
34	51	207	25	Tarjeta / datafono	finalizada	203	2026-05-09 19:14:21.323563	2026-05-09 19:14:44.738184	2026-05-09 19:14:44.735311	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
35	52	207	17	Tarjeta / datafono	finalizada	203	2026-05-09 19:15:20.475631	2026-05-09 19:15:38.25316	2026-05-09 19:15:38.234993	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
36	53	207	22	Efectivo	finalizada	203	2026-05-09 19:16:21.993601	2026-05-09 19:16:35.031415	2026-05-09 19:16:35.023382	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
37	54	207	19	Tarjeta / datafono	finalizada	203	2026-05-09 20:07:40.723507	2026-05-09 20:08:12.732351	2026-05-09 20:08:12.72999	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
38	55	207	17	Tarjeta / datafono	finalizada	203	2026-05-09 20:26:28.375465	2026-05-09 20:29:48.823862	2026-05-09 20:29:48.819033	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
39	56	224	18	Tarjeta / datafono	finalizada	203	2026-05-09 20:27:27.510412	2026-05-09 20:29:49.812133	2026-05-09 20:29:49.807306	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
40	57	207	17	Tarjeta / datafono	finalizada	203	2026-05-09 20:30:28.384564	2026-05-09 20:30:56.351579	2026-05-09 20:30:56.342836	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
41	58	207	17	Efectivo	finalizada	203	2026-05-09 20:31:23.845341	2026-05-09 20:32:25.211282	2026-05-09 20:32:25.209132	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
42	59	207	17	Otro metodo de pago	finalizada	215	2026-05-09 20:33:02.078247	2026-05-09 21:28:19.171286	2026-05-09 21:28:19.171092	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
43	63	207	\N	Tarjeta / datafono	pendiente	\N	2026-05-09 23:39:00.043817	2026-05-09 23:39:00.043864	\N	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
44	64	207	\N	Tarjeta / datafono	pendiente	\N	2026-05-09 23:57:55.120603	2026-05-09 23:57:55.120627	\N	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
45	65	207	\N	Tarjeta / datafono	pendiente	\N	2026-05-10 00:11:37.73701	2026-05-10 00:11:37.737058	\N	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
46	66	207	\N	Tarjeta / datafono	pendiente	\N	2026-05-10 00:35:13.392061	2026-05-10 00:35:13.392106	\N	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
47	62	207	17	Tarjeta / datafono	finalizada	203	2026-05-10 00:43:45.140732	2026-05-10 00:44:12.13883	2026-05-10 00:44:12.131307	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
48	67	207	\N	Efectivo	pendiente	\N	2026-05-10 00:44:40.112025	2026-05-10 00:44:40.112062	\N	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
49	68	207	\N	Tarjeta / datafono	finalizada	215	2026-05-10 00:51:37.333868	2026-05-10 01:28:02.491514	2026-05-10 01:28:02.491433	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
50	69	207	\N	Tarjeta / datafono	finalizada	215	2026-05-10 01:47:16.084789	2026-05-10 01:49:19.930057	2026-05-10 01:49:19.929865	BonGusto solo coordina la solicitud; el pago se realiza con el mesero.	T
51	61	207	17	Efectivo	finalizada	203	2026-05-10 02:01:17.892745	2026-05-11 17:32:44.269391	2026-05-11 17:32:44.266137	BonGusto solo coordina la solicitud; el pago se realiza con el mesero. Cierre operativo por liberacion forzada de mesa.	T
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.usuarios (id_usuario, nombre, apellido, correo, clave, tipo_usuario, id_rol, estado, telefono, trial532) FROM stdin;
2	Paula	Ramirez Torres	paula01@bongusto.com	pbkdf2_sha256$600000$fGRTG3OS9VyX3VZyuqhCgh$lOrKJkstac+IYjf1sH8D902vVm71veVBXWCwEhznzhI=	mesero	2	Inactivo	3028416410	T
6	Camila	Torres	camila_cliente@correo.com	pbkdf2_sha256$600000$fuT5FsR1UxlpV12NHiZHhK$ToSU9aGdE+JyRcrsqlkZiAR+Ku4uJ84utv+UIP2K/0c=	cliente	3	Activo	\N	T
7	Juan	Martínez	juan_cliente@correo.com	pbkdf2_sha256$600000$eiNkXr8IRWQLGym4jDUtwi$bXj0x9xfWMAF7q6fG7pUDjTdXpdziDnwK8saBjZXfqs=	cliente	3	Activo	\N	T
8	Laura	García	laura_cliente@correo.com	pbkdf2_sha256$600000$W1hoUXIVPsmR1KhmeUrlyJ$JaQUvJ9GCMTj8ZHpqlQJEHaihaqe/dbvg0bwdM1u39g=	cliente	3	Activo		T
9	Andrés	Pérez	andres_cliente@correo.com	pbkdf2_sha256$600000$RJnG9GzKg0ZYxIX8kWM6aU$yyfJCar58qRCsOzZXjwipn1eoIILq8FFFHvFdrCcBXg=	cliente	3	Activo	\N	T
10	Karol	Mendoza	karol_cliente@correo.com	pbkdf2_sha256$600000$8zghbml0WUiKDl9DXPlOKO$8U2TNZd9bNieixr3JPAkntgR+nYpPxRKIEatxKdEvwM=	cliente	3	Activo	\N	T
12	Pablito	Perez	pablito@gmail.com	pbkdf2_sha256$600000$7YtOYpfIVX7QFA9LjCWbFc$CkppkUJJxpHmgqY+buYe6YEtilHr34bquNxpIplxEkY=	cliente	3	Activo	\N	T
201	Juan	Sebastian Garcia	sebastianarteaga89@hotmail.com	pbkdf2_sha256$600000$EMC2AzWx5jS2byF75iwSkv$l3BUpZmc24DHbJWnv6RCKIPwxY2K90NSnQfq3qQ0Zbc=	cliente	3	\N	\N	T
202	papitas		paputas@gmail.com	pbkdf2_sha256$600000$iuGQ3uHkDPgEjWD4uI2D0U$mwMMjRUvKWTrujWr1Nkl8pyQJkyaqAq6/grvsdx6WXM=	cliente	3	\N	\N	T
203	Andres Santa Juana 	Garcia	santajuana@bongusto.com	pbkdf2_sha256$600000$dE3o6BNZO3mBlPosLqkbd0$LsNK9XEPyn02gY94ldZzTIIclhAODI3FcwogAuGYStU=	administrador	1	Activo	3153354578	T
204	Juan	Garcia	pepitoperez@gmail.com	pbkdf2_sha256$600000$ZMuDCgkt3r8kWRs4ij7U5r$7Jvhi5vGwXa2bx83Jy7UcNm2fDgKRTkB2mgjn3RUVPw=	cliente	3	Activo		T
205	Pablo 	Vela	pablovela@gmail.com	pbkdf2_sha256$600000$aAXaSrdhslE1ENH670Y3Jy$pmO/QLFm0+96rJHMtWkpip3unm/HjgVCbDOGnfkqQi8=	cliente	3	Activo	3219945687	T
206	dani		dani@gmail.com	pbkdf2_sha256$600000$fxsaXWxBEZtF3XJTMFY5hK$jj7S5bcMgxg5AnKOGmNPVQ1FSEVE4D83DTovGndy6sc=	cliente	3	Activo		T
207	Andres	Conde	andres@gmail.com	pbkdf2_sha256$600000$xxFxRRFTWjRC2g7I5Wv3YS$8SZK4ERnLggflmSPa47kw8SGQJn3xUhCP93aWW2TBzY=	cliente	3	Activo		T
208	papitas	bbq	papitas@gmail.com	pbkdf2_sha256$600000$8m0e8LZorLOnaDqfYazPtE$FmeWd0KGJfuBV6NWnNRT5J/WGQNG/4ZOHlC4DlBFn8E=	mesero	2	Activo	55311154554	T
209	Santiago	serrato	santiago@gmail.com	pbkdf2_sha256$600000$q1Q441eaaiRSvzRRrweUno$qiz+UTU8noTizFv13Gf+LDohwKZFzISWoDw3iv0+Xec=	cliente	\N	Activo		T
210	Jaime 	Garzon	jaime@gmail.com	pbkdf2_sha256$600000$2JW9qsibL2eFyprjinPdI7$pzyPM8le5vTaF+z5pOpgID/e2fF7ZGhGyCwBSygGNv0=	mesero	2	Activo	32548754875	T
211	Api	Test	api@test.com	pbkdf2_sha256$600000$JerS8qGq5oSZiUnSwcRoaO$i4b6KJkC8ylmATdJaJSHEC8xDz7KhZX3iLuuDuHDurM=	mesero	\N	activo	\N	T
212	David	Emanuel Ramírez	david@gmail.com	pbkdf2_sha256$600000$iZH08kAXfWagIa6AQPsk8k$wo7J4rnzpNicNXx79BRf7zckylHu2b/bfzVQuKGBCas=	cliente	\N	Activo		T
213	Daniela 	Gaitan	danielag@bongusto.com	pbkdf2_sha256$600000$DzDchIS5isIf0IavZDOrYM$dJpyMYhLIPesfNLJw64OgrH8Fj1LRdLJOtdYZA15yaE=	mesero	2	Inactivo	3254478965	T
214	Daniela	Perez	danielaa@gmail.com	pbkdf2_sha256$600000$fq5VRPh4i7zwR2LPRGFEar$IFTLT8mk7z2j2kj1KS3WYa6p+1gbUB1d6s5lHaIZyj0=	cliente	\N	Activo		T
215	Antonio	Torres	antoniot@bongusto.com	pbkdf2_sha256$600000$HWtk63vjRh3h4ekRkEHYrB$5s3OVwW7IvdWCDrrlZ9cH691gSfYuHvFb+CZgYMAysw=	mesero	2	Activo	3208428482	T
216	paula	keal	paula1018@gmail.com	pbkdf2_sha256$600000$5NreN7K58UUi93cE6VXwjV$R0E1smMYEZbsu3cY30CVEZgbYP2fPwV7ZygI004CdP4=	cliente	\N	Activo		T
217	Sebastian	Garcia	sebas@bongusto.com	pbkdf2_sha256$600000$wzUKozhX02STpLL6WCtLub$cub5y381qrNODd67+jZkUM3xA4ElfbxF5aVSRKI5yyU=	mesero	2	Activo	3204587956	T
218	Admin	Mesa	adminx@b.test	x	administrador	\N	Activo	\N	T
219	Cli	Mesa	clix@b.test	x	cliente	\N	Activo	\N	T
220	A	B	a@test.com	x	administrador	\N	Activo	\N	T
221	C	D	c@test.com	x	cliente	\N	Activo	\N	T
222	Alexa 	Gaitan	alexgaitan@gmail.com	pbkdf2_sha256$600000$NDmZw3DBey313wn3M1OPKN$1kq8ASBdnq19O736WfaKEpuxziElmNUN7RIsFQUrQ4c=	mesero	2	Activo	3028456265	T
223	Juan Carlos	Guzman	juanca@bongusto.com	pbkdf2_sha256$600000$cuSHXKtyPPrVEpRqoFeugY$5RaEkkpl7m8DRPPbTB7AKLgKulPpsOA1DHT7LkbntQM=	mesero	2	Activo	3025896789	T
224	Juan	Sebastián García	sebas@gmail.com	pbkdf2_sha256$600000$asajwRun6bjMleZdRwuJNY$p6h9pd4a69KnPsNoxaQ4sE75Qx1fPPSO/lPPwNTaClU=	cliente	\N	Activo		T
225	Daniel	Leal	daniel@gmail.com	pbkdf2_sha256$600000$7MJzHCCKJf9fziDzOrkiN9$tg2ih8rP3BF2Vdgscr/6h+W+mMF2WDy6/2uQxeMYTTA=	cliente	\N	Activo		T
226	Paula	Leal	paulal@bongusto.com	pbkdf2_sha256$600000$YU30JjvOLIegwTv6eiEFQE$BcoA1fHAbJ9Tk2iuQSg9Cf0Wpjv1ur2KYhrUGBbgCLw=	mesero	2	Activo	3284795648	T
227	Sebas	Prueba	sebas@test.com	pbkdf2_sha256$600000$ftocOP70U2llV7InyAAyqW$XItsABeZfWGEPkvl5KYqTONL7QMaOyAb4rhDHcvguf8=	cliente	\N	Activo	\N	\N
228	Sebas	Prueba	sebas_recovery_test@test.com	pbkdf2_sha256$600000$VE5RpuKB8cd3A2eXQNKPeI$XOZmiceVz9WEpqYhqc/Wkrm98Y0ust4zgZcgueDo9Oo=	cliente	\N	Activo	\N	\N
200	sebastian	garcia	appbongusto@gmail.com	pbkdf2_sha256$600000$9NjulKhJmgkquqCUwQkh4m$535wNFGtwJTvnP6npG+jAUii+Cs113IlTSbvni+FmfY=	administrador	1	Activo	\N	T
229	papitas	leal	paula1007002@gmail.com	pbkdf2_sha256$600000$uKhPImCpKG77ltKDFSZcMN$mu12OzvXc3cVCirjvullAaGC9Wj+S9/wXYgduUmOLPY=	cliente	\N	Activo		\N
230	papitas	leal	cirilo0sena@gmail.com	pbkdf2_sha256$600000$CwbIeJLvJzTfRHsw5SgzvR$xJcL9esDtEzFZBefAq0wIznJkoQA8Vene8CuFy0BMUI=	cliente	\N	Activo		\N
231	Juan	Sebastián García	sebastianarteaga8905@gmail.com	pbkdf2_sha256$600000$kTHw2ACGiPYKVKz4v2TcEi$5/HO+XMOLYB4kxqXyYBhav2VixXxuw+ssLHUQSuM2Ak=	cliente	\N	Activo		\N
232	Alejandro 	Hernandez	broniorafael@gmail.com	pbkdf2_sha256$600000$9F6YRhwr0vNOkPbclPZ6QB$ppLvqFTGMd1nym2zGPSeBIDFcR4MN9GfcYXWoDX6MZw=	mesero	2	Activo		\N
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: bitacora_id_log_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bitacora_id_log_seq', 896, true);


--
-- Name: calificacion_id_opinion_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.calificacion_id_opinion_seq', 6, true);


--
-- Name: calificaciones_clientes_id_calificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.calificaciones_clientes_id_calificacion_seq', 44, true);


--
-- Name: carrito_id_carrito_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.carrito_id_carrito_seq', 10, true);


--
-- Name: categorias_id_cate_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categorias_id_cate_seq', 86, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: empleados_restaurante_id_empleado_res_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.empleados_restaurante_id_empleado_res_seq', 1, false);


--
-- Name: historial_pedidos_id_historial_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.historial_pedidos_id_historial_seq', 10, true);


--
-- Name: mensajes_chat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mensajes_chat_id_seq', 67, true);


--
-- Name: menu_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.menu_id_menu_seq', 31, true);


--
-- Name: mesas_id_mesa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesas_id_mesa_seq', 26, true);


--
-- Name: metodos_id_metodo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.metodos_id_metodo_seq', 10, true);


--
-- Name: musica_id_musica_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.musica_id_musica_seq', 94, true);


--
-- Name: notificaciones_clientes_id_notificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notificaciones_clientes_id_notificacion_seq', 17, true);


--
-- Name: pagos_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pagos_id_pago_seq', 10, true);


--
-- Name: pedido_detalle_id_detalle_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pedido_detalle_id_detalle_seq', 326, true);


--
-- Name: pedido_encabezado_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pedido_encabezado_id_pedido_seq', 69, true);


--
-- Name: permisos_id_permiso_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.permisos_id_permiso_seq', 10, true);


--
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 148, true);


--
-- Name: reservas_id_reser_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reservas_id_reser_seq', 15, true);


--
-- Name: restaurantes_id_res_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.restaurantes_id_res_seq', 10, true);


--
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.roles_id_rol_seq', 3, true);


--
-- Name: solicitud_mesero_id_solicitud_mesero_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.solicitud_mesero_id_solicitud_mesero_seq', 1, false);


--
-- Name: solicitud_musica_id_solicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.solicitud_musica_id_solicitud_seq', 62, true);


--
-- Name: solicitudes_pago_id_solicitud_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.solicitudes_pago_id_solicitud_pago_seq', 51, true);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 232, true);


--
-- Name: auth_group pk_auth_group; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT pk_auth_group PRIMARY KEY (id);


--
-- Name: auth_group_permissions pk_auth_group_permissions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT pk_auth_group_permissions PRIMARY KEY (id);


--
-- Name: auth_permission pk_auth_permission; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT pk_auth_permission PRIMARY KEY (id);


--
-- Name: auth_user pk_auth_user; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT pk_auth_user PRIMARY KEY (id);


--
-- Name: auth_user_groups pk_auth_user_groups; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT pk_auth_user_groups PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions pk_auth_user_user_permissions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT pk_auth_user_user_permissions PRIMARY KEY (id);


--
-- Name: bitacora pk_bitacora; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT pk_bitacora PRIMARY KEY (id_log);


--
-- Name: calificacion pk_calificacion; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificacion
    ADD CONSTRAINT pk_calificacion PRIMARY KEY (id_opinion);


--
-- Name: calificaciones_clientes pk_calificaciones_clientes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificaciones_clientes
    ADD CONSTRAINT pk_calificaciones_clientes PRIMARY KEY (id_calificacion);


--
-- Name: carrito pk_carrito; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT pk_carrito PRIMARY KEY (id_carrito);


--
-- Name: categorias pk_categorias; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT pk_categorias PRIMARY KEY (id_cate);


--
-- Name: django_admin_log pk_django_admin_log; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT pk_django_admin_log PRIMARY KEY (id);


--
-- Name: django_content_type pk_django_content_type; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT pk_django_content_type PRIMARY KEY (id);


--
-- Name: django_migrations pk_django_migrations; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT pk_django_migrations PRIMARY KEY (id);


--
-- Name: django_session pk_django_session; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT pk_django_session PRIMARY KEY (session_key);


--
-- Name: empleados_restaurante pk_empleados_restaurante; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleados_restaurante
    ADD CONSTRAINT pk_empleados_restaurante PRIMARY KEY (id_empleado_res);


--
-- Name: historial_pedidos pk_historial_pedidos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historial_pedidos
    ADD CONSTRAINT pk_historial_pedidos PRIMARY KEY (id_historial);


--
-- Name: mensajes_chat pk_mensajes_chat; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mensajes_chat
    ADD CONSTRAINT pk_mensajes_chat PRIMARY KEY (id);


--
-- Name: menu pk_menu; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT pk_menu PRIMARY KEY (id_menu);


--
-- Name: mesas pk_mesas; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT pk_mesas PRIMARY KEY (id_mesa);


--
-- Name: metodos pk_metodos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.metodos
    ADD CONSTRAINT pk_metodos PRIMARY KEY (id_metodo);


--
-- Name: musica pk_musica; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.musica
    ADD CONSTRAINT pk_musica PRIMARY KEY (id_musica);


--
-- Name: notificaciones_clientes pk_notificaciones_clientes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notificaciones_clientes
    ADD CONSTRAINT pk_notificaciones_clientes PRIMARY KEY (id_notificacion);


--
-- Name: pagos pk_pagos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pk_pagos PRIMARY KEY (id_pago);


--
-- Name: pedido_detalle pk_pedido_detalle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_detalle
    ADD CONSTRAINT pk_pedido_detalle PRIMARY KEY (id_detalle);


--
-- Name: pedido_encabezado pk_pedido_encabezado; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_encabezado
    ADD CONSTRAINT pk_pedido_encabezado PRIMARY KEY (id_pedido);


--
-- Name: permisos pk_permisos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT pk_permisos PRIMARY KEY (id_permiso);


--
-- Name: productos pk_productos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_productos PRIMARY KEY (id_producto);


--
-- Name: reservas pk_reservas; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT pk_reservas PRIMARY KEY (id_reser);


--
-- Name: restaurantes pk_restaurantes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.restaurantes
    ADD CONSTRAINT pk_restaurantes PRIMARY KEY (id_res);


--
-- Name: rol_permisos pk_rol_permisos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rol_permisos
    ADD CONSTRAINT pk_rol_permisos PRIMARY KEY (id_rol, id_permiso);


--
-- Name: roles pk_roles; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT pk_roles PRIMARY KEY (id_rol);


--
-- Name: solicitud_mesero pk_solicitud_mesero; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_mesero
    ADD CONSTRAINT pk_solicitud_mesero PRIMARY KEY (id_solicitud_mesero);


--
-- Name: solicitud_musica pk_solicitud_musica; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_musica
    ADD CONSTRAINT pk_solicitud_musica PRIMARY KEY (id_solicitud);


--
-- Name: solicitudes_pago pk_solicitudes_pago; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitudes_pago
    ADD CONSTRAINT pk_solicitudes_pago PRIMARY KEY (id_solicitud_pago);


--
-- Name: usuarios pk_usuarios; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_id_menu; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_id_menu ON public.restaurantes USING btree (id_menu);


--
-- Name: idx_id_metodo; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_id_metodo ON public.pagos USING btree (id_metodo);


--
-- Name: idx_id_pedido; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_id_pedido ON public.pagos USING btree (id_pedido);


--
-- Name: idx_id_permiso; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_id_permiso ON public.rol_permisos USING btree (id_permiso);


--
-- Name: idx_id_res; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_id_res ON public.calificacion USING btree (id_res);


--
-- Name: idx_id_usuario; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_id_usuario ON public.bitacora USING btree (id_usuario);


--
-- Name: idx_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_name ON public.auth_group USING btree (name);


--
-- Name: idx_username; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_username ON public.auth_user USING btree (username);


--
-- Name: solicitudes_pago_estado_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX solicitudes_pago_estado_idx ON public.solicitudes_pago USING btree (estado);


--
-- Name: solicitudes_pago_mesa_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX solicitudes_pago_mesa_idx ON public.solicitudes_pago USING btree (mesa_id);


--
-- Name: solicitudes_pago_pedido_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX solicitudes_pago_pedido_idx ON public.solicitudes_pago USING btree (id_pedido);


--
-- Name: solicitudes_pago_usuario_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX solicitudes_pago_usuario_idx ON public.solicitudes_pago USING btree (id_usuario);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: bitacora bitacora_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT bitacora_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: calificacion calificacion_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificacion
    ADD CONSTRAINT calificacion_ibfk_1 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: calificacion calificacion_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificacion
    ADD CONSTRAINT calificacion_ibfk_2 FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: calificacion calificacion_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calificacion
    ADD CONSTRAINT calificacion_ibfk_3 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: carrito carrito_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: carrito carrito_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_ibfk_2 FOREIGN KEY (id_pedido) REFERENCES public.pedido_encabezado(id_pedido) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: empleados_restaurante empleados_restaurante_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleados_restaurante
    ADD CONSTRAINT empleados_restaurante_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: empleados_restaurante empleados_restaurante_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empleados_restaurante
    ADD CONSTRAINT empleados_restaurante_ibfk_2 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: usuarios fk_usuarios_roles; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: historial_pedidos historial_pedidos_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historial_pedidos
    ADD CONSTRAINT historial_pedidos_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: historial_pedidos historial_pedidos_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historial_pedidos
    ADD CONSTRAINT historial_pedidos_ibfk_2 FOREIGN KEY (id_restaurante) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: mesas mesas_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT mesas_ibfk_1 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: notificaciones_clientes notificaciones_clien_id_usuario_5cc0850e_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notificaciones_clientes
    ADD CONSTRAINT notificaciones_clien_id_usuario_5cc0850e_fk_usuarios_ FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pagos pagos_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_ibfk_1 FOREIGN KEY (id_pedido) REFERENCES public.pedido_encabezado(id_pedido) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pagos pagos_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_ibfk_2 FOREIGN KEY (id_metodo) REFERENCES public.metodos(id_metodo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pedido_detalle pedido_detalle_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_detalle
    ADD CONSTRAINT pedido_detalle_ibfk_1 FOREIGN KEY (id_pedido) REFERENCES public.pedido_encabezado(id_pedido) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pedido_encabezado pedido_encabezado_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_encabezado
    ADD CONSTRAINT pedido_encabezado_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: pedido_encabezado pedido_encabezado_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pedido_encabezado
    ADD CONSTRAINT pedido_encabezado_ibfk_2 FOREIGN KEY (id_restaurante) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: productos productos_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_ibfk_1 FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: productos productos_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_ibfk_2 FOREIGN KEY (id_cate) REFERENCES public.categorias(id_cate) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: productos productos_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_ibfk_3 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: reservas reservas_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: reservas reservas_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_ibfk_2 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: restaurantes restaurantes_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.restaurantes
    ADD CONSTRAINT restaurantes_ibfk_1 FOREIGN KEY (id_menu) REFERENCES public.menu(id_menu) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: rol_permisos rol_permisos_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rol_permisos
    ADD CONSTRAINT rol_permisos_ibfk_1 FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: rol_permisos rol_permisos_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rol_permisos
    ADD CONSTRAINT rol_permisos_ibfk_2 FOREIGN KEY (id_permiso) REFERENCES public.permisos(id_permiso) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: solicitud_mesero solicitud_mesero_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_mesero
    ADD CONSTRAINT solicitud_mesero_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: solicitud_mesero solicitud_mesero_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_mesero
    ADD CONSTRAINT solicitud_mesero_ibfk_2 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: solicitud_mesero solicitud_mesero_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_mesero
    ADD CONSTRAINT solicitud_mesero_ibfk_3 FOREIGN KEY (id_mesa) REFERENCES public.mesas(id_mesa) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: solicitud_musica solicitud_musica_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_musica
    ADD CONSTRAINT solicitud_musica_ibfk_1 FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: solicitud_musica solicitud_musica_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_musica
    ADD CONSTRAINT solicitud_musica_ibfk_2 FOREIGN KEY (id_musica) REFERENCES public.musica(id_musica) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: solicitud_musica solicitud_musica_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.solicitud_musica
    ADD CONSTRAINT solicitud_musica_ibfk_3 FOREIGN KEY (id_res) REFERENCES public.restaurantes(id_res) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict asVGjbI2E3TMucfGwZXToFDkNs8uLx8D4Wxu66MbhLhrlspbLHqxzggeWlaRdKx

