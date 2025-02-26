PGDMP     2                    y            Int_shop    13.1    13.1      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Int_shop    DATABASE     g   CREATE DATABASE "Int_shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Int_shop";
                postgres    false                        2615    16395    int_shop_scheme    SCHEMA        CREATE SCHEMA int_shop_scheme;
    DROP SCHEMA int_shop_scheme;
                postgres    false            �            1259    16396    Client    TABLE     �   CREATE TABLE int_shop_scheme."Client" (
    client_id integer NOT NULL,
    client_nickname text NOT NULL,
    client_adress text
);
 %   DROP TABLE int_shop_scheme."Client";
       int_shop_scheme         heap    postgres    false    6            �            1259    16463    basket    TABLE     �   CREATE TABLE int_shop_scheme.basket (
    id_basket integer NOT NULL,
    full_price integer NOT NULL,
    client_id integer NOT NULL,
    product_id integer NOT NULL
);
 #   DROP TABLE int_shop_scheme.basket;
       int_shop_scheme         heap    postgres    false    6            �            1259    16504    delivery    TABLE     �   CREATE TABLE int_shop_scheme.delivery (
    delivery_id integer NOT NULL,
    order_id integer NOT NULL,
    courier_id integer NOT NULL,
    delivery_date date NOT NULL
);
 %   DROP TABLE int_shop_scheme.delivery;
       int_shop_scheme         heap    postgres    false    6            �            1259    16406    int_shop    TABLE     m   CREATE TABLE int_shop_scheme.int_shop (
    id_int_shop integer NOT NULL,
    name_int_shop text NOT NULL
);
 %   DROP TABLE int_shop_scheme.int_shop;
       int_shop_scheme         heap    postgres    false    6            �            1259    16480    order    TABLE     }   CREATE TABLE int_shop_scheme."order" (
    order_id integer NOT NULL,
    basket_id integer NOT NULL,
    order_date date
);
 $   DROP TABLE int_shop_scheme."order";
       int_shop_scheme         heap    postgres    false    6            �            1259    16401    product    TABLE     �   CREATE TABLE int_shop_scheme.product (
    product_id integer NOT NULL,
    product_name text NOT NULL,
    product_price integer NOT NULL
);
 $   DROP TABLE int_shop_scheme.product;
       int_shop_scheme         heap    postgres    false    6            �            1259    16411 	   warehouse    TABLE     i   CREATE TABLE int_shop_scheme.warehouse (
    id_warehouse integer NOT NULL,
    warehouse_adress text
);
 &   DROP TABLE int_shop_scheme.warehouse;
       int_shop_scheme         heap    postgres    false    6            �          0    16396    Client 
   TABLE DATA           V   COPY int_shop_scheme."Client" (client_id, client_nickname, client_adress) FROM stdin;
    int_shop_scheme          postgres    false    201   &%       �          0    16463    basket 
   TABLE DATA           W   COPY int_shop_scheme.basket (id_basket, full_price, client_id, product_id) FROM stdin;
    int_shop_scheme          postgres    false    205   ~%       �          0    16504    delivery 
   TABLE DATA           ]   COPY int_shop_scheme.delivery (delivery_id, order_id, courier_id, delivery_date) FROM stdin;
    int_shop_scheme          postgres    false    207   �%       �          0    16406    int_shop 
   TABLE DATA           G   COPY int_shop_scheme.int_shop (id_int_shop, name_int_shop) FROM stdin;
    int_shop_scheme          postgres    false    203   �%       �          0    16480    order 
   TABLE DATA           K   COPY int_shop_scheme."order" (order_id, basket_id, order_date) FROM stdin;
    int_shop_scheme          postgres    false    206   &       �          0    16401    product 
   TABLE DATA           S   COPY int_shop_scheme.product (product_id, product_name, product_price) FROM stdin;
    int_shop_scheme          postgres    false    202   9&       �          0    16411 	   warehouse 
   TABLE DATA           L   COPY int_shop_scheme.warehouse (id_warehouse, warehouse_adress) FROM stdin;
    int_shop_scheme          postgres    false    204   j&       F           2606    16491    basket 1 
   CONSTRAINT     S   ALTER TABLE ONLY int_shop_scheme.basket
    ADD CONSTRAINT "1" UNIQUE (id_basket);
 =   ALTER TABLE ONLY int_shop_scheme.basket DROP CONSTRAINT "1";
       int_shop_scheme            postgres    false    205            J           2606    16503    order 2 
   CONSTRAINT     S   ALTER TABLE ONLY int_shop_scheme."order"
    ADD CONSTRAINT "2" UNIQUE (order_id);
 >   ALTER TABLE ONLY int_shop_scheme."order" DROP CONSTRAINT "2";
       int_shop_scheme            postgres    false    206            >           2606    16400    Client Client_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY int_shop_scheme."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY (client_id);
 I   ALTER TABLE ONLY int_shop_scheme."Client" DROP CONSTRAINT "Client_pkey";
       int_shop_scheme            postgres    false    201            H           2606    16474    basket basket_pr_ks 
   CONSTRAINT     l   ALTER TABLE ONLY int_shop_scheme.basket
    ADD CONSTRAINT basket_pr_ks PRIMARY KEY (id_basket, client_id);
 F   ALTER TABLE ONLY int_shop_scheme.basket DROP CONSTRAINT basket_pr_ks;
       int_shop_scheme            postgres    false    205    205            N           2606    16508    delivery delivery_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY int_shop_scheme.delivery
    ADD CONSTRAINT delivery_pkey PRIMARY KEY (delivery_id, order_id);
 I   ALTER TABLE ONLY int_shop_scheme.delivery DROP CONSTRAINT delivery_pkey;
       int_shop_scheme            postgres    false    207    207            B           2606    16410    int_shop int_shop_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY int_shop_scheme.int_shop
    ADD CONSTRAINT int_shop_pkey PRIMARY KEY (id_int_shop);
 I   ALTER TABLE ONLY int_shop_scheme.int_shop DROP CONSTRAINT int_shop_pkey;
       int_shop_scheme            postgres    false    203            L           2606    16484    order order_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY int_shop_scheme."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id, basket_id);
 E   ALTER TABLE ONLY int_shop_scheme."order" DROP CONSTRAINT order_pkey;
       int_shop_scheme            postgres    false    206    206            @           2606    16405    product product_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY int_shop_scheme.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 G   ALTER TABLE ONLY int_shop_scheme.product DROP CONSTRAINT product_pkey;
       int_shop_scheme            postgres    false    202            D           2606    16415    warehouse warehouse_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY int_shop_scheme.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (id_warehouse);
 K   ALTER TABLE ONLY int_shop_scheme.warehouse DROP CONSTRAINT warehouse_pkey;
       int_shop_scheme            postgres    false    204            Q           2606    16492    order basket_id(FK)    FK CONSTRAINT     �   ALTER TABLE ONLY int_shop_scheme."order"
    ADD CONSTRAINT "basket_id(FK)" FOREIGN KEY (order_id) REFERENCES int_shop_scheme.basket(id_basket) NOT VALID;
 J   ALTER TABLE ONLY int_shop_scheme."order" DROP CONSTRAINT "basket_id(FK)";
       int_shop_scheme          postgres    false    2886    205    206            O           2606    16475    basket client_id(FK)    FK CONSTRAINT     �   ALTER TABLE ONLY int_shop_scheme.basket
    ADD CONSTRAINT "client_id(FK)" FOREIGN KEY (client_id) REFERENCES int_shop_scheme."Client"(client_id) NOT VALID;
 I   ALTER TABLE ONLY int_shop_scheme.basket DROP CONSTRAINT "client_id(FK)";
       int_shop_scheme          postgres    false    205    2878    201            R           2606    16509    delivery order_id(FK)    FK CONSTRAINT     �   ALTER TABLE ONLY int_shop_scheme.delivery
    ADD CONSTRAINT "order_id(FK)" FOREIGN KEY (order_id) REFERENCES int_shop_scheme."order"(order_id);
 J   ALTER TABLE ONLY int_shop_scheme.delivery DROP CONSTRAINT "order_id(FK)";
       int_shop_scheme          postgres    false    207    2890    206            P           2606    16485    basket product_id(FK)    FK CONSTRAINT     �   ALTER TABLE ONLY int_shop_scheme.basket
    ADD CONSTRAINT "product_id(FK)" FOREIGN KEY (product_id) REFERENCES int_shop_scheme.product(product_id) NOT VALID;
 J   ALTER TABLE ONLY int_shop_scheme.basket DROP CONSTRAINT "product_id(FK)";
       int_shop_scheme          postgres    false    205    202    2880            �   H   x�3��,����/�N��+QH-I-*N*-J����3�+���M��8�s��S���� �U �      �      x�3�460�4�4�2�4��8��b���� ,dD      �   "   x�3�4B##C]#]C.#N0D��qqq v;�      �      x�3���/�L�������� (�.      �   "   x�3�4�4202�50�5��2�4Bp͹b���� dcx      �   !   x�3��-��,*�450�2�L.- �b���� lqa      �   M   x�3�N��+�H-I-*N*-J�Q�K-K�)�N�LT(.)��Q0�6�2¢���Q�7�8;��S�3�S�b���� )��     