--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8
-- Dumped by pg_dump version 13.8

-- Started on 2023-03-15 13:22:53

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
-- TOC entry 203 (class 1259 OID 34467)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id_categoria bigint NOT NULL,
    descripcion character varying(255)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 34428)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente bigint NOT NULL,
    apellido character varying(255),
    correo_electronico character varying(255),
    nombre character varying(255),
    numero_documento character varying(255) NOT NULL,
    id_tipo_documento bigint,
    contrasena character varying(255)
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 34472)
-- Name: color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.color (
    id_color bigint NOT NULL,
    descripcion character varying(255)
);


ALTER TABLE public.color OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 34477)
-- Name: detalle_factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_factura (
    id_detalle bigint NOT NULL,
    cantidad integer,
    id_producto bigint,
    id_factura bigint
);


ALTER TABLE public.detalle_factura OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 34482)
-- Name: facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturas (
    id_factura bigint NOT NULL,
    create_at date,
    despcripcion character varying(255),
    id_cliente bigint
);


ALTER TABLE public.facturas OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 34436)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 34487)
-- Name: marca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marca (
    id_marca bigint NOT NULL,
    descripcion character varying(255)
);


ALTER TABLE public.marca OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 34492)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto bigint NOT NULL,
    descripcion character varying(255),
    imagen character varying(255),
    precio double precision,
    id_categoria bigint,
    id_color bigint,
    id_marca bigint,
    id_talla bigint,
    cont_busqueda bigint
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 34500)
-- Name: talla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talla (
    id_talla bigint NOT NULL,
    descripcion character varying(255),
    stock integer
);


ALTER TABLE public.talla OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 34438)
-- Name: tipo_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_documento (
    id_tipo_documento bigint NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public.tipo_documento OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 34467)
-- Dependencies: 203
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id_categoria, descripcion) FROM stdin;
1	hombre
2	mujer
\.


--
-- TOC entry 3044 (class 0 OID 34428)
-- Dependencies: 200
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, apellido, correo_electronico, nombre, numero_documento, id_tipo_documento, contrasena) FROM stdin;
5	Velez	hector@gmail.com	Hector	256743	1	12345
2	fernandez	fernandez@gmail.com	joaquin	33344	1	12345
1	florez	lidacristinafh@hotmail.com	cristina	43180457	1	12345
4	Orozco	joseorozco@gmail.com	Jose	2547890	2	12345
10	perez	tatiana@gmail.com	tatiana	4318111	\N	11111
11	Giraldo	juan.giraldo@gmail.com	Juan 	21167890	1	11111
12	Perez	felipe@gmail.com	felipe	123456	1	11111
13	Castro	felix@hotmail.com	Felix	222222	2	111111
14	Gallo	luis@hotmail.com	luis	987456	1	111111
15	Gonzalez	camila@gmail.com	Camila 	5423678	2	11111
16	Amstrong	sara@hotmail.com	Sara	224567	2	11111
17	Posada	juan@gmail.com	Juan	7658990	1	11111
18	Torres	pablo@hotmail.com	Pablo	768904	1	12345
29	Peña	yesica@hotmail.com	Yesica	32675225	1	12345
35	Gomez	ramirob@hotmail.com	jose	567899	1	12345
41	Hernandez	rocio@hotmail.com	Rocio	5678909	1	11111
44	castro	jeronimo@gmail.com	jeronimo	6657890	1	12345
45	Vanegas	paula@vanegas.com	Paula	4378907	1	12345
\.


--
-- TOC entry 3048 (class 0 OID 34472)
-- Dependencies: 204
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.color (id_color, descripcion) FROM stdin;
1	rojo
2	naranja
3	azul claro
4	amarillo
5	cafe
6	vino Tinto
7	azul Oscuro
8	rosado
\.


--
-- TOC entry 3049 (class 0 OID 34477)
-- Dependencies: 205
-- Data for Name: detalle_factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_factura (id_detalle, cantidad, id_producto, id_factura) FROM stdin;
1	1	2	1
2	1	16	1
3	1	17	2
\.


--
-- TOC entry 3050 (class 0 OID 34482)
-- Dependencies: 206
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facturas (id_factura, create_at, despcripcion, id_cliente) FROM stdin;
1	2023-03-12	ropa	2
2	2023-03-12	ropa	2
\.


--
-- TOC entry 3051 (class 0 OID 34487)
-- Dependencies: 207
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marca (id_marca, descripcion) FROM stdin;
1	arturo Calle
2	gef
3	h&M
4	polo
5	tennis
\.


