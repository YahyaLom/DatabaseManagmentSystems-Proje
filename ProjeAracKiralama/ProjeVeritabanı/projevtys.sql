PGDMP         1                z            Proje1    15.0    15.0 S    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17037    Proje1    DATABASE     |   CREATE DATABASE "Proje1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "Proje1";
                postgres    false            ?            1255    17219    test()    FUNCTION     ?   CREATE FUNCTION public.test() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update tbltoplammusteri set sayi=sayi+1;
return new;
end;
$$;
    DROP FUNCTION public.test();
       public          postgres    false            ?            1255    17221    test2()    FUNCTION     ?   CREATE FUNCTION public.test2() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update tbltoplammusteri set sayi=sayi-1;
return new;
end;
$$;
    DROP FUNCTION public.test2();
       public          postgres    false            ?            1255    17257    test5()    FUNCTION     ?   CREATE FUNCTION public.test5() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update tblkasa set gunluk=gunluk+500;
return new;
end;
$$;
    DROP FUNCTION public.test5();
       public          postgres    false            ?            1255    17259    test6()    FUNCTION     ?   CREATE FUNCTION public.test6() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update tblkasa set gunluk=gunluk-500;
return new;
end;
$$;
    DROP FUNCTION public.test6();
       public          postgres    false            ?            1259    17045 	   tblA1Arac    TABLE     ?   CREATE TABLE public."tblA1Arac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblA1Arac";
       public         heap    postgres    false            ?            1259    17052 	   tblA2Arac    TABLE     ?   CREATE TABLE public."tblA2Arac" (
    "aracID" integer NOT NULL,
    "aracMarka" character varying,
    "aracSinifi" character varying NOT NULL
);
    DROP TABLE public."tblA2Arac";
       public         heap    postgres    false            ?            1259    17038 
   tblAraclar    TABLE     q   CREATE TABLE public."tblAraclar" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL
);
     DROP TABLE public."tblAraclar";
       public         heap    postgres    false            ?            1259    17261 	   tblA3Arac    TABLE     D   CREATE TABLE public."tblA3Arac" (
)
INHERITS (public."tblAraclar");
    DROP TABLE public."tblA3Arac";
       public         heap    postgres    false    214            ?            1259    17059 	   tblB1Arac    TABLE     ?   CREATE TABLE public."tblB1Arac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblB1Arac";
       public         heap    postgres    false            ?            1259    17066 	   tblB2Arac    TABLE     ?   CREATE TABLE public."tblB2Arac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblB2Arac";
       public         heap    postgres    false            ?            1259    17108 	   tblBoyaci    TABLE     K   CREATE TABLE public."tblBoyaci" (
    boyaci character varying NOT NULL
);
    DROP TABLE public."tblBoyaci";
       public         heap    postgres    false            ?            1259    17073    tblCArac    TABLE     ?   CREATE TABLE public."tblCArac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblCArac";
       public         heap    postgres    false            ?            1259    17080    tblDArac    TABLE     ?   CREATE TABLE public."tblDArac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblDArac";
       public         heap    postgres    false            ?            1259    17087    tblEArac    TABLE     ?   CREATE TABLE public."tblEArac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblEArac";
       public         heap    postgres    false            ?            1259    17115    tblElektrikci    TABLE     S   CREATE TABLE public."tblElektrikci" (
    elektrikci character varying NOT NULL
);
 #   DROP TABLE public."tblElektrikci";
       public         heap    postgres    false            ?            1259    17094    tblFArac    TABLE     ?   CREATE TABLE public."tblFArac" (
    "aracID" integer NOT NULL,
    "aracSinifi" character varying NOT NULL,
    "aracMarka" character varying
);
    DROP TABLE public."tblFArac";
       public         heap    postgres    false            ?            1259    17122    tblKaportaci    TABLE     Q   CREATE TABLE public."tblKaportaci" (
    kaportaci character varying NOT NULL
);
 "   DROP TABLE public."tblKaportaci";
       public         heap    postgres    false            ?            1259    17101 
   tblMotorcu    TABLE     M   CREATE TABLE public."tblMotorcu" (
    motorcu character varying NOT NULL
);
     DROP TABLE public."tblMotorcu";
       public         heap    postgres    false            ?            1259    17136 
   tblMusteri    TABLE     ?   CREATE TABLE public."tblMusteri" (
    "musteriID" integer NOT NULL,
    musteriadi character varying NOT NULL,
    "aracID" integer NOT NULL,
    musterisoyadi character varying NOT NULL
);
     DROP TABLE public."tblMusteri";
       public         heap    postgres    false            ?            1259    17129    tblSigorataci    TABLE     R   CREATE TABLE public."tblSigorataci" (
    sigortaci character varying NOT NULL
);
 #   DROP TABLE public."tblSigorataci";
       public         heap    postgres    false            ?            1259    17252    tblkasa    TABLE     =   CREATE TABLE public.tblkasa (
    gunluk integer NOT NULL
);
    DROP TABLE public.tblkasa;
       public         heap    postgres    false            ?            1259    17212    tbltoplammusteri    TABLE     D   CREATE TABLE public.tbltoplammusteri (
    sayi integer NOT NULL
);
 $   DROP TABLE public.tbltoplammusteri;
       public         heap    postgres    false            s          0    17045 	   tblA1Arac 
   TABLE DATA           J   COPY public."tblA1Arac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    215   ?[       t          0    17052 	   tblA2Arac 
   TABLE DATA           J   COPY public."tblA2Arac" ("aracID", "aracMarka", "aracSinifi") FROM stdin;
    public          postgres    false    216   ?[       ?          0    17261 	   tblA3Arac 
   TABLE DATA           =   COPY public."tblA3Arac" ("aracID", "aracSinifi") FROM stdin;
    public          postgres    false    231   ?[       r          0    17038 
   tblAraclar 
   TABLE DATA           >   COPY public."tblAraclar" ("aracID", "aracSinifi") FROM stdin;
    public          postgres    false    214   
\       u          0    17059 	   tblB1Arac 
   TABLE DATA           J   COPY public."tblB1Arac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    217   J\       v          0    17066 	   tblB2Arac 
   TABLE DATA           J   COPY public."tblB2Arac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    218   q\       |          0    17108 	   tblBoyaci 
   TABLE DATA           -   COPY public."tblBoyaci" (boyaci) FROM stdin;
    public          postgres    false    224   ?\       w          0    17073    tblCArac 
   TABLE DATA           I   COPY public."tblCArac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    219   ?\       x          0    17080    tblDArac 
   TABLE DATA           I   COPY public."tblDArac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    220   ?\       y          0    17087    tblEArac 
   TABLE DATA           I   COPY public."tblEArac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    221   ]       }          0    17115    tblElektrikci 
   TABLE DATA           5   COPY public."tblElektrikci" (elektrikci) FROM stdin;
    public          postgres    false    225   <]       z          0    17094    tblFArac 
   TABLE DATA           I   COPY public."tblFArac" ("aracID", "aracSinifi", "aracMarka") FROM stdin;
    public          postgres    false    222   Y]       ~          0    17122    tblKaportaci 
   TABLE DATA           3   COPY public."tblKaportaci" (kaportaci) FROM stdin;
    public          postgres    false    226   ?]       {          0    17101 
   tblMotorcu 
   TABLE DATA           /   COPY public."tblMotorcu" (motorcu) FROM stdin;
    public          postgres    false    223   ?]       ?          0    17136 
   tblMusteri 
   TABLE DATA           X   COPY public."tblMusteri" ("musteriID", musteriadi, "aracID", musterisoyadi) FROM stdin;
    public          postgres    false    228   ?]                 0    17129    tblSigorataci 
   TABLE DATA           4   COPY public."tblSigorataci" (sigortaci) FROM stdin;
    public          postgres    false    227   3^       ?          0    17252    tblkasa 
   TABLE DATA           )   COPY public.tblkasa (gunluk) FROM stdin;
    public          postgres    false    230   b^       ?          0    17212    tbltoplammusteri 
   TABLE DATA           0   COPY public.tbltoplammusteri (sayi) FROM stdin;
    public          postgres    false    229   ?^       ?           2606    17051    tblA1Arac tblA1Arac_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."tblA1Arac"
    ADD CONSTRAINT "tblA1Arac_pkey" PRIMARY KEY ("aracID");
 F   ALTER TABLE ONLY public."tblA1Arac" DROP CONSTRAINT "tblA1Arac_pkey";
       public            postgres    false    215            ?           2606    17058    tblA2Arac tblA2Arac_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."tblA2Arac"
    ADD CONSTRAINT "tblA2Arac_pkey" PRIMARY KEY ("aracID");
 F   ALTER TABLE ONLY public."tblA2Arac" DROP CONSTRAINT "tblA2Arac_pkey";
       public            postgres    false    216            ?           2606    17044    tblAraclar tblAraclar_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."tblAraclar"
    ADD CONSTRAINT "tblAraclar_pkey" PRIMARY KEY ("aracID");
 H   ALTER TABLE ONLY public."tblAraclar" DROP CONSTRAINT "tblAraclar_pkey";
       public            postgres    false    214            ?           2606    17065    tblB1Arac tblB1Arac_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."tblB1Arac"
    ADD CONSTRAINT "tblB1Arac_pkey" PRIMARY KEY ("aracID");
 F   ALTER TABLE ONLY public."tblB1Arac" DROP CONSTRAINT "tblB1Arac_pkey";
       public            postgres    false    217            ?           2606    17072    tblB2Arac tblB2Arac_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."tblB2Arac"
    ADD CONSTRAINT "tblB2Arac_pkey" PRIMARY KEY ("aracID");
 F   ALTER TABLE ONLY public."tblB2Arac" DROP CONSTRAINT "tblB2Arac_pkey";
       public            postgres    false    218            ?           2606    17114    tblBoyaci tblBoyaci_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tblBoyaci"
    ADD CONSTRAINT "tblBoyaci_pkey" PRIMARY KEY (boyaci);
 F   ALTER TABLE ONLY public."tblBoyaci" DROP CONSTRAINT "tblBoyaci_pkey";
       public            postgres    false    224            ?           2606    17079    tblCArac tblCArac_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tblCArac"
    ADD CONSTRAINT "tblCArac_pkey" PRIMARY KEY ("aracID");
 D   ALTER TABLE ONLY public."tblCArac" DROP CONSTRAINT "tblCArac_pkey";
       public            postgres    false    219            ?           2606    17086    tblDArac tblDArac_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tblDArac"
    ADD CONSTRAINT "tblDArac_pkey" PRIMARY KEY ("aracID");
 D   ALTER TABLE ONLY public."tblDArac" DROP CONSTRAINT "tblDArac_pkey";
       public            postgres    false    220            ?           2606    17093    tblEArac tblEArac_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tblEArac"
    ADD CONSTRAINT "tblEArac_pkey" PRIMARY KEY ("aracID");
 D   ALTER TABLE ONLY public."tblEArac" DROP CONSTRAINT "tblEArac_pkey";
       public            postgres    false    221            ?           2606    17121     tblElektrikci tblElektrikci_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."tblElektrikci"
    ADD CONSTRAINT "tblElektrikci_pkey" PRIMARY KEY (elektrikci);
 N   ALTER TABLE ONLY public."tblElektrikci" DROP CONSTRAINT "tblElektrikci_pkey";
       public            postgres    false    225            ?           2606    17100    tblFArac tblFArac_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tblFArac"
    ADD CONSTRAINT "tblFArac_pkey" PRIMARY KEY ("aracID");
 D   ALTER TABLE ONLY public."tblFArac" DROP CONSTRAINT "tblFArac_pkey";
       public            postgres    false    222            ?           2606    17128    tblKaportaci tblKaportaci_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."tblKaportaci"
    ADD CONSTRAINT "tblKaportaci_pkey" PRIMARY KEY (kaportaci);
 L   ALTER TABLE ONLY public."tblKaportaci" DROP CONSTRAINT "tblKaportaci_pkey";
       public            postgres    false    226            ?           2606    17107    tblMotorcu tblMotorcu_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."tblMotorcu"
    ADD CONSTRAINT "tblMotorcu_pkey" PRIMARY KEY (motorcu);
 H   ALTER TABLE ONLY public."tblMotorcu" DROP CONSTRAINT "tblMotorcu_pkey";
       public            postgres    false    223            ?           2606    17142    tblMusteri tblMusteri_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."tblMusteri"
    ADD CONSTRAINT "tblMusteri_pkey" PRIMARY KEY ("musteriID");
 H   ALTER TABLE ONLY public."tblMusteri" DROP CONSTRAINT "tblMusteri_pkey";
       public            postgres    false    228            ?           2606    17256    tblkasa tblkasa_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tblkasa
    ADD CONSTRAINT tblkasa_pkey PRIMARY KEY (gunluk);
 >   ALTER TABLE ONLY public.tblkasa DROP CONSTRAINT tblkasa_pkey;
       public            postgres    false    230            ?           2606    17135     tblSigorataci tblsigorataci_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."tblSigorataci"
    ADD CONSTRAINT tblsigorataci_pkey PRIMARY KEY (sigortaci);
 L   ALTER TABLE ONLY public."tblSigorataci" DROP CONSTRAINT tblsigorataci_pkey;
       public            postgres    false    227            ?           2606    17216 &   tbltoplammusteri tbltoplammusteri_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tbltoplammusteri
    ADD CONSTRAINT tbltoplammusteri_pkey PRIMARY KEY (sayi);
 P   ALTER TABLE ONLY public.tbltoplammusteri DROP CONSTRAINT tbltoplammusteri_pkey;
       public            postgres    false    229            ?           1259    17148 
   fki_aracID    INDEX     H   CREATE INDEX "fki_aracID" ON public."tblA1Arac" USING btree ("aracID");
     DROP INDEX public."fki_aracID";
       public            postgres    false    215            ?           1259    17154    fki_tblA2F_Key    INDEX     L   CREATE INDEX "fki_tblA2F_Key" ON public."tblA2Arac" USING btree ("aracID");
 $   DROP INDEX public."fki_tblA2F_Key";
       public            postgres    false    216            ?           1259    17166    fki_tblB2F_Key    INDEX     L   CREATE INDEX "fki_tblB2F_Key" ON public."tblB2Arac" USING btree ("aracID");
 $   DROP INDEX public."fki_tblB2F_Key";
       public            postgres    false    218            ?           1259    17160    fki_tblBF_Key    INDEX     K   CREATE INDEX "fki_tblBF_Key" ON public."tblB1Arac" USING btree ("aracID");
 #   DROP INDEX public."fki_tblBF_Key";
       public            postgres    false    217            ?           1259    17172    fki_tblCF_Key    INDEX     J   CREATE INDEX "fki_tblCF_Key" ON public."tblCArac" USING btree ("aracID");
 #   DROP INDEX public."fki_tblCF_Key";
       public            postgres    false    219            ?           1259    17178    fki_tblDF_Key    INDEX     J   CREATE INDEX "fki_tblDF_Key" ON public."tblDArac" USING btree ("aracID");
 #   DROP INDEX public."fki_tblDF_Key";
       public            postgres    false    220            ?           1259    17184    fki_tblEF_Key    INDEX     J   CREATE INDEX "fki_tblEF_Key" ON public."tblEArac" USING btree ("aracID");
 #   DROP INDEX public."fki_tblEF_Key";
       public            postgres    false    221            ?           1259    17190    fki_tblFF_Key    INDEX     J   CREATE INDEX "fki_tblFF_Key" ON public."tblFArac" USING btree ("aracID");
 #   DROP INDEX public."fki_tblFF_Key";
       public            postgres    false    222            ?           1259    17196    fki_tblMusteriF_Key    INDEX     R   CREATE INDEX "fki_tblMusteriF_Key" ON public."tblMusteri" USING btree ("aracID");
 )   DROP INDEX public."fki_tblMusteriF_Key";
       public            postgres    false    228            ?           2620    17220    tblMusteri testtrigger    TRIGGER     l   CREATE TRIGGER testtrigger AFTER INSERT ON public."tblMusteri" FOR EACH ROW EXECUTE FUNCTION public.test();
 1   DROP TRIGGER testtrigger ON public."tblMusteri";
       public          postgres    false    232    228            ?           2620    17222    tblMusteri testtrigger2    TRIGGER     n   CREATE TRIGGER testtrigger2 AFTER DELETE ON public."tblMusteri" FOR EACH ROW EXECUTE FUNCTION public.test2();
 2   DROP TRIGGER testtrigger2 ON public."tblMusteri";
       public          postgres    false    233    228            ?           2620    17258    tblMusteri testtrigger5    TRIGGER     n   CREATE TRIGGER testtrigger5 AFTER INSERT ON public."tblMusteri" FOR EACH ROW EXECUTE FUNCTION public.test5();
 2   DROP TRIGGER testtrigger5 ON public."tblMusteri";
       public          postgres    false    235    228            ?           2620    17260    tblMusteri testtrigger6    TRIGGER     n   CREATE TRIGGER testtrigger6 AFTER DELETE ON public."tblMusteri" FOR EACH ROW EXECUTE FUNCTION public.test6();
 2   DROP TRIGGER testtrigger6 ON public."tblMusteri";
       public          postgres    false    228    234            ?           2606    17143    tblA1Arac tblA1F_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblA1Arac"
    ADD CONSTRAINT "tblA1F_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 B   ALTER TABLE ONLY public."tblA1Arac" DROP CONSTRAINT "tblA1F_Key";
       public          postgres    false    215    214    3245            ?           2606    17149    tblA2Arac tblA2F_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblA2Arac"
    ADD CONSTRAINT "tblA2F_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 B   ALTER TABLE ONLY public."tblA2Arac" DROP CONSTRAINT "tblA2F_Key";
       public          postgres    false    216    214    3245            ?           2606    17155    tblB1Arac tblB1F_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblB1Arac"
    ADD CONSTRAINT "tblB1F_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 B   ALTER TABLE ONLY public."tblB1Arac" DROP CONSTRAINT "tblB1F_Key";
       public          postgres    false    214    3245    217            ?           2606    17161    tblB2Arac tblB2F_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblB2Arac"
    ADD CONSTRAINT "tblB2F_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 B   ALTER TABLE ONLY public."tblB2Arac" DROP CONSTRAINT "tblB2F_Key";
       public          postgres    false    214    218    3245            ?           2606    17167    tblCArac tblCF_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblCArac"
    ADD CONSTRAINT "tblCF_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 @   ALTER TABLE ONLY public."tblCArac" DROP CONSTRAINT "tblCF_Key";
       public          postgres    false    214    219    3245            ?           2606    17173    tblDArac tblDF_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblDArac"
    ADD CONSTRAINT "tblDF_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 @   ALTER TABLE ONLY public."tblDArac" DROP CONSTRAINT "tblDF_Key";
       public          postgres    false    220    3245    214            ?           2606    17179    tblEArac tblEF_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblEArac"
    ADD CONSTRAINT "tblEF_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 @   ALTER TABLE ONLY public."tblEArac" DROP CONSTRAINT "tblEF_Key";
       public          postgres    false    221    214    3245            ?           2606    17185    tblFArac tblFF_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblFArac"
    ADD CONSTRAINT "tblFF_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 @   ALTER TABLE ONLY public."tblFArac" DROP CONSTRAINT "tblFF_Key";
       public          postgres    false    214    3245    222            ?           2606    17191    tblMusteri tblMusteriF_Key    FK CONSTRAINT     ?   ALTER TABLE ONLY public."tblMusteri"
    ADD CONSTRAINT "tblMusteriF_Key" FOREIGN KEY ("aracID") REFERENCES public."tblAraclar"("aracID") NOT VALID;
 H   ALTER TABLE ONLY public."tblMusteri" DROP CONSTRAINT "tblMusteriF_Key";
       public          postgres    false    228    3245    214            s      x?3?t4??,???????? 2
      t      x?3??L?M?H?t4?????? '??      ?      x?????? ? ?      r   0   x???  ??m1H6?kR?_3?0\?dM?h:U??M?a???|??      u      x?3?t2?t?/J?????? ~?      v      x?3?t2?t,M??????? P?      |      x?sʯLL?T?8??8?23O?+F??? aS9      w      x?3?t??,KM??????? ?3      x      x?3?t????v?????? o      y      x?3?t???)??????? <W      }      x?????? ? ?      z      x???t?tN,I-*???I,?????? B??      ~      x??N,?/*IL?T?(-N????????? e?V      {      x???/?/J.U?(-N????????? Ug?      ?   A   x?34??L̨L?4??H?????2????(?]Z?i????1?L-.J
??$?r??qqq F?$            x??L?/J,I?T?(-N????????? fR]      ?      x?3450?????? 	?y      ?      x?3?????? h ?     