PGDMP     #                      y            bfpspc    12.3    12.3 1              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    37392    bfpspc    DATABASE     �   CREATE DATABASE bfpspc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Philippines.1252' LC_CTYPE = 'English_Philippines.1252';
    DROP DATABASE bfpspc;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4                        2615    38850    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false                       0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    7                       0    0    SCHEMA topology    ACL     *   GRANT USAGE ON SCHEMA topology TO bfpspc;
                   postgres    false    7            �            1259    37393 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    bfpspc    false    4            �            1259    37396    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          bfpspc    false    204    4                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          bfpspc    false    205            �            1259    37398    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    bfpspc    false    4            �            1259    37401    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          bfpspc    false    4    206                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          bfpspc    false    207            �            1259    37403    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    bfpspc    false    4            �            1259    37406    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          bfpspc    false    208    4                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          bfpspc    false    209            �            1259    37408 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    bfpspc    false    4            �            1259    37414    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    bfpspc    false    4            �            1259    37417    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          bfpspc    false    4    211                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          bfpspc    false    212            �            1259    37419    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          bfpspc    false    210    4                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          bfpspc    false    213            �            1259    37421    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    bfpspc    false    4            �            1259    37424 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          bfpspc    false    4    214                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          bfpspc    false    215            �            1259    37426    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    bfpspc    false    4            �            1259    37433    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          bfpspc    false    4    216                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          bfpspc    false    217            �            1259    37435    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    bfpspc    false    4            �            1259    37438    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          bfpspc    false    4    218                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          bfpspc    false    219            �            1259    37440    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    bfpspc    false    4            �            1259    37446    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          bfpspc    false    4    220                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          bfpspc    false    221            �            1259    37448    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    bfpspc    false    4            �            1259    37454    home_alarmstatusuponarrival    TABLE     �   CREATE TABLE public.home_alarmstatusuponarrival (
    id integer NOT NULL,
    "StatusUponArrival" character varying(255) NOT NULL,
    "StatusUponArrivalRemarks" character varying(255) NOT NULL,
    "Incident_id" integer
);
 /   DROP TABLE public.home_alarmstatusuponarrival;
       public         heap    bfpspc    false    4            �            1259    37460 "   home_alarmstatusuponarrival_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_alarmstatusuponarrival_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.home_alarmstatusuponarrival_id_seq;
       public          bfpspc    false    4    223                        0    0 "   home_alarmstatusuponarrival_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.home_alarmstatusuponarrival_id_seq OWNED BY public.home_alarmstatusuponarrival.id;
          public          bfpspc    false    224            
           1259    38851    home_barangay    TABLE     �   CREATE TABLE public.home_barangay (
    id integer NOT NULL,
    "Name" character varying(75) NOT NULL,
    geom public.geometry(MultiPolygon,4326)
);
 !   DROP TABLE public.home_barangay;
       public         heap    bfpspc    false    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            �            1259    37462    home_barangay_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_barangay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_barangay_id_seq;
       public          bfpspc    false    4    266            !           0    0    home_barangay_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_barangay_id_seq OWNED BY public.home_barangay.id;
          public          bfpspc    false    225            �            1259    37464    home_breathingapparatus    TABLE     �   CREATE TABLE public.home_breathingapparatus (
    id integer NOT NULL,
    "BreathingApparatusNr" integer NOT NULL,
    "BreathingApparatusType" character varying(255),
    "Incident_id" integer
);
 +   DROP TABLE public.home_breathingapparatus;
       public         heap    bfpspc    false    4            �            1259    37467    home_breathingapparatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_breathingapparatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.home_breathingapparatus_id_seq;
       public          bfpspc    false    4    226            "           0    0    home_breathingapparatus_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.home_breathingapparatus_id_seq OWNED BY public.home_breathingapparatus.id;
          public          bfpspc    false    227            �            1259    37469    home_dutypersonnel    TABLE     �   CREATE TABLE public.home_dutypersonnel (
    id integer NOT NULL,
    "Designation" character varying(255) NOT NULL,
    "Remarks" character varying(255) NOT NULL,
    "Incident_id" integer,
    "Personnel_id" integer
);
 &   DROP TABLE public.home_dutypersonnel;
       public         heap    bfpspc    false    4            �            1259    37475    home_dutypersonnel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_dutypersonnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.home_dutypersonnel_id_seq;
       public          bfpspc    false    4    228            #           0    0    home_dutypersonnel_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.home_dutypersonnel_id_seq OWNED BY public.home_dutypersonnel.id;
          public          bfpspc    false    229            �            1259    37477    home_employee    TABLE     �   CREATE TABLE public.home_employee (
    id integer NOT NULL,
    "Designation" character varying(100) NOT NULL,
    user_id integer NOT NULL,
    "Rank_id" integer
);
 !   DROP TABLE public.home_employee;
       public         heap    bfpspc    false    4            �            1259    37480    home_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_employee_id_seq;
       public          bfpspc    false    4    230            $           0    0    home_employee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_employee_id_seq OWNED BY public.home_employee.id;
          public          bfpspc    false    231            �            1259    37482    home_engines    TABLE     �   CREATE TABLE public.home_engines (
    id integer NOT NULL,
    "Name" character varying(255),
    "Model" character varying(255),
    "Remarks" character varying(255)
);
     DROP TABLE public.home_engines;
       public         heap    bfpspc    false    4            �            1259    37488    home_engines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_engines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_engines_id_seq;
       public          bfpspc    false    4    232            %           0    0    home_engines_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_engines_id_seq OWNED BY public.home_engines.id;
          public          bfpspc    false    233            �            1259    37490    home_extinguisingagent    TABLE     �   CREATE TABLE public.home_extinguisingagent (
    id integer NOT NULL,
    "Quantity" integer NOT NULL,
    "Type" character varying(255) NOT NULL,
    "Incident_id" integer
);
 *   DROP TABLE public.home_extinguisingagent;
       public         heap    bfpspc    false    4            �            1259    37493    home_extinguisingagent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_extinguisingagent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.home_extinguisingagent_id_seq;
       public          bfpspc    false    4    234            &           0    0    home_extinguisingagent_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.home_extinguisingagent_id_seq OWNED BY public.home_extinguisingagent.id;
          public          bfpspc    false    235            �            1259    37495    home_hoseline    TABLE     �   CREATE TABLE public.home_hoseline (
    id integer NOT NULL,
    "Nr" integer NOT NULL,
    "Type" character varying(255) NOT NULL,
    "Length" integer NOT NULL,
    "Incident_id" integer
);
 !   DROP TABLE public.home_hoseline;
       public         heap    bfpspc    false    4            �            1259    37498    home_hoseline_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_hoseline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_hoseline_id_seq;
       public          bfpspc    false    236    4            '           0    0    home_hoseline_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_hoseline_id_seq OWNED BY public.home_hoseline.id;
          public          bfpspc    false    237                       1259    38857    home_incident    TABLE     U  CREATE TABLE public.home_incident (
    id integer NOT NULL,
    "HouseNumber" character varying(255),
    "Street" character varying(255),
    "EstimatedDamageCost" integer NOT NULL,
    "FinalDamageCost" integer NOT NULL,
    "Origin" character varying(255),
    "Cause" character varying(255),
    "Remarks" character varying(255) NOT NULL,
    "Barangay_id" integer,
    "Location" public.geometry(Point,4326),
    "Approved" boolean NOT NULL,
    "EstablishmentName" character varying(255),
    "OwnerName" character varying(255),
    "OccupancyType" character varying(255),
    "DateAlarmReceived" date,
    "TimeAlarmReceived" time without time zone,
    "Caller" character varying(255),
    "CallerAddress" character varying(255),
    "DeathCivilianF" integer NOT NULL,
    "DeathCivilianM" integer NOT NULL,
    "DeathFireFighterF" integer NOT NULL,
    "DeathFireFighterM" integer NOT NULL,
    "DescriptionOfStructure" text,
    "DistanceFromBase" integer NOT NULL,
    "InjuredCivilianF" integer NOT NULL,
    "InjuredCivilianM" integer NOT NULL,
    "InjuredFireFighterF" integer NOT NULL,
    "InjuredFireFighterM" integer NOT NULL,
    "OccupancyTypeRemarks" character varying(255),
    "PersonnelReceivingCall_id" integer,
    "Details" text,
    "Observations" text,
    "Problems" text,
    "Occupant" character varying(255),
    "DateTimeFireOut" timestamp with time zone,
    "DateTimeUnderControl" timestamp with time zone,
    "InvestigationDetails" text,
    "Involved" character varying(255),
    "TimeStarted" time without time zone,
    "Disposition" text,
    "Alarm" character varying(100)
);
 !   DROP TABLE public.home_incident;
       public         heap    bfpspc    false    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            �            1259    37500    home_incident_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_incident_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_incident_id_seq;
       public          bfpspc    false    4    267            (           0    0    home_incident_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_incident_id_seq OWNED BY public.home_incident.id;
          public          bfpspc    false    238            �            1259    37502    home_incidentresponse    TABLE     Q  CREATE TABLE public.home_incidentresponse (
    id integer NOT NULL,
    "TimeDispatched" time without time zone,
    "TimeArrived" time without time zone,
    "TimeReturnedToBase" time without time zone,
    "WaterTankRefilled" integer NOT NULL,
    "GasConsumed" integer NOT NULL,
    "Engine_id" integer,
    "Incident_id" integer
);
 )   DROP TABLE public.home_incidentresponse;
       public         heap    bfpspc    false    4            �            1259    37505    home_incidentresponse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_incidentresponse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_incidentresponse_id_seq;
       public          bfpspc    false    4    239            )           0    0    home_incidentresponse_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_incidentresponse_id_seq OWNED BY public.home_incidentresponse.id;
          public          bfpspc    false    240            �            1259    37507    home_personnel    TABLE     �   CREATE TABLE public.home_personnel (
    id integer NOT NULL,
    "FirstName" character varying(100),
    "MiddleName" character varying(100),
    "LastName" character varying(100) NOT NULL,
    "Rank_id" integer
);
 "   DROP TABLE public.home_personnel;
       public         heap    bfpspc    false    4            �            1259    37510    home_investigator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_investigator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.home_investigator_id_seq;
       public          bfpspc    false    4    241            *           0    0    home_investigator_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.home_investigator_id_seq OWNED BY public.home_personnel.id;
          public          bfpspc    false    242            �            1259    37512 	   home_rank    TABLE     �   CREATE TABLE public.home_rank (
    id integer NOT NULL,
    "Code" character varying(100) NOT NULL,
    "Definition" character varying(250) NOT NULL
);
    DROP TABLE public.home_rank;
       public         heap    bfpspc    false    4            �            1259    37515    home_investigatorrank_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_investigatorrank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_investigatorrank_id_seq;
       public          bfpspc    false    243    4            +           0    0    home_investigatorrank_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.home_investigatorrank_id_seq OWNED BY public.home_rank.id;
          public          bfpspc    false    244            �            1259    37517    home_ropeandladder    TABLE     �   CREATE TABLE public.home_ropeandladder (
    id integer NOT NULL,
    "Type" character varying(255) NOT NULL,
    "Length" integer NOT NULL,
    "Incident_id" integer
);
 &   DROP TABLE public.home_ropeandladder;
       public         heap    bfpspc    false    4            �            1259    37520    home_ropeandladder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_ropeandladder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.home_ropeandladder_id_seq;
       public          bfpspc    false    245    4            ,           0    0    home_ropeandladder_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.home_ropeandladder_id_seq OWNED BY public.home_ropeandladder.id;
          public          bfpspc    false    246            �            1259    37522    home_station    TABLE     r  CREATE TABLE public.home_station (
    id integer NOT NULL,
    "Address" character varying(255) NOT NULL,
    "TelephoneNumber" character varying(255) NOT NULL,
    "PhoneNumbers" character varying(255) NOT NULL,
    "EmailAddress" character varying(254),
    "BFPLogo" character varying(100),
    "StationLogo" character varying(100),
    "ChiefOfficer_id" integer
);
     DROP TABLE public.home_station;
       public         heap    bfpspc    false    4            �            1259    37528    home_station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_station_id_seq;
       public          bfpspc    false    4    247            -           0    0    home_station_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_station_id_seq OWNED BY public.home_station.id;
          public          bfpspc    false    248            �            1259    37530    home_timealarmstatus    TABLE     �   CREATE TABLE public.home_timealarmstatus (
    id integer NOT NULL,
    "AlarmStatus" character varying(255) NOT NULL,
    "AlarmTime" time without time zone,
    "GroundCommander" character varying(255) NOT NULL,
    "Incident_id" integer
);
 (   DROP TABLE public.home_timealarmstatus;
       public         heap    bfpspc    false    4            �            1259    37536    home_timealarmstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_timealarmstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.home_timealarmstatus_id_seq;
       public          bfpspc    false    249    4            .           0    0    home_timealarmstatus_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.home_timealarmstatus_id_seq OWNED BY public.home_timealarmstatus.id;
          public          bfpspc    false    250            �            1259    37538    report_builder_displayfield    TABLE     �  CREATE TABLE public.report_builder_displayfield (
    id integer NOT NULL,
    path character varying(2000) NOT NULL,
    path_verbose character varying(2000) NOT NULL,
    field character varying(2000) NOT NULL,
    field_verbose character varying(2000) NOT NULL,
    name character varying(2000) NOT NULL,
    sort integer,
    sort_reverse boolean NOT NULL,
    width integer NOT NULL,
    aggregate character varying(5) NOT NULL,
    "position" smallint,
    total boolean NOT NULL,
    "group" boolean NOT NULL,
    display_format_id integer,
    report_id integer NOT NULL,
    CONSTRAINT report_builder_displayfield_position_check CHECK (("position" >= 0))
);
 /   DROP TABLE public.report_builder_displayfield;
       public         heap    bfpspc    false    4            �            1259    37545 "   report_builder_displayfield_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_displayfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.report_builder_displayfield_id_seq;
       public          bfpspc    false    4    251            /           0    0 "   report_builder_displayfield_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.report_builder_displayfield_id_seq OWNED BY public.report_builder_displayfield.id;
          public          bfpspc    false    252            �            1259    37547    report_builder_filterfield    TABLE     e  CREATE TABLE public.report_builder_filterfield (
    id integer NOT NULL,
    path character varying(2000) NOT NULL,
    path_verbose character varying(2000) NOT NULL,
    field character varying(2000) NOT NULL,
    field_verbose character varying(2000) NOT NULL,
    filter_type character varying(20) NOT NULL,
    filter_value character varying(2000) NOT NULL,
    filter_value2 character varying(2000) NOT NULL,
    exclude boolean NOT NULL,
    "position" smallint,
    report_id integer NOT NULL,
    filter_delta bigint,
    CONSTRAINT report_builder_filterfield_position_check CHECK (("position" >= 0))
);
 .   DROP TABLE public.report_builder_filterfield;
       public         heap    bfpspc    false    4            �            1259    37554 !   report_builder_filterfield_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_filterfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.report_builder_filterfield_id_seq;
       public          bfpspc    false    253    4            0           0    0 !   report_builder_filterfield_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.report_builder_filterfield_id_seq OWNED BY public.report_builder_filterfield.id;
          public          bfpspc    false    254            �            1259    37556    report_builder_format    TABLE     �   CREATE TABLE public.report_builder_format (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    string character varying(300) NOT NULL
);
 )   DROP TABLE public.report_builder_format;
       public         heap    bfpspc    false    4                        1259    37559    report_builder_format_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_format_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_builder_format_id_seq;
       public          bfpspc    false    255    4            1           0    0    report_builder_format_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.report_builder_format_id_seq OWNED BY public.report_builder_format.id;
          public          bfpspc    false    256                       1259    37561    report_builder_report    TABLE     �  CREATE TABLE public.report_builder_report (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(50) NOT NULL,
    description text NOT NULL,
    created date NOT NULL,
    modified date NOT NULL,
    "distinct" boolean NOT NULL,
    report_file character varying(100) NOT NULL,
    report_file_creation timestamp with time zone,
    root_model_id integer NOT NULL,
    user_created_id integer,
    user_modified_id integer
);
 )   DROP TABLE public.report_builder_report;
       public         heap    bfpspc    false    4                       1259    37567    report_builder_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_builder_report_id_seq;
       public          bfpspc    false    257    4            2           0    0    report_builder_report_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.report_builder_report_id_seq OWNED BY public.report_builder_report.id;
          public          bfpspc    false    258                       1259    37569    report_builder_report_starred    TABLE     �   CREATE TABLE public.report_builder_report_starred (
    id integer NOT NULL,
    report_id integer NOT NULL,
    user_id integer NOT NULL
);
 1   DROP TABLE public.report_builder_report_starred;
       public         heap    bfpspc    false    4                       1259    37572 $   report_builder_report_starred_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_report_starred_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.report_builder_report_starred_id_seq;
       public          bfpspc    false    259    4            3           0    0 $   report_builder_report_starred_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.report_builder_report_starred_id_seq OWNED BY public.report_builder_report_starred.id;
          public          bfpspc    false    260            �           2604    38863    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    205    204            �           2604    38864    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    207    206            �           2604    38865    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    209    208            �           2604    38866    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    213    210            �           2604    38867    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    212    211            �           2604    38868    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    215    214            �           2604    38869    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    217    216            �           2604    38870    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    219    218            �           2604    38871    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    221    220            �           2604    38872    home_alarmstatusuponarrival id    DEFAULT     �   ALTER TABLE ONLY public.home_alarmstatusuponarrival ALTER COLUMN id SET DEFAULT nextval('public.home_alarmstatusuponarrival_id_seq'::regclass);
 M   ALTER TABLE public.home_alarmstatusuponarrival ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    224    223            �           2604    38873    home_barangay id    DEFAULT     t   ALTER TABLE ONLY public.home_barangay ALTER COLUMN id SET DEFAULT nextval('public.home_barangay_id_seq'::regclass);
 ?   ALTER TABLE public.home_barangay ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    266    225    266            �           2604    38874    home_breathingapparatus id    DEFAULT     �   ALTER TABLE ONLY public.home_breathingapparatus ALTER COLUMN id SET DEFAULT nextval('public.home_breathingapparatus_id_seq'::regclass);
 I   ALTER TABLE public.home_breathingapparatus ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    227    226            �           2604    38875    home_dutypersonnel id    DEFAULT     ~   ALTER TABLE ONLY public.home_dutypersonnel ALTER COLUMN id SET DEFAULT nextval('public.home_dutypersonnel_id_seq'::regclass);
 D   ALTER TABLE public.home_dutypersonnel ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    229    228            �           2604    38876    home_employee id    DEFAULT     t   ALTER TABLE ONLY public.home_employee ALTER COLUMN id SET DEFAULT nextval('public.home_employee_id_seq'::regclass);
 ?   ALTER TABLE public.home_employee ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    231    230            �           2604    38877    home_engines id    DEFAULT     r   ALTER TABLE ONLY public.home_engines ALTER COLUMN id SET DEFAULT nextval('public.home_engines_id_seq'::regclass);
 >   ALTER TABLE public.home_engines ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    233    232            �           2604    38878    home_extinguisingagent id    DEFAULT     �   ALTER TABLE ONLY public.home_extinguisingagent ALTER COLUMN id SET DEFAULT nextval('public.home_extinguisingagent_id_seq'::regclass);
 H   ALTER TABLE public.home_extinguisingagent ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    235    234            �           2604    38879    home_hoseline id    DEFAULT     t   ALTER TABLE ONLY public.home_hoseline ALTER COLUMN id SET DEFAULT nextval('public.home_hoseline_id_seq'::regclass);
 ?   ALTER TABLE public.home_hoseline ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    237    236            �           2604    38880    home_incident id    DEFAULT     t   ALTER TABLE ONLY public.home_incident ALTER COLUMN id SET DEFAULT nextval('public.home_incident_id_seq'::regclass);
 ?   ALTER TABLE public.home_incident ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    267    238    267            �           2604    38881    home_incidentresponse id    DEFAULT     �   ALTER TABLE ONLY public.home_incidentresponse ALTER COLUMN id SET DEFAULT nextval('public.home_incidentresponse_id_seq'::regclass);
 G   ALTER TABLE public.home_incidentresponse ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    240    239            �           2604    38882    home_personnel id    DEFAULT     y   ALTER TABLE ONLY public.home_personnel ALTER COLUMN id SET DEFAULT nextval('public.home_investigator_id_seq'::regclass);
 @   ALTER TABLE public.home_personnel ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    242    241            �           2604    38883    home_rank id    DEFAULT     x   ALTER TABLE ONLY public.home_rank ALTER COLUMN id SET DEFAULT nextval('public.home_investigatorrank_id_seq'::regclass);
 ;   ALTER TABLE public.home_rank ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    244    243            �           2604    38884    home_ropeandladder id    DEFAULT     ~   ALTER TABLE ONLY public.home_ropeandladder ALTER COLUMN id SET DEFAULT nextval('public.home_ropeandladder_id_seq'::regclass);
 D   ALTER TABLE public.home_ropeandladder ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    246    245            �           2604    38885    home_station id    DEFAULT     r   ALTER TABLE ONLY public.home_station ALTER COLUMN id SET DEFAULT nextval('public.home_station_id_seq'::regclass);
 >   ALTER TABLE public.home_station ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    248    247            �           2604    38886    home_timealarmstatus id    DEFAULT     �   ALTER TABLE ONLY public.home_timealarmstatus ALTER COLUMN id SET DEFAULT nextval('public.home_timealarmstatus_id_seq'::regclass);
 F   ALTER TABLE public.home_timealarmstatus ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    250    249            �           2604    38887    report_builder_displayfield id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_displayfield ALTER COLUMN id SET DEFAULT nextval('public.report_builder_displayfield_id_seq'::regclass);
 M   ALTER TABLE public.report_builder_displayfield ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    252    251            �           2604    38888    report_builder_filterfield id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_filterfield ALTER COLUMN id SET DEFAULT nextval('public.report_builder_filterfield_id_seq'::regclass);
 L   ALTER TABLE public.report_builder_filterfield ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    254    253            �           2604    38889    report_builder_format id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_format ALTER COLUMN id SET DEFAULT nextval('public.report_builder_format_id_seq'::regclass);
 G   ALTER TABLE public.report_builder_format ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    256    255            �           2604    38890    report_builder_report id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_report ALTER COLUMN id SET DEFAULT nextval('public.report_builder_report_id_seq'::regclass);
 G   ALTER TABLE public.report_builder_report ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    258    257            �           2604    38891     report_builder_report_starred id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_report_starred ALTER COLUMN id SET DEFAULT nextval('public.report_builder_report_starred_id_seq'::regclass);
 O   ALTER TABLE public.report_builder_report_starred ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    260    259            �          0    37393 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          bfpspc    false    204            �          0    37398    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          bfpspc    false    206            �          0    37403    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          bfpspc    false    208            �          0    37408 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          bfpspc    false    210            �          0    37414    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          bfpspc    false    211            �          0    37421    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          bfpspc    false    214            �          0    37426    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          bfpspc    false    216            �          0    37435    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          bfpspc    false    218            �          0    37440    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          bfpspc    false    220            �          0    37448    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          bfpspc    false    222            �          0    37454    home_alarmstatusuponarrival 
   TABLE DATA           y   COPY public.home_alarmstatusuponarrival (id, "StatusUponArrival", "StatusUponArrivalRemarks", "Incident_id") FROM stdin;
    public          bfpspc    false    223                      0    38851    home_barangay 
   TABLE DATA           9   COPY public.home_barangay (id, "Name", geom) FROM stdin;
    public          bfpspc    false    266            �          0    37464    home_breathingapparatus 
   TABLE DATA           v   COPY public.home_breathingapparatus (id, "BreathingApparatusNr", "BreathingApparatusType", "Incident_id") FROM stdin;
    public          bfpspc    false    226            �          0    37469    home_dutypersonnel 
   TABLE DATA           i   COPY public.home_dutypersonnel (id, "Designation", "Remarks", "Incident_id", "Personnel_id") FROM stdin;
    public          bfpspc    false    228            �          0    37477    home_employee 
   TABLE DATA           N   COPY public.home_employee (id, "Designation", user_id, "Rank_id") FROM stdin;
    public          bfpspc    false    230            �          0    37482    home_engines 
   TABLE DATA           F   COPY public.home_engines (id, "Name", "Model", "Remarks") FROM stdin;
    public          bfpspc    false    232            �          0    37490    home_extinguisingagent 
   TABLE DATA           W   COPY public.home_extinguisingagent (id, "Quantity", "Type", "Incident_id") FROM stdin;
    public          bfpspc    false    234            �          0    37495    home_hoseline 
   TABLE DATA           R   COPY public.home_hoseline (id, "Nr", "Type", "Length", "Incident_id") FROM stdin;
    public          bfpspc    false    236                      0    38857    home_incident 
   TABLE DATA           �  COPY public.home_incident (id, "HouseNumber", "Street", "EstimatedDamageCost", "FinalDamageCost", "Origin", "Cause", "Remarks", "Barangay_id", "Location", "Approved", "EstablishmentName", "OwnerName", "OccupancyType", "DateAlarmReceived", "TimeAlarmReceived", "Caller", "CallerAddress", "DeathCivilianF", "DeathCivilianM", "DeathFireFighterF", "DeathFireFighterM", "DescriptionOfStructure", "DistanceFromBase", "InjuredCivilianF", "InjuredCivilianM", "InjuredFireFighterF", "InjuredFireFighterM", "OccupancyTypeRemarks", "PersonnelReceivingCall_id", "Details", "Observations", "Problems", "Occupant", "DateTimeFireOut", "DateTimeUnderControl", "InvestigationDetails", "Involved", "TimeStarted", "Disposition", "Alarm") FROM stdin;
    public          bfpspc    false    267            �          0    37502    home_incidentresponse 
   TABLE DATA           �   COPY public.home_incidentresponse (id, "TimeDispatched", "TimeArrived", "TimeReturnedToBase", "WaterTankRefilled", "GasConsumed", "Engine_id", "Incident_id") FROM stdin;
    public          bfpspc    false    239            �          0    37507    home_personnel 
   TABLE DATA           ^   COPY public.home_personnel (id, "FirstName", "MiddleName", "LastName", "Rank_id") FROM stdin;
    public          bfpspc    false    241            �          0    37512 	   home_rank 
   TABLE DATA           =   COPY public.home_rank (id, "Code", "Definition") FROM stdin;
    public          bfpspc    false    243            �          0    37517    home_ropeandladder 
   TABLE DATA           Q   COPY public.home_ropeandladder (id, "Type", "Length", "Incident_id") FROM stdin;
    public          bfpspc    false    245            �          0    37522    home_station 
   TABLE DATA           �   COPY public.home_station (id, "Address", "TelephoneNumber", "PhoneNumbers", "EmailAddress", "BFPLogo", "StationLogo", "ChiefOfficer_id") FROM stdin;
    public          bfpspc    false    247                       0    37530    home_timealarmstatus 
   TABLE DATA           p   COPY public.home_timealarmstatus (id, "AlarmStatus", "AlarmTime", "GroundCommander", "Incident_id") FROM stdin;
    public          bfpspc    false    249                      0    37538    report_builder_displayfield 
   TABLE DATA           �   COPY public.report_builder_displayfield (id, path, path_verbose, field, field_verbose, name, sort, sort_reverse, width, aggregate, "position", total, "group", display_format_id, report_id) FROM stdin;
    public          bfpspc    false    251                      0    37547    report_builder_filterfield 
   TABLE DATA           �   COPY public.report_builder_filterfield (id, path, path_verbose, field, field_verbose, filter_type, filter_value, filter_value2, exclude, "position", report_id, filter_delta) FROM stdin;
    public          bfpspc    false    253                      0    37556    report_builder_format 
   TABLE DATA           A   COPY public.report_builder_format (id, name, string) FROM stdin;
    public          bfpspc    false    255                      0    37561    report_builder_report 
   TABLE DATA           �   COPY public.report_builder_report (id, name, slug, description, created, modified, "distinct", report_file, report_file_creation, root_model_id, user_created_id, user_modified_id) FROM stdin;
    public          bfpspc    false    257            
          0    37569    report_builder_report_starred 
   TABLE DATA           O   COPY public.report_builder_report_starred (id, report_id, user_id) FROM stdin;
    public          bfpspc    false    259            �          0    38146    spatial_ref_sys 
   TABLE DATA           )   COPY public.spatial_ref_sys  FROM stdin;
    public          postgres    false    262            4           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          bfpspc    false    205            5           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 27, true);
          public          bfpspc    false    207            6           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);
          public          bfpspc    false    209            7           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);
          public          bfpspc    false    212            8           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          bfpspc    false    213            9           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          bfpspc    false    215            :           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 337, true);
          public          bfpspc    false    217            ;           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 31, true);
          public          bfpspc    false    219            <           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 123, true);
          public          bfpspc    false    221            =           0    0 "   home_alarmstatusuponarrival_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.home_alarmstatusuponarrival_id_seq', 39, true);
          public          bfpspc    false    224            >           0    0    home_barangay_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.home_barangay_id_seq', 562, true);
          public          bfpspc    false    225            ?           0    0    home_breathingapparatus_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.home_breathingapparatus_id_seq', 1, false);
          public          bfpspc    false    227            @           0    0    home_dutypersonnel_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.home_dutypersonnel_id_seq', 8, true);
          public          bfpspc    false    229            A           0    0    home_employee_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.home_employee_id_seq', 2, true);
          public          bfpspc    false    231            B           0    0    home_engines_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_engines_id_seq', 2, true);
          public          bfpspc    false    233            C           0    0    home_extinguisingagent_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.home_extinguisingagent_id_seq', 5, true);
          public          bfpspc    false    235            D           0    0    home_hoseline_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.home_hoseline_id_seq', 3, true);
          public          bfpspc    false    237            E           0    0    home_incident_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.home_incident_id_seq', 118, true);
          public          bfpspc    false    238            F           0    0    home_incidentresponse_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_incidentresponse_id_seq', 9, true);
          public          bfpspc    false    240            G           0    0    home_investigator_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.home_investigator_id_seq', 10, true);
          public          bfpspc    false    242            H           0    0    home_investigatorrank_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.home_investigatorrank_id_seq', 10, true);
          public          bfpspc    false    244            I           0    0    home_ropeandladder_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.home_ropeandladder_id_seq', 1, false);
          public          bfpspc    false    246            J           0    0    home_station_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_station_id_seq', 1, true);
          public          bfpspc    false    248            K           0    0    home_timealarmstatus_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.home_timealarmstatus_id_seq', 3, true);
          public          bfpspc    false    250            L           0    0 "   report_builder_displayfield_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.report_builder_displayfield_id_seq', 5, true);
          public          bfpspc    false    252            M           0    0 !   report_builder_filterfield_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.report_builder_filterfield_id_seq', 1, false);
          public          bfpspc    false    254            N           0    0    report_builder_format_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.report_builder_format_id_seq', 1, false);
          public          bfpspc    false    256            O           0    0    report_builder_report_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.report_builder_report_id_seq', 1, true);
          public          bfpspc    false    258            P           0    0 $   report_builder_report_starred_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.report_builder_report_starred_id_seq', 1, false);
          public          bfpspc    false    260            �           2606    37602    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            bfpspc    false    204            �           2606    37604 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            bfpspc    false    206    206            �           2606    37606 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            bfpspc    false    206            �           2606    37608    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            bfpspc    false    204            �           2606    37610 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            bfpspc    false    208    208            �           2606    37612 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            bfpspc    false    208            �           2606    37614 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            bfpspc    false    211            �           2606    37616 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            bfpspc    false    211    211            �           2606    37618    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            bfpspc    false    210            �           2606    37620 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            bfpspc    false    214            �           2606    37622 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            bfpspc    false    214    214            �           2606    37624     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            bfpspc    false    210            �           2606    37626 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            bfpspc    false    216            �           2606    37628 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            bfpspc    false    218    218            �           2606    37630 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            bfpspc    false    218            �           2606    37632 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            bfpspc    false    220            �           2606    37634 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            bfpspc    false    222            �           2606    37636 [   home_alarmstatusuponarrival home_alarmstatusuponarri_Incident_id_StatusUponAr_98b0bef3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_alarmstatusuponarrival
    ADD CONSTRAINT "home_alarmstatusuponarri_Incident_id_StatusUponAr_98b0bef3_uniq" UNIQUE ("Incident_id", "StatusUponArrival");
 �   ALTER TABLE ONLY public.home_alarmstatusuponarrival DROP CONSTRAINT "home_alarmstatusuponarri_Incident_id_StatusUponAr_98b0bef3_uniq";
       public            bfpspc    false    223    223            �           2606    37638 <   home_alarmstatusuponarrival home_alarmstatusuponarrival_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.home_alarmstatusuponarrival
    ADD CONSTRAINT home_alarmstatusuponarrival_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.home_alarmstatusuponarrival DROP CONSTRAINT home_alarmstatusuponarrival_pkey;
       public            bfpspc    false    223            )           2606    38895     home_barangay home_barangay_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_barangay
    ADD CONSTRAINT home_barangay_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_barangay DROP CONSTRAINT home_barangay_pkey;
       public            bfpspc    false    266            �           2606    37640 4   home_breathingapparatus home_breathingapparatus_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.home_breathingapparatus
    ADD CONSTRAINT home_breathingapparatus_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.home_breathingapparatus DROP CONSTRAINT home_breathingapparatus_pkey;
       public            bfpspc    false    226            �           2606    37642 *   home_dutypersonnel home_dutypersonnel_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.home_dutypersonnel
    ADD CONSTRAINT home_dutypersonnel_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.home_dutypersonnel DROP CONSTRAINT home_dutypersonnel_pkey;
       public            bfpspc    false    228            �           2606    37644     home_employee home_employee_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT home_employee_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT home_employee_pkey;
       public            bfpspc    false    230            �           2606    37646 '   home_employee home_employee_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT home_employee_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT home_employee_user_id_key;
       public            bfpspc    false    230            �           2606    37648    home_engines home_engines_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_engines
    ADD CONSTRAINT home_engines_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_engines DROP CONSTRAINT home_engines_pkey;
       public            bfpspc    false    232            �           2606    37650 2   home_extinguisingagent home_extinguisingagent_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.home_extinguisingagent
    ADD CONSTRAINT home_extinguisingagent_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.home_extinguisingagent DROP CONSTRAINT home_extinguisingagent_pkey;
       public            bfpspc    false    234            �           2606    37652     home_hoseline home_hoseline_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_hoseline
    ADD CONSTRAINT home_hoseline_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_hoseline DROP CONSTRAINT home_hoseline_pkey;
       public            bfpspc    false    236            .           2606    38897     home_incident home_incident_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_incident
    ADD CONSTRAINT home_incident_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_incident DROP CONSTRAINT home_incident_pkey;
       public            bfpspc    false    267            �           2606    37654 O   home_incidentresponse home_incidentresponse_Incident_id_Engine_id_2b4b59a4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT "home_incidentresponse_Incident_id_Engine_id_2b4b59a4_uniq" UNIQUE ("Incident_id", "Engine_id");
 {   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT "home_incidentresponse_Incident_id_Engine_id_2b4b59a4_uniq";
       public            bfpspc    false    239    239            �           2606    37656 0   home_incidentresponse home_incidentresponse_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT home_incidentresponse_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT home_incidentresponse_pkey;
       public            bfpspc    false    239            �           2606    37658 A   home_personnel home_investigator_FirstName_LastName_697f8849_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_personnel
    ADD CONSTRAINT "home_investigator_FirstName_LastName_697f8849_uniq" UNIQUE ("FirstName", "LastName");
 m   ALTER TABLE ONLY public.home_personnel DROP CONSTRAINT "home_investigator_FirstName_LastName_697f8849_uniq";
       public            bfpspc    false    241    241            �           2606    37660 %   home_personnel home_investigator_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.home_personnel
    ADD CONSTRAINT home_investigator_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.home_personnel DROP CONSTRAINT home_investigator_pkey;
       public            bfpspc    false    241                       2606    37662 $   home_rank home_investigatorrank_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.home_rank
    ADD CONSTRAINT home_investigatorrank_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.home_rank DROP CONSTRAINT home_investigatorrank_pkey;
       public            bfpspc    false    243                       2606    37664 &   home_rank home_rank_Code_7c283788_uniq 
   CONSTRAINT     e   ALTER TABLE ONLY public.home_rank
    ADD CONSTRAINT "home_rank_Code_7c283788_uniq" UNIQUE ("Code");
 R   ALTER TABLE ONLY public.home_rank DROP CONSTRAINT "home_rank_Code_7c283788_uniq";
       public            bfpspc    false    243                       2606    37666 *   home_ropeandladder home_ropeandladder_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.home_ropeandladder
    ADD CONSTRAINT home_ropeandladder_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.home_ropeandladder DROP CONSTRAINT home_ropeandladder_pkey;
       public            bfpspc    false    245                       2606    37668    home_station home_station_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_station
    ADD CONSTRAINT home_station_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_station DROP CONSTRAINT home_station_pkey;
       public            bfpspc    false    247                       2606    37670 O   home_timealarmstatus home_timealarmstatus_Incident_id_AlarmStatus_81b20f86_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_timealarmstatus
    ADD CONSTRAINT "home_timealarmstatus_Incident_id_AlarmStatus_81b20f86_uniq" UNIQUE ("Incident_id", "AlarmStatus");
 {   ALTER TABLE ONLY public.home_timealarmstatus DROP CONSTRAINT "home_timealarmstatus_Incident_id_AlarmStatus_81b20f86_uniq";
       public            bfpspc    false    249    249                       2606    37672 .   home_timealarmstatus home_timealarmstatus_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.home_timealarmstatus
    ADD CONSTRAINT home_timealarmstatus_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.home_timealarmstatus DROP CONSTRAINT home_timealarmstatus_pkey;
       public            bfpspc    false    249                       2606    37674 <   report_builder_displayfield report_builder_displayfield_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.report_builder_displayfield
    ADD CONSTRAINT report_builder_displayfield_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displayfield_pkey;
       public            bfpspc    false    251                       2606    37676 :   report_builder_filterfield report_builder_filterfield_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.report_builder_filterfield
    ADD CONSTRAINT report_builder_filterfield_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.report_builder_filterfield DROP CONSTRAINT report_builder_filterfield_pkey;
       public            bfpspc    false    253                       2606    37678 0   report_builder_format report_builder_format_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.report_builder_format
    ADD CONSTRAINT report_builder_format_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.report_builder_format DROP CONSTRAINT report_builder_format_pkey;
       public            bfpspc    false    255                       2606    37680 0   report_builder_report report_builder_report_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_report_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_pkey;
       public            bfpspc    false    257            "           2606    37682 @   report_builder_report_starred report_builder_report_starred_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_pkey;
       public            bfpspc    false    259            %           2606    37684 [   report_builder_report_starred report_builder_report_starred_report_id_user_id_8e38d9bd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_report_id_user_id_8e38d9bd_uniq UNIQUE (report_id, user_id);
 �   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_report_id_user_id_8e38d9bd_uniq;
       public            bfpspc    false    259    259            �           1259    37685    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            bfpspc    false    204            �           1259    37686 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            bfpspc    false    206            �           1259    37687 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            bfpspc    false    206            �           1259    37688 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            bfpspc    false    208            �           1259    37689 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            bfpspc    false    211            �           1259    37690 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            bfpspc    false    211            �           1259    37691 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            bfpspc    false    214            �           1259    37692 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            bfpspc    false    214            �           1259    37693     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            bfpspc    false    210            �           1259    37694 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            bfpspc    false    216            �           1259    37695 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            bfpspc    false    216            �           1259    37696 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            bfpspc    false    222            �           1259    37697 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            bfpspc    false    222            �           1259    37698 0   home_alarmstatusuponarrival_Incident_id_b0c5e306    INDEX     �   CREATE INDEX "home_alarmstatusuponarrival_Incident_id_b0c5e306" ON public.home_alarmstatusuponarrival USING btree ("Incident_id");
 F   DROP INDEX public."home_alarmstatusuponarrival_Incident_id_b0c5e306";
       public            bfpspc    false    223            '           1259    38898    home_barangay_geom_id    INDEX     N   CREATE INDEX home_barangay_geom_id ON public.home_barangay USING gist (geom);
 )   DROP INDEX public.home_barangay_geom_id;
       public            bfpspc    false    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    266            �           1259    37699 ,   home_breathingapparatus_Incident_id_ba9b3191    INDEX     {   CREATE INDEX "home_breathingapparatus_Incident_id_ba9b3191" ON public.home_breathingapparatus USING btree ("Incident_id");
 B   DROP INDEX public."home_breathingapparatus_Incident_id_ba9b3191";
       public            bfpspc    false    226            �           1259    37700 '   home_dutypersonnel_Incident_id_7dc48488    INDEX     q   CREATE INDEX "home_dutypersonnel_Incident_id_7dc48488" ON public.home_dutypersonnel USING btree ("Incident_id");
 =   DROP INDEX public."home_dutypersonnel_Incident_id_7dc48488";
       public            bfpspc    false    228            �           1259    37701 (   home_dutypersonnel_Personnel_id_2130f168    INDEX     s   CREATE INDEX "home_dutypersonnel_Personnel_id_2130f168" ON public.home_dutypersonnel USING btree ("Personnel_id");
 >   DROP INDEX public."home_dutypersonnel_Personnel_id_2130f168";
       public            bfpspc    false    228            �           1259    37702    home_employee_Rank_id_7944e763    INDEX     _   CREATE INDEX "home_employee_Rank_id_7944e763" ON public.home_employee USING btree ("Rank_id");
 4   DROP INDEX public."home_employee_Rank_id_7944e763";
       public            bfpspc    false    230            �           1259    37703 +   home_extinguisingagent_Incident_id_75e232ed    INDEX     y   CREATE INDEX "home_extinguisingagent_Incident_id_75e232ed" ON public.home_extinguisingagent USING btree ("Incident_id");
 A   DROP INDEX public."home_extinguisingagent_Incident_id_75e232ed";
       public            bfpspc    false    234            �           1259    37704 "   home_hoseline_Incident_id_6beb00fa    INDEX     g   CREATE INDEX "home_hoseline_Incident_id_6beb00fa" ON public.home_hoseline USING btree ("Incident_id");
 8   DROP INDEX public."home_hoseline_Incident_id_6beb00fa";
       public            bfpspc    false    236            *           1259    38899 "   home_incident_Barangay_id_5674cce9    INDEX     g   CREATE INDEX "home_incident_Barangay_id_5674cce9" ON public.home_incident USING btree ("Barangay_id");
 8   DROP INDEX public."home_incident_Barangay_id_5674cce9";
       public            bfpspc    false    267            +           1259    38900    home_incident_Location_id    INDEX     Z   CREATE INDEX "home_incident_Location_id" ON public.home_incident USING gist ("Location");
 /   DROP INDEX public."home_incident_Location_id";
       public            bfpspc    false    267    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            ,           1259    38901 0   home_incident_PersonnelReceivingCall_id_212a67ef    INDEX     �   CREATE INDEX "home_incident_PersonnelReceivingCall_id_212a67ef" ON public.home_incident USING btree ("PersonnelReceivingCall_id");
 F   DROP INDEX public."home_incident_PersonnelReceivingCall_id_212a67ef";
       public            bfpspc    false    267            �           1259    37705 (   home_incidentresponse_Engine_id_6613f45f    INDEX     s   CREATE INDEX "home_incidentresponse_Engine_id_6613f45f" ON public.home_incidentresponse USING btree ("Engine_id");
 >   DROP INDEX public."home_incidentresponse_Engine_id_6613f45f";
       public            bfpspc    false    239            �           1259    37706 *   home_incidentresponse_Incident_id_baed75f8    INDEX     w   CREATE INDEX "home_incidentresponse_Incident_id_baed75f8" ON public.home_incidentresponse USING btree ("Incident_id");
 @   DROP INDEX public."home_incidentresponse_Incident_id_baed75f8";
       public            bfpspc    false    239            �           1259    37707 "   home_investigator_Rank_id_34a0654f    INDEX     d   CREATE INDEX "home_investigator_Rank_id_34a0654f" ON public.home_personnel USING btree ("Rank_id");
 8   DROP INDEX public."home_investigator_Rank_id_34a0654f";
       public            bfpspc    false    241                        1259    37708 (   home_investigatorrank_Code_3f61e76b_like    INDEX     v   CREATE INDEX "home_investigatorrank_Code_3f61e76b_like" ON public.home_rank USING btree ("Code" varchar_pattern_ops);
 >   DROP INDEX public."home_investigatorrank_Code_3f61e76b_like";
       public            bfpspc    false    243                       1259    37709    home_rank_Code_7c283788_like    INDEX     j   CREATE INDEX "home_rank_Code_7c283788_like" ON public.home_rank USING btree ("Code" varchar_pattern_ops);
 2   DROP INDEX public."home_rank_Code_7c283788_like";
       public            bfpspc    false    243                       1259    37710 '   home_ropeandladder_Incident_id_ece99883    INDEX     q   CREATE INDEX "home_ropeandladder_Incident_id_ece99883" ON public.home_ropeandladder USING btree ("Incident_id");
 =   DROP INDEX public."home_ropeandladder_Incident_id_ece99883";
       public            bfpspc    false    245            	           1259    37711 %   home_station_ChiefOfficer_id_092b29c7    INDEX     m   CREATE INDEX "home_station_ChiefOfficer_id_092b29c7" ON public.home_station USING btree ("ChiefOfficer_id");
 ;   DROP INDEX public."home_station_ChiefOfficer_id_092b29c7";
       public            bfpspc    false    247                       1259    37712 )   home_timealarmstatus_Incident_id_051e6b56    INDEX     u   CREATE INDEX "home_timealarmstatus_Incident_id_051e6b56" ON public.home_timealarmstatus USING btree ("Incident_id");
 ?   DROP INDEX public."home_timealarmstatus_Incident_id_051e6b56";
       public            bfpspc    false    249                       1259    37713 6   report_builder_displayfield_display_format_id_c649f0ea    INDEX     �   CREATE INDEX report_builder_displayfield_display_format_id_c649f0ea ON public.report_builder_displayfield USING btree (display_format_id);
 J   DROP INDEX public.report_builder_displayfield_display_format_id_c649f0ea;
       public            bfpspc    false    251                       1259    37714 .   report_builder_displayfield_report_id_642d3d44    INDEX     {   CREATE INDEX report_builder_displayfield_report_id_642d3d44 ON public.report_builder_displayfield USING btree (report_id);
 B   DROP INDEX public.report_builder_displayfield_report_id_642d3d44;
       public            bfpspc    false    251                       1259    37715 -   report_builder_filterfield_report_id_a5498074    INDEX     y   CREATE INDEX report_builder_filterfield_report_id_a5498074 ON public.report_builder_filterfield USING btree (report_id);
 A   DROP INDEX public.report_builder_filterfield_report_id_a5498074;
       public            bfpspc    false    253                       1259    37716 ,   report_builder_report_root_model_id_3bae34b3    INDEX     w   CREATE INDEX report_builder_report_root_model_id_3bae34b3 ON public.report_builder_report USING btree (root_model_id);
 @   DROP INDEX public.report_builder_report_root_model_id_3bae34b3;
       public            bfpspc    false    257                       1259    37717 #   report_builder_report_slug_559601ba    INDEX     e   CREATE INDEX report_builder_report_slug_559601ba ON public.report_builder_report USING btree (slug);
 7   DROP INDEX public.report_builder_report_slug_559601ba;
       public            bfpspc    false    257                       1259    37718 (   report_builder_report_slug_559601ba_like    INDEX     ~   CREATE INDEX report_builder_report_slug_559601ba_like ON public.report_builder_report USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.report_builder_report_slug_559601ba_like;
       public            bfpspc    false    257            #           1259    37719 0   report_builder_report_starred_report_id_0a54a683    INDEX        CREATE INDEX report_builder_report_starred_report_id_0a54a683 ON public.report_builder_report_starred USING btree (report_id);
 D   DROP INDEX public.report_builder_report_starred_report_id_0a54a683;
       public            bfpspc    false    259            &           1259    37720 .   report_builder_report_starred_user_id_70388cb5    INDEX     {   CREATE INDEX report_builder_report_starred_user_id_70388cb5 ON public.report_builder_report_starred USING btree (user_id);
 B   DROP INDEX public.report_builder_report_starred_user_id_70388cb5;
       public            bfpspc    false    259                       1259    37721 .   report_builder_report_user_created_id_e8133ae8    INDEX     {   CREATE INDEX report_builder_report_user_created_id_e8133ae8 ON public.report_builder_report USING btree (user_created_id);
 B   DROP INDEX public.report_builder_report_user_created_id_e8133ae8;
       public            bfpspc    false    257                        1259    37722 /   report_builder_report_user_modified_id_04e38ffb    INDEX     }   CREATE INDEX report_builder_report_user_modified_id_04e38ffb ON public.report_builder_report USING btree (user_modified_id);
 C   DROP INDEX public.report_builder_report_user_modified_id_04e38ffb;
       public            bfpspc    false    257            /           2606    37723 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          bfpspc    false    208    206    3772            0           2606    37728 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          bfpspc    false    3761    206    204            1           2606    37733 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          bfpspc    false    218    3797    208            2           2606    37738 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          bfpspc    false    204    211    3761            3           2606    37743 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          bfpspc    false    210    211    3774            4           2606    37748 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          bfpspc    false    214    208    3772            5           2606    37753 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          bfpspc    false    214    3774    210            6           2606    37758 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          bfpspc    false    218    3797    216            7           2606    37763 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          bfpspc    false    216    210    3774            8           2606    38902 R   home_alarmstatusuponarrival home_alarmstatusupon_Incident_id_b0c5e306_fk_home_inci    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_alarmstatusuponarrival
    ADD CONSTRAINT "home_alarmstatusupon_Incident_id_b0c5e306_fk_home_inci" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.home_alarmstatusuponarrival DROP CONSTRAINT "home_alarmstatusupon_Incident_id_b0c5e306_fk_home_inci";
       public          bfpspc    false    223    3886    267            9           2606    38907 N   home_breathingapparatus home_breathingappara_Incident_id_ba9b3191_fk_home_inci    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_breathingapparatus
    ADD CONSTRAINT "home_breathingappara_Incident_id_ba9b3191_fk_home_inci" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.home_breathingapparatus DROP CONSTRAINT "home_breathingappara_Incident_id_ba9b3191_fk_home_inci";
       public          bfpspc    false    267    3886    226            ;           2606    38912 N   home_dutypersonnel home_dutypersonnel_Incident_id_7dc48488_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_dutypersonnel
    ADD CONSTRAINT "home_dutypersonnel_Incident_id_7dc48488_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.home_dutypersonnel DROP CONSTRAINT "home_dutypersonnel_Incident_id_7dc48488_fk_home_incident_id";
       public          bfpspc    false    3886    228    267            :           2606    37768 P   home_dutypersonnel home_dutypersonnel_Personnel_id_2130f168_fk_home_personnel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_dutypersonnel
    ADD CONSTRAINT "home_dutypersonnel_Personnel_id_2130f168_fk_home_personnel_id" FOREIGN KEY ("Personnel_id") REFERENCES public.home_personnel(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.home_dutypersonnel DROP CONSTRAINT "home_dutypersonnel_Personnel_id_2130f168_fk_home_personnel_id";
       public          bfpspc    false    228    241    3839            <           2606    37773 <   home_employee home_employee_Rank_id_7944e763_fk_home_rank_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT "home_employee_Rank_id_7944e763_fk_home_rank_id" FOREIGN KEY ("Rank_id") REFERENCES public.home_rank(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT "home_employee_Rank_id_7944e763_fk_home_rank_id";
       public          bfpspc    false    230    3842    243            =           2606    37778 <   home_employee home_employee_user_id_742a783f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT home_employee_user_id_742a783f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT home_employee_user_id_742a783f_fk_auth_user_id;
       public          bfpspc    false    230    3774    210            >           2606    38917 V   home_extinguisingagent home_extinguisingagent_Incident_id_75e232ed_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_extinguisingagent
    ADD CONSTRAINT "home_extinguisingagent_Incident_id_75e232ed_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.home_extinguisingagent DROP CONSTRAINT "home_extinguisingagent_Incident_id_75e232ed_fk_home_incident_id";
       public          bfpspc    false    234    3886    267            ?           2606    38922 D   home_hoseline home_hoseline_Incident_id_6beb00fa_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_hoseline
    ADD CONSTRAINT "home_hoseline_Incident_id_6beb00fa_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.home_hoseline DROP CONSTRAINT "home_hoseline_Incident_id_6beb00fa_fk_home_incident_id";
       public          bfpspc    false    236    3886    267            N           2606    38927 D   home_incident home_incident_Barangay_id_5674cce9_fk_home_barangay_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incident
    ADD CONSTRAINT "home_incident_Barangay_id_5674cce9_fk_home_barangay_id" FOREIGN KEY ("Barangay_id") REFERENCES public.home_barangay(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.home_incident DROP CONSTRAINT "home_incident_Barangay_id_5674cce9_fk_home_barangay_id";
       public          bfpspc    false    267    3881    266            O           2606    38932 F   home_incident home_incident_PersonnelReceivingCa_212a67ef_fk_home_pers    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incident
    ADD CONSTRAINT "home_incident_PersonnelReceivingCa_212a67ef_fk_home_pers" FOREIGN KEY ("PersonnelReceivingCall_id") REFERENCES public.home_personnel(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.home_incident DROP CONSTRAINT "home_incident_PersonnelReceivingCa_212a67ef_fk_home_pers";
       public          bfpspc    false    3839    267    241            @           2606    37783 Q   home_incidentresponse home_incidentresponse_Engine_id_6613f45f_fk_home_engines_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT "home_incidentresponse_Engine_id_6613f45f_fk_home_engines_id" FOREIGN KEY ("Engine_id") REFERENCES public.home_engines(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT "home_incidentresponse_Engine_id_6613f45f_fk_home_engines_id";
       public          bfpspc    false    3822    239    232            A           2606    38937 T   home_incidentresponse home_incidentresponse_Incident_id_baed75f8_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT "home_incidentresponse_Incident_id_baed75f8_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT "home_incidentresponse_Incident_id_baed75f8_fk_home_incident_id";
       public          bfpspc    false    3886    239    267            B           2606    37788 >   home_personnel home_personnel_Rank_id_f687dbe4_fk_home_rank_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_personnel
    ADD CONSTRAINT "home_personnel_Rank_id_f687dbe4_fk_home_rank_id" FOREIGN KEY ("Rank_id") REFERENCES public.home_rank(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.home_personnel DROP CONSTRAINT "home_personnel_Rank_id_f687dbe4_fk_home_rank_id";
       public          bfpspc    false    243    241    3842            C           2606    38942 N   home_ropeandladder home_ropeandladder_Incident_id_ece99883_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_ropeandladder
    ADD CONSTRAINT "home_ropeandladder_Incident_id_ece99883_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.home_ropeandladder DROP CONSTRAINT "home_ropeandladder_Incident_id_ece99883_fk_home_incident_id";
       public          bfpspc    false    3886    267    245            D           2606    37793 G   home_station home_station_ChiefOfficer_id_092b29c7_fk_home_personnel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_station
    ADD CONSTRAINT "home_station_ChiefOfficer_id_092b29c7_fk_home_personnel_id" FOREIGN KEY ("ChiefOfficer_id") REFERENCES public.home_personnel(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.home_station DROP CONSTRAINT "home_station_ChiefOfficer_id_092b29c7_fk_home_personnel_id";
       public          bfpspc    false    241    247    3839            E           2606    38947 R   home_timealarmstatus home_timealarmstatus_Incident_id_051e6b56_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_timealarmstatus
    ADD CONSTRAINT "home_timealarmstatus_Incident_id_051e6b56_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.home_timealarmstatus DROP CONSTRAINT "home_timealarmstatus_Incident_id_051e6b56_fk_home_incident_id";
       public          bfpspc    false    249    3886    267            F           2606    37798 X   report_builder_displayfield report_builder_displ_display_format_id_c649f0ea_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_displayfield
    ADD CONSTRAINT report_builder_displ_display_format_id_c649f0ea_fk_report_bu FOREIGN KEY (display_format_id) REFERENCES public.report_builder_format(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displ_display_format_id_c649f0ea_fk_report_bu;
       public          bfpspc    false    3865    255    251            G           2606    37803 P   report_builder_displayfield report_builder_displ_report_id_642d3d44_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_displayfield
    ADD CONSTRAINT report_builder_displ_report_id_642d3d44_fk_report_bu FOREIGN KEY (report_id) REFERENCES public.report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displ_report_id_642d3d44_fk_report_bu;
       public          bfpspc    false    257    251    3867            H           2606    37808 O   report_builder_filterfield report_builder_filte_report_id_a5498074_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_filterfield
    ADD CONSTRAINT report_builder_filte_report_id_a5498074_fk_report_bu FOREIGN KEY (report_id) REFERENCES public.report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.report_builder_filterfield DROP CONSTRAINT report_builder_filte_report_id_a5498074_fk_report_bu;
       public          bfpspc    false    253    257    3867            L           2606    37813 R   report_builder_report_starred report_builder_repor_report_id_0a54a683_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_repor_report_id_0a54a683_fk_report_bu FOREIGN KEY (report_id) REFERENCES public.report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_repor_report_id_0a54a683_fk_report_bu;
       public          bfpspc    false    259    3867    257            I           2606    37818 N   report_builder_report report_builder_repor_root_model_id_3bae34b3_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_repor_root_model_id_3bae34b3_fk_django_co FOREIGN KEY (root_model_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_repor_root_model_id_3bae34b3_fk_django_co;
       public          bfpspc    false    218    257    3797            M           2606    37823 \   report_builder_report_starred report_builder_report_starred_user_id_70388cb5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_user_id_70388cb5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_user_id_70388cb5_fk_auth_user_id;
       public          bfpspc    false    3774    210    259            J           2606    37828 T   report_builder_report report_builder_report_user_created_id_e8133ae8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_report_user_created_id_e8133ae8_fk_auth_user_id FOREIGN KEY (user_created_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_user_created_id_e8133ae8_fk_auth_user_id;
       public          bfpspc    false    3774    210    257            K           2606    37833 U   report_builder_report report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id FOREIGN KEY (user_modified_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id;
       public          bfpspc    false    257    210    3774            �   "   x�3�LI,I�M�+)��2�LL�������� k`4      �   h   x�ι�0�XW�G�h=���:L(ڀjj#3&I���4�e6�N��R9����n��7,�Z��]V���D���t+�C��uI�.E�.k��r��� ?�/P      �     x�u�]��8���)8���>�56b��i7�6�{׷���*���aI_B��TI.���.�o������wVd���o��+r���{u)X��<�A�Rp������C���lh�g;Mm�ee���h���{���e��=�E �G�]V���Y�Ϯ�Ys2ξ)�'A�#�Z ���ju�1��GW���y�_O����~9G}7�W��i}��f����{h�Cp�]K�+���fC�_����,_���v�-V�SC��1�+a�+�>WV�blo��ZW(�Z]��ѿ�~g�`I���en(6� �q�-�7X0�����i����s?�~���,����U��S2�+!)%O"V���taV��J�.�Ds��Ӥ<��������i�ꘞ��#��:�����v�7�MmW�Ѳb�_!/�U��(���5�;J�_����o�cA�e���C�b�݈ }���oD&��$Lb#�d�������
�AK��v{�&pl]QH'�lXQ�O �M�4�����<B�Z� iTDJ7S�<��n3eR�m&4Q�v�;�j��-+�*qg�s�TĳC�@�"	�E��U$��d}�����F}�B��4��l+`�Vp4q���:����~|�>�Tר�3E�(S�+��S&Hʐ%&49c3����Q�!4��� /J��LT�	n�Д����w]��m~m�D�rz��bQ=H
jBcA9G
��1�5���k(�
,��؊H�����v͔�vn�,t�����m8�"��,kCK+��Y��n���&�Y_��I�;�O�6�O����M1T�	CR�Qe���Q��|���5e%���G]�a��<%@n��L��x���i���n)>����T��n�K���JHd1�
2�P�
G��[BC����~��ϯ����t,mw����4ʎ5�0�T�$�����v��z�(g%�{;�c�TJ�c1f9)�XG�bg��R�J���5�͖Y�ⵜ�d�,v�X"���
��� �Q���:Kl�q����Ï	t�XF`�� �i�\GjHZ-�Ԅ�li-]^J�~�M=�o|�m2l%tY��W�%�r�M�a����pJov�j���������t�Y>�A�7d\vlB`�D�hB�>! ��4��òC�o�*87={��d� �ހ�`�?����
i�����ߍ�ިxK�Ca���(�֢�)j�jA�xKW���t^�c�S?�**��0��g|,��c�Z�O�X��'�E����G��Vw|�&zn���DE�~��� J��^I!�I�ܓ#��pRH����_ι?v�      �   �  x�m�[o�@F���o�ݝ�A�,����B��T�b�Ps3�__H�Tm=Z�ìF��"�����y�b�E�Q[�i��]�P#؊�#�郓�[���6T^M����4q�Rk���į䱀�!j�S(�F�v<@���[��da^�n�7�,԰(�Dh�n1�������9M[��>���$F�]��5�57�fK�����ʀWM�g����ˇ�9�B�B`�dI�WN׋;$�E��*�tP�6�N��8�.Us���/�n~��W������c��Jw�vL	[snjic��v,�X��C^t�W��������쨳9T���L��S}��lY�m��E��WӞ_�2!�;�]�'�������������ǩ��|{�wS���<�i��J�2��z����      �      x�3�4�4�2�4�4�b ���� !��      �      x������ � �      �      x��]�rܸ���<��lEf����J��q,�%�$����$&�M��퉜�C��b{ v�(���lU����c ��������#��"��3)gB�FiA�o�ya��^�ٌ�'3B~C�?��zS��켸�U��{�ǿ�����r�r����MU.��|���۪^�<�^^���������?�����P��lFtn��� 
M=
J_Q��C�X��!�X�2{]���(����$3�ri��A1aC�+FqC��nȺX.��bQ��b
�C�a��9�V�p*��e�(ٯ/�y}_���[̭�a/��N���}�}�Xo��}���ٯO��n��E�a�Q;���&WVk�q�p��MS���f^?:��bU��é�DN,�Ru����n`�'LlK:�*�Fs�D��GQ�D��tϿ���e	�S���h�X�%�gk�+�Q��V[����jv�3jf�t%lU��YvU�˱(ٯ 02���4׆1E�
"�0E��h�:}ڭ*8����e��I�(�pÛݗ����u}_Y��MV�p��K֔�j�\n���-P�J�_@a�sFa����N3J{��5��f��.���b�Pu!%`��9'�ZG��UCv6򲂝{���'lK�1p��ފ�34ean�Z��ಂk����^O"b R�Rb�s�����C��@*��s�MLF�tϤ��+��>�-;�W���a
C��jb�SW|���(�T*����D��n��#!��uS6�@��M����XT �_�W�u@���U���
�1���� v%Ԏ�!�8(��@XG<�W��L�/�)��E��dsF��O��R޻,�w��g	�����@�`ќ8��]��N�q��Ԕ(gdh�7��"��\����u����u�ķ`�-�1�����|[���>�8���U�-���+��D�g��	.���X������r]T��k�)("~mmrj����n�~KD�����U(�2МHH]��Mg���)@��3�򿯛%��b��E�f�-!D:aSv��"�_e��a�`�J`��e�n��,���%\�]���Cs].���vYN�1,"v�F 8E�y�ƛh���>��Vp!���S@D�n�2ZSϨJ@h��d�),��NW�p�p��=��t����xW�}V��z{�����{H�+�/@���q�ߣW�X�_��_�άx],*V��W�M�قi���6��Wq�O�8�gzS60�b�ŋ4��Qj��i_���ÜW)yG����V�ށM�i��W�RN2� �٪�cϟ�a��n�l6���#�cgB�$F�H�d�����O���-��2G�Y,^j�Ҏ���``��q\����l�j�NB2T�����b�vV, ��! H�8]T�/W0�&��M�2����p"�E���	��%.X~��~.@�N�i�PG i�9�:�F�g�w�仲ZTe����) �ꀃcEї��_�T���>���S�YA���eQO�N:dm��n�9%�m�lU�p��oת*�M�װX]�yH� ��\hB��
d�>~%=���������ē�~H���$c��~CT�G��pN��t}���Cr�lFx�����?)8@����s*�
t�4kQ�P��2(�Y�R�Q0�Q޻}6�g�Y�Sg�"C�D��l��bD�B��y]^�����"�C4�3�B<2p3��2��t���z]-�̸,��}�"�"�C��+˴�8��@3�{"c��nw`v^,�U�ޢ��i~W׏�*�Gޔ�rOҒ�A�����o�Q�fQgWpX�\,Q$Gq%L(��U�=F]h�kc��x]n��\,&���X�;�*��!	s��:[�o���r�[���n�� }D��,�0��2�:�G�
ZZ�ݑܿڈ6�̜xоk�s5W�0�LdD�b�u�� \�<�0h֧2p�PO��ˈR%:�\���2lx��
����n&�Jĭ��)�:��h0���9��%x���}���pg;��E�\��U����."]5#4�TK�+#:��2�ʸ����#�8W���Z�rv��P����1�����ޠ�)h"�Eݟ[��#锶G�IFu�����v�. �w���ʈp����F�ppVBqe�;S�7�-ޖ��3��'9�2�]�17D�4#g�y8�3���%�)qc�p�d�Ȉm�L���w�.Q�d�`�@�E>�M��� �ZJ���Y�����,���3e�,�`f�Eڜd�k�L��O����x����>�0�:),�"�6`V�L�T�[���g=�q��uv�yu?�MKE�mP	c�tʓ��b�;������E��m��z};-f�"���c.���KV��ƅL�Pރ��L��*be��K!��b�j0ѱ�^h
�� 5�Nň\�%�..A�%Hϻ�)��Z�N�rTD�.&I8c�#e{�(?���G� ��b�]��o+�i�� �@�z �ڿ?/�%���$k������lN�HЫ�N��M�f]��{�]l���>WŤ�Q�E�J-�;!fPܫN
���v�E��;S�D��=P���5k)ۆ `Wǟ�h2��r�d��H�v�pLK���}��i�ß�x�l
�
����셦v��@+\�z{�kjP��nFX`�O��?:u����עs��f]n�p�`���m����z�L':,���\����U�Z�+�(ړ6lS�����u1�j���]�,K|=�l�I̭�
D�(&\8CܝcA����DI�똂�£My;I��P��"E����&H�K����a�#;��`G�ȹ*�!,P�
9"L�q��S�{�����f�����C%"�u3I��wJĺ�g:
�Q"fg\f@��'�=T���r�|�{��8Aeֵ�ܽG	������)`�*� R.�tq����3�9X9.��=8�`�;�l�~��E����zS}%������m��Cm�� �{%��e�$O��Z,�ŗbJ|N	^d	�.�Q�L��Sܺ�v=m���Yo��$���BMn��[�|�Pܳ6�v/�f�,�t�_G\����̑���	8��ܥ�K̪����h��#b�>�A��D�*;4��~�>s0�_�$o��5���b1��L��|FEN��ˌ�Â�OE/���*��O�O`'NA�2G�R����HL?��p�������7e�:;��+'�i���%&�)*(�b�24�F7��b�/�sDL��
�����[S�GB]�}�v��>owҖD��Q�k.��s��f�mk"6�]�2Ŝ
��
�.�Ez�qo�j��K���+0?��N�ɔ���`"0�R��my^�,�������s�;�yy��=i"�ŧ�J��G���콍�����������8ϵ�mz���`}��	Pd.mL�f�)����_��jn�%��kL6,���bnj6���F�l��r%��Z���@ҡ���!�^�ꆉ��[��_��������XC���j#�v�;����0j�l��sΥ��k��`9W��M�n�K�~=ϧ����u�&����,�3:�c�[��7���4�-��v���
��v0#O��נ�`/A �?pg�݂B.�w�O�-8z�j�}[㮯�� Q87������evz�T�`��7�����4G|�-��<��*	���v���K��p�FTr�� �� 6\6s��uY<��b�Rkl�C,��PT{��w���g�:]^��9��>�Kά�gv a�%��[pڀu���
���1�"{��� G��r���{79�m�jHz?�c���G�^�2�}|�s� �����A����(;.�g��Y��+3	��������Nm�n�M�֣�g��Q�;�5�8k��)��
��B��kjS(�װ��p���"���>"�E��:�K޺�gQB��$Dv%�s��hO��J.���9�u����)��<J.̇+���H柧�m��qTZ]rm�MmN-�&���~~�"����v �  �D���S/���?4Ԝ�5��\
��۸���eIؑ�2��i���b��n��ߓ�iR�ꂁ��)g�<�3��3T_��@ri���O�F��S�Pj`G45������ӳ����$xn��ثWvC�3��$�fK���1R�$Q=�$)�`��\:V"H;�T�?8�I�C%�]D%��rυGQ�%\�$����4�PZLK+�/1T�=!����V�Ӟӓ�8d|�- �R��d�I|D�fT>O�dؐt1���0[�M�~9U��yZ9Kr��d�˖�h���p�&�	S Xı��� p����xH���F���7��p��K���5�I�%t9R�ĳ�E�>+%WR����	S"d�t�'i�����C��'Z�s��P9׍�<=W0	f�l�D�)&��D��������(\���]$6N�����CB����"��r�O����cSy��i_]1W���R�/����8dF��DN�� �MxoL�χĈ���F�L�����|�$�v�%D.��oE��e�v�H.�.�@��!��߬���U$W���G.�Bq?��U��ѐ�.�tjb�T2(�3G��%W���cZ�����8���%��8%	 bR�2JS��o�;f'�%׏�T`��#CX�W�nѱ����#:�$S:�]~�KaO.���(�i�.z�D���ZWD�R�Ux��<P2!�!�~�trFuN������	����#��3f��M(�tűGw�I���<�'�A�ڰ�ϯQK���D�s�(�;��ÞЉ'�xDv��߱���L?m�#�!��GL�f��q!��a�����&1Dl�Ю���@�5�p������f��#�S.�Q[�f��C��I�C��#��X�f�5���`NN�.#���Dǲ_%1<�J"	!">��1�p3t���=:��JN�ν��x��@E
".��]�ZA�ؖ�� ���'+�d��V{\Ekr�"�t/�O���|`��*�+Gi0IQ"|�tPzn���<	%�K��O8��4\��6\L.ѥq�Дq�j�h�j��\9"I��sp�Z��k!�ȑ-ĒkGi��SK�;�K��Nu�&a&��(�:k�(��_��Ȕ� 5dI�i̹�BQ���-ptT5dAI���R�D0aϒ���!�0DW�w"��0G��H�=$8X�P+ڢ�~�5�;�E{�%1�0���'*��
�$�!b�_�Vq�('tRx��1e_�q��+b��(�3<��hr�!JWb����2�p�s�$�b������'��=Tٿ'���+%sݲ��G�mP9�Jju%�e��Bt���L��JB����l�%I4D�츆�ɥ#�-h������V8x-�l��\=�N���l�WR�V����J;�5�P�`O��((0�3%�D|��-��E&O����$]�I��&n`@ɱ�����1��^��Z�Qvt����\A���F���<�|ā½F)�=[�Ğ-)&bB�&3a@�:.��dB^r���� 5�_���YX���,I!Jl�&�8B�5N�kul���!Jg�0q���� 4h+��B��ÅncԽ��s��E�XU�C��x�6gd��� ������j8�8̿"���}��������ㄛW��-���Y�~�o���D[�ex]	���i[��d�m�V|�Ի�M��"1��9#�ꞻ-��Hu�SV���;�1�����;���cC���O������0��)C�F���]�{lnP�j�?9L�䨭�9L�4���џ}^�^�xV��[=�N��W��5gV��}���Z���#6��ӷ���MݚV�X �Et��e��#���c�xz�ԟ��[�b�x{9�����GR�۷��˰�3��c���e�S;C�Q��Q�����5����%]މk$�keiH�8VX[�����L�'^)�B��O��n������dm��ay�澵�N���1���n��ͦ�,n��_n�����k�۔�����i]6`t��js�Q����|�{��~�kބ�0�U��Bq zkⱈ�؋U��{&����Ɂ&z,��'	.){K��IJ[�U,�&���a8.�o{醹�8�#�D;�'W3#�$��(��0;2�\�R��0�.�R&T\&7�ґA6�%MrK�md\�J��#�hX-�T���T���S�FD�
�zԈ�XF��H����P��6"!`��P}��Mh[��S�X��5��waHK����(aS��g����xrT��5%«¤\��Qc3�}fjX��5&o�\��>kMEf���>kM�SI�g#�����M�#ś@�>&'���a��Mn��Ex�M
?�&9oQR�FD�)��z�԰a���E*�!#2�l��"ɫ|DF8�����ᠻY(rH���W�S#m�Hj؈�p��� �a#2���2�԰4T�$�_���޶mS�FDD�}RsjԈ��C�iƩa#"	~iz���ٹ�a#""��!�31L�Ȉ�ᇙt��	$NC*kj؈�HE=!�$�����6w25lDH$��m��԰!����D4��#R��hs,S�F�DK�M�R�F�D����$�\9"$J��trGԈ���6!�25jDF4���?tz؈�hʽ5"���Fdt����6jDF��󧦒�Fd��/|�IQ#2�R��a��t�]���FD�P��,�԰1<c�S�#"b�Ej,	R�Ȉ{���԰1���D�}􈈀G��|�԰��I��+�wMr����X��������D�ai1��OKJ�N��;�MKxRDLZD!�I�gm�"J��<b���NI/�Qi1�0�g������J�0�$����Km�GjXZF�b���4ȴ�*B��Lۈ�P�4B�Cj؈�P��)�avDH�/Yx�O�v�M��f�!��H���T�vDB@���;5lDB��G�GmG$�ɶ}�S�"	a�3.,�r;�R��X�I�r<��+GB�J�4�!�+�"�6�H��ƨ����XLX����*����ua*\�'~G��5h�c��j2�z�w$��\�%^��)��wyl�j�nl�u��_�hs�'�}��^�ۻj}�m����ɽ��x_�O�s�{�$bl>II�8]�*�$���\ηٯ�����r8��',��U�iٽ�E�y���ɛ��׻���L� �b}[a߳G1Q�f����(��
����Gf3�l��*X 0����s��W�voS~�u��޴��^"ə�y��7N�� ���y
L!��χ����=��,�eW��\_��3�uGQ��s�%��������-<W���{�S��T����k$y�^4R�/z��oK�[-Ix�p�>���u��*�e����޵�Av���U������t�����+��E�i�[�$��	U��1�;�Z�~�������~�6<7 7�O�n������ﲋ����?^��^�>��^~���ٟ�ά}_^!U��gx����u �w���Z��$�`x���,{Y���C����E���o;�e��ϩ��XMrf��ԣ�%�||W��-ɂ�h�x~W�7nn�y�x����H���7�J�0�/��|���l@���*��k�ǳ�x�G�%����T|86�{I�[� T������n�_��qyqT/�yDrA����Odw�N`Gˑ����k�����jd�2,a��u�I�gVhq,�7������ݝδfdZn��O;F�ش����tҴyHj�����a��0w�U��hg,M��
_ûc6�9f#��񡂄�x<�V�W_���6�u�ur���lgvy�K4�|(�X�#A�0�l_���"f"��������ƘG��փᮙ���\�����Ϳ�����q4      �   B  x�e��n� ����L����ˤ�n�F �����Ե7�����..('
�W0
k�U"^\�.�2q�	-���j��HYY�� N*�^��8�9.�.�&\A�7���Y���Ǳ&�wҦ��r�X���SS�\�/�yK�����zu�-��s��|!���K6���9�B�l��<9�@>� P?�{@ar�2����L9�ILgG��䂥f0�c"֣��`:�3yi
���oqa�.ˋ�w`-c�v��~��T�,7����l��Sw�	˼�II��w�f�0��T۞{]��%����JS���=������ �����      �   �  x����n� �k��_���,KNH�,��\ַK�̦M�7x>�)i���S:M66��ntə��䋿�!�g���W�v������D�$��R�s��D�ja�H_� {��v�	����܃Gs8l+�*R^M�UaW%W��'�G��M���w��Ķ&�VE����KG�.+8����TŠ&	h�dN6.ƥ�E���bo�.?����񂱊��c�������[�����r;�䧴@n�����ML�'pyws�=  ���0me����BM�?.��Q4��r�W�6�czw0ɇx��8�Mwg��f��T��f@��f\_�֕��rzΒB��r�(Y�.�yz���,��y�1Y���=��杌$�_� �}> �;���(��v��)�?����}���,rTM      �   �  x���K��:��̧ȾJd��H]�����%"����v������Jw�m7�+����X׳����hi�0:WWZR�jw%_�1='��0� �q��@����X���p9�KV��y�6]Iyv�]O�a�N�">n�/���8�;�ּ�NL�������WnyѺ�ʞ�{&���Gx:����ߺt�Y;��mxw�����uS�X�Nq
����p�kvQ�e���
�C��sϜ/8R�&���w|�����{A�_ Z"k	�c������R���W�g�P脥��Q����t--H����h���`����N��8���b�/���e{�LI�誮�vKD�@شA�A[a��-:�a���1
+�27�+��]{<�� �ߚ�%�%��ld�V���a�vRT��p^+�LIGN�*6�jc*�/^��#�,Hs2�9��eVFj��ڒ��p�o�Sa��s��n��v��sg����~��;���q#����z�����Pmuo��(���ف� ljsE1E�5��[.���g?��X�3�N�FG�:7_|'������� ���}'�Y9���q��O�T~��#�E�X�����x��a-�3O�
Sc����8�>i�.&}�iZF�z�q��<�}��ad���2)�~�ٮ�B��n6��u�4yn�R�iFݴ"�����5�کe`�2�L}��w�����+��      �   '   x�3��4,.�t�,*.QJ-.��KI-������� �z�            x��}ɮ%G�ݺ�+�|�a�P�ZZ@���fQ����� }�<����'�]�{�� �i>���x,��O��߾��ׯ��?����n���np��1x�������ӿ��������%�|$������>l�������r������gp=���c���\�}�+��g���@������`ߞ��J�{�A��������c�޷����%|��c�s�<~g��b�~�xޘ���ý��R�y��:���|�;��!��B?�m���e,�X�J?c���y��oe��|}��u8�w�����|����x�s�:��>�`ʫ�Ƴ/x~��}<��T�?�J�������X�b��ǡ������<��~ _L���9��`}S��󫌯L+b���/�u�����?u]v|'D�[�q�>qߧ���D>�w8u���4a->����Ck~e��������8�KB]��U�9]��k�����+�aɝ���X'z�y����gk~e����u�c��-n�:ȁ�A>�o"�����U�1o���5Onޏ�c�������4���w���x&[{�X��_3��_c[��J�07�a�Zټ?�kh�	�+�Պk(�-���:���鱋��m[r�)�﯋�z�zy����\�3��Y�_�ɣ�3������C�s}lc8����ҹ�k��z��~��IS���Ƿ߿���������G*6O�n?�J��2�J?���E����c]ϡ���Nq���~.���8/:ՠ����}����}Ǳ��J���f��8���u}�ߋt��	����x_��ʄ�E��ot��1a�k�/s�s�	�7�3���|���7�c��Rfqy��b���;*�����e#n��gHx��}���|[߹ҽ��?��;�J[�ϸ����W_�N��+��/`���;λ��t���e
o��k���{�oX*���P鞻�A����~����Y|�>䋟*�'�ߴ���y\�evot?W�/���q����Ԃ�~���?�_���_����!��j��>X�+j�o�q^���ƣ3��f�-�ho��nݸ�����iЇt����1o������*��0�������a�Q	V�xcz�ց�!Z&��� Md��������Q��8U�uXW	5����rض~��W����ի�G��*�����9������.?D�V���Q:���2>���g�G�m�UOQ͍������WE�viv��Dបܦ뗨Y�(:��T��%hL;���}&}�;�jZD�W�
K�:�g������(��'m)���S���s�w��;N_b�t��|��	�c�)���ɩu[<?:N
%K��,���m��pz���W�T�����[']��<���I(2?�;5��RX���I��O?U:�GIHN�aS���C%U�����Ke���R��8�E�Ͻ-�Ϟ^.�P����ȓ�K)��NI6��怜o���~G�|ֈ�5��p�������G�gI��2��C���b�U�� ��UL|?����W���>���\ߕS�<��H.<�Lx��,ҳ3�,?�Q�)��J��~?l�}�D.�.����
9��H.�z�.�}C:=KK�trYLz
6�y�=���<�S�j�=}��h�Z�!�-�o��B��Y��U�?
�	����X\fq����)1N�uJ�S���ԏ��J�,8?�5��X��<�v������A~����{�'��ߊ�_.�?����������]&��Zә��ƌ�q�C���%������a�e?�'�}5��+�]IC?Ͳֻ���_��bSq��\ƽN�Xq2^,��2�>*�^n���&ld�����1���q�cl�K�X��ş��r>�j�养�rZ�F�F�l\�F6ml�F�l|�^�,�u�q�/��q1r���j�UZ����0����\�Wl�/Tr>6k�e���� {%�_Ϳ,��e�d���h��e�Њe1+�c-����g\�Vlڊm��q#�n�Oa� l��P����AC�!�X ���|���c�t
�}}qڌ�uZ��nI3�i�|�Tk}�6fM�����??Sn�Q�m�?����˔\�/Sf�йz�MG�b�������q�+t����V�VՑ<�'`�1BǦ� �5e}�?+��U|y��oS9��`���w��$_j����zΊ)*�w[�S���ꈗ߲w8�������c��_�#�S�tP>��{�N�E}�NZ�_n����ȷ�T	�]:�'[� ����T,��$u�����^�}�U{�>�I�U����C;�x����3#�`�[K�X�w���'	�;gUɧ�k�.��^��c�<��#+z��������~-ƫ)Y��ǵ}�����2%����_���:�W�Y�����s�W ���9Nc��:Y�l퓵���|f�#K�Y�В��<6�u���q�x��}:���K�ur������3���u���U��������}���ޏ܈������6U]��W���ہ�����\9ߧ�P�_&��<�t�5�q��oE��u��Q���𩺮3�\綜�T�|N�o9L�o6����ŧ���W53����C��'���k{��q��\�'هa��;�����u�!?\�اz�n?>�/X��)��}6���3�O>�Ήuάsj�sSNr������Kc�M֜�K.���uL<��ry.�����[����j�r{��C�;9>�|�s<�9�d�)c��^�u�^�ɒ��}l��Ka�n�員��e0��`�ݬk���k�43۴�7S-3��ȃ3��4"�)�`fq*����/�Sח�?]��4�F5��tx���R�7Nz\޿�6������]D���?q�_���G����i��'����G�$Y����g�x{���u3@mMA�/C�e�n����M�"|9~�h�������[Ո�2~^����l:�!+��Q�o���.\�?��1����Ƈ�ԑ�By'�G�h����dA���?����K�T�X�b�~��'�s����jVed��:���Uà�E̦��#��?a��3����bTTg�?3�o����%��u�)���(�Hg��<և�����c�����S6:���ޚ�<��������jV^��&��;[�����f%26Vf�Q��|��1~�~*נ�k��^��Ö�����!�[kz{o�U���:�P8	1u"x���S�zI�q���m�Z��{5�,2�4�;�O��t僽���ƶ�5H�I�5�ŏ]Å͂��'C�Ț��i.����6��|F��Uw������}�n�c��Ee�ڨ�x�������p[Q;&�脢1�����X���}��'u�@u _i��H�T����c�H�:T:M(�knz�S�J�0j��e>��ӹ+s:�1�.��]:M�bz��N�B����.=3ć����U��_�(\.O�i�S�c鹰�͡���e=�����q \�\|e`�a}0R�*=��xf��d4�g�0>p�5��q���)�+�]��SB��R�Y�kP�����^�f�s�,�۩�=�_u�p���N?�^W���L��^Ne:Щ�-���:֏����<������q�l	�E3'�/�};��k֌���+�R��\��:�؎�'(1��=)M�=,�nɗ"����ϪD�FrY�"ȁ>fMb�.�@����r� �aY�+�(p�=��q��E��룮�ր�U`a�bQ�"'<�r���C�HGT���x��?���9U�v�����23�R*�zW5^���Қ�.�Y,��I�x_Jz��wW���iR�A���py_��Y���i!~\dq����)�N�u
�Ult�"����Z��C��̝�n�h��h靦�j��Z%k�-^�n\��6o|c}�.�=��ga���򚭼h���*j�@1&�PL��}E�W�"S�}8c���Ng�v~���,�3J��R@3�<�I��s�Axl�+n��ݺ��ź���ͺ��պ�����,��Da"L��K��e�dh_L������T^��U�jU�Z�����5*z��`��تH�*���h�����5��S�    �	�]
�~�|q>!vW��1�}U��08�\��C�\)�q�;ط��Y��1?�W���Β�'�Lv�D��1�̲�,�в/-�Բo-�ز�-�[��,b�sJY�kx�׀��m4�brdB>�@��4P��vu��
��u ���u[����'̟� '؄�������T6�6����ǀ�Tf�8B�n��|�rT7��Ι9��A�3�(�����~��	}.a��׏z;^yK,o��1��%�,ifJCC�Z�ؒ��m`�&�md�7X�~��?a�	K�Xb�:]�i���1��gb,��m�� �������_�6�F�~Q��t
��b`o!ן�������o��bPo��*�;�/�{u����I���G�G_a�Zا&v�U�f�T�~��[Z��>e.O������_?�#V�^�D�=�][�h{�'>e�܃��t��q�t>? ޮ^��Is���Jg�㶸g�����t��Hx>pz��y���[/��"QR�A����Ce��=�`����$��|ze���.\1���y�{d=��K�?�RgtrB�M[��9��COx�Ծ�<���|�X?�������$ɠ�$�/%�2���x<H��W:�_�Я߈��$���yb����JΏ�.
�7��ȿa|%��[v➊	��͹��:J��֫���&L'Ƈ��QJ.X=�|��7��+����-�u�F���������N�ȴ9��g}��?E����	�ՉB�b�]�����$�l�en �g�Q���{�~��K��<����̟�-�/������>x�/�o��؅8���¿��Q�[�f^=�e���\���#���J��R�\b)�>��u�dT��5ɱhFN`9�o%A�����X?ʯ+Y�?��7J�.���I��&�8��3q���s���<zx����Z����7�_]���S�7K�gi�2��v}^1�V�Q�;MxOԀ��I-xSՂW��Y-x�Nw�&~ ��뻜�c�k�$=<�T:-�-Wz���g���O����g��?x?�w��iɌ��Jk'_>0�/e�~3�OKs��:�+q����q�w]�����|�;��,�Οx,�'�����=�y$I���(�Vf����Q鴔S���@�S-bl���m���;�ύGS�<?�2�泥ҫ߰�������Q�\�w�ᕏ���]��֯�	:�?A���(H�3�-�x������y�_��	�6G�7�_�8�f�G�#���)��F������*�ɷ����T:���|0.�S�=�wB~�|
<����'hX�~�����֢�W7xp<�H�?_5ɸׯ(�2��_���`�	�y���(o�?��s)-۰�6���\Ͽ�K�ˁ���o�~�0{�wտ�ؿ��U�A�w��Џ���I\����Un�[����	��X��y���_�b��?����-^%˕�J���~�.�R<i�S?X''�� ���}�w⩊�>g��Co_]�;'y�)���T�'�o��_���}���_���߾�?�ש�N�-u��.Ǧ��rG�N����ҫ�_8��c�J���7��y�tz+f�pV��Lsz�#���7i��x?�0쏠����o+SA��<�ފ���s��3b����`�ES$d@��@���B�G�U~i�oZ�V���O_ԋX�&V�J#;�<wq�ӫtŢ5(��nd��NR4����m��^�Y�B�^i��5̚�=MZO5�x�:
M�A��#�d���mf=��}q�7�gy:��r�7��a=u�]��#Ǐ�1���ɏ�ۀ�I�?�7���S�dy;��_2�a���rM��z�}��[�{�h���qa���O���t�8\_���=��i� ��e�K�	/@�ȗ���"��e=�J'�l��c��|���]/z~����� �#)Z�*��e��\�ԑ�R�+�w��'�~aH�*��H��mc}?m�����[4j�����U���O�/����_�����B�S����I���Ȑ#�g�E�[	��B�$�!?*�E��!\C!���&Sh�3���>��!?D��&D$�Y6)��K�!�.bG���o,�B�ȫȷ9�"���{B!�	H���RohG��.��qӐv�#�P���Ⱦ�#��<�Z`��胐q��j� ����泥������$8"�`�B"��w��YT>@p�3���.3���O,�w*�A��Hs�y�5_���>�I��r�RN8��� i��iH��өDx&�tX+���̟�������������,�3����L���-j�P*ݒoE��ڿ���o���9+�O-�������@-4JLY�[����ncU7���g�h��:8Ar���}�[���9Fəp�rn-�қ��[�����ǆ����-D��}���6+�ߓί�A�����HӼ���4��`~d@j�LsK�V�]���tZI��<Yu���W���H���I�R�������A����M�j��r��/AK!jƸF��L�X����A��~ĵ�3J�D���rN��
��HQQ2l�pjI>>Q9��S��(��<�Zօ�%�<`}"e�\�@S��������?��H����CO�4F�T���������7��iz+��d�
��������.���=���㈒K���]p���~�ˋ+݃�FA����c�R�V4�Jo`�Q �����yQ��f�/�a�ҽ� ^�T�NQ�`%RAʾ�9�Wt��x�V�B�����¿�G9f��������-�
�V�(�~t�'Qw�I1=�{$�%2Q�����#*�wH������ߏO��/�nݿ_rp��_�i����~�����Z�5�Mc�Mb����۵��Y�TQS:���	�Z����'�[@ǐe]ìu1��,[wu��PC�R�"�݌ٱg�"f���dc�YV8�#�j���	��p����p����漸gjj�ܚ4�c��+<���y�,Y'������g�Þ!�y�7��5{�}MXz�_����q���J�0ؠ�t�y6a\�>d���	T���i.ǣҩ��k/M��'��+؀x�V�V�vW������t�eG܍q�FU�A�oca��yX�%�1�s��\����3⎸ms�1�by���fx̰�~�qݻ�$���
����@mi�#k1�������2�c?4C�܎�һ��7:v�����������mq��޴�ЛkE��:�V��`��<W:��`�0b.~D��QGm;��X/��]>׸7�z�@�vП�30�=h\�-�ޣ�?چӧ]�'qu�D`��zj^���=�����\;��w[�E��l�@�՝�֚��S��x�>c��ަ��VP�3�N ��?��>y�1���ٓ����*��F��ׄ�w����^�'8��j��k˄����h��tX3�Ə\Ӗ|/�Hx�F֯����o����]#(hi����vi7^��0}�n���~�v��R*�=�6fz"1�.��3:��1���n��ݧ��l�6�[�~W��bG����Q�^����fz/�#���_�N[8����}fWC3L���uRH��ĵy"��~��2=eZ�x]�:�����5��]�th�B��2�jK-���)b?i�|��)�2�o��h��c�3=�F��ӏ��͇�_�F�8�'!��y�c���t^�+�:C�^��]��{�^j��Z���J�5�k��\+��L>!�_�[��Fz��m�W[����J����>�ewV��ئ��WXD��O���k*�^�J�b��5�����<��?���fM����g�ٚ�\CL�:G�D&��|�Ӛ��<_������=S�r�>�ߡ\/J#�2���v����\��^:��8G��+���˕_ܤt�S]�������K���5�O_��品Y|�U����dWd�xf�K�Vv<�p��	��0��lrбx���ژK��ۜ��X���u���[LKd�ߴe�`���*����~�;��S!������[��!�}���H��?�Q�W$��\�    h{�b��ǂ�3��+��n���AO4�r���Q�U�bY�JoмBf��М&[`�#���4E������?�(%�#�;���(3U����_p�v#K�y���p����drFd��ޑ�U�C6ll˸�t|�5�[��`~ˣ��<c�1���Z񲝒]3o��{5��{������Υҟh�wS�X�O+���!�%�%��_~����������ZN�2�>��Cؗ��������<�u�k�L�l�^����2]���Xlʺ�T�\�,O�֚0ϊg�'�y����Q�]
K�%�I��jv���N��G�(�z�C�;����>!��A-yl̃��x�I�jq��V$�`�r}�Z��������X[�(����s��� ]��	��A=����6�`�$i\>A�"VÌ�S�N2]��p��>�����<E�ko��q��O���SڢD��߬u!J�Q�\�t�߅����k>/�w��X�-Tz�����W��>zcw%�<|ƅ�%Ŧ�!�&��s7�d8�c�_�|D�h�Ƚ�*/�U��s�s
>��'�7�V�3ߙ��9��!3\B�?�5�������'̬�:5>Yz���ۍ�j83��p����4�i��rr��?��ࣙ��L��{�;�&x���I��n��X�%mt._.ޏ�f>�]S%�j���ե�c���|��g;��	�c���|Z�Q1�}8����L9�{6���t��+UM�	�s�5I���-"}�	z ~�����O��+`{X4����H>��b�H�*׏55��z��_��c���<��r�H%]�|�9Q��Z,��� �!67x���B��ˢZ{�n��&�ҟ�K��=��?��|�hW�E:k�V��3����X�-��y1Sh����Dٳ��+��%�b���~�����L|��ݲ��#�ً��=/W�</Lv><G�K�i��7;/f��z��~��K�?�fv���'~�+�T�]�F7���n���O��zf�A�Y9�-A�I���[Q���X�V�%������\1 8��yH�39�^�x��_�9�w�x��߼�����g���1>�+�%����ۼy�l�hp/��ӳ�,^�>|~GQ�:��ѫgwؽ(K\_Ǧ>K�����
�b-����S�=�� LW��JoB��2='�Pf�%z~�_+{��^��<�A"Ws�^���%�7-�/�����O��N�+�{9F�%0
�F� ߉���iӶ(	�n��)�tZ��\��Rxۀ_��M잃���Ϟ�-�9)}~@C%�?��D<1�c4�U8���W�e�'��&P���Gd%��kN�����R 1�<�F����3��.F�ݭdw�����[�ن�~BQ*��e��h���ȫ��K���~��������[Z��&ZL`1�ń&��:D�!�1� R�c|9�!%��c3����>��?9e2��z��P	Ym�����Ĩ�{��5�4}�-��t�,���*4w��5�n�{�rr~]C[A����y���{�j�w7*��-��c:�v�l���}oi���g��X���1���wz-u�NwQ��-�0ho����q0-���w8O�of�=56&&��txRP�������8��o8�Ң��g'Ԧ����	_V������E�gE�e��G�|��_���@/���_��^t��|q}�ؕ^�G�\>���ܟg6/��Vq�OǮO|��腙p�ͳ���|N^�>q���;�A�+HR]�#+���C%3-8f�(iˉ����8�s�Kn���:eJlm���X�]�>'��g-�nt�t�~����Ҽj��3���wU�.=�r~��}���#2ŕ�ԟ���#���(����q���<��>'�+��.�����D�{箕��gf�Y��y�ғ�R���~�Z� 0vOԊ�gT�����*J���H#����{��%(7%�����o�R��a�0��m]Y�XZ��[pJ�aK�\��ɫ�����ly�2��Bu���+j�����~��@�Ƶ�����6�xp�q�������[����(���N�{���;��J��<c��a"�7H�r�Z����*���c�
�=T:��c�7-��C��N/5�G_ưx��7<� ]�T�9_�XAop�^ bެ��VY/���]��^@D���)���K�F������'/�m	󧘚/�c￳����F�������������F�kև�z�5D�g|bh�^ d��ߟ����;����59���[I�<��DY�߿�7η�܈��k���7y/j�~T����V��O���3Y~��[s/5O+��w���I�75������K6�߈��|g̿��Jg2���k��Jgpu}#�����k�s�q��:1'ڼ��^!���W5K�e1�~��y�mt8���tqY@�=ǚe�z�C����7sW�$��GС&��$ V�b�}�:�0:�f�L�6'��������,����qƚ�����Ѣ�&di�W�Q��?�N nJG�b#�N�ը�;X�t� �{����G}����,�ϳ9���?`���N��V��ǎ,�[���b,�,�������$�>�N��4�~�g��ҌI'��ԏ��;�b�����:�fȕ�4���c�C��V�7��.��b����o�31 Z�w)F;���rsi���p��K����-��o'��~��%�p�o�E/!�wuӬe�u|�~�n����N�t`��Q�����v;�����ҟ�s��\�G@v���UL7�W,E�i��q>�	���p�|�*�^ �2��Y��t�~�N)����X!���W A�OH��*�	���U��3�?A�c�"�`��D0/�M�W�K1���v����`l��B���<����N�_�ʺbŹ�?�C��ǀ�)����[?~���sU� Æ����_F�Rt����ԫ�.B?�=��m,޵ϊ8�����_���,n���η
]�4z��I�t���C�x�d��%@�RE� WH�G1'С"������L��W�	�;�ZE<r�f��t1�*��+뀞p{���؃��f\Aĩ�g�D�5a���[����8;���گ�t��^E9�^���Y�w�G����f�7�W�1
��oGv�R�GU���>���d�rDbV��J�'.���-�cX���WHu*�
Czܣ�K��
v���q�/���r��~�0�H�U�w�b���}d��\����QT������e��"B�7r���ן�����Ĉ���	�zCQBC�ؙ�e<���vL�ETt^�W�V�ӑ�5Ҡ��l�,��MAhR��}��5�E�"R�����3u��1��I(U��S=E-�e�;<=ds�1`S4EIQn�KX��I����Y�)4Mz��#��?-�M=1,�f1Gф$�o����s��e�=�B�Ӌ&��؁+�%�� �J9f/����i�H�o�֗�O���b��b%�A� ˢ�	��ۡۥ��z���ޚh1�%����r*�.k����W���v�������/�s������u�S�7g��^)��:uQ���3х�Si�ӡ���*�@��m�dzs����K��RFm¬M ���гkY�Ё��S�]ǼD�X�C<h�Uw�~Gd+���5�Qr�ҏY�è�ޝS`�㧻jCEn��]|�6I�y�UP�Ǩm17fq�"�N%��X��<�3�O�%1���!F-��R�L=��9�%�uD�V�]u	�oFuYt������V�!�Y�/Q��kŘ۽���_������h;�y�/������%�i��Y�ZׁtE�e���֝��3R���ѫ�,����r�lؼ@}�����R.	�x!���E���b��Y�a.��BI�*;�th	x����RH�]`�7�ԎI�Y�X�"���h�j��kЀ�:��Zr3£
b|8��Z���^u�����
��)����{������1KN����4���Zy1�O�
�C��\�'bh�,pJ��~    ���u�\��A�5�����n�����RGT@��!ώ�D��N�Z��Zo�T� Z_P�l:-���p둋S��Tyv|g��zJ��x�E�lbS
�+C�(���(�R��g���ԝ�RU����X�oR�����ϟ"����Cq���;]��M�=׻-�U4j��ٿ#Ks��$��Ds�`�t0Y�{�L�ĳG�@c�s�E�˻�3Ac�����yW���������,5:5�-�	�Y��F�T�Ϗ�]	
|�c����o�B��"\_��!�%U�XD�Fz���m�*�V|��)�^ >=��-�g�@�Ԗh�3"|>=Z㥙*�D Z#�,����A��w�e�= d����=���?:�Kc��<[MlZR9��,ި�Rr}n�IcIk�;q�l����-ӗ���/������w����bًM��T���SS��|mu��M�d<�k��%�+�u�����I�~����}�����gk�z��y�K��ɭ���oJ��;��'��k���re�H�uck�I�y=*�J���)v���[��~��I��#������>�x�D�X��ë�%�\�Y�d^�咭�l���_~��� �,(ȧ�sgoUz���j�o��l�0� �H��[��͓�:�����\��w���ܾ�+Ѣ���CD�����	�>y|���)y�fw�EmA��!�V�
W��?0�h�-L��1τ�X��(���t����3;!�J�����{�M�Cezb���3���כ������q]_�G9@q#�8�n|�0���t��o����\r5���������eh&�|����h��=?^�7���1���
z�.��`��\�74�b�����^:������ p���[�o�N�E{��V���J�8(�k&�:ߋS����翋����:�c�J�y�{*5!?�k�,�HLx�I�Q;�8@�6 $��,"�lp�!�)l�� V�;��ہ�ԁ��=�~����������6-uKw�Jy��t$�PghsE�v�`貅z��@�6w,��X�l��L�]���?���]�o���,�r�����������R�#���R��-`�h�PN�r~�_���-r��C_E�����ߟo�s�򵠀���J؂"���-(dJقb���-(hJ���K(j�ڂ¶����U(��������g+-a}����ru�ɉ7�=6ɄyV:�s��
d���a��49q������
t��+��f�1	��ټ����vB�~�NP��N%):�Gׯ�۲jw�Gʴ?���b
�sҝ�yC�ԁm�ĈI���X�t�!�Q�&��(D�M\@��`r��y��%��	�׶�j�𠳽z�&��3&�K��N*'�_�aN*i�C���|ì9�����DK%"����b���0'�����F �%�(~��$Z1�Bb����wI���&�O�U�/1G^2w%���^�p����ViI���'���.!q��9��%�����]���[>��%u��:IA�1����IL��r&v#V��q|p$�u�J:̏����ě���%���U���VX�+ZbE[�h���h��U�ɌV�.+ZfFیh��������6��J#�iFK��#+q�J|����+3q�r�MQ�"���?����X�ʰ53t���a���EW��B��7��.�wG��>!煕 ��"6�	�������$j+	�Jⶒ��$r+	��I�#���9' fY�T��QW�z������_#]Ր�	]��.�]��pK����N�Q$�"������yEB�ڠ���('���ǿ����o��.��m5��l�k��Z [-��;���Vc�2�P8r�V��'��QE��-�)!�F3�{A�W��G˹$����f�{�A�A،�:�r(dў{4��\WE�؈�}_�� ��~���j^s��`^���<��]O���<�o:$�XƓ��@�K$}��9B������������F���˯��sќ�Q2)�9�V��\o�x�*V�j?�7-�����_�f�b$.Q"by�Z�rK-␵M��_�2
9�b� 9�k?�bXD<g��!y�;j�&��~�YY��ZBB'�Ea�F�Y֢��࢑�$pͮc�#c���w��c/h�ju�>"y�#h���f��I�P���՘*
��KZK[f$�_�q���~���6�V[�n3�_��� ���6�F`���ц�jcl�A��([m��6�V�g�ͳ��Ն�jcm����h[m��6�fp���Ն�lcn�A7ڨ�m؍6�V�Α�ny���ƞ�`�0A-���C���&��k��O������e���Մa|(��(f� �	����j�`5Q0�0M�&V	�	����j�a6�0�p�M<�& V�	����l�b4Q��0��HJS�⍓��*Ƣ�6;�ot�[Aoy��:���-�
��g�_\U���o���
�Ό6v<��q�2N�X��#��燨���h�zF��3�����n�}��l������U�p��Ό\8"��*��ۨ�cR�����oz�߹������B�eFoFs��~�l�c�� �/iD����3��o�#��=�~�699S���1��O�q����c��ϰ%)$��ɿ�\�|��	!'�_��V�ĊU������?������2ɡ,�Z�CԴ�<(�!�,�&_�� j�i��\�1�ݷ[g����G��PY�NK� A#p�x��d���.��]:��������gw�_���%z�P*.e�F��AʨӾ��pSe��[}��j�9�Fjx����6�����L�F��s@>���>�%�فd��r�h?�'�����g����߇$�Fj��Fŝlݛ��H��x}��+����4����	�������a:D;����'���3%���C�ϟ���0�����M��oe��Gwn���V(?<�-��h3��"]�vf�ɔ��-%	�)��;��Lٌ�R�$����� Z_�qyRe|�~��n��Y1��H��B)^��CI������s��a4�6�u}'�`�r������Vh����7L����b~ =�#֗e7���;1��+C~��N�fo~�T��{���Xz��l��5V:�|����� �2��n��s�):� �Gv��8��A�$��\p}?��LI�Qq��tgCQr)o%t�J���T�>�Ah;�D���uA�\F�	��a�'ʧ��x2�#S2G�O���?]�G��J�)J��)Q�s�k�K�0��.!H��,�)LAڔE�t��,�w�d1�W���6]-�E��٦����ns{%���ɷ6SG;�[�IY��Kw����7M	I9��|z\җ���M;�\	'bi3e�ҕPӏ��损8��T0e��j�k�24�qV&l���Ndm!R��#�u}J�����m��j�� ��#1~���C`"�Z���1����+!h	��{!�-!n^���DZo{�+QW-d�o��>�O�=b���ya�#)y�pg���nɿ"d'�F��������ejWХ}]P7Q����m�cQ,��!� re�3�-j�7L�B�dQ��Ig���3�a��[��(��TԈ̼6���h]IC5$�4�}ה��8��F�v�-]�VC�V���!�W!s�孵�_r� �����,0�L� ֏1u��5ʓ�&!'�b`.�K��d}�xO�~`�ۢ�S���kT�����p�"���'�gd���y�5�iQ��}��[F�)�g}�(��h�����C�mԯ�5�H�}�G!"��ܵK��=������cj�
��g��35�g�DZ� Eg�S߉1^��G�>��&�P �i=�p����v���5(�׫j���by���Rm�0?�[�o�N|��� vJd���;c=�2�\d�1���'�p��=�N�?�Q���N�Wj?�D���d��z9�`�^d<Ӳ2<�a��g���	r�B>r�Y?z'^z���=KZ�H��������Y��&?�3��,�3.̀[��o��~����w�*nQB��<�JS3 ���)��    ���4�P����M��ă���\,:��L	��L��L)��L9��LI�5LY��Li��Ly�`������Wߟ�n�5�z5uX����#V�������Y5
��P'	#�ĳ�c�@�ߔ�L���i�W�ٳ�q�P�>*�R��s� �g��K��u�5�	��e�y�<Q���@�yh�
���Ậ�����I��w��Z���[+{��������c+{��~�����k+{�+s��+�$�df�����ɼ��r��Q�s}��H'��>�ߧ�]Ы���c��-(����������C��>��"��m��Og��W&��ĝc4�!_���	�����s%B�"��M�E|��yw��q�+���ڮ.�cC��Uu%KHH>\�SОÉ�~T;m7�{��lE�|�����JFb�"�p�ކxy���n��a�I	%.l�����R3Ē�V�g�P�.�=��z����������m��J'�OM�Y�A@����BWn������@	�OO ��QK�νG2���� �
��M����"��<"�sw�4b����<rc�sw�A�)81���zKd�®�~�%OK2iO���ƣ';��n�	?=��Z��CDP�x8D`?}|��>�=�']?"��H �?�WT>&�Li�XKD["��WW�u�|��z^q��"�b�+��Wʟ#U�E�zk��������bX�K��jп|���_���%ư�����&�����8�lpF%�rﮣ��.f�/����z�	�	�g$�ɉ-MHU&xϫ�i�3�y�	���N��q`�gK`vR%�Y��fg+�T���o8#�qI'�'�k� �	�̝ـ�Қu!�L��Nr����
���Dr�ܣ���g��쌕�p�n��ܔ��ÞWA�=w���a��F� �����c@����d�	��A��W��&d,~/!g�ڏB޾������kB������6�_�o	�|�i�����60X��&�����e��N
�ֈd�	��&���<� #b?U�y�j�G�`�߲�13��>��_/�k	ƴD'�`#݁���� 2���A�`?���~���{����.G\P��gg�+�,��P2E�;���@�/�'z��H,�}����<ܽ��b'��`:����?�y_�g�X���Z�Jo����!׸zD3�[<�g��t��[��m}����v�Q�z'9�ߍ�뤙�B;����>k31�I'4a;DW������oK�cM�G��0��a� Ӳ�����
���&f��Y`f��f��Y`n�&g��`v&��g��*�q��+n��}���߾}�KP��Xlĳ�$���k��
:�!U���_��Ue�����[a��,�8U:T�}���s3k��W���n�=��;Ux{U�B�ORkJt�M�P|��O�W��>mI��잵ޕ��b��å>I�9M!����ޞ׾��2��ԯS%�i�������Z�wZ5T1d�A#����D�7�廔���0��Մ�翃���k��V�ׅ��,���=�a����c�XV-W����h-٫Z�FQ�f���tV-�U�g�Z��V-�Y�h�BZ��V-�U�iՂZ��V-�U�j��Z��V-�U�k�[��V-�U��@YK��u�����.����_v�@1Aw�ɟ��y��+����}"�oAkY����p ��g��)�z~[-�{Aؑ��,�+��_�(������9J��8�vfYQ<�����Z�qT��r��U@=������Z�e����E ��Y3�ڭe�<�pU�����O���Y�����?箅�Ҳ����S%��xHL�N�y�P�)����xO�|_�����ń�7�'��]ـF��Ic,f���8�57�n����[N�&������8����>�.���7잓f���0Eg��<:�0�Ul�Y���.�$�0R��N�{�\e}�Q�o�ZȈ��/饻�p�Z�^�]l��-w����妻�p�[�~+\`��p���%V��
�X�+\d�[-�Vd�z����������{=��EH.�e�d�^Ae��I;��v����x�yL3���&�(��y�y@A.�@lS0QX��VE�ί�8񒸒�}��iA����y���e�j�n����Tz������{1t#֏�`Ӡ�8Ä��:~��7!��[�!�A�c&u�ȭs��=��*}5f�~�=<�G/V|��AU����!��7!C��A������`�:��`�K$�Ac*;)��ܝCZ�m7�|:�o����&MʘV�ϘV�h���3JD� h$��z�{E�(	�83��~�'zEz���'J<����G��g	[A�bL�`		cLCojpڑ�GЮ% ]◬o^�=y��#b����@�/BZb���0�bfm���M(��L�ǌ��K�a}��{y���?���M�1���Im��AAK��+(ᦠ�K8�6���Y/�{C�AO��	��Kx ���<�A�����"��;�4+����LG
�cXU~��O���%j@?w�л^�c/��]��w��%%"��K�)q^@)ߘ�[�ߡ7^bw�������}���:���+����A�B ��-d+���;�x_���+.[��]�0j���	9A�iF�6FE��.&3J�ncJ\g���|���<�dZ�<�>,���	fM�B�9�N�[����6�� �V��ٮ�79�}���n�̑'.��\���q��~' ��nP�b2P�����?p��"	�.]���`[*���FȀ����{``��4��tx~�U���Zn��O��û����0�a�(	���zk�R��K��Wz��(5���Φ��a}���j�%0�8~W�O��{[��99��߿��'+u
�[%!�v:�h+/;e��N�d��?��mA�*:3���Ψ�����^7c��C��ܼM��Z�����O_�v�����i���r�0��>4ފm#^�Wt�8�(n�p&,�
���ɰp6���fs�0��ChnZ�J�:*-*�bx�f����<��i���d6��@��[�u�"W_� ��*�����i����!Y4k�ChQ(�j`��#��g�>��x�]�O`c��N�m��aaa`X���aa�X緈�؋��i��X t����9�0����`�DX�V:jR<dy��w�0A^�)/�M�C�R�oF�l1�II9biS=���%'8���N�&hnx��i6�D=JgZSo�)��֗���a�YB�IS�ZiB�������ƹ�9I�H1�������B�0S�Z� ��T�zK�;w�酹g�_�&�¬{zc�?;Sf��"t�;�W|4a���É� $"K�����˥쯤2����P����}����w�y�e�3��N�誇˲nZU�R/���0�	ˏ���$��挔�[/��E-�}�����eJ����H��b��X /H�2c��"����_���&�����PL<f!N�)l�͋?�ܝ�+T�����Y�Z��U T�ɋ��J+�W5���R�	oq~���-�Ϸ���# /��,�;Ƌz�F̯��/]@��sѕ��%ር��e~���ZѳUv��{t&���S5�lυ�����Te ����-�*Ƃ�1�j�*ǂڱ�z,�*Ȃ���,�#*��]
�-� 5������3�c}���kC�Ю��W3%/��A��K0����b�����3ï^ )��蘼@^���%��>��!~3��Ժ��A�ё���02,������0B,����8�0R����x1��i���*ж
��q���*P7܍y������
�-� `�(0 ,��hYZֿ�����,6s�(d�+�;2ςܳ �,�?2�|��O=jٕ�@N��¥�z��8����3�4��~xqi�9�g�>b�7>��>�3
���7k�����Z=O|�M�`���\���il�����C��5kjr��][
�y��%� _�ˇ��*���    ����� �x��䞜�B2:��`�o�v+/�����d7t��T�ClȗiI����Χ��p���ok3��xi�x �����<;��&x�a�[���������ƙhQO�5��<�m���gı�zz��8��r��8,k���rt���x6�G��0*�c��7����sm�?��x=!W�ポ7��-~���I�^;#�G����Ia�6��tɲ<~�3�5D���1��3�ѷ|�?��=�vĂ��@(�^r�f���C�2_�=O��V�%�w��.;U��Io�n��|��.c��|A��)e}k����ߒ4�q��|N#z�;�#�s��;�5I�������Ϥo9_G��iG�=��C�:Y���%S�)�K�aǩq��u�����Ҏ@��2?jq���=I���<��t�2���Y�G������<7^���pR�s��p���ֹi>j&���~���x��{�#R;oȽ�R�u��sq~�_��/��%�^n�ʿ̗�5���q���q���i٩��k�ɦ�m�閝o�	,������׿~��ϟ�9��ԡ�sW����}G;�eL�A]��	��N����ݍ<����xv`.s�v�Hd�P�w��b�>����eꀷ��I�suN����=z�pt�[�����{�E̸�r��?��������;���9	�Ϯ�#ʝ}��X��5��� 	���(��B|�|V���U�9��#����ەs�6�Sd�j�����s�^9.[U���?|�>@����0b��GN����������?�<g�w�.�������˷�y�:�ֿ��D�xq��;�I!�T$���B8�`�H�(��}�pġ�a(�B�V�ECEi$�͍��%|^'��'7+����F���E�W��:����aU�������Cċ)����,L��CrE��0 ��`2��M�|��f����'*��PH�ݘ�}����C�����?&�C�B4�1�!Zݿ��
�mQ!>�^�]����!Ę�'��o��Z'��]#��кk'<��P$����)Bi4�ۓVWf&��ݹ�H��	��߉"?`�R�(��ׄ�1;�=��!���_���%(�"��]����� ��İ��ͼ㏭�;�Y�G����!6�#1$��y~�h;�ސ�p	0wh�,p�����r>$���a��"�k��߿��������_���Ft�m�@�,�(t����U��e�n��]�׳g�]L_�f��ij��)��ځ`�s��@�x/7����O3���T:���+��^f��`�?�(S���:>4,��2�R����b���kV�Hc�T֋�L�����[������u���Fo={����׈���#2�h�}]��c��u��*5i�n�A�kT�m��KyY��m0�9Uz�e��H���[OZ��(V��37��LϹ��V,(�Jo�D|�V���k�LNE;Xo��b�8ߋ���F�����NՀϳb�7J���c_�?	�7���C_���?I���Ͳ��$"6H��:V�3���Y�z��f�O����gy�\T�bb��?�!cǬ�YC��v��>U��t�7�W���ZҞ��?_T���Spkϟ������e���N����`��������X��g��i5���kn�x.�U��c�qa�\魧���e\�_�@�"�G��2젪����)���J��ڔ�B{	���0f
UbX��fVM)ȯ9Wz׮��Ն�U��}܏~��ϫ�o9@�|�O�i�����������?�l�FUs�����Y��!���ٿ�`?q����)
�����e'}�0�2���Kr?ܨ���2��d#��ʀ�2��l+��� �2ȭt+�����~���=�X��x�!�]�C��_k���Η�'L�	�$�w����w��]}M�`Js?3��;7N]9��� o=�z����|�����@Y�)R�B�����׏��8ޮ�ػ�u�_�Bf����:��<GI�]�-�\�.
�=���T;@��!�һZ��}�B�ⴝP��Z������T���g���K3Jڈҿz��>����B� ��o�����2��󦥃c�ڨ����H�2�ltX�Nv@��NE�K{_�%PGI�o@`��wȵc��$"��eu�,��Q0h�����0c}���oQ�c	Dь�;�\R�JoBpV �4��Px>�C�����ѫ`\�'�AM�*B8FI𜱾�o�w���8�EK��eQ������	#b�@D v���e��_Z����Q���SC��H��ˡ��b`bMN�
s�_`�w���K'D ��ZI�G ��߾.Q�K$���қQ &�:�s��Ew@>E�MQcr�Oo:y��	@K���~�wP�I��bA?����\�]%�@ED�@o�2̏��q���	$%2p|�_��*`|]�t+��|��������WT:�8
�J����8���.1l���r_�	�G'������42/��_����-qc��`��!�<��(��%q��M%9�yܿ�����(@I��ج�kك?� ��{'k������������Ey�k/_��آ$ o��,��w�E])�x�@���U�B�ȧ(� �c��l��l�RZKN�%ޏ3j�[<��Ɏ�t����Q�� <ԃ�j}-��t�,�g�I���(���C~O{=?��q-=>�<A�[q~y�9�wg��ϳ�/�X�B7��S�3I��g���	��d��>��+��t�0���#i� �X���]��CBSЉ�W�LD%����Oj���I�Ũ�R G����"�����AE�XxްO<�[rDT���{��0ѝ��q����qt~Q�F����5;�����>�Bd�-DA��¸��FM �9�Q�P��>��>�e�>29���M9��q�|N=j�E���4c����(����}�3/���I�s�:)d=g����9�;��@6/��s��֕�%.����)�ü���	W}�7Q���3A���w��(�9
�����f�]���������||Ƀ�3a����|.�٬Z�r�u���r��+}���Մ���5����"ڼ���4t�ϰ��Қد������m�[�S[Z�A������O}���j&�x �1C��d��S�O(��`�?߽�ۏ
;8^������������l�P��SOXDxC&��b�����	W��86����Go�
l��U����r���p�m&}v~�,s�>2o�����>9Ls^P.F��O��x�#,�*>|�A�$h�פ��������>H0��gdolCm��y�n�?��9����)c���%H��}�2��m
��e�������g\�?�vj�tZ��m��A\��Ck��Vo2�]�{��"�����A_{���9)�/��2��&���"<d�^��#lp~�_�]�+���匱��_��r�?�����/_��] ��)*��B��"f�<����`�O��ƜB1'���Ճ
��pq�g�oO�/5}����w!�9Q��ou3��kz4�LCҧ��7</jŢ�&�L�'y�/Q��!��B���Xw�
z׈K�stb�jΖ�[|78�������n |Y4��@L��y��C�r|(�N9��C�V�A��9�a:r��I<��K��
Ć��7\9�" ZCv��ǩux�����^qg[NM�a)��g��Բ{�Kx����uf�E�Y�t㦧[�NW�"����&���������z�Ý3l��]�}���[���A�9sl�.��ul���}�NY0~����K������������@��|%Թ�:C��|�:��X�w�:��\ f����'� ���x�]lb[������l`?�����6���k;���6���o;����%v��}na���
{���� ����OڀgfN���y��SL�yV%��ou@0�̻��`��g-rÜ��ep���drW�5���4�'!)�|���L&������A�    ���������/_���j      �      x������ � �      �   C   x�3�t��LMS�/H-J,����w)�,K-�
�q���T���祤q��q�rY��ː+F��� �%�      �   +   x�3�I-.QHI-�L�K,����4�4�2�6�4����� ���      �   %   x�3��/N�KJ,-��".#NǼ�b('F��� ��	@      �      x�3�450�O,I-������� /�E      �   6   x�3�4�4T0�7Rp�/M�IU�JL�N-Qp�,JU��/N�445�������� �         �  x��WێG}���� �=3��e���'��Q$�43T����9��f��]'R hz��S�B�YV
!�RJ)��J�:��P���~��ڣ���X��l,d�O~�r3irVN��r�Y,ʢ܌��d1���u>�Wc)�����T���J<���o>��M �E.��P��l.��>���Jy~>-x����w����c��ց� ��0���U@N��#���PS��3o)]2�@��QE�����'g�I m���NqH��LEu4��9���8&j���T}�Z� ֵ�NJk��Ä����q~�3�F}�&��$�mkk�G��4jo� �4ǅ�Hg�pB�W�>#�(�,fj�,��J�cT���T���VE�Ru��o���m ��|w[}�4��j.��� ���h����hC�� Ȩ[�m��bn+jô�F�k��D٠�;Ux�<6Gd�:fR�՞B�,�=��@����N!�Ls�3Y��+��E���tBhuґ�%l����Y��'Ņa�5pJ�up�(�d�c"uD37�wI+���ў�9V���b*#�c*`*ݨг�-3��������ƶVclT�R��.6��<�tP.ɒ\W���߾9���ޭ�n�wk�[��Z��z<�v/�AvT�ڼ���B+��e�4����|�f���LS�6��l�ڏ�����W#��O���~/90g݉��!���:�*�;�w�t��W���>kO�Y>�Y��e�¬�w�g��~������gz&�'�b�,���XS�N[�j։UP��
��)\���q��9_e|)�q�g�i^�U>�G5�[��d=���秒i:���}9}�T���a�9�q���P�Rk�fg�;�bQ,���j��&��x.�K9˗v6�+���d����d���8�e1����Knz�ѿ�����՗����߈��      �   9   x���40�24�20 1��SS���89c��,�)4�2438���,F��� ���      �   �   x���jAE׷��/��V���aB��b��"m�Ԩ`�>e�V�{�����+����!^XQ�讒��|��9+���Ռ1�Q˭9K0�9ʉ��	M�TB4}4qj�/�4�^r�}K��83��w������7	����.��]|ۛ�k~H�J�V+��Ƀ>jWV�^��~%֟ح��vX�ፈ� �W@      �   T   x�%�;�0��>jJ��H��P������_3�e�mh�FA=���	{9���	���C\��W��olhjJZ@��.x$_T��      �      x������ � �      �   n   x�3���SpJ,�I-IT.�SN�SHL��Wp�,��453�5735��L�,J-.I,���+N�+ )I�p�L����K���LJ+���O���*H�,.H�p
��9�b���� �[#�          7   x�3�4,.Qp�I,��44�20 "�`7C�̔�b�Դ����b�?�=... D��         H   x�3����/�L��C�b�8�8M99�t�k�e
R\��Z�Z\����Y����W◘�J�0�pC��1z\\\ U*�            x������ � �            x������ � �         3   x�3���K�LI�+)�̄�8��t��������ih�i��b���� 3B�      
      x������ � �      �      x������ � �      1              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    37392    bfpspc    DATABASE     �   CREATE DATABASE bfpspc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Philippines.1252' LC_CTYPE = 'English_Philippines.1252';
    DROP DATABASE bfpspc;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4                        2615    38850    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false                       0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    7                       0    0    SCHEMA topology    ACL     *   GRANT USAGE ON SCHEMA topology TO bfpspc;
                   postgres    false    7            �            1259    37393 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    bfpspc    false    4            �            1259    37396    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          bfpspc    false    204    4                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          bfpspc    false    205            �            1259    37398    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    bfpspc    false    4            �            1259    37401    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          bfpspc    false    4    206                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          bfpspc    false    207            �            1259    37403    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    bfpspc    false    4            �            1259    37406    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          bfpspc    false    208    4                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          bfpspc    false    209            �            1259    37408 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    bfpspc    false    4            �            1259    37414    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    bfpspc    false    4            �            1259    37417    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          bfpspc    false    4    211                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          bfpspc    false    212            �            1259    37419    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          bfpspc    false    210    4                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          bfpspc    false    213            �            1259    37421    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    bfpspc    false    4            �            1259    37424 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          bfpspc    false    4    214                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          bfpspc    false    215            �            1259    37426    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    bfpspc    false    4            �            1259    37433    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          bfpspc    false    4    216                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          bfpspc    false    217            �            1259    37435    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    bfpspc    false    4            �            1259    37438    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          bfpspc    false    4    218                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          bfpspc    false    219            �            1259    37440    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    bfpspc    false    4            �            1259    37446    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          bfpspc    false    4    220                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          bfpspc    false    221            �            1259    37448    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    bfpspc    false    4            �            1259    37454    home_alarmstatusuponarrival    TABLE     �   CREATE TABLE public.home_alarmstatusuponarrival (
    id integer NOT NULL,
    "StatusUponArrival" character varying(255) NOT NULL,
    "StatusUponArrivalRemarks" character varying(255) NOT NULL,
    "Incident_id" integer
);
 /   DROP TABLE public.home_alarmstatusuponarrival;
       public         heap    bfpspc    false    4            �            1259    37460 "   home_alarmstatusuponarrival_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_alarmstatusuponarrival_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.home_alarmstatusuponarrival_id_seq;
       public          bfpspc    false    4    223                        0    0 "   home_alarmstatusuponarrival_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.home_alarmstatusuponarrival_id_seq OWNED BY public.home_alarmstatusuponarrival.id;
          public          bfpspc    false    224            
           1259    38851    home_barangay    TABLE     �   CREATE TABLE public.home_barangay (
    id integer NOT NULL,
    "Name" character varying(75) NOT NULL,
    geom public.geometry(MultiPolygon,4326)
);
 !   DROP TABLE public.home_barangay;
       public         heap    bfpspc    false    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            �            1259    37462    home_barangay_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_barangay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_barangay_id_seq;
       public          bfpspc    false    4    266            !           0    0    home_barangay_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_barangay_id_seq OWNED BY public.home_barangay.id;
          public          bfpspc    false    225            �            1259    37464    home_breathingapparatus    TABLE     �   CREATE TABLE public.home_breathingapparatus (
    id integer NOT NULL,
    "BreathingApparatusNr" integer NOT NULL,
    "BreathingApparatusType" character varying(255),
    "Incident_id" integer
);
 +   DROP TABLE public.home_breathingapparatus;
       public         heap    bfpspc    false    4            �            1259    37467    home_breathingapparatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_breathingapparatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.home_breathingapparatus_id_seq;
       public          bfpspc    false    4    226            "           0    0    home_breathingapparatus_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.home_breathingapparatus_id_seq OWNED BY public.home_breathingapparatus.id;
          public          bfpspc    false    227            �            1259    37469    home_dutypersonnel    TABLE     �   CREATE TABLE public.home_dutypersonnel (
    id integer NOT NULL,
    "Designation" character varying(255) NOT NULL,
    "Remarks" character varying(255) NOT NULL,
    "Incident_id" integer,
    "Personnel_id" integer
);
 &   DROP TABLE public.home_dutypersonnel;
       public         heap    bfpspc    false    4            �            1259    37475    home_dutypersonnel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_dutypersonnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.home_dutypersonnel_id_seq;
       public          bfpspc    false    4    228            #           0    0    home_dutypersonnel_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.home_dutypersonnel_id_seq OWNED BY public.home_dutypersonnel.id;
          public          bfpspc    false    229            �            1259    37477    home_employee    TABLE     �   CREATE TABLE public.home_employee (
    id integer NOT NULL,
    "Designation" character varying(100) NOT NULL,
    user_id integer NOT NULL,
    "Rank_id" integer
);
 !   DROP TABLE public.home_employee;
       public         heap    bfpspc    false    4            �            1259    37480    home_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_employee_id_seq;
       public          bfpspc    false    4    230            $           0    0    home_employee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_employee_id_seq OWNED BY public.home_employee.id;
          public          bfpspc    false    231            �            1259    37482    home_engines    TABLE     �   CREATE TABLE public.home_engines (
    id integer NOT NULL,
    "Name" character varying(255),
    "Model" character varying(255),
    "Remarks" character varying(255)
);
     DROP TABLE public.home_engines;
       public         heap    bfpspc    false    4            �            1259    37488    home_engines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_engines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_engines_id_seq;
       public          bfpspc    false    4    232            %           0    0    home_engines_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_engines_id_seq OWNED BY public.home_engines.id;
          public          bfpspc    false    233            �            1259    37490    home_extinguisingagent    TABLE     �   CREATE TABLE public.home_extinguisingagent (
    id integer NOT NULL,
    "Quantity" integer NOT NULL,
    "Type" character varying(255) NOT NULL,
    "Incident_id" integer
);
 *   DROP TABLE public.home_extinguisingagent;
       public         heap    bfpspc    false    4            �            1259    37493    home_extinguisingagent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_extinguisingagent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.home_extinguisingagent_id_seq;
       public          bfpspc    false    4    234            &           0    0    home_extinguisingagent_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.home_extinguisingagent_id_seq OWNED BY public.home_extinguisingagent.id;
          public          bfpspc    false    235            �            1259    37495    home_hoseline    TABLE     �   CREATE TABLE public.home_hoseline (
    id integer NOT NULL,
    "Nr" integer NOT NULL,
    "Type" character varying(255) NOT NULL,
    "Length" integer NOT NULL,
    "Incident_id" integer
);
 !   DROP TABLE public.home_hoseline;
       public         heap    bfpspc    false    4            �            1259    37498    home_hoseline_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_hoseline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_hoseline_id_seq;
       public          bfpspc    false    236    4            '           0    0    home_hoseline_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_hoseline_id_seq OWNED BY public.home_hoseline.id;
          public          bfpspc    false    237                       1259    38857    home_incident    TABLE     U  CREATE TABLE public.home_incident (
    id integer NOT NULL,
    "HouseNumber" character varying(255),
    "Street" character varying(255),
    "EstimatedDamageCost" integer NOT NULL,
    "FinalDamageCost" integer NOT NULL,
    "Origin" character varying(255),
    "Cause" character varying(255),
    "Remarks" character varying(255) NOT NULL,
    "Barangay_id" integer,
    "Location" public.geometry(Point,4326),
    "Approved" boolean NOT NULL,
    "EstablishmentName" character varying(255),
    "OwnerName" character varying(255),
    "OccupancyType" character varying(255),
    "DateAlarmReceived" date,
    "TimeAlarmReceived" time without time zone,
    "Caller" character varying(255),
    "CallerAddress" character varying(255),
    "DeathCivilianF" integer NOT NULL,
    "DeathCivilianM" integer NOT NULL,
    "DeathFireFighterF" integer NOT NULL,
    "DeathFireFighterM" integer NOT NULL,
    "DescriptionOfStructure" text,
    "DistanceFromBase" integer NOT NULL,
    "InjuredCivilianF" integer NOT NULL,
    "InjuredCivilianM" integer NOT NULL,
    "InjuredFireFighterF" integer NOT NULL,
    "InjuredFireFighterM" integer NOT NULL,
    "OccupancyTypeRemarks" character varying(255),
    "PersonnelReceivingCall_id" integer,
    "Details" text,
    "Observations" text,
    "Problems" text,
    "Occupant" character varying(255),
    "DateTimeFireOut" timestamp with time zone,
    "DateTimeUnderControl" timestamp with time zone,
    "InvestigationDetails" text,
    "Involved" character varying(255),
    "TimeStarted" time without time zone,
    "Disposition" text,
    "Alarm" character varying(100)
);
 !   DROP TABLE public.home_incident;
       public         heap    bfpspc    false    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            �            1259    37500    home_incident_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_incident_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.home_incident_id_seq;
       public          bfpspc    false    4    267            (           0    0    home_incident_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.home_incident_id_seq OWNED BY public.home_incident.id;
          public          bfpspc    false    238            �            1259    37502    home_incidentresponse    TABLE     Q  CREATE TABLE public.home_incidentresponse (
    id integer NOT NULL,
    "TimeDispatched" time without time zone,
    "TimeArrived" time without time zone,
    "TimeReturnedToBase" time without time zone,
    "WaterTankRefilled" integer NOT NULL,
    "GasConsumed" integer NOT NULL,
    "Engine_id" integer,
    "Incident_id" integer
);
 )   DROP TABLE public.home_incidentresponse;
       public         heap    bfpspc    false    4            �            1259    37505    home_incidentresponse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_incidentresponse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_incidentresponse_id_seq;
       public          bfpspc    false    4    239            )           0    0    home_incidentresponse_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_incidentresponse_id_seq OWNED BY public.home_incidentresponse.id;
          public          bfpspc    false    240            �            1259    37507    home_personnel    TABLE     �   CREATE TABLE public.home_personnel (
    id integer NOT NULL,
    "FirstName" character varying(100),
    "MiddleName" character varying(100),
    "LastName" character varying(100) NOT NULL,
    "Rank_id" integer
);
 "   DROP TABLE public.home_personnel;
       public         heap    bfpspc    false    4            �            1259    37510    home_investigator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_investigator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.home_investigator_id_seq;
       public          bfpspc    false    4    241            *           0    0    home_investigator_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.home_investigator_id_seq OWNED BY public.home_personnel.id;
          public          bfpspc    false    242            �            1259    37512 	   home_rank    TABLE     �   CREATE TABLE public.home_rank (
    id integer NOT NULL,
    "Code" character varying(100) NOT NULL,
    "Definition" character varying(250) NOT NULL
);
    DROP TABLE public.home_rank;
       public         heap    bfpspc    false    4            �            1259    37515    home_investigatorrank_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_investigatorrank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_investigatorrank_id_seq;
       public          bfpspc    false    243    4            +           0    0    home_investigatorrank_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.home_investigatorrank_id_seq OWNED BY public.home_rank.id;
          public          bfpspc    false    244            �            1259    37517    home_ropeandladder    TABLE     �   CREATE TABLE public.home_ropeandladder (
    id integer NOT NULL,
    "Type" character varying(255) NOT NULL,
    "Length" integer NOT NULL,
    "Incident_id" integer
);
 &   DROP TABLE public.home_ropeandladder;
       public         heap    bfpspc    false    4            �            1259    37520    home_ropeandladder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_ropeandladder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.home_ropeandladder_id_seq;
       public          bfpspc    false    245    4            ,           0    0    home_ropeandladder_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.home_ropeandladder_id_seq OWNED BY public.home_ropeandladder.id;
          public          bfpspc    false    246            �            1259    37522    home_station    TABLE     r  CREATE TABLE public.home_station (
    id integer NOT NULL,
    "Address" character varying(255) NOT NULL,
    "TelephoneNumber" character varying(255) NOT NULL,
    "PhoneNumbers" character varying(255) NOT NULL,
    "EmailAddress" character varying(254),
    "BFPLogo" character varying(100),
    "StationLogo" character varying(100),
    "ChiefOfficer_id" integer
);
     DROP TABLE public.home_station;
       public         heap    bfpspc    false    4            �            1259    37528    home_station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_station_id_seq;
       public          bfpspc    false    4    247            -           0    0    home_station_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_station_id_seq OWNED BY public.home_station.id;
          public          bfpspc    false    248            �            1259    37530    home_timealarmstatus    TABLE     �   CREATE TABLE public.home_timealarmstatus (
    id integer NOT NULL,
    "AlarmStatus" character varying(255) NOT NULL,
    "AlarmTime" time without time zone,
    "GroundCommander" character varying(255) NOT NULL,
    "Incident_id" integer
);
 (   DROP TABLE public.home_timealarmstatus;
       public         heap    bfpspc    false    4            �            1259    37536    home_timealarmstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_timealarmstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.home_timealarmstatus_id_seq;
       public          bfpspc    false    249    4            .           0    0    home_timealarmstatus_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.home_timealarmstatus_id_seq OWNED BY public.home_timealarmstatus.id;
          public          bfpspc    false    250            �            1259    37538    report_builder_displayfield    TABLE     �  CREATE TABLE public.report_builder_displayfield (
    id integer NOT NULL,
    path character varying(2000) NOT NULL,
    path_verbose character varying(2000) NOT NULL,
    field character varying(2000) NOT NULL,
    field_verbose character varying(2000) NOT NULL,
    name character varying(2000) NOT NULL,
    sort integer,
    sort_reverse boolean NOT NULL,
    width integer NOT NULL,
    aggregate character varying(5) NOT NULL,
    "position" smallint,
    total boolean NOT NULL,
    "group" boolean NOT NULL,
    display_format_id integer,
    report_id integer NOT NULL,
    CONSTRAINT report_builder_displayfield_position_check CHECK (("position" >= 0))
);
 /   DROP TABLE public.report_builder_displayfield;
       public         heap    bfpspc    false    4            �            1259    37545 "   report_builder_displayfield_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_displayfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.report_builder_displayfield_id_seq;
       public          bfpspc    false    4    251            /           0    0 "   report_builder_displayfield_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.report_builder_displayfield_id_seq OWNED BY public.report_builder_displayfield.id;
          public          bfpspc    false    252            �            1259    37547    report_builder_filterfield    TABLE     e  CREATE TABLE public.report_builder_filterfield (
    id integer NOT NULL,
    path character varying(2000) NOT NULL,
    path_verbose character varying(2000) NOT NULL,
    field character varying(2000) NOT NULL,
    field_verbose character varying(2000) NOT NULL,
    filter_type character varying(20) NOT NULL,
    filter_value character varying(2000) NOT NULL,
    filter_value2 character varying(2000) NOT NULL,
    exclude boolean NOT NULL,
    "position" smallint,
    report_id integer NOT NULL,
    filter_delta bigint,
    CONSTRAINT report_builder_filterfield_position_check CHECK (("position" >= 0))
);
 .   DROP TABLE public.report_builder_filterfield;
       public         heap    bfpspc    false    4            �            1259    37554 !   report_builder_filterfield_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_filterfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.report_builder_filterfield_id_seq;
       public          bfpspc    false    253    4            0           0    0 !   report_builder_filterfield_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.report_builder_filterfield_id_seq OWNED BY public.report_builder_filterfield.id;
          public          bfpspc    false    254            �            1259    37556    report_builder_format    TABLE     �   CREATE TABLE public.report_builder_format (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    string character varying(300) NOT NULL
);
 )   DROP TABLE public.report_builder_format;
       public         heap    bfpspc    false    4                        1259    37559    report_builder_format_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_format_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_builder_format_id_seq;
       public          bfpspc    false    255    4            1           0    0    report_builder_format_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.report_builder_format_id_seq OWNED BY public.report_builder_format.id;
          public          bfpspc    false    256                       1259    37561    report_builder_report    TABLE     �  CREATE TABLE public.report_builder_report (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(50) NOT NULL,
    description text NOT NULL,
    created date NOT NULL,
    modified date NOT NULL,
    "distinct" boolean NOT NULL,
    report_file character varying(100) NOT NULL,
    report_file_creation timestamp with time zone,
    root_model_id integer NOT NULL,
    user_created_id integer,
    user_modified_id integer
);
 )   DROP TABLE public.report_builder_report;
       public         heap    bfpspc    false    4                       1259    37567    report_builder_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_builder_report_id_seq;
       public          bfpspc    false    257    4            2           0    0    report_builder_report_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.report_builder_report_id_seq OWNED BY public.report_builder_report.id;
          public          bfpspc    false    258                       1259    37569    report_builder_report_starred    TABLE     �   CREATE TABLE public.report_builder_report_starred (
    id integer NOT NULL,
    report_id integer NOT NULL,
    user_id integer NOT NULL
);
 1   DROP TABLE public.report_builder_report_starred;
       public         heap    bfpspc    false    4                       1259    37572 $   report_builder_report_starred_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_builder_report_starred_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.report_builder_report_starred_id_seq;
       public          bfpspc    false    259    4            3           0    0 $   report_builder_report_starred_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.report_builder_report_starred_id_seq OWNED BY public.report_builder_report_starred.id;
          public          bfpspc    false    260            �           2604    38863    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    205    204            �           2604    38864    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    207    206            �           2604    38865    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    209    208            �           2604    38866    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    213    210            �           2604    38867    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    212    211            �           2604    38868    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    215    214            �           2604    38869    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    217    216            �           2604    38870    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    219    218            �           2604    38871    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    221    220            �           2604    38872    home_alarmstatusuponarrival id    DEFAULT     �   ALTER TABLE ONLY public.home_alarmstatusuponarrival ALTER COLUMN id SET DEFAULT nextval('public.home_alarmstatusuponarrival_id_seq'::regclass);
 M   ALTER TABLE public.home_alarmstatusuponarrival ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    224    223            �           2604    38873    home_barangay id    DEFAULT     t   ALTER TABLE ONLY public.home_barangay ALTER COLUMN id SET DEFAULT nextval('public.home_barangay_id_seq'::regclass);
 ?   ALTER TABLE public.home_barangay ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    266    225    266            �           2604    38874    home_breathingapparatus id    DEFAULT     �   ALTER TABLE ONLY public.home_breathingapparatus ALTER COLUMN id SET DEFAULT nextval('public.home_breathingapparatus_id_seq'::regclass);
 I   ALTER TABLE public.home_breathingapparatus ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    227    226            �           2604    38875    home_dutypersonnel id    DEFAULT     ~   ALTER TABLE ONLY public.home_dutypersonnel ALTER COLUMN id SET DEFAULT nextval('public.home_dutypersonnel_id_seq'::regclass);
 D   ALTER TABLE public.home_dutypersonnel ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    229    228            �           2604    38876    home_employee id    DEFAULT     t   ALTER TABLE ONLY public.home_employee ALTER COLUMN id SET DEFAULT nextval('public.home_employee_id_seq'::regclass);
 ?   ALTER TABLE public.home_employee ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    231    230            �           2604    38877    home_engines id    DEFAULT     r   ALTER TABLE ONLY public.home_engines ALTER COLUMN id SET DEFAULT nextval('public.home_engines_id_seq'::regclass);
 >   ALTER TABLE public.home_engines ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    233    232            �           2604    38878    home_extinguisingagent id    DEFAULT     �   ALTER TABLE ONLY public.home_extinguisingagent ALTER COLUMN id SET DEFAULT nextval('public.home_extinguisingagent_id_seq'::regclass);
 H   ALTER TABLE public.home_extinguisingagent ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    235    234            �           2604    38879    home_hoseline id    DEFAULT     t   ALTER TABLE ONLY public.home_hoseline ALTER COLUMN id SET DEFAULT nextval('public.home_hoseline_id_seq'::regclass);
 ?   ALTER TABLE public.home_hoseline ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    237    236            �           2604    38880    home_incident id    DEFAULT     t   ALTER TABLE ONLY public.home_incident ALTER COLUMN id SET DEFAULT nextval('public.home_incident_id_seq'::regclass);
 ?   ALTER TABLE public.home_incident ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    267    238    267            �           2604    38881    home_incidentresponse id    DEFAULT     �   ALTER TABLE ONLY public.home_incidentresponse ALTER COLUMN id SET DEFAULT nextval('public.home_incidentresponse_id_seq'::regclass);
 G   ALTER TABLE public.home_incidentresponse ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    240    239            �           2604    38882    home_personnel id    DEFAULT     y   ALTER TABLE ONLY public.home_personnel ALTER COLUMN id SET DEFAULT nextval('public.home_investigator_id_seq'::regclass);
 @   ALTER TABLE public.home_personnel ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    242    241            �           2604    38883    home_rank id    DEFAULT     x   ALTER TABLE ONLY public.home_rank ALTER COLUMN id SET DEFAULT nextval('public.home_investigatorrank_id_seq'::regclass);
 ;   ALTER TABLE public.home_rank ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    244    243            �           2604    38884    home_ropeandladder id    DEFAULT     ~   ALTER TABLE ONLY public.home_ropeandladder ALTER COLUMN id SET DEFAULT nextval('public.home_ropeandladder_id_seq'::regclass);
 D   ALTER TABLE public.home_ropeandladder ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    246    245            �           2604    38885    home_station id    DEFAULT     r   ALTER TABLE ONLY public.home_station ALTER COLUMN id SET DEFAULT nextval('public.home_station_id_seq'::regclass);
 >   ALTER TABLE public.home_station ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    248    247            �           2604    38886    home_timealarmstatus id    DEFAULT     �   ALTER TABLE ONLY public.home_timealarmstatus ALTER COLUMN id SET DEFAULT nextval('public.home_timealarmstatus_id_seq'::regclass);
 F   ALTER TABLE public.home_timealarmstatus ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    250    249            �           2604    38887    report_builder_displayfield id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_displayfield ALTER COLUMN id SET DEFAULT nextval('public.report_builder_displayfield_id_seq'::regclass);
 M   ALTER TABLE public.report_builder_displayfield ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    252    251            �           2604    38888    report_builder_filterfield id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_filterfield ALTER COLUMN id SET DEFAULT nextval('public.report_builder_filterfield_id_seq'::regclass);
 L   ALTER TABLE public.report_builder_filterfield ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    254    253            �           2604    38889    report_builder_format id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_format ALTER COLUMN id SET DEFAULT nextval('public.report_builder_format_id_seq'::regclass);
 G   ALTER TABLE public.report_builder_format ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    256    255            �           2604    38890    report_builder_report id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_report ALTER COLUMN id SET DEFAULT nextval('public.report_builder_report_id_seq'::regclass);
 G   ALTER TABLE public.report_builder_report ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    258    257            �           2604    38891     report_builder_report_starred id    DEFAULT     �   ALTER TABLE ONLY public.report_builder_report_starred ALTER COLUMN id SET DEFAULT nextval('public.report_builder_report_starred_id_seq'::regclass);
 O   ALTER TABLE public.report_builder_report_starred ALTER COLUMN id DROP DEFAULT;
       public          bfpspc    false    260    259            �          0    37393 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          bfpspc    false    204            �          0    37398    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          bfpspc    false    206   ,        �          0    37403    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          bfpspc    false    208   r        �          0    37408 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          bfpspc    false    210   &       �          0    37414    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          bfpspc    false    211   �       �          0    37421    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          bfpspc    false    214   &        �          0    37426    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          bfpspc    false    216           �          0    37435    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          bfpspc    false    218   �       �          0    37440    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          bfpspc    false    220   L       �          0    37448    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          bfpspc    false    222   �       �          0    37454    home_alarmstatusuponarrival 
   TABLE DATA           y   COPY public.home_alarmstatusuponarrival (id, "StatusUponArrival", "StatusUponArrivalRemarks", "Incident_id") FROM stdin;
    public          bfpspc    false    223   �                 0    38851    home_barangay 
   TABLE DATA           9   COPY public.home_barangay (id, "Name", geom) FROM stdin;
    public          bfpspc    false    266   1        �          0    37464    home_breathingapparatus 
   TABLE DATA           v   COPY public.home_breathingapparatus (id, "BreathingApparatusNr", "BreathingApparatusType", "Incident_id") FROM stdin;
    public          bfpspc    false    226   :        �          0    37469    home_dutypersonnel 
   TABLE DATA           i   COPY public.home_dutypersonnel (id, "Designation", "Remarks", "Incident_id", "Personnel_id") FROM stdin;
    public          bfpspc    false    228           �          0    37477    home_employee 
   TABLE DATA           N   COPY public.home_employee (id, "Designation", user_id, "Rank_id") FROM stdin;
    public          bfpspc    false    230   M        �          0    37482    home_engines 
   TABLE DATA           F   COPY public.home_engines (id, "Name", "Model", "Remarks") FROM stdin;
    public          bfpspc    false    232   5        �          0    37490    home_extinguisingagent 
   TABLE DATA           W   COPY public.home_extinguisingagent (id, "Quantity", "Type", "Incident_id") FROM stdin;
    public          bfpspc    false    234   /        �          0    37495    home_hoseline 
   TABLE DATA           R   COPY public.home_hoseline (id, "Nr", "Type", "Length", "Incident_id") FROM stdin;
    public          bfpspc    false    236   &                  0    38857    home_incident 
   TABLE DATA           �  COPY public.home_incident (id, "HouseNumber", "Street", "EstimatedDamageCost", "FinalDamageCost", "Origin", "Cause", "Remarks", "Barangay_id", "Location", "Approved", "EstablishmentName", "OwnerName", "OccupancyType", "DateAlarmReceived", "TimeAlarmReceived", "Caller", "CallerAddress", "DeathCivilianF", "DeathCivilianM", "DeathFireFighterF", "DeathFireFighterM", "DescriptionOfStructure", "DistanceFromBase", "InjuredCivilianF", "InjuredCivilianM", "InjuredFireFighterF", "InjuredFireFighterM", "OccupancyTypeRemarks", "PersonnelReceivingCall_id", "Details", "Observations", "Problems", "Occupant", "DateTimeFireOut", "DateTimeUnderControl", "InvestigationDetails", "Involved", "TimeStarted", "Disposition", "Alarm") FROM stdin;
    public          bfpspc    false    267   @        �          0    37502    home_incidentresponse 
   TABLE DATA           �   COPY public.home_incidentresponse (id, "TimeDispatched", "TimeArrived", "TimeReturnedToBase", "WaterTankRefilled", "GasConsumed", "Engine_id", "Incident_id") FROM stdin;
    public          bfpspc    false    239   �       �          0    37507    home_personnel 
   TABLE DATA           ^   COPY public.home_personnel (id, "FirstName", "MiddleName", "LastName", "Rank_id") FROM stdin;
    public          bfpspc    false    241   C        �          0    37512 	   home_rank 
   TABLE DATA           =   COPY public.home_rank (id, "Code", "Definition") FROM stdin;
    public          bfpspc    false    243   �        �          0    37517    home_ropeandladder 
   TABLE DATA           Q   COPY public.home_ropeandladder (id, "Type", "Length", "Incident_id") FROM stdin;
    public          bfpspc    false    245   ^        �          0    37522    home_station 
   TABLE DATA           �   COPY public.home_station (id, "Address", "TelephoneNumber", "PhoneNumbers", "EmailAddress", "BFPLogo", "StationLogo", "ChiefOfficer_id") FROM stdin;
    public          bfpspc    false    247                      0    37530    home_timealarmstatus 
   TABLE DATA           p   COPY public.home_timealarmstatus (id, "AlarmStatus", "AlarmTime", "GroundCommander", "Incident_id") FROM stdin;
    public          bfpspc    false    249   x                  0    37538    report_builder_displayfield 
   TABLE DATA           �   COPY public.report_builder_displayfield (id, path, path_verbose, field, field_verbose, name, sort, sort_reverse, width, aggregate, "position", total, "group", display_format_id, report_id) FROM stdin;
    public          bfpspc    false    251   A                  0    37547    report_builder_filterfield 
   TABLE DATA           �   COPY public.report_builder_filterfield (id, path, path_verbose, field, field_verbose, filter_type, filter_value, filter_value2, exclude, "position", report_id, filter_delta) FROM stdin;
    public          bfpspc    false    253   R                  0    37556    report_builder_format 
   TABLE DATA           A   COPY public.report_builder_format (id, name, string) FROM stdin;
    public          bfpspc    false    255                     0    37561    report_builder_report 
   TABLE DATA           �   COPY public.report_builder_report (id, name, slug, description, created, modified, "distinct", report_file, report_file_creation, root_model_id, user_created_id, user_modified_id) FROM stdin;
    public          bfpspc    false    257           
          0    37569    report_builder_report_starred 
   TABLE DATA           O   COPY public.report_builder_report_starred (id, report_id, user_id) FROM stdin;
    public          bfpspc    false    259   =        �          0    38146    spatial_ref_sys 
   TABLE DATA           )   COPY public.spatial_ref_sys  FROM stdin;
    public          postgres    false    262           4           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          bfpspc    false    205            5           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 27, true);
          public          bfpspc    false    207            6           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);
          public          bfpspc    false    209            7           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);
          public          bfpspc    false    212            8           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          bfpspc    false    213            9           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          bfpspc    false    215            :           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 337, true);
          public          bfpspc    false    217            ;           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 31, true);
          public          bfpspc    false    219            <           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 123, true);
          public          bfpspc    false    221            =           0    0 "   home_alarmstatusuponarrival_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.home_alarmstatusuponarrival_id_seq', 39, true);
          public          bfpspc    false    224            >           0    0    home_barangay_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.home_barangay_id_seq', 562, true);
          public          bfpspc    false    225            ?           0    0    home_breathingapparatus_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.home_breathingapparatus_id_seq', 1, false);
          public          bfpspc    false    227            @           0    0    home_dutypersonnel_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.home_dutypersonnel_id_seq', 8, true);
          public          bfpspc    false    229            A           0    0    home_employee_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.home_employee_id_seq', 2, true);
          public          bfpspc    false    231            B           0    0    home_engines_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_engines_id_seq', 2, true);
          public          bfpspc    false    233            C           0    0    home_extinguisingagent_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.home_extinguisingagent_id_seq', 5, true);
          public          bfpspc    false    235            D           0    0    home_hoseline_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.home_hoseline_id_seq', 3, true);
          public          bfpspc    false    237            E           0    0    home_incident_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.home_incident_id_seq', 118, true);
          public          bfpspc    false    238            F           0    0    home_incidentresponse_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_incidentresponse_id_seq', 9, true);
          public          bfpspc    false    240            G           0    0    home_investigator_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.home_investigator_id_seq', 10, true);
          public          bfpspc    false    242            H           0    0    home_investigatorrank_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.home_investigatorrank_id_seq', 10, true);
          public          bfpspc    false    244            I           0    0    home_ropeandladder_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.home_ropeandladder_id_seq', 1, false);
          public          bfpspc    false    246            J           0    0    home_station_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_station_id_seq', 1, true);
          public          bfpspc    false    248            K           0    0    home_timealarmstatus_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.home_timealarmstatus_id_seq', 3, true);
          public          bfpspc    false    250            L           0    0 "   report_builder_displayfield_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.report_builder_displayfield_id_seq', 5, true);
          public          bfpspc    false    252            M           0    0 !   report_builder_filterfield_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.report_builder_filterfield_id_seq', 1, false);
          public          bfpspc    false    254            N           0    0    report_builder_format_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.report_builder_format_id_seq', 1, false);
          public          bfpspc    false    256            O           0    0    report_builder_report_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.report_builder_report_id_seq', 1, true);
          public          bfpspc    false    258            P           0    0 $   report_builder_report_starred_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.report_builder_report_starred_id_seq', 1, false);
          public          bfpspc    false    260            �           2606    37602    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            bfpspc    false    204            �           2606    37604 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            bfpspc    false    206    206            �           2606    37606 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            bfpspc    false    206            �           2606    37608    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            bfpspc    false    204            �           2606    37610 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            bfpspc    false    208    208            �           2606    37612 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            bfpspc    false    208            �           2606    37614 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            bfpspc    false    211            �           2606    37616 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            bfpspc    false    211    211            �           2606    37618    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            bfpspc    false    210            �           2606    37620 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            bfpspc    false    214            �           2606    37622 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            bfpspc    false    214    214            �           2606    37624     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            bfpspc    false    210            �           2606    37626 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            bfpspc    false    216            �           2606    37628 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            bfpspc    false    218    218            �           2606    37630 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            bfpspc    false    218            �           2606    37632 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            bfpspc    false    220            �           2606    37634 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            bfpspc    false    222            �           2606    37636 [   home_alarmstatusuponarrival home_alarmstatusuponarri_Incident_id_StatusUponAr_98b0bef3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_alarmstatusuponarrival
    ADD CONSTRAINT "home_alarmstatusuponarri_Incident_id_StatusUponAr_98b0bef3_uniq" UNIQUE ("Incident_id", "StatusUponArrival");
 �   ALTER TABLE ONLY public.home_alarmstatusuponarrival DROP CONSTRAINT "home_alarmstatusuponarri_Incident_id_StatusUponAr_98b0bef3_uniq";
       public            bfpspc    false    223    223            �           2606    37638 <   home_alarmstatusuponarrival home_alarmstatusuponarrival_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.home_alarmstatusuponarrival
    ADD CONSTRAINT home_alarmstatusuponarrival_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.home_alarmstatusuponarrival DROP CONSTRAINT home_alarmstatusuponarrival_pkey;
       public            bfpspc    false    223            )           2606    38895     home_barangay home_barangay_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_barangay
    ADD CONSTRAINT home_barangay_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_barangay DROP CONSTRAINT home_barangay_pkey;
       public            bfpspc    false    266            �           2606    37640 4   home_breathingapparatus home_breathingapparatus_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.home_breathingapparatus
    ADD CONSTRAINT home_breathingapparatus_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.home_breathingapparatus DROP CONSTRAINT home_breathingapparatus_pkey;
       public            bfpspc    false    226            �           2606    37642 *   home_dutypersonnel home_dutypersonnel_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.home_dutypersonnel
    ADD CONSTRAINT home_dutypersonnel_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.home_dutypersonnel DROP CONSTRAINT home_dutypersonnel_pkey;
       public            bfpspc    false    228            �           2606    37644     home_employee home_employee_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT home_employee_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT home_employee_pkey;
       public            bfpspc    false    230            �           2606    37646 '   home_employee home_employee_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT home_employee_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT home_employee_user_id_key;
       public            bfpspc    false    230            �           2606    37648    home_engines home_engines_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_engines
    ADD CONSTRAINT home_engines_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_engines DROP CONSTRAINT home_engines_pkey;
       public            bfpspc    false    232            �           2606    37650 2   home_extinguisingagent home_extinguisingagent_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.home_extinguisingagent
    ADD CONSTRAINT home_extinguisingagent_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.home_extinguisingagent DROP CONSTRAINT home_extinguisingagent_pkey;
       public            bfpspc    false    234            �           2606    37652     home_hoseline home_hoseline_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_hoseline
    ADD CONSTRAINT home_hoseline_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_hoseline DROP CONSTRAINT home_hoseline_pkey;
       public            bfpspc    false    236            .           2606    38897     home_incident home_incident_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.home_incident
    ADD CONSTRAINT home_incident_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.home_incident DROP CONSTRAINT home_incident_pkey;
       public            bfpspc    false    267            �           2606    37654 O   home_incidentresponse home_incidentresponse_Incident_id_Engine_id_2b4b59a4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT "home_incidentresponse_Incident_id_Engine_id_2b4b59a4_uniq" UNIQUE ("Incident_id", "Engine_id");
 {   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT "home_incidentresponse_Incident_id_Engine_id_2b4b59a4_uniq";
       public            bfpspc    false    239    239            �           2606    37656 0   home_incidentresponse home_incidentresponse_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT home_incidentresponse_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT home_incidentresponse_pkey;
       public            bfpspc    false    239            �           2606    37658 A   home_personnel home_investigator_FirstName_LastName_697f8849_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_personnel
    ADD CONSTRAINT "home_investigator_FirstName_LastName_697f8849_uniq" UNIQUE ("FirstName", "LastName");
 m   ALTER TABLE ONLY public.home_personnel DROP CONSTRAINT "home_investigator_FirstName_LastName_697f8849_uniq";
       public            bfpspc    false    241    241            �           2606    37660 %   home_personnel home_investigator_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.home_personnel
    ADD CONSTRAINT home_investigator_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.home_personnel DROP CONSTRAINT home_investigator_pkey;
       public            bfpspc    false    241                       2606    37662 $   home_rank home_investigatorrank_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.home_rank
    ADD CONSTRAINT home_investigatorrank_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.home_rank DROP CONSTRAINT home_investigatorrank_pkey;
       public            bfpspc    false    243                       2606    37664 &   home_rank home_rank_Code_7c283788_uniq 
   CONSTRAINT     e   ALTER TABLE ONLY public.home_rank
    ADD CONSTRAINT "home_rank_Code_7c283788_uniq" UNIQUE ("Code");
 R   ALTER TABLE ONLY public.home_rank DROP CONSTRAINT "home_rank_Code_7c283788_uniq";
       public            bfpspc    false    243                       2606    37666 *   home_ropeandladder home_ropeandladder_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.home_ropeandladder
    ADD CONSTRAINT home_ropeandladder_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.home_ropeandladder DROP CONSTRAINT home_ropeandladder_pkey;
       public            bfpspc    false    245                       2606    37668    home_station home_station_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_station
    ADD CONSTRAINT home_station_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_station DROP CONSTRAINT home_station_pkey;
       public            bfpspc    false    247                       2606    37670 O   home_timealarmstatus home_timealarmstatus_Incident_id_AlarmStatus_81b20f86_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_timealarmstatus
    ADD CONSTRAINT "home_timealarmstatus_Incident_id_AlarmStatus_81b20f86_uniq" UNIQUE ("Incident_id", "AlarmStatus");
 {   ALTER TABLE ONLY public.home_timealarmstatus DROP CONSTRAINT "home_timealarmstatus_Incident_id_AlarmStatus_81b20f86_uniq";
       public            bfpspc    false    249    249                       2606    37672 .   home_timealarmstatus home_timealarmstatus_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.home_timealarmstatus
    ADD CONSTRAINT home_timealarmstatus_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.home_timealarmstatus DROP CONSTRAINT home_timealarmstatus_pkey;
       public            bfpspc    false    249                       2606    37674 <   report_builder_displayfield report_builder_displayfield_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.report_builder_displayfield
    ADD CONSTRAINT report_builder_displayfield_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displayfield_pkey;
       public            bfpspc    false    251                       2606    37676 :   report_builder_filterfield report_builder_filterfield_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.report_builder_filterfield
    ADD CONSTRAINT report_builder_filterfield_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.report_builder_filterfield DROP CONSTRAINT report_builder_filterfield_pkey;
       public            bfpspc    false    253                       2606    37678 0   report_builder_format report_builder_format_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.report_builder_format
    ADD CONSTRAINT report_builder_format_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.report_builder_format DROP CONSTRAINT report_builder_format_pkey;
       public            bfpspc    false    255                       2606    37680 0   report_builder_report report_builder_report_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_report_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_pkey;
       public            bfpspc    false    257            "           2606    37682 @   report_builder_report_starred report_builder_report_starred_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_pkey;
       public            bfpspc    false    259            %           2606    37684 [   report_builder_report_starred report_builder_report_starred_report_id_user_id_8e38d9bd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_report_id_user_id_8e38d9bd_uniq UNIQUE (report_id, user_id);
 �   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_report_id_user_id_8e38d9bd_uniq;
       public            bfpspc    false    259    259            �           1259    37685    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            bfpspc    false    204            �           1259    37686 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            bfpspc    false    206            �           1259    37687 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            bfpspc    false    206            �           1259    37688 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            bfpspc    false    208            �           1259    37689 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            bfpspc    false    211            �           1259    37690 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            bfpspc    false    211            �           1259    37691 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            bfpspc    false    214            �           1259    37692 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            bfpspc    false    214            �           1259    37693     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            bfpspc    false    210            �           1259    37694 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            bfpspc    false    216            �           1259    37695 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            bfpspc    false    216            �           1259    37696 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            bfpspc    false    222            �           1259    37697 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            bfpspc    false    222            �           1259    37698 0   home_alarmstatusuponarrival_Incident_id_b0c5e306    INDEX     �   CREATE INDEX "home_alarmstatusuponarrival_Incident_id_b0c5e306" ON public.home_alarmstatusuponarrival USING btree ("Incident_id");
 F   DROP INDEX public."home_alarmstatusuponarrival_Incident_id_b0c5e306";
       public            bfpspc    false    223            '           1259    38898    home_barangay_geom_id    INDEX     N   CREATE INDEX home_barangay_geom_id ON public.home_barangay USING gist (geom);
 )   DROP INDEX public.home_barangay_geom_id;
       public            bfpspc    false    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    266            �           1259    37699 ,   home_breathingapparatus_Incident_id_ba9b3191    INDEX     {   CREATE INDEX "home_breathingapparatus_Incident_id_ba9b3191" ON public.home_breathingapparatus USING btree ("Incident_id");
 B   DROP INDEX public."home_breathingapparatus_Incident_id_ba9b3191";
       public            bfpspc    false    226            �           1259    37700 '   home_dutypersonnel_Incident_id_7dc48488    INDEX     q   CREATE INDEX "home_dutypersonnel_Incident_id_7dc48488" ON public.home_dutypersonnel USING btree ("Incident_id");
 =   DROP INDEX public."home_dutypersonnel_Incident_id_7dc48488";
       public            bfpspc    false    228            �           1259    37701 (   home_dutypersonnel_Personnel_id_2130f168    INDEX     s   CREATE INDEX "home_dutypersonnel_Personnel_id_2130f168" ON public.home_dutypersonnel USING btree ("Personnel_id");
 >   DROP INDEX public."home_dutypersonnel_Personnel_id_2130f168";
       public            bfpspc    false    228            �           1259    37702    home_employee_Rank_id_7944e763    INDEX     _   CREATE INDEX "home_employee_Rank_id_7944e763" ON public.home_employee USING btree ("Rank_id");
 4   DROP INDEX public."home_employee_Rank_id_7944e763";
       public            bfpspc    false    230            �           1259    37703 +   home_extinguisingagent_Incident_id_75e232ed    INDEX     y   CREATE INDEX "home_extinguisingagent_Incident_id_75e232ed" ON public.home_extinguisingagent USING btree ("Incident_id");
 A   DROP INDEX public."home_extinguisingagent_Incident_id_75e232ed";
       public            bfpspc    false    234            �           1259    37704 "   home_hoseline_Incident_id_6beb00fa    INDEX     g   CREATE INDEX "home_hoseline_Incident_id_6beb00fa" ON public.home_hoseline USING btree ("Incident_id");
 8   DROP INDEX public."home_hoseline_Incident_id_6beb00fa";
       public            bfpspc    false    236            *           1259    38899 "   home_incident_Barangay_id_5674cce9    INDEX     g   CREATE INDEX "home_incident_Barangay_id_5674cce9" ON public.home_incident USING btree ("Barangay_id");
 8   DROP INDEX public."home_incident_Barangay_id_5674cce9";
       public            bfpspc    false    267            +           1259    38900    home_incident_Location_id    INDEX     Z   CREATE INDEX "home_incident_Location_id" ON public.home_incident USING gist ("Location");
 /   DROP INDEX public."home_incident_Location_id";
       public            bfpspc    false    267    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4    4            ,           1259    38901 0   home_incident_PersonnelReceivingCall_id_212a67ef    INDEX     �   CREATE INDEX "home_incident_PersonnelReceivingCall_id_212a67ef" ON public.home_incident USING btree ("PersonnelReceivingCall_id");
 F   DROP INDEX public."home_incident_PersonnelReceivingCall_id_212a67ef";
       public            bfpspc    false    267            �           1259    37705 (   home_incidentresponse_Engine_id_6613f45f    INDEX     s   CREATE INDEX "home_incidentresponse_Engine_id_6613f45f" ON public.home_incidentresponse USING btree ("Engine_id");
 >   DROP INDEX public."home_incidentresponse_Engine_id_6613f45f";
       public            bfpspc    false    239            �           1259    37706 *   home_incidentresponse_Incident_id_baed75f8    INDEX     w   CREATE INDEX "home_incidentresponse_Incident_id_baed75f8" ON public.home_incidentresponse USING btree ("Incident_id");
 @   DROP INDEX public."home_incidentresponse_Incident_id_baed75f8";
       public            bfpspc    false    239            �           1259    37707 "   home_investigator_Rank_id_34a0654f    INDEX     d   CREATE INDEX "home_investigator_Rank_id_34a0654f" ON public.home_personnel USING btree ("Rank_id");
 8   DROP INDEX public."home_investigator_Rank_id_34a0654f";
       public            bfpspc    false    241                        1259    37708 (   home_investigatorrank_Code_3f61e76b_like    INDEX     v   CREATE INDEX "home_investigatorrank_Code_3f61e76b_like" ON public.home_rank USING btree ("Code" varchar_pattern_ops);
 >   DROP INDEX public."home_investigatorrank_Code_3f61e76b_like";
       public            bfpspc    false    243                       1259    37709    home_rank_Code_7c283788_like    INDEX     j   CREATE INDEX "home_rank_Code_7c283788_like" ON public.home_rank USING btree ("Code" varchar_pattern_ops);
 2   DROP INDEX public."home_rank_Code_7c283788_like";
       public            bfpspc    false    243                       1259    37710 '   home_ropeandladder_Incident_id_ece99883    INDEX     q   CREATE INDEX "home_ropeandladder_Incident_id_ece99883" ON public.home_ropeandladder USING btree ("Incident_id");
 =   DROP INDEX public."home_ropeandladder_Incident_id_ece99883";
       public            bfpspc    false    245            	           1259    37711 %   home_station_ChiefOfficer_id_092b29c7    INDEX     m   CREATE INDEX "home_station_ChiefOfficer_id_092b29c7" ON public.home_station USING btree ("ChiefOfficer_id");
 ;   DROP INDEX public."home_station_ChiefOfficer_id_092b29c7";
       public            bfpspc    false    247                       1259    37712 )   home_timealarmstatus_Incident_id_051e6b56    INDEX     u   CREATE INDEX "home_timealarmstatus_Incident_id_051e6b56" ON public.home_timealarmstatus USING btree ("Incident_id");
 ?   DROP INDEX public."home_timealarmstatus_Incident_id_051e6b56";
       public            bfpspc    false    249                       1259    37713 6   report_builder_displayfield_display_format_id_c649f0ea    INDEX     �   CREATE INDEX report_builder_displayfield_display_format_id_c649f0ea ON public.report_builder_displayfield USING btree (display_format_id);
 J   DROP INDEX public.report_builder_displayfield_display_format_id_c649f0ea;
       public            bfpspc    false    251                       1259    37714 .   report_builder_displayfield_report_id_642d3d44    INDEX     {   CREATE INDEX report_builder_displayfield_report_id_642d3d44 ON public.report_builder_displayfield USING btree (report_id);
 B   DROP INDEX public.report_builder_displayfield_report_id_642d3d44;
       public            bfpspc    false    251                       1259    37715 -   report_builder_filterfield_report_id_a5498074    INDEX     y   CREATE INDEX report_builder_filterfield_report_id_a5498074 ON public.report_builder_filterfield USING btree (report_id);
 A   DROP INDEX public.report_builder_filterfield_report_id_a5498074;
       public            bfpspc    false    253                       1259    37716 ,   report_builder_report_root_model_id_3bae34b3    INDEX     w   CREATE INDEX report_builder_report_root_model_id_3bae34b3 ON public.report_builder_report USING btree (root_model_id);
 @   DROP INDEX public.report_builder_report_root_model_id_3bae34b3;
       public            bfpspc    false    257                       1259    37717 #   report_builder_report_slug_559601ba    INDEX     e   CREATE INDEX report_builder_report_slug_559601ba ON public.report_builder_report USING btree (slug);
 7   DROP INDEX public.report_builder_report_slug_559601ba;
       public            bfpspc    false    257                       1259    37718 (   report_builder_report_slug_559601ba_like    INDEX     ~   CREATE INDEX report_builder_report_slug_559601ba_like ON public.report_builder_report USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.report_builder_report_slug_559601ba_like;
       public            bfpspc    false    257            #           1259    37719 0   report_builder_report_starred_report_id_0a54a683    INDEX        CREATE INDEX report_builder_report_starred_report_id_0a54a683 ON public.report_builder_report_starred USING btree (report_id);
 D   DROP INDEX public.report_builder_report_starred_report_id_0a54a683;
       public            bfpspc    false    259            &           1259    37720 .   report_builder_report_starred_user_id_70388cb5    INDEX     {   CREATE INDEX report_builder_report_starred_user_id_70388cb5 ON public.report_builder_report_starred USING btree (user_id);
 B   DROP INDEX public.report_builder_report_starred_user_id_70388cb5;
       public            bfpspc    false    259                       1259    37721 .   report_builder_report_user_created_id_e8133ae8    INDEX     {   CREATE INDEX report_builder_report_user_created_id_e8133ae8 ON public.report_builder_report USING btree (user_created_id);
 B   DROP INDEX public.report_builder_report_user_created_id_e8133ae8;
       public            bfpspc    false    257                        1259    37722 /   report_builder_report_user_modified_id_04e38ffb    INDEX     }   CREATE INDEX report_builder_report_user_modified_id_04e38ffb ON public.report_builder_report USING btree (user_modified_id);
 C   DROP INDEX public.report_builder_report_user_modified_id_04e38ffb;
       public            bfpspc    false    257            /           2606    37723 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          bfpspc    false    208    206    3772            0           2606    37728 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          bfpspc    false    3761    206    204            1           2606    37733 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          bfpspc    false    218    3797    208            2           2606    37738 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          bfpspc    false    204    211    3761            3           2606    37743 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          bfpspc    false    210    211    3774            4           2606    37748 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          bfpspc    false    214    208    3772            5           2606    37753 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          bfpspc    false    214    3774    210            6           2606    37758 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          bfpspc    false    218    3797    216            7           2606    37763 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          bfpspc    false    216    210    3774            8           2606    38902 R   home_alarmstatusuponarrival home_alarmstatusupon_Incident_id_b0c5e306_fk_home_inci    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_alarmstatusuponarrival
    ADD CONSTRAINT "home_alarmstatusupon_Incident_id_b0c5e306_fk_home_inci" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.home_alarmstatusuponarrival DROP CONSTRAINT "home_alarmstatusupon_Incident_id_b0c5e306_fk_home_inci";
       public          bfpspc    false    223    3886    267            9           2606    38907 N   home_breathingapparatus home_breathingappara_Incident_id_ba9b3191_fk_home_inci    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_breathingapparatus
    ADD CONSTRAINT "home_breathingappara_Incident_id_ba9b3191_fk_home_inci" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.home_breathingapparatus DROP CONSTRAINT "home_breathingappara_Incident_id_ba9b3191_fk_home_inci";
       public          bfpspc    false    267    3886    226            ;           2606    38912 N   home_dutypersonnel home_dutypersonnel_Incident_id_7dc48488_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_dutypersonnel
    ADD CONSTRAINT "home_dutypersonnel_Incident_id_7dc48488_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.home_dutypersonnel DROP CONSTRAINT "home_dutypersonnel_Incident_id_7dc48488_fk_home_incident_id";
       public          bfpspc    false    3886    228    267            :           2606    37768 P   home_dutypersonnel home_dutypersonnel_Personnel_id_2130f168_fk_home_personnel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_dutypersonnel
    ADD CONSTRAINT "home_dutypersonnel_Personnel_id_2130f168_fk_home_personnel_id" FOREIGN KEY ("Personnel_id") REFERENCES public.home_personnel(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.home_dutypersonnel DROP CONSTRAINT "home_dutypersonnel_Personnel_id_2130f168_fk_home_personnel_id";
       public          bfpspc    false    228    241    3839            <           2606    37773 <   home_employee home_employee_Rank_id_7944e763_fk_home_rank_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT "home_employee_Rank_id_7944e763_fk_home_rank_id" FOREIGN KEY ("Rank_id") REFERENCES public.home_rank(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT "home_employee_Rank_id_7944e763_fk_home_rank_id";
       public          bfpspc    false    230    3842    243            =           2606    37778 <   home_employee home_employee_user_id_742a783f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_employee
    ADD CONSTRAINT home_employee_user_id_742a783f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.home_employee DROP CONSTRAINT home_employee_user_id_742a783f_fk_auth_user_id;
       public          bfpspc    false    230    3774    210            >           2606    38917 V   home_extinguisingagent home_extinguisingagent_Incident_id_75e232ed_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_extinguisingagent
    ADD CONSTRAINT "home_extinguisingagent_Incident_id_75e232ed_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.home_extinguisingagent DROP CONSTRAINT "home_extinguisingagent_Incident_id_75e232ed_fk_home_incident_id";
       public          bfpspc    false    234    3886    267            ?           2606    38922 D   home_hoseline home_hoseline_Incident_id_6beb00fa_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_hoseline
    ADD CONSTRAINT "home_hoseline_Incident_id_6beb00fa_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.home_hoseline DROP CONSTRAINT "home_hoseline_Incident_id_6beb00fa_fk_home_incident_id";
       public          bfpspc    false    236    3886    267            N           2606    38927 D   home_incident home_incident_Barangay_id_5674cce9_fk_home_barangay_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incident
    ADD CONSTRAINT "home_incident_Barangay_id_5674cce9_fk_home_barangay_id" FOREIGN KEY ("Barangay_id") REFERENCES public.home_barangay(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.home_incident DROP CONSTRAINT "home_incident_Barangay_id_5674cce9_fk_home_barangay_id";
       public          bfpspc    false    267    3881    266            O           2606    38932 F   home_incident home_incident_PersonnelReceivingCa_212a67ef_fk_home_pers    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incident
    ADD CONSTRAINT "home_incident_PersonnelReceivingCa_212a67ef_fk_home_pers" FOREIGN KEY ("PersonnelReceivingCall_id") REFERENCES public.home_personnel(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.home_incident DROP CONSTRAINT "home_incident_PersonnelReceivingCa_212a67ef_fk_home_pers";
       public          bfpspc    false    3839    267    241            @           2606    37783 Q   home_incidentresponse home_incidentresponse_Engine_id_6613f45f_fk_home_engines_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT "home_incidentresponse_Engine_id_6613f45f_fk_home_engines_id" FOREIGN KEY ("Engine_id") REFERENCES public.home_engines(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT "home_incidentresponse_Engine_id_6613f45f_fk_home_engines_id";
       public          bfpspc    false    3822    239    232            A           2606    38937 T   home_incidentresponse home_incidentresponse_Incident_id_baed75f8_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_incidentresponse
    ADD CONSTRAINT "home_incidentresponse_Incident_id_baed75f8_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.home_incidentresponse DROP CONSTRAINT "home_incidentresponse_Incident_id_baed75f8_fk_home_incident_id";
       public          bfpspc    false    3886    239    267            B           2606    37788 >   home_personnel home_personnel_Rank_id_f687dbe4_fk_home_rank_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_personnel
    ADD CONSTRAINT "home_personnel_Rank_id_f687dbe4_fk_home_rank_id" FOREIGN KEY ("Rank_id") REFERENCES public.home_rank(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.home_personnel DROP CONSTRAINT "home_personnel_Rank_id_f687dbe4_fk_home_rank_id";
       public          bfpspc    false    243    241    3842            C           2606    38942 N   home_ropeandladder home_ropeandladder_Incident_id_ece99883_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_ropeandladder
    ADD CONSTRAINT "home_ropeandladder_Incident_id_ece99883_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.home_ropeandladder DROP CONSTRAINT "home_ropeandladder_Incident_id_ece99883_fk_home_incident_id";
       public          bfpspc    false    3886    267    245            D           2606    37793 G   home_station home_station_ChiefOfficer_id_092b29c7_fk_home_personnel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_station
    ADD CONSTRAINT "home_station_ChiefOfficer_id_092b29c7_fk_home_personnel_id" FOREIGN KEY ("ChiefOfficer_id") REFERENCES public.home_personnel(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.home_station DROP CONSTRAINT "home_station_ChiefOfficer_id_092b29c7_fk_home_personnel_id";
       public          bfpspc    false    241    247    3839            E           2606    38947 R   home_timealarmstatus home_timealarmstatus_Incident_id_051e6b56_fk_home_incident_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_timealarmstatus
    ADD CONSTRAINT "home_timealarmstatus_Incident_id_051e6b56_fk_home_incident_id" FOREIGN KEY ("Incident_id") REFERENCES public.home_incident(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.home_timealarmstatus DROP CONSTRAINT "home_timealarmstatus_Incident_id_051e6b56_fk_home_incident_id";
       public          bfpspc    false    249    3886    267            F           2606    37798 X   report_builder_displayfield report_builder_displ_display_format_id_c649f0ea_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_displayfield
    ADD CONSTRAINT report_builder_displ_display_format_id_c649f0ea_fk_report_bu FOREIGN KEY (display_format_id) REFERENCES public.report_builder_format(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displ_display_format_id_c649f0ea_fk_report_bu;
       public          bfpspc    false    3865    255    251            G           2606    37803 P   report_builder_displayfield report_builder_displ_report_id_642d3d44_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_displayfield
    ADD CONSTRAINT report_builder_displ_report_id_642d3d44_fk_report_bu FOREIGN KEY (report_id) REFERENCES public.report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displ_report_id_642d3d44_fk_report_bu;
       public          bfpspc    false    257    251    3867            H           2606    37808 O   report_builder_filterfield report_builder_filte_report_id_a5498074_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_filterfield
    ADD CONSTRAINT report_builder_filte_report_id_a5498074_fk_report_bu FOREIGN KEY (report_id) REFERENCES public.report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.report_builder_filterfield DROP CONSTRAINT report_builder_filte_report_id_a5498074_fk_report_bu;
       public          bfpspc    false    253    257    3867            L           2606    37813 R   report_builder_report_starred report_builder_repor_report_id_0a54a683_fk_report_bu    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_repor_report_id_0a54a683_fk_report_bu FOREIGN KEY (report_id) REFERENCES public.report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_repor_report_id_0a54a683_fk_report_bu;
       public          bfpspc    false    259    3867    257            I           2606    37818 N   report_builder_report report_builder_repor_root_model_id_3bae34b3_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_repor_root_model_id_3bae34b3_fk_django_co FOREIGN KEY (root_model_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_repor_root_model_id_3bae34b3_fk_django_co;
       public          bfpspc    false    218    257    3797            M           2606    37823 \   report_builder_report_starred report_builder_report_starred_user_id_70388cb5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_user_id_70388cb5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_user_id_70388cb5_fk_auth_user_id;
       public          bfpspc    false    3774    210    259            J           2606    37828 T   report_builder_report report_builder_report_user_created_id_e8133ae8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_report_user_created_id_e8133ae8_fk_auth_user_id FOREIGN KEY (user_created_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_user_created_id_e8133ae8_fk_auth_user_id;
       public          bfpspc    false    3774    210    257            K           2606    37833 U   report_builder_report report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.report_builder_report
    ADD CONSTRAINT report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id FOREIGN KEY (user_modified_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id;
       public          bfpspc    false    257    210    3774           