--
-- TOC entry 3052 (class 0 OID 34492)
-- Dependencies: 208
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, descripcion, imagen, precio, id_categoria, id_color, id_marca, id_talla, cont_busqueda) FROM stdin;
28	Sueter Hombre	sueter2.jpg	85990	1	1	2	14	1
17	Buzo con capota	buzocapota1.jpg	129990	1	5	2	14	1
19	Camisa Tipo polo Hombre	camisapoloh1.jpg	82990	1	1	2	14	1
21	Camiseta Hombre Manga Corta	camisetah.jpg	45990	1	8	3	14	1
23	Chaqueta Hombre	chaquetah1.jpg	160990	1	7	5	15	1
24	Jean Hombre 	jeanhombre.jpg	90990	1	3	1	8	1
4	Buzo cuello alto	buzocuelloalto1.jpg	129990	2	5	2	14	1
27	Sueter Hombre	sueterhombre.jpg	85990	1	6	2	13	1
1	Body Mujer	body1.jpg	45999	2	8	1	12	1
2	Body Mujer	body2.jpg	45999	2	2	1	13	1
6	Camiseta mujer cuello V	camiseta1.jpg	30990	2	3	3	13	1
8	Camiseta mujer estampada	camiseta2.jpg	25990	2	3	3	13	1
9	Camiseta tipo polo mujer	polo1.jpg	80990	2	1	4	12	1
15	Jean Mujer	jeanm1.jpg	90990	2	7	5	4	1
3	Buzo cuello alto	buzocuelloaltomujer.jpg	129990	2	7	2	13	1
5	Camiseta mujer cuello V	camisetacuellov.jpg	30990	2	1	3	12	1
7	Camiseta mujer estampada	camisetaestampada.jpg	25990	2	8	3	12	1
10	Camiseta tipo polo mujer	camisetapolo.jpg	80990	2	7	4	14	1
11	Falda Jean mujer	faldajean.jpg	50990	2	3	5	12	1
13	Jean Mujer	jeanmujer.jpg	90990	2	3	5	2	1
16	Buzo con capota	buzocapota.jpg	129990	1	3	2	13	1
18	Camisa Tipo polo Hombre	camisapoloh.jpg	82990	1	5	2	13	1
20	Camiseta Hombre Manga Corta	camisetamangacorta.jpg	45990	1	4	3	12	1
22	Chaqueta Hombre	chaquetah.jpg	160990	1	5	5	14	1
25	Jean Hombre 	jeanhombre1.jpg	90990	1	7	1	9	1
\.


--
-- TOC entry 3053 (class 0 OID 34500)
-- Dependencies: 209
-- Data for Name: talla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talla (id_talla, descripcion, stock) FROM stdin;
1	6	10
2	8	10
3	10	10
4	12	10
5	14	10
6	16	10
7	28	10
8	30	10
9	32	10
10	34	10
11	36	10
12	S	10
13	M	10
14	L	10
15	XL	10
\.


--
-- TOC entry 3046 (class 0 OID 34438)
-- Dependencies: 202
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_documento (id_tipo_documento, nombre) FROM stdin;
1	Cedula Ciudadania
2	Cedula Extranjeria
3	Tarjeta de Identidad
\.


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 201
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 45, true);


--
-- TOC entry 2893 (class 2606 OID 34471)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2885 (class 2606 OID 34435)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 2887 (class 2606 OID 34464)
-- Name: clientes clientes_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_un UNIQUE (correo_electronico);


--
-- TOC entry 2889 (class 2606 OID 34466)
-- Name: clientes clientes_un_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_un_1 UNIQUE (numero_documento);


--
-- TOC entry 2895 (class 2606 OID 34476)
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (id_color);


--
-- TOC entry 2897 (class 2606 OID 34481)
-- Name: detalle_factura detalle_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id_detalle);


--
-- TOC entry 2899 (class 2606 OID 34486)
-- Name: facturas facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id_factura);


--
-- TOC entry 2901 (class 2606 OID 34491)
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);


--
-- TOC entry 2903 (class 2606 OID 34499)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 2905 (class 2606 OID 34504)
-- Name: talla talla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla
    ADD CONSTRAINT talla_pkey PRIMARY KEY (id_talla);


--
-- TOC entry 2891 (class 2606 OID 34442)
-- Name: tipo_documento tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento
    ADD CONSTRAINT tipo_documento_pkey PRIMARY KEY (id_tipo_documento);


--
-- TOC entry 2912 (class 2606 OID 34530)
-- Name: productos fk3attn11ryqxbdiivv2bhhb3vh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk3attn11ryqxbdiivv2bhhb3vh FOREIGN KEY (id_marca) REFERENCES public.marca(id_marca);


--
-- TOC entry 2910 (class 2606 OID 34520)
-- Name: productos fk7l7nhbb819h24i9apao7byvv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk7l7nhbb819h24i9apao7byvv FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);


--
-- TOC entry 2913 (class 2606 OID 34535)
-- Name: productos fk7oy7hgtstnlfqbewjhca8ipsp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk7oy7hgtstnlfqbewjhca8ipsp FOREIGN KEY (id_talla) REFERENCES public.talla(id_talla);


--
-- TOC entry 2907 (class 2606 OID 34505)
-- Name: detalle_factura fk8n490j4f7licrmb4jbk5mgmsp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT fk8n490j4f7licrmb4jbk5mgmsp FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- TOC entry 2908 (class 2606 OID 34510)
-- Name: detalle_factura fkdottb80mhiedtx8j8jyqewx5n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT fkdottb80mhiedtx8j8jyqewx5n FOREIGN KEY (id_factura) REFERENCES public.facturas(id_factura);


--
-- TOC entry 2911 (class 2606 OID 34525)
-- Name: productos fkoijms7mi63sfgvcswyy9kqyu6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fkoijms7mi63sfgvcswyy9kqyu6 FOREIGN KEY (id_color) REFERENCES public.color(id_color);


--
-- TOC entry 2909 (class 2606 OID 34515)
-- Name: facturas fkp2ab9l9b5y3b0pv1ag1hfiun7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT fkp2ab9l9b5y3b0pv1ag1hfiun7 FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- TOC entry 2906 (class 2606 OID 34443)
-- Name: clientes fkqrirwl7lkm2ays6feudwk16vd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fkqrirwl7lkm2ays6feudwk16vd FOREIGN KEY (id_tipo_documento) REFERENCES public.tipo_documento(id_tipo_documento);


-- Completed on 2023-03-15 13:22:56

--
-- PostgreSQL database dump complete
--

