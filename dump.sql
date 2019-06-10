--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id;
ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse;
ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse;
ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco;
ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim;
ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user;
ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco;
ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco;
ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user;
ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id;
ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammembers_tag_id_73959981_fk_taggit_ta;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammembers_content_object_id_023d4610_fk_projects_;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.projects_teamindexpage DROP CONSTRAINT projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializat_page_ptr_id_fa24395a_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationindexpage DROP CONSTRAINT projects_specializat_page_ptr_id_a20c5746_fk_wagtailco;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_image_id_d50212f0_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.projects_projectmetric DROP CONSTRAINT projects_projectmetr_project_id_b982bf7a_fk_projects_;
ALTER TABLE ONLY public.main_rodopassadvert DROP CONSTRAINT main_rodopassadvert_page_id_947351d7_fk_main_home;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_newsindexpage DROP CONSTRAINT main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_jobofferindexpage DROP CONSTRAINT main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco;
ALTER TABLE ONLY public.main_homepage DROP CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_page_id_d41469c7_fk_main_homepage_page_ptr_id;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_page_id_ea52fbe3_fk_main_home;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.wagtailsearch_querydailyhits_query_id_2185994b;
DROP INDEX public.wagtailsearch_query_query_string_e785ea07_like;
DROP INDEX public.wagtailsearch_editorspick_query_id_c6eee4a0;
DROP INDEX public.wagtailsearch_editorspick_page_id_28cbc274;
DROP INDEX public.wagtailredirects_redirect_site_id_780a0e1e;
DROP INDEX public.wagtailredirects_redirect_redirect_page_id_b5728a8f;
DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b_like;
DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b;
DROP INDEX public.wagtailimages_rendition_image_id_3e1fd774;
DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201_like;
DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201;
DROP INDEX public.wagtailimages_image_uploaded_by_user_id_5d73dc75;
DROP INDEX public.wagtailimages_image_created_at_86fa6cd4;
DROP INDEX public.wagtailimages_image_collection_id_c2f8af7e;
DROP INDEX public.wagtailforms_formsubmission_page_id_e48e93e7;
DROP INDEX public.wagtaildocs_document_uploaded_by_user_id_17258b41;
DROP INDEX public.wagtaildocs_document_collection_id_23881625;
DROP INDEX public.wagtailcore_site_root_page_id_e02fb95c;
DROP INDEX public.wagtailcore_site_hostname_96b20b46_like;
DROP INDEX public.wagtailcore_site_hostname_96b20b46;
DROP INDEX public.wagtailcore_pageviewrestriction_page_id_15a8bea6;
DROP INDEX public.wagtailcore_pageviewrestriction_groups_group_id_6460f223;
DROP INDEX public.wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a;
DROP INDEX public.wagtailcore_pagerevision_user_id_2409d2f4;
DROP INDEX public.wagtailcore_pagerevision_submitted_for_moderation_c682e44c;
DROP INDEX public.wagtailcore_pagerevision_page_id_d421cc1d;
DROP INDEX public.wagtailcore_pagerevision_created_at_66954e3b;
DROP INDEX public.wagtailcore_page_slug_e7c11b8f_like;
DROP INDEX public.wagtailcore_page_slug_e7c11b8f;
DROP INDEX public.wagtailcore_page_path_98eba2c8_like;
DROP INDEX public.wagtailcore_page_owner_id_fbf7c332;
DROP INDEX public.wagtailcore_page_live_revision_id_930bd822;
DROP INDEX public.wagtailcore_page_first_published_at_2b5dd637;
DROP INDEX public.wagtailcore_page_content_type_id_c28424df;
DROP INDEX public.wagtailcore_grouppagepermission_page_id_710b114a;
DROP INDEX public.wagtailcore_grouppagepermission_group_id_fc07e671;
DROP INDEX public.wagtailcore_groupcollectionpermission_permission_id_1b626275;
DROP INDEX public.wagtailcore_groupcollectionpermission_group_id_05d61460;
DROP INDEX public.wagtailcore_groupcollectionpermission_collection_id_5423575a;
DROP INDEX public.wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3;
DROP INDEX public.wagtailcore_collectionviewrestriction_collection_id_761908ec;
DROP INDEX public.wagtailcore_collectionview_collectionviewrestriction__47320efd;
DROP INDEX public.wagtailcore_collection_path_d848dc19_like;
DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
DROP INDEX public.taggit_tag_slug_6be58b2c_like;
DROP INDEX public.taggit_tag_name_58eb2ed9_like;
DROP INDEX public.projects_teammemberspecializationtag_tag_id_73959981;
DROP INDEX public.projects_teammemberspecializationtag_content_object_id_023d4610;
DROP INDEX public.projects_teammember_photo_id_10ff7e07;
DROP INDEX public.projects_projectpage_image_id_d50212f0;
DROP INDEX public.projects_projectpage_icon_id_1145692d;
DROP INDEX public.projects_projectmetric_project_id_b982bf7a;
DROP INDEX public.main_newspage_photo_id_ff5a2d19;
DROP INDEX public.main_cooperatorlogo_page_id_ea52fbe3;
DROP INDEX public.main_cooperatorlogo_image_id_16147108;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.constance_config_key_baef3136_like;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_key;
ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_pkey;
ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq;
ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_pkey;
ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_query_string_key;
ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_pkey;
ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editorspick_pkey;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_pkey;
ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq;
ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_pkey;
ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq;
ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_pkey;
ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsubmission_pkey;
ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq;
ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_pkey;
ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_pkey;
ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_pkey;
ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageviewrestriction_pkey;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey;
ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq;
ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_pkey;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_pkey;
ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_path_key;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppagepermission_pkey;
ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollectionpermission_pkey;
ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collectionviewrestriction_pkey;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey;
ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq;
ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_pkey;
ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_path_key;
ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammemberspecializationtag_pkey;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_pkey;
ALTER TABLE ONLY public.projects_teamindexpage DROP CONSTRAINT projects_teamindexpage_pkey;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializationpage_pkey;
ALTER TABLE ONLY public.projects_specializationindexpage DROP CONSTRAINT projects_specializationindexpage_pkey;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_pkey;
ALTER TABLE ONLY public.projects_projectmetric DROP CONSTRAINT projects_projectmetric_pkey;
ALTER TABLE ONLY public.main_rodopassadvert DROP CONSTRAINT main_rodopassadvert_pkey;
ALTER TABLE ONLY public.main_rodopassadvert DROP CONSTRAINT main_rodopassadvert_page_id_key;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_pkey;
ALTER TABLE ONLY public.main_newsindexpage DROP CONSTRAINT main_newsindexpage_pkey;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_pkey;
ALTER TABLE ONLY public.main_jobofferindexpage DROP CONSTRAINT main_jobofferindexpage_pkey;
ALTER TABLE ONLY public.main_homepage DROP CONSTRAINT main_homepage_pkey;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_pkey;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_page_id_key;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.constance_config DROP CONSTRAINT constance_config_pkey;
ALTER TABLE ONLY public.constance_config DROP CONSTRAINT constance_config_key_key;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.wagtailusers_userprofile ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailsearch_querydailyhits ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailsearch_query ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailsearch_editorspick ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailredirects_redirect ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailimages_rendition ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailimages_image ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailforms_formsubmission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailembeds_embed ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtaildocs_document ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_pageviewrestriction ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_pagerevision ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_page ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_grouppagepermission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_groupcollectionpermission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_collectionviewrestriction ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wagtailcore_collection ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_teammemberspecializationtag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_projectmetric ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_rodopassadvert ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_footer ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_cooperatorlogo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.constance_config ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.wagtailusers_userprofile_id_seq;
DROP TABLE public.wagtailusers_userprofile;
DROP SEQUENCE public.wagtailsearch_querydailyhits_id_seq;
DROP TABLE public.wagtailsearch_querydailyhits;
DROP SEQUENCE public.wagtailsearch_query_id_seq;
DROP TABLE public.wagtailsearch_query;
DROP SEQUENCE public.wagtailsearch_editorspick_id_seq;
DROP TABLE public.wagtailsearch_editorspick;
DROP SEQUENCE public.wagtailredirects_redirect_id_seq;
DROP TABLE public.wagtailredirects_redirect;
DROP SEQUENCE public.wagtailimages_rendition_id_seq;
DROP TABLE public.wagtailimages_rendition;
DROP SEQUENCE public.wagtailimages_image_id_seq;
DROP TABLE public.wagtailimages_image;
DROP SEQUENCE public.wagtailforms_formsubmission_id_seq;
DROP TABLE public.wagtailforms_formsubmission;
DROP SEQUENCE public.wagtailembeds_embed_id_seq;
DROP TABLE public.wagtailembeds_embed;
DROP SEQUENCE public.wagtaildocs_document_id_seq;
DROP TABLE public.wagtaildocs_document;
DROP SEQUENCE public.wagtailcore_site_id_seq;
DROP TABLE public.wagtailcore_site;
DROP SEQUENCE public.wagtailcore_pageviewrestriction_id_seq;
DROP SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq;
DROP TABLE public.wagtailcore_pageviewrestriction_groups;
DROP TABLE public.wagtailcore_pageviewrestriction;
DROP SEQUENCE public.wagtailcore_pagerevision_id_seq;
DROP TABLE public.wagtailcore_pagerevision;
DROP SEQUENCE public.wagtailcore_page_id_seq;
DROP TABLE public.wagtailcore_page;
DROP SEQUENCE public.wagtailcore_grouppagepermission_id_seq;
DROP TABLE public.wagtailcore_grouppagepermission;
DROP SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq;
DROP TABLE public.wagtailcore_groupcollectionpermission;
DROP SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq;
DROP SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq;
DROP TABLE public.wagtailcore_collectionviewrestriction_groups;
DROP TABLE public.wagtailcore_collectionviewrestriction;
DROP SEQUENCE public.wagtailcore_collection_id_seq;
DROP TABLE public.wagtailcore_collection;
DROP SEQUENCE public.taggit_taggeditem_id_seq;
DROP TABLE public.taggit_taggeditem;
DROP SEQUENCE public.taggit_tag_id_seq;
DROP TABLE public.taggit_tag;
DROP SEQUENCE public.projects_teammemberspecializationtag_id_seq;
DROP TABLE public.projects_teammemberspecializationtag;
DROP TABLE public.projects_teammember;
DROP TABLE public.projects_teamindexpage;
DROP TABLE public.projects_specializationpage;
DROP TABLE public.projects_specializationindexpage;
DROP TABLE public.projects_projectpage;
DROP SEQUENCE public.projects_projectmetric_id_seq;
DROP TABLE public.projects_projectmetric;
DROP SEQUENCE public.main_rodopassadvert_id_seq;
DROP TABLE public.main_rodopassadvert;
DROP TABLE public.main_newspage;
DROP TABLE public.main_newsindexpage;
DROP TABLE public.main_jobofferpage;
DROP TABLE public.main_jobofferindexpage;
DROP TABLE public.main_homepage;
DROP SEQUENCE public.main_footer_id_seq;
DROP TABLE public.main_footer;
DROP SEQUENCE public.main_cooperatorlogo_id_seq;
DROP TABLE public.main_cooperatorlogo;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.constance_config_id_seq;
DROP TABLE public.constance_config;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
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
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
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
    codename character varying(100) NOT NULL
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


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
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
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
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
-- Name: constance_config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.constance_config (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


--
-- Name: constance_config_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.constance_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: constance_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.constance_config_id_seq OWNED BY public.constance_config.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
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
    model character varying(100) NOT NULL
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
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
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
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: main_cooperatorlogo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_cooperatorlogo (
    id integer NOT NULL,
    sort_order integer,
    image_id integer NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_cooperatorlogo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_cooperatorlogo_id_seq OWNED BY public.main_cooperatorlogo.id;


--
-- Name: main_footer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_footer (
    id integer NOT NULL,
    contact text NOT NULL,
    contact_pl text,
    contact_en text,
    address text NOT NULL,
    address_pl text,
    address_en text,
    how_we_work text NOT NULL,
    how_we_work_pl text,
    how_we_work_en text,
    privacy_policy character varying(200) NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: main_footer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_footer_id_seq OWNED BY public.main_footer.id;


--
-- Name: main_homepage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_homepage (
    page_ptr_id integer NOT NULL,
    header character varying(255) NOT NULL,
    header_en character varying(255),
    header_pl character varying(255),
    r_and_d_center_body character varying(256),
    r_and_d_center_headline character varying(128),
    specializations_headline character varying(128) NOT NULL,
    r_and_d_center_body_en character varying(256),
    r_and_d_center_body_pl character varying(256),
    r_and_d_center_headline_en character varying(128),
    r_and_d_center_headline_pl character varying(128),
    specializations_headline_en character varying(128),
    specializations_headline_pl character varying(128)
);


--
-- Name: main_jobofferindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_jobofferindexpage (
    page_ptr_id integer NOT NULL,
    cooperation character varying(500) NOT NULL,
    cooperation_pl character varying(500),
    cooperation_en character varying(500),
    recruitment text NOT NULL,
    recruitment_pl text,
    recruitment_en text
);


--
-- Name: main_jobofferpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_jobofferpage (
    page_ptr_id integer NOT NULL,
    salary character varying(50) NOT NULL,
    employment_form character varying(50) NOT NULL,
    body text NOT NULL,
    body_pl text,
    body_en text
);


--
-- Name: main_newsindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_newsindexpage (
    page_ptr_id integer NOT NULL
);


--
-- Name: main_newspage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_newspage (
    page_ptr_id integer NOT NULL,
    headline character varying(500) NOT NULL,
    headline_pl character varying(500),
    headline_en character varying(500),
    publication_date date NOT NULL,
    body text NOT NULL,
    body_pl text,
    body_en text,
    photo_id integer,
    marked boolean NOT NULL
);


--
-- Name: main_rodopassadvert; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_rodopassadvert (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    title_pl character varying(50),
    title_en character varying(50),
    description character varying(256) NOT NULL,
    description_pl character varying(256),
    description_en character varying(256),
    url character varying(200) NOT NULL,
    button_text character varying(50) NOT NULL,
    button_text_pl character varying(50),
    button_text_en character varying(50),
    page_id integer NOT NULL
);


--
-- Name: main_rodopassadvert_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_rodopassadvert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_rodopassadvert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_rodopassadvert_id_seq OWNED BY public.main_rodopassadvert.id;


--
-- Name: projects_projectmetric; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_projectmetric (
    id integer NOT NULL,
    sort_order integer,
    value character varying(31) NOT NULL,
    property_name character varying(63) NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_projectmetric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_projectmetric_id_seq OWNED BY public.projects_projectmetric.id;


--
-- Name: projects_projectpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_projectpage (
    page_ptr_id integer NOT NULL,
    subtitle character varying(255) NOT NULL,
    subtitle_en character varying(255),
    subtitle_pl character varying(255),
    challenge text,
    challenge_en text,
    challenge_pl text,
    process text,
    process_en text,
    process_pl text,
    quote text,
    quote_en text,
    quote_pl text,
    self_initiated boolean NOT NULL,
    image_id integer,
    icon_id integer,
    short_name character varying(32) NOT NULL
);


--
-- Name: projects_specializationindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_specializationindexpage (
    page_ptr_id integer NOT NULL
);


--
-- Name: projects_specializationpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_specializationpage (
    page_ptr_id integer NOT NULL,
    how_we_work text NOT NULL,
    how_we_work_en text,
    how_we_work_pl text,
    case_study text,
    case_study_en text,
    case_study_pl text,
    tools text,
    tools_en text,
    tools_pl text,
    long_name character varying(64) NOT NULL,
    short_description text NOT NULL,
    long_name_en character varying(64),
    long_name_pl character varying(64),
    short_description_en text,
    short_description_pl text
);


--
-- Name: projects_teamindexpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_teamindexpage (
    page_ptr_id integer NOT NULL,
    who_we_are text NOT NULL,
    who_we_are_pl text,
    who_we_are_en text,
    our_values text NOT NULL,
    our_values_pl text,
    our_values_en text
);


--
-- Name: projects_teammember; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_teammember (
    page_ptr_id integer NOT NULL,
    name character varying(128) NOT NULL,
    photo_id integer,
    long_description character varying(516) NOT NULL,
    long_description_en character varying(516),
    long_description_pl character varying(516),
    short_description character varying(128) NOT NULL,
    short_description_en character varying(128),
    short_description_pl character varying(128)
);


--
-- Name: projects_teammemberspecializationtag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_teammemberspecializationtag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_teammemberspecializationtag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_teammemberspecializationtag_id_seq OWNED BY public.projects_teammemberspecializationtag.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    seo_title_pl character varying(255),
    seo_title_en character varying(255),
    search_description_pl text,
    search_description_en text,
    url_path_pl text,
    url_path_en text,
    slug_pl character varying(255),
    slug_en character varying(255),
    title_pl character varying(255),
    title_en character varying(255),
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(255),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


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
-- Name: constance_config id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config ALTER COLUMN id SET DEFAULT nextval('public.constance_config_id_seq'::regclass);


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
-- Name: main_cooperatorlogo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo ALTER COLUMN id SET DEFAULT nextval('public.main_cooperatorlogo_id_seq'::regclass);


--
-- Name: main_footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer ALTER COLUMN id SET DEFAULT nextval('public.main_footer_id_seq'::regclass);


--
-- Name: main_rodopassadvert id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_rodopassadvert ALTER COLUMN id SET DEFAULT nextval('public.main_rodopassadvert_id_seq'::regclass);


--
-- Name: projects_projectmetric id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric ALTER COLUMN id SET DEFAULT nextval('public.projects_projectmetric_id_seq'::regclass);


--
-- Name: projects_teammemberspecializationtag id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag ALTER COLUMN id SET DEFAULT nextval('public.projects_teammemberspecializationtag_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	2	1
3	1	2
4	1	3
5	1	4
6	2	2
7	2	3
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can access Wagtail admin	2	access_admin
2	Can add document	3	add_document
3	Can change document	3	change_document
4	Can delete document	3	delete_document
5	Can add image	4	add_image
6	Can change image	4	change_image
7	Can delete image	4	delete_image
8	Can add log entry	5	add_logentry
9	Can change log entry	5	change_logentry
10	Can delete log entry	5	delete_logentry
11	Can view log entry	5	view_logentry
12	Can change config	6	change_config
13	Can add permission	7	add_permission
14	Can change permission	7	change_permission
15	Can delete permission	7	delete_permission
16	Can view permission	7	view_permission
17	Can add group	8	add_group
18	Can change group	8	change_group
19	Can delete group	8	delete_group
20	Can view group	8	view_group
21	Can add user	9	add_user
22	Can change user	9	change_user
23	Can delete user	9	delete_user
24	Can view user	9	view_user
25	Can add content type	10	add_contenttype
26	Can change content type	10	change_contenttype
27	Can delete content type	10	delete_contenttype
28	Can view content type	10	view_contenttype
29	Can add session	11	add_session
30	Can change session	11	change_session
31	Can delete session	11	delete_session
32	Can view session	11	view_session
33	Can add constance	12	add_constance
34	Can change constance	12	change_constance
35	Can delete constance	12	delete_constance
36	Can view constance	12	view_constance
37	Can add form submission	13	add_formsubmission
38	Can change form submission	13	change_formsubmission
39	Can delete form submission	13	delete_formsubmission
40	Can view form submission	13	view_formsubmission
41	Can add redirect	14	add_redirect
42	Can change redirect	14	change_redirect
43	Can delete redirect	14	delete_redirect
44	Can view redirect	14	view_redirect
45	Can add embed	15	add_embed
46	Can change embed	15	change_embed
47	Can delete embed	15	delete_embed
48	Can view embed	15	view_embed
49	Can add user profile	16	add_userprofile
50	Can change user profile	16	change_userprofile
51	Can delete user profile	16	delete_userprofile
52	Can view user profile	16	view_userprofile
53	Can view document	3	view_document
54	Can view image	4	view_image
55	Can add rendition	17	add_rendition
56	Can change rendition	17	change_rendition
57	Can delete rendition	17	delete_rendition
58	Can view rendition	17	view_rendition
59	Can add query	18	add_query
60	Can change query	18	change_query
61	Can delete query	18	delete_query
62	Can view query	18	view_query
63	Can add Query Daily Hits	19	add_querydailyhits
64	Can change Query Daily Hits	19	change_querydailyhits
65	Can delete Query Daily Hits	19	delete_querydailyhits
66	Can view Query Daily Hits	19	view_querydailyhits
67	Can add page	1	add_page
68	Can change page	1	change_page
69	Can delete page	1	delete_page
70	Can view page	1	view_page
71	Can add group page permission	20	add_grouppagepermission
72	Can change group page permission	20	change_grouppagepermission
73	Can delete group page permission	20	delete_grouppagepermission
74	Can view group page permission	20	view_grouppagepermission
75	Can add page revision	21	add_pagerevision
76	Can change page revision	21	change_pagerevision
77	Can delete page revision	21	delete_pagerevision
78	Can view page revision	21	view_pagerevision
79	Can add page view restriction	22	add_pageviewrestriction
80	Can change page view restriction	22	change_pageviewrestriction
81	Can delete page view restriction	22	delete_pageviewrestriction
82	Can view page view restriction	22	view_pageviewrestriction
83	Can add site	23	add_site
84	Can change site	23	change_site
85	Can delete site	23	delete_site
86	Can view site	23	view_site
87	Can add collection	24	add_collection
88	Can change collection	24	change_collection
89	Can delete collection	24	delete_collection
90	Can view collection	24	view_collection
91	Can add group collection permission	25	add_groupcollectionpermission
92	Can change group collection permission	25	change_groupcollectionpermission
93	Can delete group collection permission	25	delete_groupcollectionpermission
94	Can view group collection permission	25	view_groupcollectionpermission
95	Can add collection view restriction	26	add_collectionviewrestriction
96	Can change collection view restriction	26	change_collectionviewrestriction
97	Can delete collection view restriction	26	delete_collectionviewrestriction
98	Can view collection view restriction	26	view_collectionviewrestriction
99	Can add Tag	27	add_tag
100	Can change Tag	27	change_tag
101	Can delete Tag	27	delete_tag
102	Can view Tag	27	view_tag
103	Can add Tagged Item	28	add_taggeditem
104	Can change Tagged Item	28	change_taggeditem
105	Can delete Tagged Item	28	delete_taggeditem
106	Can view Tagged Item	28	view_taggeditem
107	Can add home page	29	add_homepage
108	Can change home page	29	change_homepage
109	Can delete home page	29	delete_homepage
110	Can view home page	29	view_homepage
111	Can add project page	30	add_projectpage
112	Can change project page	30	change_projectpage
113	Can delete project page	30	delete_projectpage
114	Can view project page	30	view_projectpage
115	Can add specialization page	31	add_specializationpage
116	Can change specialization page	31	change_specializationpage
117	Can delete specialization page	31	delete_specializationpage
118	Can view specialization page	31	view_specializationpage
119	Can add specialization index page	32	add_specializationindexpage
120	Can change specialization index page	32	change_specializationindexpage
121	Can delete specialization index page	32	delete_specializationindexpage
122	Can view specialization index page	32	view_specializationindexpage
123	Can add project metric	33	add_projectmetric
124	Can change project metric	33	change_projectmetric
125	Can delete project metric	33	delete_projectmetric
126	Can view project metric	33	view_projectmetric
127	Can add news page	34	add_newspage
128	Can change news page	34	change_newspage
129	Can delete news page	34	delete_newspage
130	Can view news page	34	view_newspage
131	Can add job offer page	35	add_jobofferpage
132	Can change job offer page	35	change_jobofferpage
133	Can delete job offer page	35	delete_jobofferpage
134	Can view job offer page	35	view_jobofferpage
135	Can add job offer index page	36	add_jobofferindexpage
136	Can change job offer index page	36	change_jobofferindexpage
137	Can delete job offer index page	36	delete_jobofferindexpage
138	Can view job offer index page	36	view_jobofferindexpage
139	Can add news index page	37	add_newsindexpage
140	Can change news index page	37	change_newsindexpage
141	Can delete news index page	37	delete_newsindexpage
142	Can view news index page	37	view_newsindexpage
143	Can add cooperator logo	38	add_cooperatorlogo
144	Can change cooperator logo	38	change_cooperatorlogo
145	Can delete cooperator logo	38	delete_cooperatorlogo
146	Can view cooperator logo	38	view_cooperatorlogo
147	Can add rodo pass advert	39	add_rodopassadvert
148	Can change rodo pass advert	39	change_rodopassadvert
149	Can delete rodo pass advert	39	delete_rodopassadvert
150	Can view rodo pass advert	39	view_rodopassadvert
151	Can add partner logo	40	add_partnerlogo
152	Can change partner logo	40	change_partnerlogo
153	Can delete partner logo	40	delete_partnerlogo
154	Can view partner logo	40	view_partnerlogo
155	Can add footer	41	add_footer
156	Can change footer	41	change_footer
157	Can delete footer	41	delete_footer
158	Can view footer	41	view_footer
159	Can add team member specialization tag	42	add_teammemberspecializationtag
160	Can change team member specialization tag	42	change_teammemberspecializationtag
161	Can delete team member specialization tag	42	delete_teammemberspecializationtag
162	Can view team member specialization tag	42	view_teammemberspecializationtag
163	Can add team index page	43	add_teamindexpage
164	Can change team index page	43	change_teamindexpage
165	Can delete team index page	43	delete_teamindexpage
166	Can view team index page	43	view_teamindexpage
167	Can add team member	44	add_teammember
168	Can change team member	44	change_teammember
169	Can delete team member	44	delete_teammember
170	Can view team member	44	view_teammember
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$yk7wEAymEBko$WedEbfGoOb89VVFY2dhEZMqbVQQ3WP4sBxEeNI2JGa0=	2019-05-30 15:13:32.062504+02	t	kamil			kamil@wp.pl	t	t	2019-05-20 11:39:22.280926+02
2	pbkdf2_sha256$150000$JOIjOre6b5SR$PnDqPnZbWHl8ILr1rxglPAigwzyu/TAJm303hr6/S2g=	2019-05-31 11:07:34.684026+02	t	admin	admin	admin	kamil.radomski@laboratorium.ee	f	t	2019-05-31 11:07:15.94497+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	2	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: constance_config; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.constance_config (id, key, value) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailadmin	admin
3	wagtaildocs	document
4	wagtailimages	image
5	admin	logentry
6	constance	config
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
12	database	constance
13	wagtailforms	formsubmission
14	wagtailredirects	redirect
15	wagtailembeds	embed
16	wagtailusers	userprofile
17	wagtailimages	rendition
18	wagtailsearch	query
19	wagtailsearch	querydailyhits
20	wagtailcore	grouppagepermission
21	wagtailcore	pagerevision
22	wagtailcore	pageviewrestriction
23	wagtailcore	site
24	wagtailcore	collection
25	wagtailcore	groupcollectionpermission
26	wagtailcore	collectionviewrestriction
27	taggit	tag
28	taggit	taggeditem
29	main	homepage
30	projects	projectpage
31	projects	specializationpage
32	projects	specializationindexpage
33	projects	projectmetric
34	main	newspage
35	main	jobofferpage
36	main	jobofferindexpage
37	main	newsindexpage
38	main	cooperatorlogo
39	main	rodopassadvert
40	main	partnerlogo
41	main	footer
42	projects	teammemberspecializationtag
43	projects	teamindexpage
44	projects	teammember
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-05-20 11:01:31.006167+02
2	auth	0001_initial	2019-05-20 11:01:31.12972+02
3	admin	0001_initial	2019-05-20 11:01:31.283144+02
4	admin	0002_logentry_remove_auto_add	2019-05-20 11:01:31.325779+02
5	admin	0003_logentry_add_action_flag_choices	2019-05-20 11:01:31.338674+02
6	contenttypes	0002_remove_content_type_name	2019-05-20 11:01:31.370891+02
7	auth	0002_alter_permission_name_max_length	2019-05-20 11:01:31.378686+02
8	auth	0003_alter_user_email_max_length	2019-05-20 11:01:31.392596+02
9	auth	0004_alter_user_username_opts	2019-05-20 11:01:31.408143+02
10	auth	0005_alter_user_last_login_null	2019-05-20 11:01:31.41963+02
11	auth	0006_require_contenttypes_0002	2019-05-20 11:01:31.422248+02
12	auth	0007_alter_validators_add_error_messages	2019-05-20 11:01:31.434605+02
13	auth	0008_alter_user_username_max_length	2019-05-20 11:01:31.450145+02
14	auth	0009_alter_user_last_name_max_length	2019-05-20 11:01:31.467729+02
15	auth	0010_alter_group_name_max_length	2019-05-20 11:01:31.480962+02
16	auth	0011_update_proxy_permissions	2019-05-20 11:01:31.502422+02
17	database	0001_initial	2019-05-20 11:01:31.534418+02
18	wagtailcore	0001_initial	2019-05-20 11:01:31.797097+02
19	wagtailcore	0002_initial_data	2019-05-20 11:01:31.799028+02
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2019-05-20 11:01:31.80071+02
21	wagtailcore	0004_page_locked	2019-05-20 11:01:31.802394+02
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2019-05-20 11:01:31.803886+02
23	wagtailcore	0006_add_lock_page_permission	2019-05-20 11:01:31.805496+02
24	wagtailcore	0007_page_latest_revision_created_at	2019-05-20 11:01:31.806897+02
25	wagtailcore	0008_populate_latest_revision_created_at	2019-05-20 11:01:31.808186+02
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2019-05-20 11:01:31.809906+02
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2019-05-20 11:01:31.811366+02
28	wagtailcore	0011_page_first_published_at	2019-05-20 11:01:31.81294+02
29	wagtailcore	0012_extend_page_slug_field	2019-05-20 11:01:31.814875+02
30	wagtailcore	0013_update_golive_expire_help_text	2019-05-20 11:01:31.816653+02
31	wagtailcore	0014_add_verbose_name	2019-05-20 11:01:31.818448+02
32	wagtailcore	0015_add_more_verbose_names	2019-05-20 11:01:31.820176+02
33	wagtailcore	0016_change_page_url_path_to_text_field	2019-05-20 11:01:31.821984+02
34	wagtailcore	0017_change_edit_page_permission_description	2019-05-20 11:01:31.961978+02
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2019-05-20 11:01:31.982614+02
36	wagtailcore	0019_verbose_names_cleanup	2019-05-20 11:01:32.044654+02
37	wagtailcore	0020_add_index_on_page_first_published_at	2019-05-20 11:01:32.064726+02
38	wagtailcore	0021_capitalizeverbose	2019-05-20 11:01:32.566139+02
39	wagtailcore	0022_add_site_name	2019-05-20 11:01:32.586331+02
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2019-05-20 11:01:32.619413+02
41	wagtailcore	0024_collection	2019-05-20 11:01:32.648911+02
42	wagtailcore	0025_collection_initial_data	2019-05-20 11:01:32.68936+02
43	wagtailcore	0026_group_collection_permission	2019-05-20 11:01:32.724928+02
44	wagtailcore	0027_fix_collection_path_collation	2019-05-20 11:01:32.795176+02
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2019-05-20 11:01:32.834171+02
46	wagtailcore	0028_merge	2019-05-20 11:01:32.838408+02
47	wagtailcore	0029_unicode_slugfield_dj19	2019-05-20 11:01:32.858497+02
48	wagtailcore	0030_index_on_pagerevision_created_at	2019-05-20 11:01:32.877779+02
49	wagtailcore	0031_add_page_view_restriction_types	2019-05-20 11:01:32.95152+02
50	wagtailcore	0032_add_bulk_delete_page_permission	2019-05-20 11:01:33.006755+02
51	wagtailcore	0033_remove_golive_expiry_help_text	2019-05-20 11:01:33.037016+02
52	wagtailcore	0034_page_live_revision	2019-05-20 11:01:33.056547+02
53	wagtailcore	0035_page_last_published_at	2019-05-20 11:01:33.089929+02
54	wagtailcore	0036_populate_page_last_published_at	2019-05-20 11:01:33.111545+02
55	wagtailcore	0037_set_page_owner_editable	2019-05-20 11:01:33.144489+02
56	wagtailcore	0038_make_first_published_at_editable	2019-05-20 11:01:33.175698+02
57	wagtailcore	0039_collectionviewrestriction	2019-05-20 11:01:33.250623+02
58	wagtailcore	0040_page_draft_title	2019-05-20 11:01:33.497587+02
59	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2019-05-20 11:01:33.515806+02
60	main	0001_initial	2019-05-20 11:01:33.540733+02
61	main	0002_auto_20190515_1140	2019-05-20 11:01:33.581301+02
62	projects	0001_initial	2019-05-20 11:01:33.639243+02
63	projects	0002_projectmetric_specializationindexpage	2019-05-20 11:01:33.702431+02
64	projects	0002_auto_20190515_1207	2019-05-20 11:01:33.801566+02
65	projects	0003_merge_20190515_1350	2019-05-20 11:01:33.804998+02
66	projects	0004_auto_20190520_1059	2019-05-20 11:01:34.331318+02
67	sessions	0001_initial	2019-05-20 11:01:34.352463+02
68	taggit	0001_initial	2019-05-20 11:01:34.441419+02
69	taggit	0002_auto_20150616_2121	2019-05-20 11:01:34.503155+02
70	wagtailadmin	0001_create_admin_access_permissions	2019-05-20 11:01:34.551721+02
71	wagtaildocs	0001_initial	2019-05-20 11:01:34.582463+02
72	wagtaildocs	0002_initial_data	2019-05-20 11:01:34.648299+02
73	wagtaildocs	0003_add_verbose_names	2019-05-20 11:01:34.707281+02
74	wagtaildocs	0004_capitalizeverbose	2019-05-20 11:01:34.804868+02
75	wagtaildocs	0005_document_collection	2019-05-20 11:01:34.851113+02
76	wagtaildocs	0006_copy_document_permissions_to_collections	2019-05-20 11:01:34.906852+02
77	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2019-05-20 11:01:34.945378+02
78	wagtaildocs	0007_merge	2019-05-20 11:01:34.947932+02
79	wagtaildocs	0008_document_file_size	2019-05-20 11:01:34.970797+02
80	wagtaildocs	0009_document_verbose_name_plural	2019-05-20 11:01:34.990442+02
81	wagtaildocs	0010_document_file_hash	2019-05-20 11:01:35.030507+02
82	wagtailembeds	0001_initial	2019-05-20 11:01:35.07587+02
83	wagtailembeds	0002_add_verbose_names	2019-05-20 11:01:35.090222+02
84	wagtailembeds	0003_capitalizeverbose	2019-05-20 11:01:35.097469+02
85	wagtailembeds	0004_embed_verbose_name_plural	2019-05-20 11:01:35.104115+02
86	wagtailembeds	0005_specify_thumbnail_url_max_length	2019-05-20 11:01:35.112637+02
87	wagtailforms	0001_initial	2019-05-20 11:01:35.148901+02
88	wagtailforms	0002_add_verbose_names	2019-05-20 11:01:35.19291+02
89	wagtailforms	0003_capitalizeverbose	2019-05-20 11:01:35.220199+02
90	wagtailimages	0001_initial	2019-05-20 11:01:35.443512+02
91	wagtailimages	0002_initial_data	2019-05-20 11:01:35.44547+02
92	wagtailimages	0003_fix_focal_point_fields	2019-05-20 11:01:35.447394+02
93	wagtailimages	0004_make_focal_point_key_not_nullable	2019-05-20 11:01:35.449679+02
94	wagtailimages	0005_make_filter_spec_unique	2019-05-20 11:01:35.451637+02
95	wagtailimages	0006_add_verbose_names	2019-05-20 11:01:35.453978+02
96	wagtailimages	0007_image_file_size	2019-05-20 11:01:35.456326+02
97	wagtailimages	0008_image_created_at_index	2019-05-20 11:01:35.458914+02
98	wagtailimages	0009_capitalizeverbose	2019-05-20 11:01:35.461538+02
99	wagtailimages	0010_change_on_delete_behaviour	2019-05-20 11:01:35.46363+02
100	wagtailimages	0011_image_collection	2019-05-20 11:01:35.465964+02
101	wagtailimages	0012_copy_image_permissions_to_collections	2019-05-20 11:01:35.467945+02
102	wagtailimages	0013_make_rendition_upload_callable	2019-05-20 11:01:35.469851+02
103	wagtailimages	0014_add_filter_spec_field	2019-05-20 11:01:35.471885+02
104	wagtailimages	0015_fill_filter_spec_field	2019-05-20 11:01:35.474032+02
105	wagtailimages	0016_deprecate_rendition_filter_relation	2019-05-20 11:01:35.476198+02
106	wagtailimages	0017_reduce_focal_point_key_max_length	2019-05-20 11:01:35.478292+02
107	wagtailimages	0018_remove_rendition_filter	2019-05-20 11:01:35.48012+02
108	wagtailimages	0019_delete_filter	2019-05-20 11:01:35.483022+02
109	wagtailimages	0020_add-verbose-name	2019-05-20 11:01:35.485999+02
110	wagtailimages	0021_image_file_hash	2019-05-20 11:01:35.489016+02
111	wagtailredirects	0001_initial	2019-05-20 11:01:35.60097+02
112	wagtailredirects	0002_add_verbose_names	2019-05-20 11:01:35.702083+02
113	wagtailredirects	0003_make_site_field_editable	2019-05-20 11:01:35.749971+02
114	wagtailredirects	0004_set_unique_on_path_and_site	2019-05-20 11:01:35.808705+02
115	wagtailredirects	0005_capitalizeverbose	2019-05-20 11:01:35.971406+02
116	wagtailredirects	0006_redirect_increase_max_length	2019-05-20 11:01:36.00096+02
117	wagtailsearch	0001_initial	2019-05-20 11:01:36.127996+02
118	wagtailsearch	0002_add_verbose_names	2019-05-20 11:01:36.263168+02
119	wagtailsearch	0003_remove_editors_pick	2019-05-20 11:01:36.303184+02
120	wagtailsearch	0004_querydailyhits_verbose_name_plural	2019-05-20 11:01:36.311004+02
121	wagtailusers	0001_initial	2019-05-20 11:01:36.359175+02
122	wagtailusers	0002_add_verbose_name_on_userprofile	2019-05-20 11:01:36.41831+02
123	wagtailusers	0003_add_verbose_names	2019-05-20 11:01:36.444171+02
124	wagtailusers	0004_capitalizeverbose	2019-05-20 11:01:36.507822+02
125	wagtailusers	0005_make_related_name_wagtail_specific	2019-05-20 11:01:36.619754+02
126	wagtailusers	0006_userprofile_prefered_language	2019-05-20 11:01:36.65685+02
127	wagtailusers	0007_userprofile_current_time_zone	2019-05-20 11:01:36.703065+02
128	wagtailusers	0008_userprofile_avatar	2019-05-20 11:01:36.745493+02
129	wagtailusers	0009_userprofile_verbose_name_plural	2019-05-20 11:01:36.772797+02
130	wagtailimages	0001_squashed_0021	2019-05-20 11:01:36.780821+02
131	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2019-05-20 11:01:36.784923+02
132	main	0003_newspage	2019-05-23 18:18:37.642259+02
133	main	0004_jobofferindexpage_jobofferpage_newsindexpage	2019-05-24 16:00:50.277799+02
134	main	0005_auto_20190528_1022	2019-05-28 10:23:05.742186+02
135	projects	0005_projectpage_self_initiated	2019-05-28 10:23:05.834943+02
136	main	0006_auto_20190528_1024	2019-05-28 10:24:47.546851+02
137	main	0007_rodopassadvert	2019-05-28 14:47:05.369549+02
140	main	0008_footer	2019-05-28 15:47:43.864087+02
141	main	0009_auto_20190529_1031	2019-05-29 10:39:13.189401+02
142	projects	0006_auto_20190529_1157	2019-05-29 11:57:59.984049+02
143	projects	0007_teammember_photo	2019-05-29 12:57:47.895136+02
144	projects	0008_auto_20190530_1617	2019-05-30 16:17:14.458316+02
145	projects	0009_auto_20190530_1630	2019-05-30 16:30:08.606676+02
146	main	0010_newspage_marked	2019-05-31 14:32:07.90285+02
147	projects	0008_auto_20190603_1117	2019-06-03 11:21:26.196642+02
148	main	0011_auto_20190603_1326	2019-06-10 11:24:27.979539+02
149	projects	0009_auto_20190603_1358	2019-06-10 11:24:28.103585+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
2bnoo3n10r7b8mipptgleh0f3wuptkz7	YjlhZWJhZjJhMmVmODZlNWFkNDE4MWMxMmQyZDI4MDI0MTYwZTA1YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZGZjMzY1NWI4M2ZkZGQwZTlkMTExNDI4NmZlYzE0NTEyZGYxOGEwIiwid2FndGFpbC1wcmV2aWV3LXByb2plY3RzLHNwZWNpYWxpemF0aW9uaW5kZXhwYWdlLDMiOlsiY3NyZm1pZGRsZXdhcmV0b2tlbj1pQmhyNU9IbXB4ZUxkNHJBZjJZeW53SmZ6eWQyaXdORUpFcUtnbmhTUlg0M2ZzVlhCWjlzV1NGUElNbEVjeHljJm5leHQ9JnRpdGxlX3BsPXNwZWMyJnRpdGxlX2VuPXNwZWMyJnNsdWdfcGw9c3BlYzImc2x1Z19lbj1zcGVjMiZzZW9fdGl0bGVfcGw9JnNlb190aXRsZV9lbj0mc2hvd19pbl9tZW51cz1vbiZzZWFyY2hfZGVzY3JpcHRpb25fcGw9JnNlYXJjaF9kZXNjcmlwdGlvbl9lbj0mZ29fbGl2ZV9hdD0mZXhwaXJlX2F0PSIsMTU1ODM0NTUyMS40NTc2NzhdfQ==	2019-06-03 11:45:21.490207+02
5d2zfz8om0aj2o2o6aeiapajcr24fh10	NTIwMDZmY2JkYzVhYTJkNmEzYzJkNmFjMzMxZGU0Yjg2MGVjZmMzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZGZjMzY1NWI4M2ZkZGQwZTlkMTExNDI4NmZlYzE0NTEyZGYxOGEwIn0=	2019-06-06 18:20:42.975652+02
peoxxige0no31fih92bkfz9054ldw6po	ODdiNjQ3YjljNDJjZDY1NTdkODQyN2VjZDI0Yjk1N2FhNTM0MDViZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZGZjMzY1NWI4M2ZkZGQwZTlkMTExNDI4NmZlYzE0NTEyZGYxOGEwIiwid2FndGFpbC1wcmV2aWV3LTMiOlsiY3NyZm1pZGRsZXdhcmV0b2tlbj1SRkdPQ2xWczRDM2dWNXBFc3dFUFFJektjOWx5RVhMQW0yZ2pkUFJhMTQ4QU5CMzJidmtzOGVObHB5MEM3bEVMJm5leHQ9JnRpdGxlX3BsPVN0cm9uYStkb21vd2ExJnRpdGxlX2VuPUhvbWUrcGFnZTEmaGVhZGVyX3BsPW5hZyVDNSU4MiVDMyVCM3dlaysxJmhlYWRlcl9lbj1oZWFkZXIrMSZzcGVjaWFsaXphdGlvbnNfaGVhZGxpbmVfcGw9JnNwZWNpYWxpemF0aW9uc19oZWFkbGluZV9lbj0mcl9hbmRfZF9jZW50ZXJfaGVhZGxpbmVfcGw9VHdvamUrcHJ5d2F0bmUrY2VudHJ1bStiYWRhd2N6bytyb3p3b2pvd2Umcl9hbmRfZF9jZW50ZXJfaGVhZGxpbmVfZW49WW91citwcml2YXRlK1IlMjZEK2NlbnRlciZyX2FuZF9kX2NlbnRlcl9ib2R5X3BsPVNrdXBpYW15K3NpZStuYStkb2slQzUlODJhZG5laithbmFsaXppZStzdGF3aWFueWNoK25hbSt3eXp3YSVDNSU4NCUyQytTa3VwaWFteStzaWUrbmErZG9rJUM1JTgyYWRuZWorYW5hbGl6aWUrc3Rhd2lhbnljaCtuYW0rd3l6d2ElQzUlODQmcl9hbmRfZF9jZW50ZXJfYm9keV9lbj1XZStmb2N1cytvbithK3Rob3JvdWdoK2FuYWx5c2lzK29mK3RoZStjaGFsbGVuZ2VzK3dlK2FyZStmYWNpbmcrV2UrZm9jdXMrb24rYSt0aG9yb3VnaCthbmFseXNpcytvZit0aGUrY2hhbGxlbmdlcyt3ZSthcmUrZmFjaW5nJmNvb3BlcmF0b3JzX2xvZ29zLVRPVEFMX0ZPUk1TPTMmY29vcGVyYXRvcnNfbG9nb3MtSU5JVElBTF9GT1JNUz0wJmNvb3BlcmF0b3JzX2xvZ29zLU1JTl9OVU1fRk9STVM9MCZjb29wZXJhdG9yc19sb2dvcy1NQVhfTlVNX0ZPUk1TPTEwMDAmY29vcGVyYXRvcnNfbG9nb3MtMi1pbWFnZT04JmNvb3BlcmF0b3JzX2xvZ29zLTItaWQ9JmNvb3BlcmF0b3JzX2xvZ29zLTItT1JERVI9MSZjb29wZXJhdG9yc19sb2dvcy0yLURFTEVURT0mY29vcGVyYXRvcnNfbG9nb3MtMC1pbWFnZT02JmNvb3BlcmF0b3JzX2xvZ29zLTAtaWQ9JmNvb3BlcmF0b3JzX2xvZ29zLTAtT1JERVI9MiZjb29wZXJhdG9yc19sb2dvcy0wLURFTEVURT0mY29vcGVyYXRvcnNfbG9nb3MtMS1pbWFnZT03JmNvb3BlcmF0b3JzX2xvZ29zLTEtaWQ9JmNvb3BlcmF0b3JzX2xvZ29zLTEtT1JERVI9MyZjb29wZXJhdG9yc19sb2dvcy0xLURFTEVURT0mc2x1Z19wbD1zdHJvbmEtZG9tb3dhMSZzbHVnX2VuPWhvbWUtcGFnZTEmc2VvX3RpdGxlX3BsPSZzZW9fdGl0bGVfZW49JnNlYXJjaF9kZXNjcmlwdGlvbl9wbD0mc2VhcmNoX2Rlc2NyaXB0aW9uX2VuPSZnb19saXZlX2F0PSZleHBpcmVfYXQ9IiwxNTU5MDMyMjQ5LjIxODk4MjVdfQ==	2019-06-11 10:30:49.255696+02
qiwiibk2o3f2eoi4ycj7i7jsask33fss	NTIwMDZmY2JkYzVhYTJkNmEzYzJkNmFjMzMxZGU0Yjg2MGVjZmMzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZGZjMzY1NWI4M2ZkZGQwZTlkMTExNDI4NmZlYzE0NTEyZGYxOGEwIn0=	2019-06-13 15:13:32.067854+02
\.


--
-- Data for Name: main_cooperatorlogo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_cooperatorlogo (id, sort_order, image_id, page_id) FROM stdin;
1	0	8	3
2	1	6	3
3	2	7	3
\.


--
-- Data for Name: main_footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_footer (id, contact, contact_pl, contact_en, address, address_pl, address_en, how_we_work, how_we_work_pl, how_we_work_en, privacy_policy, page_id) FROM stdin;
2	<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>	<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>		<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>	<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>		<p>Rozwiązujemy <b>ważne problemy</b> naszych klientów w obszarach, w których się specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmianą</b>, szukamy klientów, którzy mają odwagę tworzyć nowe, innowacyjne rozwiązania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji procesów, podejmowania lepszych decyzji i zaangażowania użytkowników.</p>	<p>Rozwiązujemy <b>ważne problemy</b> naszych klientów w obszarach, w których się specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmianą</b>, szukamy klientów, którzy mają odwagę tworzyć nowe, innowacyjne rozwiązania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji procesów, podejmowania lepszych decyzji i zaangażowania użytkowników.</p>		https://youtu.be/UG-7hqw90LE	3
\.


--
-- Data for Name: main_homepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_homepage (page_ptr_id, header, header_en, header_pl, r_and_d_center_body, r_and_d_center_headline, specializations_headline, r_and_d_center_body_en, r_and_d_center_body_pl, r_and_d_center_headline_en, r_and_d_center_headline_pl, specializations_headline_en, specializations_headline_pl) FROM stdin;
3	We work with those who are not afraid to break the rules	We work with those who are not afraid to break the rules	Pracujemy z tymi, którzy nie boją się łamać reguł	We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing	Your private R&D center	We specialize in	We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing	Skupiamy sie na dokładnej analizie stawianych nam wyzwań, Skupiamy sie na dokładnej analizie stawianych nam wyzwań	Your private R&D center	Twoje prywatne centrum badawczo rozwojowe	We specialize in	Specjalizujemy się w
\.


--
-- Data for Name: main_jobofferindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_jobofferindexpage (page_ptr_id, cooperation, cooperation_pl, cooperation_en, recruitment, recruitment_pl, recruitment_en) FROM stdin;
8	jeśli jesteś programistą Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.	jeśli jesteś programistą Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.	jeśli jesteś programistą Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.	[{"type": "text", "value": "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", "id": "fe7e845b-42d9-4377-97e2-461e592456f4"}, {"type": "tiles_list", "value": [{"heading": "asdf", "image": 5}, {"heading": "asdfdfs", "image": 4}], "id": "aedd0b07-c379-46aa-9303-1cfc6156d8a0"}]	[{"type": "text", "value": "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", "id": "8652e896-14d2-44a7-8c25-3c3581d7927c"}, {"type": "tiles_list", "value": [{"heading": "asdf", "image": 5}, {"heading": "asdfdfs", "image": 4}], "id": "e6ade72c-287a-4647-8cbb-6d134d322169"}]	[{"type": "text", "value": "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", "id": "fe7e845b-42d9-4377-97e2-461e592456f4"}, {"type": "tiles_list", "value": [{"heading": "asdf", "image": 5}, {"heading": "asdfdfs", "image": 4}], "id": "aedd0b07-c379-46aa-9303-1cfc6156d8a0"}]
\.


--
-- Data for Name: main_jobofferpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_jobofferpage (page_ptr_id, salary, employment_form, body, body_pl, body_en) FROM stdin;
\.


--
-- Data for Name: main_newsindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_newsindexpage (page_ptr_id) FROM stdin;
10
\.


--
-- Data for Name: main_newspage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_newspage (page_ptr_id, headline, headline_pl, headline_en, publication_date, body, body_pl, body_en, photo_id, marked) FROM stdin;
12	Bronisław Komorowski powiela opinię, że wyborcy Prawa i Sprawiedliwości ciągną pieniądze od reszty społeczeństwa. Jednak słabsze zarobki ich wyborców, nie znaczą wcale, że „nie płacą podatków”. Wręcz przeciwnie, ubodzy płacą w Polsce ponad dwa razy wyższe stawki danin niż bogaci	Bronisław Komorowski powiela opinię, że wyborcy Prawa i Sprawiedliwości ciągną pieniądze od reszty społeczeństwa. Jednak słabsze zarobki ich wyborców, nie znaczą wcale, że „nie płacą podatków”. Wręcz przeciwnie, ubodzy płacą w Polsce ponad dwa razy wyższe stawki danin niż bogaci	Bronisław Komorowski powiela opinię, że wyborcy Prawa i Sprawiedliwości ciągną pieniądze od reszty społeczeństwa. Jednak słabsze zarobki ich wyborców, nie znaczą wcale, że „nie płacą podatków”. Wręcz przeciwnie, ubodzy płacą w Polsce ponad dwa razy wyższe stawki danin niż bogaci	2019-05-29	<p>Polska potrzebuje wolnych mediów. Wesprzyj nas, byśmy mogli pisać takie teksty dalej. <a href="https://oko.press/wesprzyj/"><b>WSPIERAM &gt;&gt;</b></a></p><p>27 maja, dzień po wyborach do europarlamentu, Bronisław Komorowski komentował ich wynik w audycji Onet Rano. Diagnozując źródło zwycięstwa PiS, które w skali kraju zdobyło 45,3 proc poparcia, były prezydent Polski stwierdził, że „PiS wygrywało w tych kręgach wyborczych, które nie płacą podatków”.</p><p><b><i>Jest charakterystyczne i warte przeanalizowania to, że PiS wygrywało w tych kręgach wyborczych, które nie płacą podatków</i></b></p><p><a href="https://oko.press/komorowski-bronislaw/">Bronisław Komorowski</a>, <a href="https://wiadomosci.onet.pl/tylko-w-onecie/wybory-do-europarlamentu-2019-bronislaw-komorowski-komentuje/rdvgp4l">Onet Rano</a> - 27/05/2019</p><h4><b>PODATKI PŁACIMY WSZYSCY. A UBODZY POLACY (CZYLI WYBORCY PIS-U) NAWET WIĘKSZĄ CZĘŚĆ SWOICH PRZYCHODÓW, NIŻ ZAMOŻNIEJSI OBYWATELE.</b></h4><p>Komorowski pokazał, że słabo orientuje się w polskich realiach podatkowych oraz sytuacji mniej od siebie zamożnych obywateli. Powtarza krzywdzące stereotypy i odwraca wzrok od prawdziwych problemów polskiej gospodarki.</p><h2><b>Przestańcie być biedni!</b></h2><p>Zacznijmy od tego, skąd były prezydent wyciąga takie wnioski. Danych o dochodach głosujących nie zbiera bowiem ani Państwowa Komisja Wyborcza (PKW), ani realizująca <a href="https://oko.press/tajemnice-exit-polls-oko-press-ujawnia-czego-sie-dowiemy-dzis-o-21-00/">sondaże exit poll</a> firma IPSOS. Z informacji tej pierwszej wiadomo jednak, jak głosowały poszczególne powiaty i województwa, a tej drugiej – przedstawiciele poszczególnych grup zawodowych.</p><p>PiS zdobywało głosy przede wszystkim w długotrwale uboższych województwach Polski wschodniej, centralnej i południowej:</p><ul><li>Lubelskim (59 proc. głosów za PiS)</li><li>Łódzkim (46,7 proc.)</li><li>Małopolskim (55,8 proc.)</li><li>Mazowieckim (42,9 proc. – przeciwnie głosowała tylko bogata aglomeracja warszawska)</li><li>Podlaskim (54,4 proc.)</li><li>Podkarpackim (65,1 proc.)</li><li>Śląskim (43,3 proc.)</li><li>Świętokrzyskim (57,85 proc.)</li><li>Warmińsko-Mazurskim (42,15 proc.)</li></ul><p>Taki stan rzeczy powtarza się w tych regionach od lat. Wytarł się już wyborczy żart, że po wynikach „widać granice zaborów”.</p><p><b>  </b><a href="https://public.flourish.studio/visualisation/382407/?utm_source=showcase&amp;utm_campaign=visualisation/382407"><b>A Flourish data visualisation</b></a></p><p>Gdy brać pod uwagę demografię, na PiS zagłosowali:</p><ul><li>Bezrobotni (54,5 proc. głosów za PiS)</li><li>Emeryci (56,4 proc.)</li><li>Rolnicy (72,3 proc.)</li><li>Robotnicy (59,8 proc.)</li></ul><p>To grupy gorzej sytuowane niż przedsiębiorcy czy specjaliści, które w badaniu IPSOS deklarowały poparcie dla Koalicji Obywatelskiej. A z przedwyborczego sondażu OKO.press wynika, że to</p><p><b>wśród najmniej zarabiających poparcie dla Prawa i Sprawiedliwości było najwyższe.</b></p><p>PiS wygrał jedynie w grupach osób zarabiających do 1500 zł oraz 1501-2500 zł (poparcie odpowiednio 55 i 48 proc.), gdy we wszystkich zamożniejszych prowadziła Koalicja.</p><p>Prezydent Komorowski wysyła zatem komunikat, że wyborcy PiS pasożytują na podatkach płaconych przez wyborców innych partii. Nie mówi wprost, o kogo chodzi, ale łatwo wywnioskować, że ma na myśli biednych.</p><h2><b>Jak nie płacić podatków</b></h2><p>Mówiąc, że jakiś krąg „nie płaci podatków”, Bronisław Komorowski używa formy nazywanej w logice kwantyfikatorem wielkim, sugerując, że każdy przedstawiciel „kręgów” głosujących na PiS nie płaci podatków. Jest wręcz przeciwnie: każdy wyborca PiS, nawet bezrobotny, podatki płaci. Co więcej, robi to też wyborca skrajnego wolnorynkowca Janusza Korwin-Mikkego, choć pewnie bardzo nie chce.</p><p>Oprócz podatków dochodowych PIT i CIT, w Polsce obowiązują bowiem i inne daniny. Najpopularniejszy z nich to VAT, czyli podatek od towarów i usług, wliczony zazwyczaj w ich cenę przy zakupie – odpowiada za ok. 40 proc. wpływów do budżetu państwa. Z kolei rolnicy zamiast PIT płacą podatek rolny, zależny nie od przychodów, a od posiadanego areału i cen zboża. Jest też akcyza, która ma zniechęcać do zakupu określonych produktów (np. alkoholu, papierosów czy paliw kopalnych), a także podatki od nieruchomości, od spadków i darowizn czy też czynności cywilnoprawnych – i jeszcze kilka innych.</p><p>Przyjmijmy, że prezydent użył skrótu myślowego, a chodziło mu o grupy, które wpłacają relatywnie mniej do wspólnej kasy, bo zarabiają mniej – jako że wykonują gorzej płatne zawody, są zależni od wypłat socjalnych lub mieszkają w biedniejszym regionie.</p><h2><b>Ulgi dla bogatych</b></h2><p>Wciąż jednak prezydent mija się z prawdą. Z <a href="https://www.gov.pl/web/finanse/wybrane-aspekty-systemu-podatkowo-skladkowego-na-podstawie-danych-pit-i-zus-2016">dokumentu Ministerstwa Finansów</a><i>Wybrane aspekty systemu podatkowo-składkowego na podstawie danych PIT i ZUS 2016</i> wynika bowiem, że</p><p><b>grupy najsłabiej zarabiające oddają państwu</b> <b>większą</b> <b>część swojego przychodu niż lepiej sytuowani.</b> </p><p>Osoby zarabiające do 10 tys. zł brutto rocznie przekazują w podatku dochodowym i składkach aż 59,9 proc. swoich przychodów. Drugą pod względem obciążeń grupą jest klasa średnia – zarabiając 20 do 100 tys. zł brutto oddajemy między 11,5 a 18,6 punktu procentowego więcej niż milionerzy. Ci ostatni składają się na usługi publiczne jedynie w 20,4 procent przychodu.</p><p>Dzieje się tak, gdyż najlepiej zarabiającym opłaca się korzystać z 19-procentowego podatku liniowego, aby uniknąć wejścia w drugi  próg podatkowy (32-procentową stawkę płaci zaledwie ok. 3 proc. Polaków). Do tego składki ZUS mniej więcej właśnie od bariery 100 tys. zł przychodu nie rosną proporcjonalnie do przychodu. Podobnie ze składką zdrowotną.</p><p>Nawet jeśli mniejszy procent zarobków bogacza to i tak więcej w liczbie bezwzględnej, to</p><p><b>państwo utrzymuje się głównie dzięki średnio i słabo zarabiającym.</b></p><h2><b>Biedny dwa razy płaci</b></h2><p>Sytuację mniej majętnych pogarsza VAT, gdyż znów przeznaczają na podatek większy odsetek przychodów, niż bogaci.</p><p><b>„Najbiedniejsze 10 proc. płaci VAT o wartości odpowiadającej przeciętnie 16,3 proc. swojego dochodu, a najbogatsze 10 proc. Polaków – 6,8 proc.”</b></p><p>– wyliczyła w 2015 r. fundacja <a href="http://www.cenea.org.pl/images/stories/pdf/press_releases/raport1_vat_press.pdf">Centrum Analiz Ekonomicznych</a>. </p><p>Dzieje się tak, bo większą część domowych budżetów zajmuje u biedniejszych konsumpcja bieżąca. Osoba zarabiająca 10 razy więcej nie zje bowiem 5 razy więcej bochenków 2-krotnie droższego chleba dziennie, nie zużywa też 10 razy więcej prądu. Co więcej, prowadząc działalność gospodarczą osoba bogatsza może też odliczyć podatek naliczony przy zakupie np. komputera od tego, co sama musi zapłacić. Nie pomaga fakt, że Polska ma obok Węgier i Chorwacji <a href="https://en.wikipedia.org/wiki/European_Union_value_added_tax">jedną z najwyższych stawek VAT w regionie.</a></p><h2><b>Platforma mogła, ale nie zmieniła</b></h2><p>To za prezydentury Bronisława Komorowskiego rząd Donalda Tuska podniósł stawkę VAT o 1 punkt procentowy, co znów najbardziej uderzyło w uboższych (podwyżka miała być tymczasowa, jednak rządy Prawa i Sprawiedliwości nie zrezygnowały z dodatkowych wpływów do budżetu). Podpisując ustawę powinien znać analizy, które dotyczą wpływu VAT na poszczególne grupy płatników. </p><p>A nawet jeśli prezydent podziela <a href="https://www.rp.pl/Podatek-dochodowy/302199996-Rolnicy-jakie-przychody-sa-obciazone-podatkiem-dochodowym.html">zdanie części ekspertów</a>, że ryczałtowy podatek rolny zamiast PIT i ubezpieczenie w KRUS zamiast ZUS to „nieuzasadnione uprzywilejowanie” dla rolników, to powinien zastanowić, się dlaczego <a href="https://finanse.wp.pl/to-poczatek-konca-krus-6114118106986113a">mimo wielu przymiarek</a> Platforma nie zdecydowała się na likwidację specjalnego rolniczego ubezpieczenia – a nie oskarżać dziś mieszkańców wsi, że „nie płacą” podatków.</p><p>Podtrzymywanie bezpodstawnej opinii, wedle której uboższe grupy pasożytują na pracy bogatszych jest wyjątkowo szkodliwe. Prowadzi do stygmatyzacji słabiej zarabiających i ich rodzin. Bez nacisku społeczeństwa na egzekwowanie progresji podatkowej najbogatsi będą pomnażać swój majątek kosztem publicznej opieki zdrowotnej, edukacji czy transportu – oraz polskiej klasy średniej.</p><p>Klasistowski język i bezduszna narracja, by „wziąć kredyt i zmienić pracę”, z której korzystał Komorowski przed porażką z Andrzejem Dudą, z pewnością nie przysporzą KE wyborców wśród tych, którym w życiu wiedzie się gorzej.</p>	<p>Polska potrzebuje wolnych mediów. Wesprzyj nas, byśmy mogli pisać takie teksty dalej. <a href="https://oko.press/wesprzyj/"><b>WSPIERAM &gt;&gt;</b></a></p><p>27 maja, dzień po wyborach do europarlamentu, Bronisław Komorowski komentował ich wynik w audycji Onet Rano. Diagnozując źródło zwycięstwa PiS, które w skali kraju zdobyło 45,3 proc poparcia, były prezydent Polski stwierdził, że „PiS wygrywało w tych kręgach wyborczych, które nie płacą podatków”.</p><p><b><i>Jest charakterystyczne i warte przeanalizowania to, że PiS wygrywało w tych kręgach wyborczych, które nie płacą podatków</i></b></p><p><a href="https://oko.press/komorowski-bronislaw/">Bronisław Komorowski</a>, <a href="https://wiadomosci.onet.pl/tylko-w-onecie/wybory-do-europarlamentu-2019-bronislaw-komorowski-komentuje/rdvgp4l">Onet Rano</a> - 27/05/2019</p><h4><b>PODATKI PŁACIMY WSZYSCY. A UBODZY POLACY (CZYLI WYBORCY PIS-U) NAWET WIĘKSZĄ CZĘŚĆ SWOICH PRZYCHODÓW, NIŻ ZAMOŻNIEJSI OBYWATELE.</b></h4><p>Komorowski pokazał, że słabo orientuje się w polskich realiach podatkowych oraz sytuacji mniej od siebie zamożnych obywateli. Powtarza krzywdzące stereotypy i odwraca wzrok od prawdziwych problemów polskiej gospodarki.</p><h2><b>Przestańcie być biedni!</b></h2><p>Zacznijmy od tego, skąd były prezydent wyciąga takie wnioski. Danych o dochodach głosujących nie zbiera bowiem ani Państwowa Komisja Wyborcza (PKW), ani realizująca <a href="https://oko.press/tajemnice-exit-polls-oko-press-ujawnia-czego-sie-dowiemy-dzis-o-21-00/">sondaże exit poll</a> firma IPSOS. Z informacji tej pierwszej wiadomo jednak, jak głosowały poszczególne powiaty i województwa, a tej drugiej – przedstawiciele poszczególnych grup zawodowych.</p><p>PiS zdobywało głosy przede wszystkim w długotrwale uboższych województwach Polski wschodniej, centralnej i południowej:</p><ul><li>Lubelskim (59 proc. głosów za PiS)</li><li>Łódzkim (46,7 proc.)</li><li>Małopolskim (55,8 proc.)</li><li>Mazowieckim (42,9 proc. – przeciwnie głosowała tylko bogata aglomeracja warszawska)</li><li>Podlaskim (54,4 proc.)</li><li>Podkarpackim (65,1 proc.)</li><li>Śląskim (43,3 proc.)</li><li>Świętokrzyskim (57,85 proc.)</li><li>Warmińsko-Mazurskim (42,15 proc.)</li></ul><p>Taki stan rzeczy powtarza się w tych regionach od lat. Wytarł się już wyborczy żart, że po wynikach „widać granice zaborów”.</p><p><b>  </b><a href="https://public.flourish.studio/visualisation/382407/?utm_source=showcase&amp;utm_campaign=visualisation/382407"><b>A Flourish data visualisation</b></a></p><p>Gdy brać pod uwagę demografię, na PiS zagłosowali:</p><ul><li>Bezrobotni (54,5 proc. głosów za PiS)</li><li>Emeryci (56,4 proc.)</li><li>Rolnicy (72,3 proc.)</li><li>Robotnicy (59,8 proc.)</li></ul><p>To grupy gorzej sytuowane niż przedsiębiorcy czy specjaliści, które w badaniu IPSOS deklarowały poparcie dla Koalicji Obywatelskiej. A z przedwyborczego sondażu OKO.press wynika, że to</p><p><b>wśród najmniej zarabiających poparcie dla Prawa i Sprawiedliwości było najwyższe.</b></p><p>PiS wygrał jedynie w grupach osób zarabiających do 1500 zł oraz 1501-2500 zł (poparcie odpowiednio 55 i 48 proc.), gdy we wszystkich zamożniejszych prowadziła Koalicja.</p><p>Prezydent Komorowski wysyła zatem komunikat, że wyborcy PiS pasożytują na podatkach płaconych przez wyborców innych partii. Nie mówi wprost, o kogo chodzi, ale łatwo wywnioskować, że ma na myśli biednych.</p><h2><b>Jak nie płacić podatków</b></h2><p>Mówiąc, że jakiś krąg „nie płaci podatków”, Bronisław Komorowski używa formy nazywanej w logice kwantyfikatorem wielkim, sugerując, że każdy przedstawiciel „kręgów” głosujących na PiS nie płaci podatków. Jest wręcz przeciwnie: każdy wyborca PiS, nawet bezrobotny, podatki płaci. Co więcej, robi to też wyborca skrajnego wolnorynkowca Janusza Korwin-Mikkego, choć pewnie bardzo nie chce.</p><p>Oprócz podatków dochodowych PIT i CIT, w Polsce obowiązują bowiem i inne daniny. Najpopularniejszy z nich to VAT, czyli podatek od towarów i usług, wliczony zazwyczaj w ich cenę przy zakupie – odpowiada za ok. 40 proc. wpływów do budżetu państwa. Z kolei rolnicy zamiast PIT płacą podatek rolny, zależny nie od przychodów, a od posiadanego areału i cen zboża. Jest też akcyza, która ma zniechęcać do zakupu określonych produktów (np. alkoholu, papierosów czy paliw kopalnych), a także podatki od nieruchomości, od spadków i darowizn czy też czynności cywilnoprawnych – i jeszcze kilka innych.</p><p>Przyjmijmy, że prezydent użył skrótu myślowego, a chodziło mu o grupy, które wpłacają relatywnie mniej do wspólnej kasy, bo zarabiają mniej – jako że wykonują gorzej płatne zawody, są zależni od wypłat socjalnych lub mieszkają w biedniejszym regionie.</p><h2><b>Ulgi dla bogatych</b></h2><p>Wciąż jednak prezydent mija się z prawdą. Z <a href="https://www.gov.pl/web/finanse/wybrane-aspekty-systemu-podatkowo-skladkowego-na-podstawie-danych-pit-i-zus-2016">dokumentu Ministerstwa Finansów</a><i>Wybrane aspekty systemu podatkowo-składkowego na podstawie danych PIT i ZUS 2016</i> wynika bowiem, że</p><p><b>grupy najsłabiej zarabiające oddają państwu</b> <b>większą</b> <b>część swojego przychodu niż lepiej sytuowani.</b> </p><p>Osoby zarabiające do 10 tys. zł brutto rocznie przekazują w podatku dochodowym i składkach aż 59,9 proc. swoich przychodów. Drugą pod względem obciążeń grupą jest klasa średnia – zarabiając 20 do 100 tys. zł brutto oddajemy między 11,5 a 18,6 punktu procentowego więcej niż milionerzy. Ci ostatni składają się na usługi publiczne jedynie w 20,4 procent przychodu.</p><p>Dzieje się tak, gdyż najlepiej zarabiającym opłaca się korzystać z 19-procentowego podatku liniowego, aby uniknąć wejścia w drugi  próg podatkowy (32-procentową stawkę płaci zaledwie ok. 3 proc. Polaków). Do tego składki ZUS mniej więcej właśnie od bariery 100 tys. zł przychodu nie rosną proporcjonalnie do przychodu. Podobnie ze składką zdrowotną.</p><p>Nawet jeśli mniejszy procent zarobków bogacza to i tak więcej w liczbie bezwzględnej, to</p><p><b>państwo utrzymuje się głównie dzięki średnio i słabo zarabiającym.</b></p><h2><b>Biedny dwa razy płaci</b></h2><p>Sytuację mniej majętnych pogarsza VAT, gdyż znów przeznaczają na podatek większy odsetek przychodów, niż bogaci.</p><p><b>„Najbiedniejsze 10 proc. płaci VAT o wartości odpowiadającej przeciętnie 16,3 proc. swojego dochodu, a najbogatsze 10 proc. Polaków – 6,8 proc.”</b></p><p>– wyliczyła w 2015 r. fundacja <a href="http://www.cenea.org.pl/images/stories/pdf/press_releases/raport1_vat_press.pdf">Centrum Analiz Ekonomicznych</a>. </p><p>Dzieje się tak, bo większą część domowych budżetów zajmuje u biedniejszych konsumpcja bieżąca. Osoba zarabiająca 10 razy więcej nie zje bowiem 5 razy więcej bochenków 2-krotnie droższego chleba dziennie, nie zużywa też 10 razy więcej prądu. Co więcej, prowadząc działalność gospodarczą osoba bogatsza może też odliczyć podatek naliczony przy zakupie np. komputera od tego, co sama musi zapłacić. Nie pomaga fakt, że Polska ma obok Węgier i Chorwacji <a href="https://en.wikipedia.org/wiki/European_Union_value_added_tax">jedną z najwyższych stawek VAT w regionie.</a></p><h2><b>Platforma mogła, ale nie zmieniła</b></h2><p>To za prezydentury Bronisława Komorowskiego rząd Donalda Tuska podniósł stawkę VAT o 1 punkt procentowy, co znów najbardziej uderzyło w uboższych (podwyżka miała być tymczasowa, jednak rządy Prawa i Sprawiedliwości nie zrezygnowały z dodatkowych wpływów do budżetu). Podpisując ustawę powinien znać analizy, które dotyczą wpływu VAT na poszczególne grupy płatników. </p><p>A nawet jeśli prezydent podziela <a href="https://www.rp.pl/Podatek-dochodowy/302199996-Rolnicy-jakie-przychody-sa-obciazone-podatkiem-dochodowym.html">zdanie części ekspertów</a>, że ryczałtowy podatek rolny zamiast PIT i ubezpieczenie w KRUS zamiast ZUS to „nieuzasadnione uprzywilejowanie” dla rolników, to powinien zastanowić, się dlaczego <a href="https://finanse.wp.pl/to-poczatek-konca-krus-6114118106986113a">mimo wielu przymiarek</a> Platforma nie zdecydowała się na likwidację specjalnego rolniczego ubezpieczenia – a nie oskarżać dziś mieszkańców wsi, że „nie płacą” podatków.</p><p>Podtrzymywanie bezpodstawnej opinii, wedle której uboższe grupy pasożytują na pracy bogatszych jest wyjątkowo szkodliwe. Prowadzi do stygmatyzacji słabiej zarabiających i ich rodzin. Bez nacisku społeczeństwa na egzekwowanie progresji podatkowej najbogatsi będą pomnażać swój majątek kosztem publicznej opieki zdrowotnej, edukacji czy transportu – oraz polskiej klasy średniej.</p><p>Klasistowski język i bezduszna narracja, by „wziąć kredyt i zmienić pracę”, z której korzystał Komorowski przed porażką z Andrzejem Dudą, z pewnością nie przysporzą KE wyborców wśród tych, którym w życiu wiedzie się gorzej.</p>	<p>Polska potrzebuje wolnych mediów. Wesprzyj nas, byśmy mogli pisać takie teksty dalej. <a href="https://oko.press/wesprzyj/"><b>WSPIERAM &gt;&gt;</b></a></p><p>27 maja, dzień po wyborach do europarlamentu, Bronisław Komorowski komentował ich wynik w audycji Onet Rano. Diagnozując źródło zwycięstwa PiS, które w skali kraju zdobyło 45,3 proc poparcia, były prezydent Polski stwierdził, że „PiS wygrywało w tych kręgach wyborczych, które nie płacą podatków”.</p><p><b><i>Jest charakterystyczne i warte przeanalizowania to, że PiS wygrywało w tych kręgach wyborczych, które nie płacą podatków</i></b></p><p><a href="https://oko.press/komorowski-bronislaw/">Bronisław Komorowski</a>, <a href="https://wiadomosci.onet.pl/tylko-w-onecie/wybory-do-europarlamentu-2019-bronislaw-komorowski-komentuje/rdvgp4l">Onet Rano</a> - 27/05/2019</p><h4><b>PODATKI PŁACIMY WSZYSCY. A UBODZY POLACY (CZYLI WYBORCY PIS-U) NAWET WIĘKSZĄ CZĘŚĆ SWOICH PRZYCHODÓW, NIŻ ZAMOŻNIEJSI OBYWATELE.</b></h4><p>Komorowski pokazał, że słabo orientuje się w polskich realiach podatkowych oraz sytuacji mniej od siebie zamożnych obywateli. Powtarza krzywdzące stereotypy i odwraca wzrok od prawdziwych problemów polskiej gospodarki.</p><h2><b>Przestańcie być biedni!</b></h2><p>Zacznijmy od tego, skąd były prezydent wyciąga takie wnioski. Danych o dochodach głosujących nie zbiera bowiem ani Państwowa Komisja Wyborcza (PKW), ani realizująca <a href="https://oko.press/tajemnice-exit-polls-oko-press-ujawnia-czego-sie-dowiemy-dzis-o-21-00/">sondaże exit poll</a> firma IPSOS. Z informacji tej pierwszej wiadomo jednak, jak głosowały poszczególne powiaty i województwa, a tej drugiej – przedstawiciele poszczególnych grup zawodowych.</p><p>PiS zdobywało głosy przede wszystkim w długotrwale uboższych województwach Polski wschodniej, centralnej i południowej:</p><ul><li>Lubelskim (59 proc. głosów za PiS)</li><li>Łódzkim (46,7 proc.)</li><li>Małopolskim (55,8 proc.)</li><li>Mazowieckim (42,9 proc. – przeciwnie głosowała tylko bogata aglomeracja warszawska)</li><li>Podlaskim (54,4 proc.)</li><li>Podkarpackim (65,1 proc.)</li><li>Śląskim (43,3 proc.)</li><li>Świętokrzyskim (57,85 proc.)</li><li>Warmińsko-Mazurskim (42,15 proc.)</li></ul><p>Taki stan rzeczy powtarza się w tych regionach od lat. Wytarł się już wyborczy żart, że po wynikach „widać granice zaborów”.</p><p><b>  </b><a href="https://public.flourish.studio/visualisation/382407/?utm_source=showcase&amp;utm_campaign=visualisation/382407"><b>A Flourish data visualisation</b></a></p><p>Gdy brać pod uwagę demografię, na PiS zagłosowali:</p><ul><li>Bezrobotni (54,5 proc. głosów za PiS)</li><li>Emeryci (56,4 proc.)</li><li>Rolnicy (72,3 proc.)</li><li>Robotnicy (59,8 proc.)</li></ul><p>To grupy gorzej sytuowane niż przedsiębiorcy czy specjaliści, które w badaniu IPSOS deklarowały poparcie dla Koalicji Obywatelskiej. A z przedwyborczego sondażu OKO.press wynika, że to</p><p><b>wśród najmniej zarabiających poparcie dla Prawa i Sprawiedliwości było najwyższe.</b></p><p>PiS wygrał jedynie w grupach osób zarabiających do 1500 zł oraz 1501-2500 zł (poparcie odpowiednio 55 i 48 proc.), gdy we wszystkich zamożniejszych prowadziła Koalicja.</p><p>Prezydent Komorowski wysyła zatem komunikat, że wyborcy PiS pasożytują na podatkach płaconych przez wyborców innych partii. Nie mówi wprost, o kogo chodzi, ale łatwo wywnioskować, że ma na myśli biednych.</p><h2><b>Jak nie płacić podatków</b></h2><p>Mówiąc, że jakiś krąg „nie płaci podatków”, Bronisław Komorowski używa formy nazywanej w logice kwantyfikatorem wielkim, sugerując, że każdy przedstawiciel „kręgów” głosujących na PiS nie płaci podatków. Jest wręcz przeciwnie: każdy wyborca PiS, nawet bezrobotny, podatki płaci. Co więcej, robi to też wyborca skrajnego wolnorynkowca Janusza Korwin-Mikkego, choć pewnie bardzo nie chce.</p><p>Oprócz podatków dochodowych PIT i CIT, w Polsce obowiązują bowiem i inne daniny. Najpopularniejszy z nich to VAT, czyli podatek od towarów i usług, wliczony zazwyczaj w ich cenę przy zakupie – odpowiada za ok. 40 proc. wpływów do budżetu państwa. Z kolei rolnicy zamiast PIT płacą podatek rolny, zależny nie od przychodów, a od posiadanego areału i cen zboża. Jest też akcyza, która ma zniechęcać do zakupu określonych produktów (np. alkoholu, papierosów czy paliw kopalnych), a także podatki od nieruchomości, od spadków i darowizn czy też czynności cywilnoprawnych – i jeszcze kilka innych.</p><p>Przyjmijmy, że prezydent użył skrótu myślowego, a chodziło mu o grupy, które wpłacają relatywnie mniej do wspólnej kasy, bo zarabiają mniej – jako że wykonują gorzej płatne zawody, są zależni od wypłat socjalnych lub mieszkają w biedniejszym regionie.</p><h2><b>Ulgi dla bogatych</b></h2><p>Wciąż jednak prezydent mija się z prawdą. Z <a href="https://www.gov.pl/web/finanse/wybrane-aspekty-systemu-podatkowo-skladkowego-na-podstawie-danych-pit-i-zus-2016">dokumentu Ministerstwa Finansów</a><i>Wybrane aspekty systemu podatkowo-składkowego na podstawie danych PIT i ZUS 2016</i> wynika bowiem, że</p><p><b>grupy najsłabiej zarabiające oddają państwu</b> <b>większą</b> <b>część swojego przychodu niż lepiej sytuowani.</b> </p><p>Osoby zarabiające do 10 tys. zł brutto rocznie przekazują w podatku dochodowym i składkach aż 59,9 proc. swoich przychodów. Drugą pod względem obciążeń grupą jest klasa średnia – zarabiając 20 do 100 tys. zł brutto oddajemy między 11,5 a 18,6 punktu procentowego więcej niż milionerzy. Ci ostatni składają się na usługi publiczne jedynie w 20,4 procent przychodu.</p><p>Dzieje się tak, gdyż najlepiej zarabiającym opłaca się korzystać z 19-procentowego podatku liniowego, aby uniknąć wejścia w drugi  próg podatkowy (32-procentową stawkę płaci zaledwie ok. 3 proc. Polaków). Do tego składki ZUS mniej więcej właśnie od bariery 100 tys. zł przychodu nie rosną proporcjonalnie do przychodu. Podobnie ze składką zdrowotną.</p><p>Nawet jeśli mniejszy procent zarobków bogacza to i tak więcej w liczbie bezwzględnej, to</p><p><b>państwo utrzymuje się głównie dzięki średnio i słabo zarabiającym.</b></p><h2><b>Biedny dwa razy płaci</b></h2><p>Sytuację mniej majętnych pogarsza VAT, gdyż znów przeznaczają na podatek większy odsetek przychodów, niż bogaci.</p><p><b>„Najbiedniejsze 10 proc. płaci VAT o wartości odpowiadającej przeciętnie 16,3 proc. swojego dochodu, a najbogatsze 10 proc. Polaków – 6,8 proc.”</b></p><p>– wyliczyła w 2015 r. fundacja <a href="http://www.cenea.org.pl/images/stories/pdf/press_releases/raport1_vat_press.pdf">Centrum Analiz Ekonomicznych</a>. </p><p>Dzieje się tak, bo większą część domowych budżetów zajmuje u biedniejszych konsumpcja bieżąca. Osoba zarabiająca 10 razy więcej nie zje bowiem 5 razy więcej bochenków 2-krotnie droższego chleba dziennie, nie zużywa też 10 razy więcej prądu. Co więcej, prowadząc działalność gospodarczą osoba bogatsza może też odliczyć podatek naliczony przy zakupie np. komputera od tego, co sama musi zapłacić. Nie pomaga fakt, że Polska ma obok Węgier i Chorwacji <a href="https://en.wikipedia.org/wiki/European_Union_value_added_tax">jedną z najwyższych stawek VAT w regionie.</a></p><h2><b>Platforma mogła, ale nie zmieniła</b></h2><p>To za prezydentury Bronisława Komorowskiego rząd Donalda Tuska podniósł stawkę VAT o 1 punkt procentowy, co znów najbardziej uderzyło w uboższych (podwyżka miała być tymczasowa, jednak rządy Prawa i Sprawiedliwości nie zrezygnowały z dodatkowych wpływów do budżetu). Podpisując ustawę powinien znać analizy, które dotyczą wpływu VAT na poszczególne grupy płatników. </p><p>A nawet jeśli prezydent podziela <a href="https://www.rp.pl/Podatek-dochodowy/302199996-Rolnicy-jakie-przychody-sa-obciazone-podatkiem-dochodowym.html">zdanie części ekspertów</a>, że ryczałtowy podatek rolny zamiast PIT i ubezpieczenie w KRUS zamiast ZUS to „nieuzasadnione uprzywilejowanie” dla rolników, to powinien zastanowić, się dlaczego <a href="https://finanse.wp.pl/to-poczatek-konca-krus-6114118106986113a">mimo wielu przymiarek</a> Platforma nie zdecydowała się na likwidację specjalnego rolniczego ubezpieczenia – a nie oskarżać dziś mieszkańców wsi, że „nie płacą” podatków.</p><p>Podtrzymywanie bezpodstawnej opinii, wedle której uboższe grupy pasożytują na pracy bogatszych jest wyjątkowo szkodliwe. Prowadzi do stygmatyzacji słabiej zarabiających i ich rodzin. Bez nacisku społeczeństwa na egzekwowanie progresji podatkowej najbogatsi będą pomnażać swój majątek kosztem publicznej opieki zdrowotnej, edukacji czy transportu – oraz polskiej klasy średniej.</p><p>Klasistowski język i bezduszna narracja, by „wziąć kredyt i zmienić pracę”, z której korzystał Komorowski przed porażką z Andrzejem Dudą, z pewnością nie przysporzą KE wyborców wśród tych, którym w życiu wiedzie się gorzej.</p>	14	f
13	Jednak walka o uratowanie wolnych krów z Deszczna jeszcze nie zakończona. Prawnicy się odwołują od decyzji sądu, który przyklepał wniosek o zabicie stada, obrońcy zwierząt koczują obok stada pilnując krów. Pojawiły się sygnały, że możliwa jest ingerencja Jarosława Kaczyńskiego. Przypomnijmy, że w całym kraju są chętni do przyjęcia wszystkich krów	Jednak walka o uratowanie wolnych krów z Deszczna jeszcze nie zakończona. Prawnicy się odwołują od decyzji sądu, który przyklepał wniosek o zabicie stada, obrońcy zwierząt koczują obok stada pilnując krów. Pojawiły się sygnały, że możliwa jest ingerencja Jarosława Kaczyńskiego. Przypomnijmy, że w całym kraju są chętni do przyjęcia wszystkich krów	Jednak walka o uratowanie wolnych krów z Deszczna jeszcze nie zakończona. Prawnicy się odwołują od decyzji sądu, który przyklepał wniosek o zabicie stada, obrońcy zwierząt koczują obok stada pilnując krów. Pojawiły się sygnały, że możliwa jest ingerencja Jarosława Kaczyńskiego. Przypomnijmy, że w całym kraju są chętni do przyjęcia wszystkich krów	2019-05-29	<p>Krowy są trochę nieśmiałe, ale węszą ciekawie, kiedy od strony koczujących nieopodal aktywistów zawieje wiatr. Odważniejsza grupka byczków podchodzi bliżej. Powąchały już jak pachną ludzie z Poznania, Szczecina, Piły, Łodzi, Gdańska czy Warszawy. Wszystko w błogim otoczeniu łąk Santockiego Zakola koło Ciecierzyc, przy równie błogiej nieświadomości wolnościowych krów, że toczy się walka o ich życie.</p><p>O historii krów z gminy Deszczno niedaleko Gorzowa Wlk. pisaliśmy już wielokrotnie. Mimo presji opinii publicznej, która wstawiła się za krowami i absurdalnych podstaw wydania przez Powiatowego Lekarza Weterynarii nakazu uboju krów od kilkunastu lat żyjących wolno, w poniedziałek 28 maja Główny Inspektorat Weterynarii wydał <a href="https://www.wetgiw.gov.pl/main/aktualnosci/Komunikat-dotyczacy-stada-krow-przebywajacych-na-terenie-gminy-Deszczno-w-woj.-lubuskim-cd/idn:963?fbclid=IwAR0zII2fgrs0vXqYwd2oTaz8s2TP5rhZ1NSttZZdEOwuaCLtKc5osbVAfLs">komunikat</a>, w którym podtrzymuje decyzję.</p><p>Obrońcy krów walczą dalej, dzisiaj złożono do prokuratury<a href="https://www.facebook.com/wimieniuzwierzat/videos/439996493443739/UzpfSTEyODAxODY4MDI6MTAyMTk1NjA0NjY3NDM4NDI/"> wiosek o kasację</a> od wyroku sądu, który poparł wniosek weterynarzy zabicia krów uzasadniając go przepisami ustawy o ochronie zwierząt.</p><p><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>170 krów żyje wolno i dziko w lubuskiem. Weterynarz i wojewoda chcą je zabić</b></a></h4><p><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>ROBERT JURSZO  6 MAJA 2019</b></a></p><p>Niespodziewanie pojawiła się jednak nadzieja i sygnały o zmianie podejścia urzędników. Możliwe, że jest to wynik interwencji Jarosława Kaczyńskiego. Aktywiści, którzy koczują przy krowach od piątku, pełniąc warty w dzień i w nocy, wciąż boją się najgorszego. Sytuacja może się zmienić w każdej chwili.</p><h2><b>Krótka historia krowiej wolności</b></h2><p>O krowach z gminy Deszczno (woj. lubuskie) głośno zrobiło się na początku maja, chociaż hasały dziko po lokalnych polach od kilkunastu lat. Ich właściciel pewnego dnia po prostu je porzucił, a one zaczęły żyć po swojemu. Stado rozrosło się do 185 osobników. Są w dobrej formie, chociaż od lat nie były ewidencjonowane ani badane weterynaryjnie.</p><p>Krowy nie wiedziały niestety, że prawo zabrania im takiej samowoli, a w urzędniczych oczach nagle stały się zagrożeniem epidemiologicznym. Powiatowy Lekarz Weterynarii z Gorzowa Wielkopolskiego wydał nakaz uśmiercenia i zutylizowania zwierząt, a sąd nakazał wykonanie decyzji.</p><p>Od tamtej pory toczy się nierówna walka: aktywiści kontra biurokratyczna machina. Bo nie chodzi już nawet o to, że z krowami nie ma co zrobić. W ciągu kilku dni od nagłośnienia sprawy znalazły się osoby i organizacje, które gotowe są przyjąć krowy na własne utrzymanie.</p><p><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>Dzikie krowy można uratować. Nie tylko 185, ale nawet 500. Teraz wszystko w rękach Lekarza Weterynarii</b></a></h4><p><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>ROBERT JURSZO  8 MAJA 2019</b></a></p><p>Wszystko wskazywało na to, że krowią historię czeka szczęśliwe zakończenie. „Po raz pierwszy społeczeństwo tak wyraźnie upomniało się o prawo do życia dla zwierząt zwykle traktowanych tylko jako produkt w przemyśle mięsnym” – mówi mec. Karolina Kuszlewicz, Rzeczniczka ds. Zwierząt przy Polskim Towarzystwie Etycznym.Niestety, rzeźniczej machiny tak łatwo się nie powstrzyma.</p><h2><b>Zutylizować</b></h2><p>„Decyzją Inspekcji Weterynaryjnej wolne krowy z województwa lubuskiego zostaną zabite i zutylizowane. Egzekucja wykonana będzie tydzień po wyborach do Parlamentu Europejskiego” – poinformował na Twitterze Konrad Kuźmiński z Dolnośląskiego Inspektoratu Ochrony Zwierząt. Informacje uzyskał<a href="https://twitter.com/KuzminskiKonrad/status/1130952247083454466"> nieoficjalnie</a> od jednego z pracowników Powiatowego Inspektoratu Weterynarii, który z obawy przed zwolnieniem wolał pozostać anonimowy.</p><p>Wszystko wskazywało na to, że urzędnicy chcieli przeczekać okres medialnego zainteresowania tematem i zabić „po cichu” krowy, gdy oczy mediów skupione będą na czym innym.</p><p><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>Dzikie krowy z lubuskiego miały zostać zabite w tajemnicy po eurowyborach. Ale się wydało</b></a></h4><p><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>ROBERT JURSZO  23 MAJA 2019</b></a></p><p>„Krowy padły ofiarą zdecydowanie zbyt uproszczonego stosowania prawa” – mówi OKO.press mec. Kuszlewicz, która złożyła już wniosek do Powiatowego Inspektoratu Weterynarii o uchylenie decyzji, do Wojewódzkiego Inspektoratu Weterynarii o stwierdzenie jej nieważności oraz do Prokuratury Generalnej o złożenie kasacji od wyroku w sprawie krów.</p><p>„Wszystkie te kroki prawne oparte są na przepisach prawa i organy Inspekcji mają obowiązek je rozpatrzyć” – mówi mec. Kuszlewicz.</p><p>Miejmy nadzieję, że wnioski zostaną rozpatrzone i do urzędników dotrze informacja o spiętrzeniu absurdów, które mają przesądzić o życiu lub śmierci zwierząt.</p><h2><b>Absurd goni absurd</b></h2><p>W październiku 2018 Powiatowy Lekarz Weterynarii w Gorzowie Wielkopolskim zobowiązał właściciela krów do zabicia 170 sztuk. Właściciel tego nie zrobił.</p><p>„Rozmawialiśmy z nim i z jego bratem. To prości ludzie, mają tu niedaleko dom, są rolnikami. Urzędowe pisma niewiele im mówiły, krów nie chcieli zabijać. Tłumaczyli, że przegrali przetarg na pastwisko i nie mieli gdzie oficjalnie ich wypasać” – mówi Agnieszka z Gorzowa, jedna z aktywistek stojących na straży krów.</p><p>Właściciel odwiedza obozowisko codziennie. „Jest mu żal zwierząt, czuje się winny”.</p><p>Urzędnicy przejęli więc obowiązek wykonania decyzji na siebie, utrzymując, że krowy muszą zostać zabite. Powoływano się przy tym na prawo unijne. „Kłopot w tym, że przepisy prawa unijnego, na których podstawie podjęto decyzję, w ogóle tej sytuacji nie dotyczą. Mówi się tam o ryzyku dla bezpieczeństwa żywności, a żadna z tych krów nie ma przecież spełniać celów produkcyjnych” – tłumaczy mec. Kuszlewicz.</p><p>Krowy mają zostać przebadane (mogłyby do tego posłużyć pieniądze – 300 tys. zł – które przeznaczono już na ich ubój, na razie prężnie działa zbiórka pieniędzy na Facebooku) i trafić do ludzi, którzy zdecydowali się zapewnić im odpowiedni teren i warunki do życia.</p><p>Jeśli decyzja Powiatowego Lekarza Weterynarii oparta jest na nieadekwatnych przepisach, to decyzja sądu, która ją podtrzymała jest już czystym nadużyciem.</p><p>Sprawa została wszczęta z ustawy o ochronie zwierząt, właściciela oskarżono o znęcanie się nad zwierzętami – nie zapewnił im jedzenia, opieki weterynaryjnej.</p><p><b>Zamiast odebrać mu zwierzęta i przekazać je w dobre ręce,  sąd nakazał mu wykonanie decyzji o ich zabiciu. To tak jakby właściciela znęcającego się nad psem skazać za karę na zabicie zwierzęcia. Wszystko w ramach ochrony zwierząt.</b></p><p>„To aberracja” – komentuje mec. Kuszlewicz. – „Proces o ochronie zwierząt ma je chronić, a nie zabijać. Zgodnie z przepisami, jeśli zwierzęta są ofiarami, muszą być obligatoryjnie odebrane właścicielowi i przekazane pod opiekę podmiotu, który zapewni im odpowiednie warunki do życia. Tutaj wyrok sądu jest dla zwierząt gorszy niż zaniedbania właściciela”.</p><h2><b>Krów nie oddamy</b></h2><p>W niedzielę 26 maja, w dzień wyborów do europarlamentu, w Deszcznie przy krowach czuwało około 30 osób, teraz są 3, ale w najbliższych dniach uczestników ma przybyć. „Od piątku ciągle ktoś przy nich jest, jedni przyjeżdżają w dzień, inni pilnują w nocy” – mówi jedna z uczestniczek czuwania, Ewelina Gajda. „Na początku nie było nawet namiotu, więc jedna z dziewczyn spała w szczerym polu”.</p><p>„Jest nas ciągle za mało, ale robimy, co możemy” – mówi Agnieszka. „Warty mamy także w nocy, boimy się, że będą chcieli zabrać krowy po cichu”. Choć po cichu będzie trudno, bo z tego, co opowiadają miejscowi rolnicy, zaganianie tak wielkiego stada może zamienić się w rzeź.</p><p><b>„Najpierw zagania się młode, oddziela się je od reszty. Wtedy zaczyna się chaos, młode się przewracają, łamią nogi, mogą zostać stratowane. Potem przychodzi czas na resztę przerażonego stada. Trudno mi sobie to wszystko wyobrazić, to będzie rzeź” – kiedy Agnieszka opowiada, głos jej się łamie.</b></p><p>„Co wtedy zrobimy? Dużo o tym myślimy. Będziemy patrzeć na rzeź? Nie wiem, czy będę w stanie to wytrzymać”.</p><p>„Liczę, że ktoś w końcu przejrzy na oczy, przecież my chcemy tylko je stąd bezpiecznie zabrać. Podchodzą do nas, nie są agresywne. Są przyjazne, spokojne. Trudno to opisać, panuje tu niesamowita atmosfera, chce się wracać”.</p><p>Agnieszka pisze listy do wszystkich: „Do papieża, do Trumpa, do kogo mogę. W Anglii był spory odzew, pani z Yahoo odezwała się z poparciem, Pamela Anderson odpisała, że popiera, podpisała petycję. Ale do polskich urzędników jakby nic nie docierało”.</p><p>Jeden z listów dostaje też prezes PiS Jarosław Kaczyński, który <a href="https://wiadomosci.onet.pl/tylko-w-onecie/stado-krow-z-deszczna-prezes-pis-jaroslaw-kaczynski-interweniuje/plcdl1r?utm_source=m.facebook.com_viasg_lubuskie&amp;utm_medium=referal&amp;utm_campaign=leo_automatic&amp;srcc=ucs&amp;utm_v=2">miał podobno interweniować w sprawie krów</a> u Ministra Rolnictwa i Rozwoju Wsi.</p><p>„Ostateczna decyzja nie leży jednak w kompetencjach posła na Sejm RP” – informował aktywistów Radosław Fogiel, dyrektor biura poselskiego Kaczyńskiego.</p><p>Nie wiadomo czy prezes opowiadał się za jakimś konkretnym rozwiązaniem. „Jego wielkie serce do zwierząt nie jest tajemnicą” – tłumaczył Fogiel.</p><h2><b>Interwencja</b></h2><p>„Dziś (28 maja 2019) jednak otrzymaliśmy sygnał, że jest przestrzeń do rozmowy z Inspekcją o uratowaniu tych zwierząt. Zobaczymy, jakie będą jej efekty, ale najważniejsze jest teraz, by organy nie działały pochopnie, tylko otworzyły się na to, że istnieją opcje pozwalające pozostawić te krowy przy życiu. Od jutra rana będziemy starali się podjąć te rozmowy” – mówi mec. Kuszlewicz.</p><p>„Wygląda na to, że zmiana wyszła od kierownictwa partii rządzącej” – mówi mówi OKO.press etyk i zoolog prof. Andrzej Elżanowski z Polskiego Towarzystwa Etycznego. – „To nie zmienia oczywiście faktu, że będziemy kontynuować procedury prawne w związku z fatalną decyzją Powiatowego Lekarza Weterynarii i wadliwym wyrokiem sądu”.</p><p>„Może krowy zatrząsną tymi powiatowymi układami, a Inspekcja Weterynaryjna nauczy się respektować wrażliwość społeczną w sprawach, których sama nie rozumie, czyli kwestii etycznego podejścia do zwierząt. Sytuacja krów wywołała wyjątkową reakcję, bo poruszyła zarówno środowisko miejskie, jak i wiejskie. Opinia publiczna była zdecydowanie po stronie krów”.</p><p>„Spokojny będę jednak dopiero, kiedy krowy trafią bezpiecznie na przygotowane dla nich pastwiska” – mówi prof. Elżanowski.</p><p>Na razie decyzja wciąż jest jednak w mocy, a aktywiści obawiają się, że do zabrania krów na ubój dojdzie już w piątek. Apelują o obecność. Wszyscy, którzy nie mogą wybrać się na miejsce, mogą wesprzeć inicjatywę podpisując <a href="https://secure.avaaz.org/pl/community_petitions/G_Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno/?rc=fb&amp;utm_source=sharetools&amp;utm_medium=facebook&amp;utm_campaign=petition-725767-Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno&amp;utm_term=txbidb%2Bpl&amp;fbclid=IwAR0PARNo8r9W7WbR6e8w2YMctX1j_7hMd3YkN_nilgh_0z-XMNT7eehytpQ">petycję</a>. Czuwamy dalej.</p>	<p>Krowy są trochę nieśmiałe, ale węszą ciekawie, kiedy od strony koczujących nieopodal aktywistów zawieje wiatr. Odważniejsza grupka byczków podchodzi bliżej. Powąchały już jak pachną ludzie z Poznania, Szczecina, Piły, Łodzi, Gdańska czy Warszawy. Wszystko w błogim otoczeniu łąk Santockiego Zakola koło Ciecierzyc, przy równie błogiej nieświadomości wolnościowych krów, że toczy się walka o ich życie.</p><p>O historii krów z gminy Deszczno niedaleko Gorzowa Wlk. pisaliśmy już wielokrotnie. Mimo presji opinii publicznej, która wstawiła się za krowami i absurdalnych podstaw wydania przez Powiatowego Lekarza Weterynarii nakazu uboju krów od kilkunastu lat żyjących wolno, w poniedziałek 28 maja Główny Inspektorat Weterynarii wydał <a href="https://www.wetgiw.gov.pl/main/aktualnosci/Komunikat-dotyczacy-stada-krow-przebywajacych-na-terenie-gminy-Deszczno-w-woj.-lubuskim-cd/idn:963?fbclid=IwAR0zII2fgrs0vXqYwd2oTaz8s2TP5rhZ1NSttZZdEOwuaCLtKc5osbVAfLs">komunikat</a>, w którym podtrzymuje decyzję.</p><p>Obrońcy krów walczą dalej, dzisiaj złożono do prokuratury<a href="https://www.facebook.com/wimieniuzwierzat/videos/439996493443739/UzpfSTEyODAxODY4MDI6MTAyMTk1NjA0NjY3NDM4NDI/"> wiosek o kasację</a> od wyroku sądu, który poparł wniosek weterynarzy zabicia krów uzasadniając go przepisami ustawy o ochronie zwierząt.</p><p><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>170 krów żyje wolno i dziko w lubuskiem. Weterynarz i wojewoda chcą je zabić</b></a></h4><p><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>ROBERT JURSZO  6 MAJA 2019</b></a></p><p>Niespodziewanie pojawiła się jednak nadzieja i sygnały o zmianie podejścia urzędników. Możliwe, że jest to wynik interwencji Jarosława Kaczyńskiego. Aktywiści, którzy koczują przy krowach od piątku, pełniąc warty w dzień i w nocy, wciąż boją się najgorszego. Sytuacja może się zmienić w każdej chwili.</p><h2><b>Krótka historia krowiej wolności</b></h2><p>O krowach z gminy Deszczno (woj. lubuskie) głośno zrobiło się na początku maja, chociaż hasały dziko po lokalnych polach od kilkunastu lat. Ich właściciel pewnego dnia po prostu je porzucił, a one zaczęły żyć po swojemu. Stado rozrosło się do 185 osobników. Są w dobrej formie, chociaż od lat nie były ewidencjonowane ani badane weterynaryjnie.</p><p>Krowy nie wiedziały niestety, że prawo zabrania im takiej samowoli, a w urzędniczych oczach nagle stały się zagrożeniem epidemiologicznym. Powiatowy Lekarz Weterynarii z Gorzowa Wielkopolskiego wydał nakaz uśmiercenia i zutylizowania zwierząt, a sąd nakazał wykonanie decyzji.</p><p>Od tamtej pory toczy się nierówna walka: aktywiści kontra biurokratyczna machina. Bo nie chodzi już nawet o to, że z krowami nie ma co zrobić. W ciągu kilku dni od nagłośnienia sprawy znalazły się osoby i organizacje, które gotowe są przyjąć krowy na własne utrzymanie.</p><p><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>Dzikie krowy można uratować. Nie tylko 185, ale nawet 500. Teraz wszystko w rękach Lekarza Weterynarii</b></a></h4><p><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>ROBERT JURSZO  8 MAJA 2019</b></a></p><p>Wszystko wskazywało na to, że krowią historię czeka szczęśliwe zakończenie. „Po raz pierwszy społeczeństwo tak wyraźnie upomniało się o prawo do życia dla zwierząt zwykle traktowanych tylko jako produkt w przemyśle mięsnym” – mówi mec. Karolina Kuszlewicz, Rzeczniczka ds. Zwierząt przy Polskim Towarzystwie Etycznym.Niestety, rzeźniczej machiny tak łatwo się nie powstrzyma.</p><h2><b>Zutylizować</b></h2><p>„Decyzją Inspekcji Weterynaryjnej wolne krowy z województwa lubuskiego zostaną zabite i zutylizowane. Egzekucja wykonana będzie tydzień po wyborach do Parlamentu Europejskiego” – poinformował na Twitterze Konrad Kuźmiński z Dolnośląskiego Inspektoratu Ochrony Zwierząt. Informacje uzyskał<a href="https://twitter.com/KuzminskiKonrad/status/1130952247083454466"> nieoficjalnie</a> od jednego z pracowników Powiatowego Inspektoratu Weterynarii, który z obawy przed zwolnieniem wolał pozostać anonimowy.</p><p>Wszystko wskazywało na to, że urzędnicy chcieli przeczekać okres medialnego zainteresowania tematem i zabić „po cichu” krowy, gdy oczy mediów skupione będą na czym innym.</p><p><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>Dzikie krowy z lubuskiego miały zostać zabite w tajemnicy po eurowyborach. Ale się wydało</b></a></h4><p><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>ROBERT JURSZO  23 MAJA 2019</b></a></p><p>„Krowy padły ofiarą zdecydowanie zbyt uproszczonego stosowania prawa” – mówi OKO.press mec. Kuszlewicz, która złożyła już wniosek do Powiatowego Inspektoratu Weterynarii o uchylenie decyzji, do Wojewódzkiego Inspektoratu Weterynarii o stwierdzenie jej nieważności oraz do Prokuratury Generalnej o złożenie kasacji od wyroku w sprawie krów.</p><p>„Wszystkie te kroki prawne oparte są na przepisach prawa i organy Inspekcji mają obowiązek je rozpatrzyć” – mówi mec. Kuszlewicz.</p><p>Miejmy nadzieję, że wnioski zostaną rozpatrzone i do urzędników dotrze informacja o spiętrzeniu absurdów, które mają przesądzić o życiu lub śmierci zwierząt.</p><h2><b>Absurd goni absurd</b></h2><p>W październiku 2018 Powiatowy Lekarz Weterynarii w Gorzowie Wielkopolskim zobowiązał właściciela krów do zabicia 170 sztuk. Właściciel tego nie zrobił.</p><p>„Rozmawialiśmy z nim i z jego bratem. To prości ludzie, mają tu niedaleko dom, są rolnikami. Urzędowe pisma niewiele im mówiły, krów nie chcieli zabijać. Tłumaczyli, że przegrali przetarg na pastwisko i nie mieli gdzie oficjalnie ich wypasać” – mówi Agnieszka z Gorzowa, jedna z aktywistek stojących na straży krów.</p><p>Właściciel odwiedza obozowisko codziennie. „Jest mu żal zwierząt, czuje się winny”.</p><p>Urzędnicy przejęli więc obowiązek wykonania decyzji na siebie, utrzymując, że krowy muszą zostać zabite. Powoływano się przy tym na prawo unijne. „Kłopot w tym, że przepisy prawa unijnego, na których podstawie podjęto decyzję, w ogóle tej sytuacji nie dotyczą. Mówi się tam o ryzyku dla bezpieczeństwa żywności, a żadna z tych krów nie ma przecież spełniać celów produkcyjnych” – tłumaczy mec. Kuszlewicz.</p><p>Krowy mają zostać przebadane (mogłyby do tego posłużyć pieniądze – 300 tys. zł – które przeznaczono już na ich ubój, na razie prężnie działa zbiórka pieniędzy na Facebooku) i trafić do ludzi, którzy zdecydowali się zapewnić im odpowiedni teren i warunki do życia.</p><p>Jeśli decyzja Powiatowego Lekarza Weterynarii oparta jest na nieadekwatnych przepisach, to decyzja sądu, która ją podtrzymała jest już czystym nadużyciem.</p><p>Sprawa została wszczęta z ustawy o ochronie zwierząt, właściciela oskarżono o znęcanie się nad zwierzętami – nie zapewnił im jedzenia, opieki weterynaryjnej.</p><p><b>Zamiast odebrać mu zwierzęta i przekazać je w dobre ręce,  sąd nakazał mu wykonanie decyzji o ich zabiciu. To tak jakby właściciela znęcającego się nad psem skazać za karę na zabicie zwierzęcia. Wszystko w ramach ochrony zwierząt.</b></p><p>„To aberracja” – komentuje mec. Kuszlewicz. – „Proces o ochronie zwierząt ma je chronić, a nie zabijać. Zgodnie z przepisami, jeśli zwierzęta są ofiarami, muszą być obligatoryjnie odebrane właścicielowi i przekazane pod opiekę podmiotu, który zapewni im odpowiednie warunki do życia. Tutaj wyrok sądu jest dla zwierząt gorszy niż zaniedbania właściciela”.</p><h2><b>Krów nie oddamy</b></h2><p>W niedzielę 26 maja, w dzień wyborów do europarlamentu, w Deszcznie przy krowach czuwało około 30 osób, teraz są 3, ale w najbliższych dniach uczestników ma przybyć. „Od piątku ciągle ktoś przy nich jest, jedni przyjeżdżają w dzień, inni pilnują w nocy” – mówi jedna z uczestniczek czuwania, Ewelina Gajda. „Na początku nie było nawet namiotu, więc jedna z dziewczyn spała w szczerym polu”.</p><p>„Jest nas ciągle za mało, ale robimy, co możemy” – mówi Agnieszka. „Warty mamy także w nocy, boimy się, że będą chcieli zabrać krowy po cichu”. Choć po cichu będzie trudno, bo z tego, co opowiadają miejscowi rolnicy, zaganianie tak wielkiego stada może zamienić się w rzeź.</p><p><b>„Najpierw zagania się młode, oddziela się je od reszty. Wtedy zaczyna się chaos, młode się przewracają, łamią nogi, mogą zostać stratowane. Potem przychodzi czas na resztę przerażonego stada. Trudno mi sobie to wszystko wyobrazić, to będzie rzeź” – kiedy Agnieszka opowiada, głos jej się łamie.</b></p><p>„Co wtedy zrobimy? Dużo o tym myślimy. Będziemy patrzeć na rzeź? Nie wiem, czy będę w stanie to wytrzymać”.</p><p>„Liczę, że ktoś w końcu przejrzy na oczy, przecież my chcemy tylko je stąd bezpiecznie zabrać. Podchodzą do nas, nie są agresywne. Są przyjazne, spokojne. Trudno to opisać, panuje tu niesamowita atmosfera, chce się wracać”.</p><p>Agnieszka pisze listy do wszystkich: „Do papieża, do Trumpa, do kogo mogę. W Anglii był spory odzew, pani z Yahoo odezwała się z poparciem, Pamela Anderson odpisała, że popiera, podpisała petycję. Ale do polskich urzędników jakby nic nie docierało”.</p><p>Jeden z listów dostaje też prezes PiS Jarosław Kaczyński, który <a href="https://wiadomosci.onet.pl/tylko-w-onecie/stado-krow-z-deszczna-prezes-pis-jaroslaw-kaczynski-interweniuje/plcdl1r?utm_source=m.facebook.com_viasg_lubuskie&amp;utm_medium=referal&amp;utm_campaign=leo_automatic&amp;srcc=ucs&amp;utm_v=2">miał podobno interweniować w sprawie krów</a> u Ministra Rolnictwa i Rozwoju Wsi.</p><p>„Ostateczna decyzja nie leży jednak w kompetencjach posła na Sejm RP” – informował aktywistów Radosław Fogiel, dyrektor biura poselskiego Kaczyńskiego.</p><p>Nie wiadomo czy prezes opowiadał się za jakimś konkretnym rozwiązaniem. „Jego wielkie serce do zwierząt nie jest tajemnicą” – tłumaczył Fogiel.</p><h2><b>Interwencja</b></h2><p>„Dziś (28 maja 2019) jednak otrzymaliśmy sygnał, że jest przestrzeń do rozmowy z Inspekcją o uratowaniu tych zwierząt. Zobaczymy, jakie będą jej efekty, ale najważniejsze jest teraz, by organy nie działały pochopnie, tylko otworzyły się na to, że istnieją opcje pozwalające pozostawić te krowy przy życiu. Od jutra rana będziemy starali się podjąć te rozmowy” – mówi mec. Kuszlewicz.</p><p>„Wygląda na to, że zmiana wyszła od kierownictwa partii rządzącej” – mówi mówi OKO.press etyk i zoolog prof. Andrzej Elżanowski z Polskiego Towarzystwa Etycznego. – „To nie zmienia oczywiście faktu, że będziemy kontynuować procedury prawne w związku z fatalną decyzją Powiatowego Lekarza Weterynarii i wadliwym wyrokiem sądu”.</p><p>„Może krowy zatrząsną tymi powiatowymi układami, a Inspekcja Weterynaryjna nauczy się respektować wrażliwość społeczną w sprawach, których sama nie rozumie, czyli kwestii etycznego podejścia do zwierząt. Sytuacja krów wywołała wyjątkową reakcję, bo poruszyła zarówno środowisko miejskie, jak i wiejskie. Opinia publiczna była zdecydowanie po stronie krów”.</p><p>„Spokojny będę jednak dopiero, kiedy krowy trafią bezpiecznie na przygotowane dla nich pastwiska” – mówi prof. Elżanowski.</p><p>Na razie decyzja wciąż jest jednak w mocy, a aktywiści obawiają się, że do zabrania krów na ubój dojdzie już w piątek. Apelują o obecność. Wszyscy, którzy nie mogą wybrać się na miejsce, mogą wesprzeć inicjatywę podpisując <a href="https://secure.avaaz.org/pl/community_petitions/G_Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno/?rc=fb&amp;utm_source=sharetools&amp;utm_medium=facebook&amp;utm_campaign=petition-725767-Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno&amp;utm_term=txbidb%2Bpl&amp;fbclid=IwAR0PARNo8r9W7WbR6e8w2YMctX1j_7hMd3YkN_nilgh_0z-XMNT7eehytpQ">petycję</a>. Czuwamy dalej.</p>	<p>Krowy są trochę nieśmiałe, ale węszą ciekawie, kiedy od strony koczujących nieopodal aktywistów zawieje wiatr. Odważniejsza grupka byczków podchodzi bliżej. Powąchały już jak pachną ludzie z Poznania, Szczecina, Piły, Łodzi, Gdańska czy Warszawy. Wszystko w błogim otoczeniu łąk Santockiego Zakola koło Ciecierzyc, przy równie błogiej nieświadomości wolnościowych krów, że toczy się walka o ich życie.</p><p>O historii krów z gminy Deszczno niedaleko Gorzowa Wlk. pisaliśmy już wielokrotnie. Mimo presji opinii publicznej, która wstawiła się za krowami i absurdalnych podstaw wydania przez Powiatowego Lekarza Weterynarii nakazu uboju krów od kilkunastu lat żyjących wolno, w poniedziałek 28 maja Główny Inspektorat Weterynarii wydał <a href="https://www.wetgiw.gov.pl/main/aktualnosci/Komunikat-dotyczacy-stada-krow-przebywajacych-na-terenie-gminy-Deszczno-w-woj.-lubuskim-cd/idn:963?fbclid=IwAR0zII2fgrs0vXqYwd2oTaz8s2TP5rhZ1NSttZZdEOwuaCLtKc5osbVAfLs">komunikat</a>, w którym podtrzymuje decyzję.</p><p>Obrońcy krów walczą dalej, dzisiaj złożono do prokuratury<a href="https://www.facebook.com/wimieniuzwierzat/videos/439996493443739/UzpfSTEyODAxODY4MDI6MTAyMTk1NjA0NjY3NDM4NDI/"> wiosek o kasację</a> od wyroku sądu, który poparł wniosek weterynarzy zabicia krów uzasadniając go przepisami ustawy o ochronie zwierząt.</p><p><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>170 krów żyje wolno i dziko w lubuskiem. Weterynarz i wojewoda chcą je zabić</b></a></h4><p><a href="https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/"><b>ROBERT JURSZO  6 MAJA 2019</b></a></p><p>Niespodziewanie pojawiła się jednak nadzieja i sygnały o zmianie podejścia urzędników. Możliwe, że jest to wynik interwencji Jarosława Kaczyńskiego. Aktywiści, którzy koczują przy krowach od piątku, pełniąc warty w dzień i w nocy, wciąż boją się najgorszego. Sytuacja może się zmienić w każdej chwili.</p><h2><b>Krótka historia krowiej wolności</b></h2><p>O krowach z gminy Deszczno (woj. lubuskie) głośno zrobiło się na początku maja, chociaż hasały dziko po lokalnych polach od kilkunastu lat. Ich właściciel pewnego dnia po prostu je porzucił, a one zaczęły żyć po swojemu. Stado rozrosło się do 185 osobników. Są w dobrej formie, chociaż od lat nie były ewidencjonowane ani badane weterynaryjnie.</p><p>Krowy nie wiedziały niestety, że prawo zabrania im takiej samowoli, a w urzędniczych oczach nagle stały się zagrożeniem epidemiologicznym. Powiatowy Lekarz Weterynarii z Gorzowa Wielkopolskiego wydał nakaz uśmiercenia i zutylizowania zwierząt, a sąd nakazał wykonanie decyzji.</p><p>Od tamtej pory toczy się nierówna walka: aktywiści kontra biurokratyczna machina. Bo nie chodzi już nawet o to, że z krowami nie ma co zrobić. W ciągu kilku dni od nagłośnienia sprawy znalazły się osoby i organizacje, które gotowe są przyjąć krowy na własne utrzymanie.</p><p><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>Dzikie krowy można uratować. Nie tylko 185, ale nawet 500. Teraz wszystko w rękach Lekarza Weterynarii</b></a></h4><p><a href="https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/"><b>ROBERT JURSZO  8 MAJA 2019</b></a></p><p>Wszystko wskazywało na to, że krowią historię czeka szczęśliwe zakończenie. „Po raz pierwszy społeczeństwo tak wyraźnie upomniało się o prawo do życia dla zwierząt zwykle traktowanych tylko jako produkt w przemyśle mięsnym” – mówi mec. Karolina Kuszlewicz, Rzeczniczka ds. Zwierząt przy Polskim Towarzystwie Etycznym.Niestety, rzeźniczej machiny tak łatwo się nie powstrzyma.</p><h2><b>Zutylizować</b></h2><p>„Decyzją Inspekcji Weterynaryjnej wolne krowy z województwa lubuskiego zostaną zabite i zutylizowane. Egzekucja wykonana będzie tydzień po wyborach do Parlamentu Europejskiego” – poinformował na Twitterze Konrad Kuźmiński z Dolnośląskiego Inspektoratu Ochrony Zwierząt. Informacje uzyskał<a href="https://twitter.com/KuzminskiKonrad/status/1130952247083454466"> nieoficjalnie</a> od jednego z pracowników Powiatowego Inspektoratu Weterynarii, który z obawy przed zwolnieniem wolał pozostać anonimowy.</p><p>Wszystko wskazywało na to, że urzędnicy chcieli przeczekać okres medialnego zainteresowania tematem i zabić „po cichu” krowy, gdy oczy mediów skupione będą na czym innym.</p><p><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>Dzikie krowy z lubuskiego miały zostać zabite w tajemnicy po eurowyborach. Ale się wydało</b></a></h4><p><a href="https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/"><b>ROBERT JURSZO  23 MAJA 2019</b></a></p><p>„Krowy padły ofiarą zdecydowanie zbyt uproszczonego stosowania prawa” – mówi OKO.press mec. Kuszlewicz, która złożyła już wniosek do Powiatowego Inspektoratu Weterynarii o uchylenie decyzji, do Wojewódzkiego Inspektoratu Weterynarii o stwierdzenie jej nieważności oraz do Prokuratury Generalnej o złożenie kasacji od wyroku w sprawie krów.</p><p>„Wszystkie te kroki prawne oparte są na przepisach prawa i organy Inspekcji mają obowiązek je rozpatrzyć” – mówi mec. Kuszlewicz.</p><p>Miejmy nadzieję, że wnioski zostaną rozpatrzone i do urzędników dotrze informacja o spiętrzeniu absurdów, które mają przesądzić o życiu lub śmierci zwierząt.</p><h2><b>Absurd goni absurd</b></h2><p>W październiku 2018 Powiatowy Lekarz Weterynarii w Gorzowie Wielkopolskim zobowiązał właściciela krów do zabicia 170 sztuk. Właściciel tego nie zrobił.</p><p>„Rozmawialiśmy z nim i z jego bratem. To prości ludzie, mają tu niedaleko dom, są rolnikami. Urzędowe pisma niewiele im mówiły, krów nie chcieli zabijać. Tłumaczyli, że przegrali przetarg na pastwisko i nie mieli gdzie oficjalnie ich wypasać” – mówi Agnieszka z Gorzowa, jedna z aktywistek stojących na straży krów.</p><p>Właściciel odwiedza obozowisko codziennie. „Jest mu żal zwierząt, czuje się winny”.</p><p>Urzędnicy przejęli więc obowiązek wykonania decyzji na siebie, utrzymując, że krowy muszą zostać zabite. Powoływano się przy tym na prawo unijne. „Kłopot w tym, że przepisy prawa unijnego, na których podstawie podjęto decyzję, w ogóle tej sytuacji nie dotyczą. Mówi się tam o ryzyku dla bezpieczeństwa żywności, a żadna z tych krów nie ma przecież spełniać celów produkcyjnych” – tłumaczy mec. Kuszlewicz.</p><p>Krowy mają zostać przebadane (mogłyby do tego posłużyć pieniądze – 300 tys. zł – które przeznaczono już na ich ubój, na razie prężnie działa zbiórka pieniędzy na Facebooku) i trafić do ludzi, którzy zdecydowali się zapewnić im odpowiedni teren i warunki do życia.</p><p>Jeśli decyzja Powiatowego Lekarza Weterynarii oparta jest na nieadekwatnych przepisach, to decyzja sądu, która ją podtrzymała jest już czystym nadużyciem.</p><p>Sprawa została wszczęta z ustawy o ochronie zwierząt, właściciela oskarżono o znęcanie się nad zwierzętami – nie zapewnił im jedzenia, opieki weterynaryjnej.</p><p><b>Zamiast odebrać mu zwierzęta i przekazać je w dobre ręce,  sąd nakazał mu wykonanie decyzji o ich zabiciu. To tak jakby właściciela znęcającego się nad psem skazać za karę na zabicie zwierzęcia. Wszystko w ramach ochrony zwierząt.</b></p><p>„To aberracja” – komentuje mec. Kuszlewicz. – „Proces o ochronie zwierząt ma je chronić, a nie zabijać. Zgodnie z przepisami, jeśli zwierzęta są ofiarami, muszą być obligatoryjnie odebrane właścicielowi i przekazane pod opiekę podmiotu, który zapewni im odpowiednie warunki do życia. Tutaj wyrok sądu jest dla zwierząt gorszy niż zaniedbania właściciela”.</p><h2><b>Krów nie oddamy</b></h2><p>W niedzielę 26 maja, w dzień wyborów do europarlamentu, w Deszcznie przy krowach czuwało około 30 osób, teraz są 3, ale w najbliższych dniach uczestników ma przybyć. „Od piątku ciągle ktoś przy nich jest, jedni przyjeżdżają w dzień, inni pilnują w nocy” – mówi jedna z uczestniczek czuwania, Ewelina Gajda. „Na początku nie było nawet namiotu, więc jedna z dziewczyn spała w szczerym polu”.</p><p>„Jest nas ciągle za mało, ale robimy, co możemy” – mówi Agnieszka. „Warty mamy także w nocy, boimy się, że będą chcieli zabrać krowy po cichu”. Choć po cichu będzie trudno, bo z tego, co opowiadają miejscowi rolnicy, zaganianie tak wielkiego stada może zamienić się w rzeź.</p><p><b>„Najpierw zagania się młode, oddziela się je od reszty. Wtedy zaczyna się chaos, młode się przewracają, łamią nogi, mogą zostać stratowane. Potem przychodzi czas na resztę przerażonego stada. Trudno mi sobie to wszystko wyobrazić, to będzie rzeź” – kiedy Agnieszka opowiada, głos jej się łamie.</b></p><p>„Co wtedy zrobimy? Dużo o tym myślimy. Będziemy patrzeć na rzeź? Nie wiem, czy będę w stanie to wytrzymać”.</p><p>„Liczę, że ktoś w końcu przejrzy na oczy, przecież my chcemy tylko je stąd bezpiecznie zabrać. Podchodzą do nas, nie są agresywne. Są przyjazne, spokojne. Trudno to opisać, panuje tu niesamowita atmosfera, chce się wracać”.</p><p>Agnieszka pisze listy do wszystkich: „Do papieża, do Trumpa, do kogo mogę. W Anglii był spory odzew, pani z Yahoo odezwała się z poparciem, Pamela Anderson odpisała, że popiera, podpisała petycję. Ale do polskich urzędników jakby nic nie docierało”.</p><p>Jeden z listów dostaje też prezes PiS Jarosław Kaczyński, który <a href="https://wiadomosci.onet.pl/tylko-w-onecie/stado-krow-z-deszczna-prezes-pis-jaroslaw-kaczynski-interweniuje/plcdl1r?utm_source=m.facebook.com_viasg_lubuskie&amp;utm_medium=referal&amp;utm_campaign=leo_automatic&amp;srcc=ucs&amp;utm_v=2">miał podobno interweniować w sprawie krów</a> u Ministra Rolnictwa i Rozwoju Wsi.</p><p>„Ostateczna decyzja nie leży jednak w kompetencjach posła na Sejm RP” – informował aktywistów Radosław Fogiel, dyrektor biura poselskiego Kaczyńskiego.</p><p>Nie wiadomo czy prezes opowiadał się za jakimś konkretnym rozwiązaniem. „Jego wielkie serce do zwierząt nie jest tajemnicą” – tłumaczył Fogiel.</p><h2><b>Interwencja</b></h2><p>„Dziś (28 maja 2019) jednak otrzymaliśmy sygnał, że jest przestrzeń do rozmowy z Inspekcją o uratowaniu tych zwierząt. Zobaczymy, jakie będą jej efekty, ale najważniejsze jest teraz, by organy nie działały pochopnie, tylko otworzyły się na to, że istnieją opcje pozwalające pozostawić te krowy przy życiu. Od jutra rana będziemy starali się podjąć te rozmowy” – mówi mec. Kuszlewicz.</p><p>„Wygląda na to, że zmiana wyszła od kierownictwa partii rządzącej” – mówi mówi OKO.press etyk i zoolog prof. Andrzej Elżanowski z Polskiego Towarzystwa Etycznego. – „To nie zmienia oczywiście faktu, że będziemy kontynuować procedury prawne w związku z fatalną decyzją Powiatowego Lekarza Weterynarii i wadliwym wyrokiem sądu”.</p><p>„Może krowy zatrząsną tymi powiatowymi układami, a Inspekcja Weterynaryjna nauczy się respektować wrażliwość społeczną w sprawach, których sama nie rozumie, czyli kwestii etycznego podejścia do zwierząt. Sytuacja krów wywołała wyjątkową reakcję, bo poruszyła zarówno środowisko miejskie, jak i wiejskie. Opinia publiczna była zdecydowanie po stronie krów”.</p><p>„Spokojny będę jednak dopiero, kiedy krowy trafią bezpiecznie na przygotowane dla nich pastwiska” – mówi prof. Elżanowski.</p><p>Na razie decyzja wciąż jest jednak w mocy, a aktywiści obawiają się, że do zabrania krów na ubój dojdzie już w piątek. Apelują o obecność. Wszyscy, którzy nie mogą wybrać się na miejsce, mogą wesprzeć inicjatywę podpisując <a href="https://secure.avaaz.org/pl/community_petitions/G_Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno/?rc=fb&amp;utm_source=sharetools&amp;utm_medium=facebook&amp;utm_campaign=petition-725767-Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno&amp;utm_term=txbidb%2Bpl&amp;fbclid=IwAR0PARNo8r9W7WbR6e8w2YMctX1j_7hMd3YkN_nilgh_0z-XMNT7eehytpQ">petycję</a>. Czuwamy dalej.</p>	15	f
22	Lekarze mają dość. Dość pracy w źle zorganizowanym, skrajnie niedofinansowanym systemie. W sobotę wychodzą na ulice. Tym razem walczą nie o własne pensje, lecz o normalność w ochronie zdrowia. Rządzący udają, że problemu nie ma. Ale bez radykalnego wzrostu nakładów, będzie jeszcze gorzej. Będziemy szybciej umierać, kolejki się jeszcze wydłużą	Lekarze mają dość. Dość pracy w źle zorganizowanym, skrajnie niedofinansowanym systemie. W sobotę wychodzą na ulice. Tym razem walczą nie o własne pensje, lecz o normalność w ochronie zdrowia. Rządzący udają, że problemu nie ma. Ale bez radykalnego wzrostu nakładów, będzie jeszcze gorzej. Będziemy szybciej umierać, kolejki się jeszcze wydłużą	Lekarze mają dość. Dość pracy w źle zorganizowanym, skrajnie niedofinansowanym systemie. W sobotę wychodzą na ulice. Tym razem walczą nie o własne pensje, lecz o normalność w ochronie zdrowia. Rządzący udają, że problemu nie ma. Ale bez radykalnego wzrostu nakładów, będzie jeszcze gorzej. Będziemy szybciej umierać, kolejki się jeszcze wydłużą	2019-05-31	<p>„My, lekarze, damy sobie radę – mówi dr Bartosz Fiałek, współorganizator protestu – Mamy kolegów w szpitalu, którzy zawsze pomogą, jak zachorujemy. A w najgorszym razie wyjedziemy pracować w Unii. Pacjenci są w gorszej sytuacji. To dla nich walczymy”.</p><p>Zapaść systemu widać w statystykach.</p><h2><b>Przedwcześnie umieramy</b></h2><p>Długość życia Polaków przestała się już praktycznie wydłużać. Między 2014 a 2017 rokiem wzrosła w przypadku zarówno mężczyzn jak i kobiet zaledwie o 0,2 roku. To najgorszy wynik od 26 lat.</p><p>Wskaźnik długości życia w którymś momencie zawsze przestaje rosnąć (mimo ogromnych postępów medycyny jesteśmy śmiertelni), ale w Polsce zatrzymał się on z pewnością zbyt wcześnie.</p><p><b>Statystyczny Polak żyje dziś 74 lata, Polka 81,8. Tymczasem mężczyźni w UE żyją przeciętnie o prawie 5 lat, kobiety o dwa lata dłużej.</b></p><p><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>Polska nie zdrowieje. Średnia długość życia w naszym kraju przestała rosnąć [Raport o stanie zdrowia społeczeństwa]</b></a></h4><p><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>SŁAWOMIR ZAGÓRSKI  7 LUTEGO 2019</b></a></p><p>W Polsce zdecydowanie za dużo ludzi umiera przedwcześnie. Pokazuje to wskaźnik przedwczesnych zgonów możliwych do uniknięcia dzięki terminowej i skutecznej interwencji medycznej. W 2015 roku był on w Polsce zdecydowanie wyższy od średniej europejskiej. W przypadku kobiet wynosił 121,5 na 100 tys. obywateli (średnia UE – 97,5). Wśród mężczyzn było jeszcze gorzej – 229 wobec średniej UE 158,2.</p><p>Jeśli uwzględnimy obie płcie łącznie, mieliśmy w Polsce 169 zgonów możliwych do uniknięcia na 100 tys. Średnio w Unii było to 127, w Szwajcarii – 75.</p><h2><b>24 miesiące oczekiwania</b></h2><p>Jedną z kluczowych spraw jest dostęp do specjalistów. Według danych Barometru Fundacji Watch Health Care średni czas oczekiwania na wizytę u lekarza specjalisty pomiędzy 2013 a 2019 rokiem wydłużył się u nas dwukrotnie. W październiku/listopadzie 2013 na wizytę czekało się średnio dwa miesiące, na przełomie grudnia 2018 i stycznia 2019 prawie dwa razy dłużej.</p><p>A to tylko średnia. Dostanie się do lekarzy niektórych specjalności graniczy bowiem z cudem.</p><p><b>Czas oczekiwania na wizytę u endokrynologa wyniósł na początku 2019 roku 24 miesiące, do kardiologa dziecięcego – 12 miesięcy.</b></p><p>Polacy, tak jak obywatele wielu innych krajów, coraz częściej chorują na nowotwory złośliwe (wynika to m.in. ze starzenia się społeczeństw, a rak to przede wszystkim choroba ludzi starych). O ile jednak w krajach o dobrze zorganizowanej i właściwie finansowanej ochronie zdrowia rak coraz częściej staje się chorobą przewlekłą, o tyle w Polsce skuteczność leczenia nowotworów w porównaniu z Europą spada. Według raportu NIK z 2018 w Polsce, na Węgrzech i Chorwacji notuje się najwyższy poziom umieralności na choroby nowotworowe w Europie (chodzi tu o liczbę zgonów na 100 tys.). I tak np. w przypadku jednego z najczęstszych nowotworów kobiecych – raka piersi współczynnik zgonów w latach 2010-2016 zwiększył się o 7,2 proc. (raport PZH z 2019 roku)</p><h2><b>Psychiatria dziecięca tonie</b></h2><p>W kraju dramatycznie brakuje lekarzy i pielęgniarek. Przyczyniło się do tego z jednej strony radykalne zmniejszenie liczby miejsc na studiach medycznych, z drugiej masowe wyjazdy pracowników ochrony zdrowia za granicę. System dziś funkcjonuje wyłącznie dzięki najmłodszym lekarzom i emerytom.</p><p><b>Średnia wieku pielęgniarki przekroczyła 50 lat, zaś średnia wieku lekarzy niektórych specjalności np. pediatrów to 60 lat!</b></p><p>O tym jak bardzo brak lekarzy (i wieloletni brak działań zaradczych w tym względzie) może odbić się na zdrowiu obywateli, najlepiej widać w psychiatrii dziecięcej. Organizacja obywatelska Watchdog Polska stworzyła niedawno raport na ten temat. Wnioski są porażające. Jedynym gwarantem miejsca w dziecięcym szpitalu psychiatrycznym jest dziś nieudana próba samobójcza. Pozostali muszą czekać. Na pobyt w 30 szpitalach ze skierowaniem czeka 626 dzieci. A przecież leczenie w takiej placówce to ostateczność.</p><p>Kilkudziesięciu psychiatrów pracuje ponad siły w przepełnionych, nielicznych oddziałach w całym kraju – wynika z raportu.</p><p><b>„Stajemy przed dramatycznym pytaniem: czy powiesi się nastolatek z myślami samobójczymi odesłany ze szpitalnej izby przyjęć do domu, czy ten przyjęty na oddział, któremu nie będziemy w stanie zapewnić opieki?” – mówił kilka miesięcy temu prof. Tomasz Wolańczyk z Dziecięcego Szpitala Klinicznego w Warszawie.</b></p><p><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>Psychiatria dziecięca tonie. Zamyka się kolejny oddział, istnienie kilku innych jest zagrożone</b></a></h4><p><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>SŁAWOMIR ZAGÓRSKI  28 MARCA 2019</b></a></p><p>Cała załoga prowadzonego przez niego oddziału złożyła wymówienia. 1 kwietnia 2019 odeszli i to nie ze względu na niskie płace, lecz z powodu warunków pracy, które były dla nich nie do przyjęcia i zagrażały bezpieczeństwu lekarzy i pacjentów.</p><h2><b>Porozumienie 2018, czyli rozczarowanie i</b></h2><p>W lutym 2018 roku rezydenci z Ogólnopolskiego Związku Zawodowego Lekarzy (OZZL) podpisali porozumienie z Ministrem Zdrowia Łukaszem Szumowskim. Zakładano m. in. podwyżki dla rezydentów i specjalistów. Szczególnie istotnym zapisem była decyzja o wzroście nakładów na ochronę zdrowia w Polsce. Miała ją zagwarantować specjalna ustawa. Ustalono, że nakłady będą rosły stopniowo i w roku 2024 osiągną 6 proc. PKB (początkowo rezydenci zabiegali o 6,8 proc.).</p><p>Ustawę uchwalono w lipcu 2018 jednak rząd zastosował trik i planując wydatki na zdrowie liczy je według PKB sprzed dwóch lat. Ten zgrabny zabieg pozwolił państwu zaoszczędzić w tym roku 7,6 (według innych wyliczeń nawet 10) mld zł na zdrowiu obywateli. Rezydenci oceniają, że w związku ze sposobem liczenia „n – 2” nakłady w 2024 sięgną zamiast obiecanych 6 proc. – 5,33 proc. PKB.</p><p><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>Licząc wydatki na zdrowie w 2019 r., rząd stosuje trik: bierze PKB z 2017. Oszczędza na zdrowiu 7,6 mld</b></a></h4><p><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>SŁAWOMIR ZAGÓRSKI  18 LUTEGO 2019</b></a></p><p>Wydatki na zdrowie wprawdzie rosną, ale dzieje się tak wyłącznie za sprawą wzrostu płac w gospodarce, a zatem i dochodów ze składek płaconych z naszych pensji. Niedawno <a href="https://www.prawo.pl/zdrowie/zwiekszenie-planu-finansowego-nfz-o-4-miliardy-z-poparciem,415466.html">zwiększono plan finansowy NFZ na ten rok o 4 mld 136 mln zł</a>. chwaląc się jednocześnie, iż nakłady po raz pierwszy przekroczą 100 mld zł.</p><p>Nie dodano, że dodatkowe pieniądze pochodzą również z naszych składek (w tym m.in. majowej trzynastki dla emerytów), a poza tym, że starczą na zatkanie największych dziur w systemie. Na porządną naprawę nie ma co liczyć.</p><h2><b>Jasnych punktów prawie brak</b></h2><p>System ledwo zipie od lat. W polskiej ochronie zdrowia trudno nawet wskazać jakiekolwiek jasne punkty (choć naturalnie mamy wielu świetnych, oddanych pacjentom lekarzy). Do niedawna takim punktem była kardiologia. W Polsce udało się doprowadzić do tego, że bardzo spadła umieralność z powodu zawałów. Za tym sukcesem stał oczywiście duży wysiłek merytoryczny i organizacyjny polskich kardiologów, ale przede wszystkim jednak stały pieniądze. NFZ po prostu świetnie wycenił procedurę inwazyjnego badania naczyń wieńcowych (tzw. koronarografię), kluczowej procedury w diagnostyce i leczeniu świeżego zawału.</p><p>W efekcie jak grzyby po deszczu zaczęły wyrastać punkty, w których można było przeprowadzać ww. badanie i od razu leczyć pacjentów. Dziś koronarografia wyceniana jest już znacznie słabiej i możemy obawiać się, że wkrótce odbije się to na statystykach.</p><p>Innym jasnym punktem na mapie polskiej służby zdrowia jest być może opieka hospicyjna. Choć i tu ograniczenia finansowe są duże, a wiele świetnie funkcjonujących polskich hospicjów działałoby znacznie gorzej, gdyby nie pomoc osób wpłacających 1 proc. podatku, bądź wspierających hospicja w inny sposób.</p><h2><b>Nikt za mnie nie zawalczy</b></h2><p>W manifestacji lekarzy 1 czerwca chodzi o warunki pracy, o normalność w polskiej ochronie zdrowia, o bezpieczeństwo.</p><p>Maria Kłosińska, jedna z wiceprzewodniczących Porozumienia Rezydentów OZZL tak tłumaczy na Facebooku swój przyjazd do Warszawy na protest:</p><p>„Hej,</p><p>na pierwszą manifestację, 3 lata temu, w nocy rysowałam dla dzieci transparent.</p><p>Teraz dzieci narysują (i napiszą😮) go same.</p><p>Minęło tyle czasu, jesteśmy wiele kroków dalej, choć czasem czuję jakby nas hamowano tak bardzo, że stoimy w miejscu.</p><p>1 czerwca znów będziemy.</p><p><b>Nie mam złudzeń. Lubię zawód lekarza, ale nikt za mnie nie zawalczy o lepsze warunki jego wykonywania w Polsce. Nie chce mi się za polityków tłumaczyć pacjentom, dlaczego jest taka kolejka, że inne opcje leczenia nie są dostępne „teraz”/ „na NFZ”/ „nie w Polsce”.</b></p><p>Zwłaszcza, że nie ma na to czasu, a sporo pacjentów i tak mi nie uwierzy lub nie zrozumie.</p><p>Przyjeżdżam dla siebie, dla swojej rodziny. Przyjadę, bo inni nadal walczą, bo wszystkiego (zwłaszcza drobnych, ale istotnych spraw) trzeba pilnować, bo czytam, że nie każdy z nas kto powinien, otrzymał należną podwyżkę. Przyjeżdżam, bo jeżeli nasza obecność ma stymulować społecznie zaangażowanych lekarzy do kontynuowania tej walki, to warto, bo my już dobrze wiemy, że nic „samo z siebie” się nie zmieni. Nie chcę by moja nieobecność zaprzepaściła to, co się już udało wywalczyć.</p><p>Przyjadę, bo niektóre historie pacjentów i ich rodzin mogłyby się potoczyć inaczej, gdyby nie ten chory system, a sama na co dzień nic nie mogę z tym zrobić. W końcu to tylko jedna sobota, paręset kilometrów”.</p><h2><b>Idę na manifestację jako jedyna</b></h2><p><b>„Nasza manifestacja jest m.in. po to, byśmy policzyli miecze i zorientowali się ilu nas jest i jak w związku z tym możemy prowadzić dalszą walkę przed wyborami parlamentarnymi”</b><br/><b>– mówił OKO.press niedawno dr Bartosz Fiałek, przewodniczący Regionu Kujawsko-Pomorskiego Ogólnopolskiego Związku Zawodowego Lekarzy.</b></p><p><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>Ludzie, obudźcie się, bo za chwilę nie będzie miał was kto leczyć. 1 czerwca protest lekarzy</b></a></h4><p><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>SŁAWOMIR ZAGÓRSKI  22 KWIETNIA 2019</b></a></p><p>Niestety, manifestacja może wcale nie być tak liczna. OZZL nie jest silną organizacją. Należy do niej zaledwie 10 proc. lekarzy („w krajach, gdzie wykonywanie zawodu lekarza jest i opłacalne, i ergonomiczne, i bezpieczne, uzwiązkowienie sięga 50-70 proc.” – pisze na FB dr Fiałek).</p><p>W ochronie zdrowia pracuje wiele grup zawodowych – lekarze, pielęgniarki, położne, fizjoterapeuci, diagnostycy medyczni, administracja, dietetycy, psycholodzy, logopedzi, technicy, salowe, ratownicy medyczni. Każda z tych grup ma nieco odmienne interesy i rząd (nie tylko zresztą obecny) bardzo umiejętnie to wykorzystuje. Protesty na ogół dotyczą tylko jednej z grup, a z mniejszą liczbą protestujących łatwiej się uporać i coś im obiecać.</p><p>Różne interesy zdarzają się nawet w obrębie jednej grupy zawodowej. I tak np. młodzi lekarze są w zupełnie innej sytuacji niż specjaliści. Ci pierwsi jeszcze się buntują, zależy im, są też na dorobku. Ci drudzy natomiast całkiem nieźle urządzili się w kiepskim systemie. Dobrze zarabiają, ci którzy mają prywatną praktykę, często wręcz świetnie i ani im w głowie wychodzenie na ulicę.</p><p><b>„Pytałam kolegów ze szpitala kto z nich wybiera się na manifestację 1 czerwca” – mówi OKO.press lekarka z długim stażem z jednej z dziecięcych placówek w Warszawie. „Okazało się, że jestem jedyna”.</b></p><h2><b>Solidarność zagrożona</b></h2><p>Podziały wśród pracowników ochrony zdrowia na pewno nie ułatwia walki o radykalną zmianę. Dobrą wiadomością jest to, że w manifestacji 1 czerwca wezmą udział przedstawiciele Ogólnopolskiego Związku Pracodawców Szpitali Powiatowych (OZPSP). Dyrektorzy tych placówek teoretycznie stoją po drugiej stronie barykady. Zatrudniają pracowników, negocjują z nimi stawki. Oni jednak też są coraz bardziej zdesperowani z racji warunków, w jakich przyszło im pracować.</p><p>„Rząd chciałby zamknąć 150 szpitali powiatowych, ale nie ma odwagi powiedzieć tego wprost” – mówił niedawno OKO.press Bogumił Kurowski, dyrektor zarządu Szpitala Powiatowego w Nowym Mieście Lubawskim. Dyrektor Kurowski wraz z kilkoma osobami ze swojego szpitala wybiera się 1 czerwca do Warszawy. „Mam nadzieję, że ludzi będzie tak dużo, że się nie spotkamy” – powiedział nam dwa dni przed manifestacją. Oby.</p><p><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>Rząd chce likwidacji 150 szpitali powiatowych, ale nie ma odwagi powiedzieć tego wprost</b></a></h4><p><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>SŁAWOMIR ZAGÓRSKI  8 MAJA 2019</b></a></p><p>„Z oburzeniem zauważamy, że jako jedyna grupa w ochronie zdrowia domagamy się pieniędzy nie dla siebie, a dla leczonych w szpitalach chorych oraz na realizacje obietnic płacowych ministra, tymczasem zarówno przez Ministerstwo Zdrowia, jak i Narodowy Fundusz Zdrowia, traktowani jesteśmy jak natarczywi żebracy” – czytamy w stanowisku Zarządu OZPSP z 17 maja 2019.</p><h2><b>Do 15 lat więzienia</b></h2><p>„My lekarze damy sobie radę” – mówi wspomniany dr Bartosz Fiałek, jeden z – jak go nazywam – „wojowników”, któremu chce się poświęcać własny czas dla walki o sprawę.</p><p>„My lekarze mamy kolegów w szpitalu, którzy zawsze pomogą, jak zachorujemy. A w najgorszym razie wyjedziemy pracować w Unii. Pacjenci są w gorszej sytuacji. To dla nich walczymy” – mówi dr Fiałek.</p><p>Dlatego organizatorzy protestu gorąco namawiają pacjentów, a więc tak naprawdę nas wszystkich, do przyłączenia się do manifestacji.</p><p>Władze od dawna rozbijają solidarność lekarzy i pacjentów. Tych pierwszych przedstawia się jako pazernych, niedouczonych, działających często na szkodę chorych. Wystarczy wspomnieć głośne słowa Zbigniewa Ziobry z 2007 roku. „Już nikt nigdy przez tego pana pozbawiony życia nie będzie”.</p><p>Dziś Ziobro wziął się za aktualizację kodeksu karnego i proponuje zmianę art. 155 kk, zwiększającą karę za nieumyślne spowodowanie śmierci człowieka z dotychczasowych trzech miesięcy do 5 lat więzienia na rok do 10 lat więzienia. Ponieważ kar powyżej roku nie można warunkowo zawieszać, dlatego lekarz skazany z tego paragrafu pójdzie siedzieć.</p><p>Ziobro chce też wprowadzenia nowego przepisu, który zakłada karę od dwóch do 15 lat więzienia dla kogoś, kto nieumyślnie spowoduje śmierć więcej niż jednej osoby. Tą nowelizacją zaniepokoili się szczególnie ginekolodzy-położnicy odpowiadający za życie dwóch osób – matki i dziecka.</p><p>Ministerstwo Zdrowia nie miało uwag do propozycji Ziobry. W maju nowy kodeks był procedowany w Sejmie i w Senacie, ostateczna wersja czeka na akceptację posłów.</p><p>30 maja Ministerstwo Sprawiedliwości przekonywało, że zmiana przepisu ma nie dotyczyć lekarzy, lecz pospolitych przestępców. MS <a href="https://www.politykazdrowotna.com/45536,ms-zmiana-prawa-nie-uderzy-w-lekarzy-lecz-w-pospolitych-przestepcow">podkreśliło także, że błąd medyczny nie musi (ale może!)</a> być kwalifikowany jako nieumyślne spowodowanie śmierci.</p><h2><b>Jakoś to będzie</b></h2><p>Kwestia zaostrzenia kar, która może dotknąć środowisko lekarskie (a także nas – pacjentów, ponieważ lekarze będą zmuszeni się dodatkowo ubezpieczyć, a my wszyscy za to zapłacić) z pewnością będzie podnoszona podczas manifestacji.</p><p>Ale – powtórzmy – główny nacisk idzie na poprawę systemu. Radykalną poprawę finansową, ponieważ bez pieniędzy, i to dużych, sytuacji nie da się zmienić. To z czym borykamy się dziś, to efekt wieloletnich zaniedbań. Praktycznie wszystkie rządy po 1989 roku uważały, że z ochroną zdrowia „jakoś to będzie”. Ustalono bardzo niską wysokość składki zdrowotnej, oszczędzano na czym się da – na lekach, na kształceniu kadr, na sprzęcie. Zezwolono na rozwój sektora prywatnego, dziś spełnia on ważną rolę w systemie. Ale:</p><ul><li>po pierwsze „zassał” on wielu dobrych lekarzy, którzy odeszli z publicznego sektora,</li><li>po drugie licznych obywateli na niego nie stać,</li><li>wreszcie po trzecie w razie naprawdę poważniej choroby i perspektywy naprawdę dużych wydatków pacjent i tak trafia do publicznej ochrony zdrowia.</li></ul><p>PiS dbając w tej kadencji o „zwykłych obywateli” w kwestii zdrowia zrobił tyle co nic. Trudno za wielką pomoc uznać wprowadzenie bezpłatnych leków dla osób 75+ (lista tych leków jest ograniczona, inne kraje wprowadziły ulgi dla wszystkich emerytów, itd.). Choć trzeba też oddać sprawiedliwość, że ten rząd był pierwszym, który w ogóle zajął się tym problemem.</p><p>Trudno też za sukces uznać zapowiadane szumnie w kampanii zmiany w polskiej onkologii. Miał powstać Narodowy Instytut Raka, a skończyło się na kosztownym i mocno oprotestowanym przez specjalistów pilotażu ds. sieci onkologicznej. Rząd przygotowuje strategię walki z nowotworami odrzuciwszy poprzedni gotowy dokument, bo powstał za PO.</p><h2><b>Lekarze sami nie dadzą rady</b><br/></h2><p>W piątce PiS w ogóle nie wspomniano o zdrowiu uznając, że w ten sposób nie pozyska się głosów wyborców.</p><p>Ale bez odważnej politycznej decyzji na zmianę – jak wspomniałem – nie ma szans. Lekarze sami jej nie wywalczą. Pomóżmy im choćby we własnym interesie. Najbliższa okazja 1 czerwca.</p>	<p>„My, lekarze, damy sobie radę – mówi dr Bartosz Fiałek, współorganizator protestu – Mamy kolegów w szpitalu, którzy zawsze pomogą, jak zachorujemy. A w najgorszym razie wyjedziemy pracować w Unii. Pacjenci są w gorszej sytuacji. To dla nich walczymy”.</p><p>Zapaść systemu widać w statystykach.</p><h2><b>Przedwcześnie umieramy</b></h2><p>Długość życia Polaków przestała się już praktycznie wydłużać. Między 2014 a 2017 rokiem wzrosła w przypadku zarówno mężczyzn jak i kobiet zaledwie o 0,2 roku. To najgorszy wynik od 26 lat.</p><p>Wskaźnik długości życia w którymś momencie zawsze przestaje rosnąć (mimo ogromnych postępów medycyny jesteśmy śmiertelni), ale w Polsce zatrzymał się on z pewnością zbyt wcześnie.</p><p><b>Statystyczny Polak żyje dziś 74 lata, Polka 81,8. Tymczasem mężczyźni w UE żyją przeciętnie o prawie 5 lat, kobiety o dwa lata dłużej.</b></p><p><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>Polska nie zdrowieje. Średnia długość życia w naszym kraju przestała rosnąć [Raport o stanie zdrowia społeczeństwa]</b></a></h4><p><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>SŁAWOMIR ZAGÓRSKI  7 LUTEGO 2019</b></a></p><p>W Polsce zdecydowanie za dużo ludzi umiera przedwcześnie. Pokazuje to wskaźnik przedwczesnych zgonów możliwych do uniknięcia dzięki terminowej i skutecznej interwencji medycznej. W 2015 roku był on w Polsce zdecydowanie wyższy od średniej europejskiej. W przypadku kobiet wynosił 121,5 na 100 tys. obywateli (średnia UE – 97,5). Wśród mężczyzn było jeszcze gorzej – 229 wobec średniej UE 158,2.</p><p>Jeśli uwzględnimy obie płcie łącznie, mieliśmy w Polsce 169 zgonów możliwych do uniknięcia na 100 tys. Średnio w Unii było to 127, w Szwajcarii – 75.</p><h2><b>24 miesiące oczekiwania</b></h2><p>Jedną z kluczowych spraw jest dostęp do specjalistów. Według danych Barometru Fundacji Watch Health Care średni czas oczekiwania na wizytę u lekarza specjalisty pomiędzy 2013 a 2019 rokiem wydłużył się u nas dwukrotnie. W październiku/listopadzie 2013 na wizytę czekało się średnio dwa miesiące, na przełomie grudnia 2018 i stycznia 2019 prawie dwa razy dłużej.</p><p>A to tylko średnia. Dostanie się do lekarzy niektórych specjalności graniczy bowiem z cudem.</p><p><b>Czas oczekiwania na wizytę u endokrynologa wyniósł na początku 2019 roku 24 miesiące, do kardiologa dziecięcego – 12 miesięcy.</b></p><p>Polacy, tak jak obywatele wielu innych krajów, coraz częściej chorują na nowotwory złośliwe (wynika to m.in. ze starzenia się społeczeństw, a rak to przede wszystkim choroba ludzi starych). O ile jednak w krajach o dobrze zorganizowanej i właściwie finansowanej ochronie zdrowia rak coraz częściej staje się chorobą przewlekłą, o tyle w Polsce skuteczność leczenia nowotworów w porównaniu z Europą spada. Według raportu NIK z 2018 w Polsce, na Węgrzech i Chorwacji notuje się najwyższy poziom umieralności na choroby nowotworowe w Europie (chodzi tu o liczbę zgonów na 100 tys.). I tak np. w przypadku jednego z najczęstszych nowotworów kobiecych – raka piersi współczynnik zgonów w latach 2010-2016 zwiększył się o 7,2 proc. (raport PZH z 2019 roku)</p><h2><b>Psychiatria dziecięca tonie</b></h2><p>W kraju dramatycznie brakuje lekarzy i pielęgniarek. Przyczyniło się do tego z jednej strony radykalne zmniejszenie liczby miejsc na studiach medycznych, z drugiej masowe wyjazdy pracowników ochrony zdrowia za granicę. System dziś funkcjonuje wyłącznie dzięki najmłodszym lekarzom i emerytom.</p><p><b>Średnia wieku pielęgniarki przekroczyła 50 lat, zaś średnia wieku lekarzy niektórych specjalności np. pediatrów to 60 lat!</b></p><p>O tym jak bardzo brak lekarzy (i wieloletni brak działań zaradczych w tym względzie) może odbić się na zdrowiu obywateli, najlepiej widać w psychiatrii dziecięcej. Organizacja obywatelska Watchdog Polska stworzyła niedawno raport na ten temat. Wnioski są porażające. Jedynym gwarantem miejsca w dziecięcym szpitalu psychiatrycznym jest dziś nieudana próba samobójcza. Pozostali muszą czekać. Na pobyt w 30 szpitalach ze skierowaniem czeka 626 dzieci. A przecież leczenie w takiej placówce to ostateczność.</p><p>Kilkudziesięciu psychiatrów pracuje ponad siły w przepełnionych, nielicznych oddziałach w całym kraju – wynika z raportu.</p><p><b>„Stajemy przed dramatycznym pytaniem: czy powiesi się nastolatek z myślami samobójczymi odesłany ze szpitalnej izby przyjęć do domu, czy ten przyjęty na oddział, któremu nie będziemy w stanie zapewnić opieki?” – mówił kilka miesięcy temu prof. Tomasz Wolańczyk z Dziecięcego Szpitala Klinicznego w Warszawie.</b></p><p><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>Psychiatria dziecięca tonie. Zamyka się kolejny oddział, istnienie kilku innych jest zagrożone</b></a></h4><p><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>SŁAWOMIR ZAGÓRSKI  28 MARCA 2019</b></a></p><p>Cała załoga prowadzonego przez niego oddziału złożyła wymówienia. 1 kwietnia 2019 odeszli i to nie ze względu na niskie płace, lecz z powodu warunków pracy, które były dla nich nie do przyjęcia i zagrażały bezpieczeństwu lekarzy i pacjentów.</p><h2><b>Porozumienie 2018, czyli rozczarowanie i</b></h2><p>W lutym 2018 roku rezydenci z Ogólnopolskiego Związku Zawodowego Lekarzy (OZZL) podpisali porozumienie z Ministrem Zdrowia Łukaszem Szumowskim. Zakładano m. in. podwyżki dla rezydentów i specjalistów. Szczególnie istotnym zapisem była decyzja o wzroście nakładów na ochronę zdrowia w Polsce. Miała ją zagwarantować specjalna ustawa. Ustalono, że nakłady będą rosły stopniowo i w roku 2024 osiągną 6 proc. PKB (początkowo rezydenci zabiegali o 6,8 proc.).</p><p>Ustawę uchwalono w lipcu 2018 jednak rząd zastosował trik i planując wydatki na zdrowie liczy je według PKB sprzed dwóch lat. Ten zgrabny zabieg pozwolił państwu zaoszczędzić w tym roku 7,6 (według innych wyliczeń nawet 10) mld zł na zdrowiu obywateli. Rezydenci oceniają, że w związku ze sposobem liczenia „n – 2” nakłady w 2024 sięgną zamiast obiecanych 6 proc. – 5,33 proc. PKB.</p><p><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>Licząc wydatki na zdrowie w 2019 r., rząd stosuje trik: bierze PKB z 2017. Oszczędza na zdrowiu 7,6 mld</b></a></h4><p><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>SŁAWOMIR ZAGÓRSKI  18 LUTEGO 2019</b></a></p><p>Wydatki na zdrowie wprawdzie rosną, ale dzieje się tak wyłącznie za sprawą wzrostu płac w gospodarce, a zatem i dochodów ze składek płaconych z naszych pensji. Niedawno <a href="https://www.prawo.pl/zdrowie/zwiekszenie-planu-finansowego-nfz-o-4-miliardy-z-poparciem,415466.html">zwiększono plan finansowy NFZ na ten rok o 4 mld 136 mln zł</a>. chwaląc się jednocześnie, iż nakłady po raz pierwszy przekroczą 100 mld zł.</p><p>Nie dodano, że dodatkowe pieniądze pochodzą również z naszych składek (w tym m.in. majowej trzynastki dla emerytów), a poza tym, że starczą na zatkanie największych dziur w systemie. Na porządną naprawę nie ma co liczyć.</p><h2><b>Jasnych punktów prawie brak</b></h2><p>System ledwo zipie od lat. W polskiej ochronie zdrowia trudno nawet wskazać jakiekolwiek jasne punkty (choć naturalnie mamy wielu świetnych, oddanych pacjentom lekarzy). Do niedawna takim punktem była kardiologia. W Polsce udało się doprowadzić do tego, że bardzo spadła umieralność z powodu zawałów. Za tym sukcesem stał oczywiście duży wysiłek merytoryczny i organizacyjny polskich kardiologów, ale przede wszystkim jednak stały pieniądze. NFZ po prostu świetnie wycenił procedurę inwazyjnego badania naczyń wieńcowych (tzw. koronarografię), kluczowej procedury w diagnostyce i leczeniu świeżego zawału.</p><p>W efekcie jak grzyby po deszczu zaczęły wyrastać punkty, w których można było przeprowadzać ww. badanie i od razu leczyć pacjentów. Dziś koronarografia wyceniana jest już znacznie słabiej i możemy obawiać się, że wkrótce odbije się to na statystykach.</p><p>Innym jasnym punktem na mapie polskiej służby zdrowia jest być może opieka hospicyjna. Choć i tu ograniczenia finansowe są duże, a wiele świetnie funkcjonujących polskich hospicjów działałoby znacznie gorzej, gdyby nie pomoc osób wpłacających 1 proc. podatku, bądź wspierających hospicja w inny sposób.</p><h2><b>Nikt za mnie nie zawalczy</b></h2><p>W manifestacji lekarzy 1 czerwca chodzi o warunki pracy, o normalność w polskiej ochronie zdrowia, o bezpieczeństwo.</p><p>Maria Kłosińska, jedna z wiceprzewodniczących Porozumienia Rezydentów OZZL tak tłumaczy na Facebooku swój przyjazd do Warszawy na protest:</p><p>„Hej,</p><p>na pierwszą manifestację, 3 lata temu, w nocy rysowałam dla dzieci transparent.</p><p>Teraz dzieci narysują (i napiszą😮) go same.</p><p>Minęło tyle czasu, jesteśmy wiele kroków dalej, choć czasem czuję jakby nas hamowano tak bardzo, że stoimy w miejscu.</p><p>1 czerwca znów będziemy.</p><p><b>Nie mam złudzeń. Lubię zawód lekarza, ale nikt za mnie nie zawalczy o lepsze warunki jego wykonywania w Polsce. Nie chce mi się za polityków tłumaczyć pacjentom, dlaczego jest taka kolejka, że inne opcje leczenia nie są dostępne „teraz”/ „na NFZ”/ „nie w Polsce”.</b></p><p>Zwłaszcza, że nie ma na to czasu, a sporo pacjentów i tak mi nie uwierzy lub nie zrozumie.</p><p>Przyjeżdżam dla siebie, dla swojej rodziny. Przyjadę, bo inni nadal walczą, bo wszystkiego (zwłaszcza drobnych, ale istotnych spraw) trzeba pilnować, bo czytam, że nie każdy z nas kto powinien, otrzymał należną podwyżkę. Przyjeżdżam, bo jeżeli nasza obecność ma stymulować społecznie zaangażowanych lekarzy do kontynuowania tej walki, to warto, bo my już dobrze wiemy, że nic „samo z siebie” się nie zmieni. Nie chcę by moja nieobecność zaprzepaściła to, co się już udało wywalczyć.</p><p>Przyjadę, bo niektóre historie pacjentów i ich rodzin mogłyby się potoczyć inaczej, gdyby nie ten chory system, a sama na co dzień nic nie mogę z tym zrobić. W końcu to tylko jedna sobota, paręset kilometrów”.</p><h2><b>Idę na manifestację jako jedyna</b></h2><p><b>„Nasza manifestacja jest m.in. po to, byśmy policzyli miecze i zorientowali się ilu nas jest i jak w związku z tym możemy prowadzić dalszą walkę przed wyborami parlamentarnymi”</b><br/><b>– mówił OKO.press niedawno dr Bartosz Fiałek, przewodniczący Regionu Kujawsko-Pomorskiego Ogólnopolskiego Związku Zawodowego Lekarzy.</b></p><p><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>Ludzie, obudźcie się, bo za chwilę nie będzie miał was kto leczyć. 1 czerwca protest lekarzy</b></a></h4><p><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>SŁAWOMIR ZAGÓRSKI  22 KWIETNIA 2019</b></a></p><p>Niestety, manifestacja może wcale nie być tak liczna. OZZL nie jest silną organizacją. Należy do niej zaledwie 10 proc. lekarzy („w krajach, gdzie wykonywanie zawodu lekarza jest i opłacalne, i ergonomiczne, i bezpieczne, uzwiązkowienie sięga 50-70 proc.” – pisze na FB dr Fiałek).</p><p>W ochronie zdrowia pracuje wiele grup zawodowych – lekarze, pielęgniarki, położne, fizjoterapeuci, diagnostycy medyczni, administracja, dietetycy, psycholodzy, logopedzi, technicy, salowe, ratownicy medyczni. Każda z tych grup ma nieco odmienne interesy i rząd (nie tylko zresztą obecny) bardzo umiejętnie to wykorzystuje. Protesty na ogół dotyczą tylko jednej z grup, a z mniejszą liczbą protestujących łatwiej się uporać i coś im obiecać.</p><p>Różne interesy zdarzają się nawet w obrębie jednej grupy zawodowej. I tak np. młodzi lekarze są w zupełnie innej sytuacji niż specjaliści. Ci pierwsi jeszcze się buntują, zależy im, są też na dorobku. Ci drudzy natomiast całkiem nieźle urządzili się w kiepskim systemie. Dobrze zarabiają, ci którzy mają prywatną praktykę, często wręcz świetnie i ani im w głowie wychodzenie na ulicę.</p><p><b>„Pytałam kolegów ze szpitala kto z nich wybiera się na manifestację 1 czerwca” – mówi OKO.press lekarka z długim stażem z jednej z dziecięcych placówek w Warszawie. „Okazało się, że jestem jedyna”.</b></p><h2><b>Solidarność zagrożona</b></h2><p>Podziały wśród pracowników ochrony zdrowia na pewno nie ułatwia walki o radykalną zmianę. Dobrą wiadomością jest to, że w manifestacji 1 czerwca wezmą udział przedstawiciele Ogólnopolskiego Związku Pracodawców Szpitali Powiatowych (OZPSP). Dyrektorzy tych placówek teoretycznie stoją po drugiej stronie barykady. Zatrudniają pracowników, negocjują z nimi stawki. Oni jednak też są coraz bardziej zdesperowani z racji warunków, w jakich przyszło im pracować.</p><p>„Rząd chciałby zamknąć 150 szpitali powiatowych, ale nie ma odwagi powiedzieć tego wprost” – mówił niedawno OKO.press Bogumił Kurowski, dyrektor zarządu Szpitala Powiatowego w Nowym Mieście Lubawskim. Dyrektor Kurowski wraz z kilkoma osobami ze swojego szpitala wybiera się 1 czerwca do Warszawy. „Mam nadzieję, że ludzi będzie tak dużo, że się nie spotkamy” – powiedział nam dwa dni przed manifestacją. Oby.</p><p><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>Rząd chce likwidacji 150 szpitali powiatowych, ale nie ma odwagi powiedzieć tego wprost</b></a></h4><p><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>SŁAWOMIR ZAGÓRSKI  8 MAJA 2019</b></a></p><p>„Z oburzeniem zauważamy, że jako jedyna grupa w ochronie zdrowia domagamy się pieniędzy nie dla siebie, a dla leczonych w szpitalach chorych oraz na realizacje obietnic płacowych ministra, tymczasem zarówno przez Ministerstwo Zdrowia, jak i Narodowy Fundusz Zdrowia, traktowani jesteśmy jak natarczywi żebracy” – czytamy w stanowisku Zarządu OZPSP z 17 maja 2019.</p><h2><b>Do 15 lat więzienia</b></h2><p>„My lekarze damy sobie radę” – mówi wspomniany dr Bartosz Fiałek, jeden z – jak go nazywam – „wojowników”, któremu chce się poświęcać własny czas dla walki o sprawę.</p><p>„My lekarze mamy kolegów w szpitalu, którzy zawsze pomogą, jak zachorujemy. A w najgorszym razie wyjedziemy pracować w Unii. Pacjenci są w gorszej sytuacji. To dla nich walczymy” – mówi dr Fiałek.</p><p>Dlatego organizatorzy protestu gorąco namawiają pacjentów, a więc tak naprawdę nas wszystkich, do przyłączenia się do manifestacji.</p><p>Władze od dawna rozbijają solidarność lekarzy i pacjentów. Tych pierwszych przedstawia się jako pazernych, niedouczonych, działających często na szkodę chorych. Wystarczy wspomnieć głośne słowa Zbigniewa Ziobry z 2007 roku. „Już nikt nigdy przez tego pana pozbawiony życia nie będzie”.</p><p>Dziś Ziobro wziął się za aktualizację kodeksu karnego i proponuje zmianę art. 155 kk, zwiększającą karę za nieumyślne spowodowanie śmierci człowieka z dotychczasowych trzech miesięcy do 5 lat więzienia na rok do 10 lat więzienia. Ponieważ kar powyżej roku nie można warunkowo zawieszać, dlatego lekarz skazany z tego paragrafu pójdzie siedzieć.</p><p>Ziobro chce też wprowadzenia nowego przepisu, który zakłada karę od dwóch do 15 lat więzienia dla kogoś, kto nieumyślnie spowoduje śmierć więcej niż jednej osoby. Tą nowelizacją zaniepokoili się szczególnie ginekolodzy-położnicy odpowiadający za życie dwóch osób – matki i dziecka.</p><p>Ministerstwo Zdrowia nie miało uwag do propozycji Ziobry. W maju nowy kodeks był procedowany w Sejmie i w Senacie, ostateczna wersja czeka na akceptację posłów.</p><p>30 maja Ministerstwo Sprawiedliwości przekonywało, że zmiana przepisu ma nie dotyczyć lekarzy, lecz pospolitych przestępców. MS <a href="https://www.politykazdrowotna.com/45536,ms-zmiana-prawa-nie-uderzy-w-lekarzy-lecz-w-pospolitych-przestepcow">podkreśliło także, że błąd medyczny nie musi (ale może!)</a> być kwalifikowany jako nieumyślne spowodowanie śmierci.</p><h2><b>Jakoś to będzie</b></h2><p>Kwestia zaostrzenia kar, która może dotknąć środowisko lekarskie (a także nas – pacjentów, ponieważ lekarze będą zmuszeni się dodatkowo ubezpieczyć, a my wszyscy za to zapłacić) z pewnością będzie podnoszona podczas manifestacji.</p><p>Ale – powtórzmy – główny nacisk idzie na poprawę systemu. Radykalną poprawę finansową, ponieważ bez pieniędzy, i to dużych, sytuacji nie da się zmienić. To z czym borykamy się dziś, to efekt wieloletnich zaniedbań. Praktycznie wszystkie rządy po 1989 roku uważały, że z ochroną zdrowia „jakoś to będzie”. Ustalono bardzo niską wysokość składki zdrowotnej, oszczędzano na czym się da – na lekach, na kształceniu kadr, na sprzęcie. Zezwolono na rozwój sektora prywatnego, dziś spełnia on ważną rolę w systemie. Ale:</p><ul><li>po pierwsze „zassał” on wielu dobrych lekarzy, którzy odeszli z publicznego sektora,</li><li>po drugie licznych obywateli na niego nie stać,</li><li>wreszcie po trzecie w razie naprawdę poważniej choroby i perspektywy naprawdę dużych wydatków pacjent i tak trafia do publicznej ochrony zdrowia.</li></ul><p>PiS dbając w tej kadencji o „zwykłych obywateli” w kwestii zdrowia zrobił tyle co nic. Trudno za wielką pomoc uznać wprowadzenie bezpłatnych leków dla osób 75+ (lista tych leków jest ograniczona, inne kraje wprowadziły ulgi dla wszystkich emerytów, itd.). Choć trzeba też oddać sprawiedliwość, że ten rząd był pierwszym, który w ogóle zajął się tym problemem.</p><p>Trudno też za sukces uznać zapowiadane szumnie w kampanii zmiany w polskiej onkologii. Miał powstać Narodowy Instytut Raka, a skończyło się na kosztownym i mocno oprotestowanym przez specjalistów pilotażu ds. sieci onkologicznej. Rząd przygotowuje strategię walki z nowotworami odrzuciwszy poprzedni gotowy dokument, bo powstał za PO.</p><h2><b>Lekarze sami nie dadzą rady</b><br/></h2><p>W piątce PiS w ogóle nie wspomniano o zdrowiu uznając, że w ten sposób nie pozyska się głosów wyborców.</p><p>Ale bez odważnej politycznej decyzji na zmianę – jak wspomniałem – nie ma szans. Lekarze sami jej nie wywalczą. Pomóżmy im choćby we własnym interesie. Najbliższa okazja 1 czerwca.</p>	<p>„My, lekarze, damy sobie radę – mówi dr Bartosz Fiałek, współorganizator protestu – Mamy kolegów w szpitalu, którzy zawsze pomogą, jak zachorujemy. A w najgorszym razie wyjedziemy pracować w Unii. Pacjenci są w gorszej sytuacji. To dla nich walczymy”.</p><p>Zapaść systemu widać w statystykach.</p><h2><b>Przedwcześnie umieramy</b></h2><p>Długość życia Polaków przestała się już praktycznie wydłużać. Między 2014 a 2017 rokiem wzrosła w przypadku zarówno mężczyzn jak i kobiet zaledwie o 0,2 roku. To najgorszy wynik od 26 lat.</p><p>Wskaźnik długości życia w którymś momencie zawsze przestaje rosnąć (mimo ogromnych postępów medycyny jesteśmy śmiertelni), ale w Polsce zatrzymał się on z pewnością zbyt wcześnie.</p><p><b>Statystyczny Polak żyje dziś 74 lata, Polka 81,8. Tymczasem mężczyźni w UE żyją przeciętnie o prawie 5 lat, kobiety o dwa lata dłużej.</b></p><p><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>Polska nie zdrowieje. Średnia długość życia w naszym kraju przestała rosnąć [Raport o stanie zdrowia społeczeństwa]</b></a></h4><p><a href="https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/"><b>SŁAWOMIR ZAGÓRSKI  7 LUTEGO 2019</b></a></p><p>W Polsce zdecydowanie za dużo ludzi umiera przedwcześnie. Pokazuje to wskaźnik przedwczesnych zgonów możliwych do uniknięcia dzięki terminowej i skutecznej interwencji medycznej. W 2015 roku był on w Polsce zdecydowanie wyższy od średniej europejskiej. W przypadku kobiet wynosił 121,5 na 100 tys. obywateli (średnia UE – 97,5). Wśród mężczyzn było jeszcze gorzej – 229 wobec średniej UE 158,2.</p><p>Jeśli uwzględnimy obie płcie łącznie, mieliśmy w Polsce 169 zgonów możliwych do uniknięcia na 100 tys. Średnio w Unii było to 127, w Szwajcarii – 75.</p><h2><b>24 miesiące oczekiwania</b></h2><p>Jedną z kluczowych spraw jest dostęp do specjalistów. Według danych Barometru Fundacji Watch Health Care średni czas oczekiwania na wizytę u lekarza specjalisty pomiędzy 2013 a 2019 rokiem wydłużył się u nas dwukrotnie. W październiku/listopadzie 2013 na wizytę czekało się średnio dwa miesiące, na przełomie grudnia 2018 i stycznia 2019 prawie dwa razy dłużej.</p><p>A to tylko średnia. Dostanie się do lekarzy niektórych specjalności graniczy bowiem z cudem.</p><p><b>Czas oczekiwania na wizytę u endokrynologa wyniósł na początku 2019 roku 24 miesiące, do kardiologa dziecięcego – 12 miesięcy.</b></p><p>Polacy, tak jak obywatele wielu innych krajów, coraz częściej chorują na nowotwory złośliwe (wynika to m.in. ze starzenia się społeczeństw, a rak to przede wszystkim choroba ludzi starych). O ile jednak w krajach o dobrze zorganizowanej i właściwie finansowanej ochronie zdrowia rak coraz częściej staje się chorobą przewlekłą, o tyle w Polsce skuteczność leczenia nowotworów w porównaniu z Europą spada. Według raportu NIK z 2018 w Polsce, na Węgrzech i Chorwacji notuje się najwyższy poziom umieralności na choroby nowotworowe w Europie (chodzi tu o liczbę zgonów na 100 tys.). I tak np. w przypadku jednego z najczęstszych nowotworów kobiecych – raka piersi współczynnik zgonów w latach 2010-2016 zwiększył się o 7,2 proc. (raport PZH z 2019 roku)</p><h2><b>Psychiatria dziecięca tonie</b></h2><p>W kraju dramatycznie brakuje lekarzy i pielęgniarek. Przyczyniło się do tego z jednej strony radykalne zmniejszenie liczby miejsc na studiach medycznych, z drugiej masowe wyjazdy pracowników ochrony zdrowia za granicę. System dziś funkcjonuje wyłącznie dzięki najmłodszym lekarzom i emerytom.</p><p><b>Średnia wieku pielęgniarki przekroczyła 50 lat, zaś średnia wieku lekarzy niektórych specjalności np. pediatrów to 60 lat!</b></p><p>O tym jak bardzo brak lekarzy (i wieloletni brak działań zaradczych w tym względzie) może odbić się na zdrowiu obywateli, najlepiej widać w psychiatrii dziecięcej. Organizacja obywatelska Watchdog Polska stworzyła niedawno raport na ten temat. Wnioski są porażające. Jedynym gwarantem miejsca w dziecięcym szpitalu psychiatrycznym jest dziś nieudana próba samobójcza. Pozostali muszą czekać. Na pobyt w 30 szpitalach ze skierowaniem czeka 626 dzieci. A przecież leczenie w takiej placówce to ostateczność.</p><p>Kilkudziesięciu psychiatrów pracuje ponad siły w przepełnionych, nielicznych oddziałach w całym kraju – wynika z raportu.</p><p><b>„Stajemy przed dramatycznym pytaniem: czy powiesi się nastolatek z myślami samobójczymi odesłany ze szpitalnej izby przyjęć do domu, czy ten przyjęty na oddział, któremu nie będziemy w stanie zapewnić opieki?” – mówił kilka miesięcy temu prof. Tomasz Wolańczyk z Dziecięcego Szpitala Klinicznego w Warszawie.</b></p><p><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>Psychiatria dziecięca tonie. Zamyka się kolejny oddział, istnienie kilku innych jest zagrożone</b></a></h4><p><a href="https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/"><b>SŁAWOMIR ZAGÓRSKI  28 MARCA 2019</b></a></p><p>Cała załoga prowadzonego przez niego oddziału złożyła wymówienia. 1 kwietnia 2019 odeszli i to nie ze względu na niskie płace, lecz z powodu warunków pracy, które były dla nich nie do przyjęcia i zagrażały bezpieczeństwu lekarzy i pacjentów.</p><h2><b>Porozumienie 2018, czyli rozczarowanie i</b></h2><p>W lutym 2018 roku rezydenci z Ogólnopolskiego Związku Zawodowego Lekarzy (OZZL) podpisali porozumienie z Ministrem Zdrowia Łukaszem Szumowskim. Zakładano m. in. podwyżki dla rezydentów i specjalistów. Szczególnie istotnym zapisem była decyzja o wzroście nakładów na ochronę zdrowia w Polsce. Miała ją zagwarantować specjalna ustawa. Ustalono, że nakłady będą rosły stopniowo i w roku 2024 osiągną 6 proc. PKB (początkowo rezydenci zabiegali o 6,8 proc.).</p><p>Ustawę uchwalono w lipcu 2018 jednak rząd zastosował trik i planując wydatki na zdrowie liczy je według PKB sprzed dwóch lat. Ten zgrabny zabieg pozwolił państwu zaoszczędzić w tym roku 7,6 (według innych wyliczeń nawet 10) mld zł na zdrowiu obywateli. Rezydenci oceniają, że w związku ze sposobem liczenia „n – 2” nakłady w 2024 sięgną zamiast obiecanych 6 proc. – 5,33 proc. PKB.</p><p><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>Licząc wydatki na zdrowie w 2019 r., rząd stosuje trik: bierze PKB z 2017. Oszczędza na zdrowiu 7,6 mld</b></a></h4><p><a href="https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/"><b>SŁAWOMIR ZAGÓRSKI  18 LUTEGO 2019</b></a></p><p>Wydatki na zdrowie wprawdzie rosną, ale dzieje się tak wyłącznie za sprawą wzrostu płac w gospodarce, a zatem i dochodów ze składek płaconych z naszych pensji. Niedawno <a href="https://www.prawo.pl/zdrowie/zwiekszenie-planu-finansowego-nfz-o-4-miliardy-z-poparciem,415466.html">zwiększono plan finansowy NFZ na ten rok o 4 mld 136 mln zł</a>. chwaląc się jednocześnie, iż nakłady po raz pierwszy przekroczą 100 mld zł.</p><p>Nie dodano, że dodatkowe pieniądze pochodzą również z naszych składek (w tym m.in. majowej trzynastki dla emerytów), a poza tym, że starczą na zatkanie największych dziur w systemie. Na porządną naprawę nie ma co liczyć.</p><h2><b>Jasnych punktów prawie brak</b></h2><p>System ledwo zipie od lat. W polskiej ochronie zdrowia trudno nawet wskazać jakiekolwiek jasne punkty (choć naturalnie mamy wielu świetnych, oddanych pacjentom lekarzy). Do niedawna takim punktem była kardiologia. W Polsce udało się doprowadzić do tego, że bardzo spadła umieralność z powodu zawałów. Za tym sukcesem stał oczywiście duży wysiłek merytoryczny i organizacyjny polskich kardiologów, ale przede wszystkim jednak stały pieniądze. NFZ po prostu świetnie wycenił procedurę inwazyjnego badania naczyń wieńcowych (tzw. koronarografię), kluczowej procedury w diagnostyce i leczeniu świeżego zawału.</p><p>W efekcie jak grzyby po deszczu zaczęły wyrastać punkty, w których można było przeprowadzać ww. badanie i od razu leczyć pacjentów. Dziś koronarografia wyceniana jest już znacznie słabiej i możemy obawiać się, że wkrótce odbije się to na statystykach.</p><p>Innym jasnym punktem na mapie polskiej służby zdrowia jest być może opieka hospicyjna. Choć i tu ograniczenia finansowe są duże, a wiele świetnie funkcjonujących polskich hospicjów działałoby znacznie gorzej, gdyby nie pomoc osób wpłacających 1 proc. podatku, bądź wspierających hospicja w inny sposób.</p><h2><b>Nikt za mnie nie zawalczy</b></h2><p>W manifestacji lekarzy 1 czerwca chodzi o warunki pracy, o normalność w polskiej ochronie zdrowia, o bezpieczeństwo.</p><p>Maria Kłosińska, jedna z wiceprzewodniczących Porozumienia Rezydentów OZZL tak tłumaczy na Facebooku swój przyjazd do Warszawy na protest:</p><p>„Hej,</p><p>na pierwszą manifestację, 3 lata temu, w nocy rysowałam dla dzieci transparent.</p><p>Teraz dzieci narysują (i napiszą😮) go same.</p><p>Minęło tyle czasu, jesteśmy wiele kroków dalej, choć czasem czuję jakby nas hamowano tak bardzo, że stoimy w miejscu.</p><p>1 czerwca znów będziemy.</p><p><b>Nie mam złudzeń. Lubię zawód lekarza, ale nikt za mnie nie zawalczy o lepsze warunki jego wykonywania w Polsce. Nie chce mi się za polityków tłumaczyć pacjentom, dlaczego jest taka kolejka, że inne opcje leczenia nie są dostępne „teraz”/ „na NFZ”/ „nie w Polsce”.</b></p><p>Zwłaszcza, że nie ma na to czasu, a sporo pacjentów i tak mi nie uwierzy lub nie zrozumie.</p><p>Przyjeżdżam dla siebie, dla swojej rodziny. Przyjadę, bo inni nadal walczą, bo wszystkiego (zwłaszcza drobnych, ale istotnych spraw) trzeba pilnować, bo czytam, że nie każdy z nas kto powinien, otrzymał należną podwyżkę. Przyjeżdżam, bo jeżeli nasza obecność ma stymulować społecznie zaangażowanych lekarzy do kontynuowania tej walki, to warto, bo my już dobrze wiemy, że nic „samo z siebie” się nie zmieni. Nie chcę by moja nieobecność zaprzepaściła to, co się już udało wywalczyć.</p><p>Przyjadę, bo niektóre historie pacjentów i ich rodzin mogłyby się potoczyć inaczej, gdyby nie ten chory system, a sama na co dzień nic nie mogę z tym zrobić. W końcu to tylko jedna sobota, paręset kilometrów”.</p><h2><b>Idę na manifestację jako jedyna</b></h2><p><b>„Nasza manifestacja jest m.in. po to, byśmy policzyli miecze i zorientowali się ilu nas jest i jak w związku z tym możemy prowadzić dalszą walkę przed wyborami parlamentarnymi”</b><br/><b>– mówił OKO.press niedawno dr Bartosz Fiałek, przewodniczący Regionu Kujawsko-Pomorskiego Ogólnopolskiego Związku Zawodowego Lekarzy.</b></p><p><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>Ludzie, obudźcie się, bo za chwilę nie będzie miał was kto leczyć. 1 czerwca protest lekarzy</b></a></h4><p><a href="https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/"><b>SŁAWOMIR ZAGÓRSKI  22 KWIETNIA 2019</b></a></p><p>Niestety, manifestacja może wcale nie być tak liczna. OZZL nie jest silną organizacją. Należy do niej zaledwie 10 proc. lekarzy („w krajach, gdzie wykonywanie zawodu lekarza jest i opłacalne, i ergonomiczne, i bezpieczne, uzwiązkowienie sięga 50-70 proc.” – pisze na FB dr Fiałek).</p><p>W ochronie zdrowia pracuje wiele grup zawodowych – lekarze, pielęgniarki, położne, fizjoterapeuci, diagnostycy medyczni, administracja, dietetycy, psycholodzy, logopedzi, technicy, salowe, ratownicy medyczni. Każda z tych grup ma nieco odmienne interesy i rząd (nie tylko zresztą obecny) bardzo umiejętnie to wykorzystuje. Protesty na ogół dotyczą tylko jednej z grup, a z mniejszą liczbą protestujących łatwiej się uporać i coś im obiecać.</p><p>Różne interesy zdarzają się nawet w obrębie jednej grupy zawodowej. I tak np. młodzi lekarze są w zupełnie innej sytuacji niż specjaliści. Ci pierwsi jeszcze się buntują, zależy im, są też na dorobku. Ci drudzy natomiast całkiem nieźle urządzili się w kiepskim systemie. Dobrze zarabiają, ci którzy mają prywatną praktykę, często wręcz świetnie i ani im w głowie wychodzenie na ulicę.</p><p><b>„Pytałam kolegów ze szpitala kto z nich wybiera się na manifestację 1 czerwca” – mówi OKO.press lekarka z długim stażem z jednej z dziecięcych placówek w Warszawie. „Okazało się, że jestem jedyna”.</b></p><h2><b>Solidarność zagrożona</b></h2><p>Podziały wśród pracowników ochrony zdrowia na pewno nie ułatwia walki o radykalną zmianę. Dobrą wiadomością jest to, że w manifestacji 1 czerwca wezmą udział przedstawiciele Ogólnopolskiego Związku Pracodawców Szpitali Powiatowych (OZPSP). Dyrektorzy tych placówek teoretycznie stoją po drugiej stronie barykady. Zatrudniają pracowników, negocjują z nimi stawki. Oni jednak też są coraz bardziej zdesperowani z racji warunków, w jakich przyszło im pracować.</p><p>„Rząd chciałby zamknąć 150 szpitali powiatowych, ale nie ma odwagi powiedzieć tego wprost” – mówił niedawno OKO.press Bogumił Kurowski, dyrektor zarządu Szpitala Powiatowego w Nowym Mieście Lubawskim. Dyrektor Kurowski wraz z kilkoma osobami ze swojego szpitala wybiera się 1 czerwca do Warszawy. „Mam nadzieję, że ludzi będzie tak dużo, że się nie spotkamy” – powiedział nam dwa dni przed manifestacją. Oby.</p><p><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>Przeczytaj też:</b></a></p><h4><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>Rząd chce likwidacji 150 szpitali powiatowych, ale nie ma odwagi powiedzieć tego wprost</b></a></h4><p><a href="https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/"><b>SŁAWOMIR ZAGÓRSKI  8 MAJA 2019</b></a></p><p>„Z oburzeniem zauważamy, że jako jedyna grupa w ochronie zdrowia domagamy się pieniędzy nie dla siebie, a dla leczonych w szpitalach chorych oraz na realizacje obietnic płacowych ministra, tymczasem zarówno przez Ministerstwo Zdrowia, jak i Narodowy Fundusz Zdrowia, traktowani jesteśmy jak natarczywi żebracy” – czytamy w stanowisku Zarządu OZPSP z 17 maja 2019.</p><h2><b>Do 15 lat więzienia</b></h2><p>„My lekarze damy sobie radę” – mówi wspomniany dr Bartosz Fiałek, jeden z – jak go nazywam – „wojowników”, któremu chce się poświęcać własny czas dla walki o sprawę.</p><p>„My lekarze mamy kolegów w szpitalu, którzy zawsze pomogą, jak zachorujemy. A w najgorszym razie wyjedziemy pracować w Unii. Pacjenci są w gorszej sytuacji. To dla nich walczymy” – mówi dr Fiałek.</p><p>Dlatego organizatorzy protestu gorąco namawiają pacjentów, a więc tak naprawdę nas wszystkich, do przyłączenia się do manifestacji.</p><p>Władze od dawna rozbijają solidarność lekarzy i pacjentów. Tych pierwszych przedstawia się jako pazernych, niedouczonych, działających często na szkodę chorych. Wystarczy wspomnieć głośne słowa Zbigniewa Ziobry z 2007 roku. „Już nikt nigdy przez tego pana pozbawiony życia nie będzie”.</p><p>Dziś Ziobro wziął się za aktualizację kodeksu karnego i proponuje zmianę art. 155 kk, zwiększającą karę za nieumyślne spowodowanie śmierci człowieka z dotychczasowych trzech miesięcy do 5 lat więzienia na rok do 10 lat więzienia. Ponieważ kar powyżej roku nie można warunkowo zawieszać, dlatego lekarz skazany z tego paragrafu pójdzie siedzieć.</p><p>Ziobro chce też wprowadzenia nowego przepisu, który zakłada karę od dwóch do 15 lat więzienia dla kogoś, kto nieumyślnie spowoduje śmierć więcej niż jednej osoby. Tą nowelizacją zaniepokoili się szczególnie ginekolodzy-położnicy odpowiadający za życie dwóch osób – matki i dziecka.</p><p>Ministerstwo Zdrowia nie miało uwag do propozycji Ziobry. W maju nowy kodeks był procedowany w Sejmie i w Senacie, ostateczna wersja czeka na akceptację posłów.</p><p>30 maja Ministerstwo Sprawiedliwości przekonywało, że zmiana przepisu ma nie dotyczyć lekarzy, lecz pospolitych przestępców. MS <a href="https://www.politykazdrowotna.com/45536,ms-zmiana-prawa-nie-uderzy-w-lekarzy-lecz-w-pospolitych-przestepcow">podkreśliło także, że błąd medyczny nie musi (ale może!)</a> być kwalifikowany jako nieumyślne spowodowanie śmierci.</p><h2><b>Jakoś to będzie</b></h2><p>Kwestia zaostrzenia kar, która może dotknąć środowisko lekarskie (a także nas – pacjentów, ponieważ lekarze będą zmuszeni się dodatkowo ubezpieczyć, a my wszyscy za to zapłacić) z pewnością będzie podnoszona podczas manifestacji.</p><p>Ale – powtórzmy – główny nacisk idzie na poprawę systemu. Radykalną poprawę finansową, ponieważ bez pieniędzy, i to dużych, sytuacji nie da się zmienić. To z czym borykamy się dziś, to efekt wieloletnich zaniedbań. Praktycznie wszystkie rządy po 1989 roku uważały, że z ochroną zdrowia „jakoś to będzie”. Ustalono bardzo niską wysokość składki zdrowotnej, oszczędzano na czym się da – na lekach, na kształceniu kadr, na sprzęcie. Zezwolono na rozwój sektora prywatnego, dziś spełnia on ważną rolę w systemie. Ale:</p><ul><li>po pierwsze „zassał” on wielu dobrych lekarzy, którzy odeszli z publicznego sektora,</li><li>po drugie licznych obywateli na niego nie stać,</li><li>wreszcie po trzecie w razie naprawdę poważniej choroby i perspektywy naprawdę dużych wydatków pacjent i tak trafia do publicznej ochrony zdrowia.</li></ul><p>PiS dbając w tej kadencji o „zwykłych obywateli” w kwestii zdrowia zrobił tyle co nic. Trudno za wielką pomoc uznać wprowadzenie bezpłatnych leków dla osób 75+ (lista tych leków jest ograniczona, inne kraje wprowadziły ulgi dla wszystkich emerytów, itd.). Choć trzeba też oddać sprawiedliwość, że ten rząd był pierwszym, który w ogóle zajął się tym problemem.</p><p>Trudno też za sukces uznać zapowiadane szumnie w kampanii zmiany w polskiej onkologii. Miał powstać Narodowy Instytut Raka, a skończyło się na kosztownym i mocno oprotestowanym przez specjalistów pilotażu ds. sieci onkologicznej. Rząd przygotowuje strategię walki z nowotworami odrzuciwszy poprzedni gotowy dokument, bo powstał za PO.</p><h2><b>Lekarze sami nie dadzą rady</b><br/></h2><p>W piątce PiS w ogóle nie wspomniano o zdrowiu uznając, że w ten sposób nie pozyska się głosów wyborców.</p><p>Ale bez odważnej politycznej decyzji na zmianę – jak wspomniałem – nie ma szans. Lekarze sami jej nie wywalczą. Pomóżmy im choćby we własnym interesie. Najbliższa okazja 1 czerwca.</p>	25	f
11	„Każda ręka podniesiona na Kościół, to ręka podniesiona na Polskę” - mówił kilka tygodni temu Jarosław Kaczyński. Dziś, po wyborach, część publicystów postanowiła przyznać mu rację. Już wiedzą, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedroń, Leszek Jażdżewski, Tomasz Sekielski i gdański Marsz Równości.	„Każda ręka podniesiona na Kościół, to ręka podniesiona na Polskę” - mówił kilka tygodni temu Jarosław Kaczyński. Dziś, po wyborach, część publicystów postanowiła przyznać mu rację. Już wiedzą, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedroń, Leszek Jażdżewski, Tomasz Sekielski i gdański Marsz Równości.	„Każda ręka podniesiona na Kościół, to ręka podniesiona na Polskę” - mówił kilka tygodni temu Jarosław Kaczyński. Dziś, po wyborach, część publicystów postanowiła przyznać mu rację. Już wiedzą, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedroń, Leszek Jażdżewski, Tomasz Sekielski i gdański Marsz Równości.	2019-05-28	<p>Jako pierwszy hasło o zgubnym wpływie gdańskiego Marszu Równości rzucił na Twitterze Jarosław Gowin. Choć wicepremier wydarzeniu przypisywał sprawczość nadprzyrodzoną – bluźnierstwo miało skutkować ukaraniem KE w wyborach – w ślad za nim rozpoczęły się bardziej świeckie interpretacje.</p><p>„Mobilizacja środowisk wiejskich, to mogła być reakcja na próbę oderwania Kościoła od polskości” – komentował w „Kropce nad i” 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. „Ludzie odróżniają grzechy księży od fundamentów wspólnotowych” – komentował słowa Moniki Olejnik o tym, że w Radiu Maryja pracuje ksiądz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicujący PiS upodabniają się do zwolenników Koalicji, to upatrywanie sukcesu  mobilizacyjnego w motywacji negatywnej, czyli reakcji na działania przeciwnika. O ile w przypadku KE rzeczywiście rekcja na działania PiS była głównym paliwem, o tyle twierdzenie, że ten sam mechanizm przesądził o zwycięstwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicyści wtórują</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu „wojny religijnej” robi od niedzieli zawrotną karierę wśród publicystów.</p><p><b>Michał Szułdrzyński</b> z „Rzeczpospolitej” <a href="https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html">wskazuje</a> ten wątek kampanii zaraz po „piątce PiS” i akcji przeciwpowodziowej. „Zwycięstwo PiS pokazuje też jakim poważny błędem było granie przez opozycję antyklerykalną kartą. Owszem, film Sekielskich obejrzało 21 milionów Polaków, ale to nie oznacza, że wyborcy chcą wojny z Kościołem”.</p><p>I dodaje na Twitterze: „Jeśli ktoś uznał, że popularność filmu o pedofilii oznacza, że Polacy chcą wojny z Kościołem, to chyba się pomylił”.</p><p><b>Tomasz Lis</b> („Newsweek”) w <a href="https://twitter.com/KonradPiasecki/status/1132939710962241536">social mediach</a> okłada Roberta Biedronia oraz Leszka Jażdżewskiego: „Generalnie proponuję zacząć od szacunku dla wyborców, ich wiary i przywiązania do tradycji. Jak ktoś chce tu robić rewolucję, to kończy jako lider ugrupowania na 6%, albo autor wystąpienia, które było największym prezentem dla PiS – u w tej kampanii”.</p><p><b>Konrad Piasecki</b> (TVN24): „Ciekawe czy poczucie satysfakcji mają wszyscy ci, którzy wpychają opozycję na ścianę bezpardonowej walki z Kościołem, natychmiastowej aborcji na życzenie i cieszą się z »świętej waginy« na Paradzie Równości”.</p><p>„A gdybym był młotkowym, to co byś powiedziała? A gdyby przyszło zrozumieć, że retoryka supportu była paliwem do obrony „naszego proboszcza” przed lewactwem? Że dziś odwołują liderów opozycji malkontenci, którzy sami palcem nie kiwnęli? Że krótkie spodenki Wiosny dały PiS wygraną?” – <a href="https://twitter.com/PSzubartowicz/status/1132989543626530816">retorycznie pyta</a> <b>Przemysław Szubartowicz</b> („Wiadomo Co”).</p><p>„Wojna z Matką Boską Częstochowską, szyderstwa z Najświętszego Sakramentu przyniosły Koalicji Europejskiej gorzką klęskę, być może grzebiąc jakiekolwiek szanse opozycji na jesienne zwycięstwo” – to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> („Sieci”, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentatorów.</p><h2><b>Nie odpływ, a mobilizacja</b></h2><p>„Każda ręka podniesiona na Kościół to ręka podniesiona na Polskę” – mówił kilka tygodni temu <b>Jarosław Kaczyński</b>. Dziś, po wyborach, część publicystów postanowiła przyznać mu rację. Uznali śledzenie pedofilskich skandali w Kościele oraz walkę o prawa osób LGBT za walkę z Kościołem, przyjmując w całej rozciągłości narrację forsowaną przez PiS.</p><p>Zapominając po drodze, że Koalicja Europejska żadnej z tych walk nie prowadziła. Do szuflady schowała aborcję razem z Barbarą Nowacką, o rozdziale Kościoła od państwa nie mówiła w formie innej niż ogólnikowa.</p><p>Pojawiły się deklaracje o komisji do spraw pedofilii, ale zagłuszone przez konkurencyjne propozycje Prawa i Sprawiedliwości. TVP pokazywało co drugi dzień wystąpienie Leszka Jażdżewskiego, twierdząc, że to tajny plan Koalicji na zniszczenie Kościoła.</p><p>Ale TVP twierdzi wiele rzeczy: że Donald Tusk jest niemieckim agentem, że strajk nauczycieli był puczem organizowanym przez totalną opozycję, a przede wszystkim, że przeciętna polska rodzina straci przez Koalicję 120 tysięcy złotych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazić się na nagonkę w mediach publicznych, nie ma żadnego sensu. Będzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo mają zwolennicy Koalicji mówić filmowcom, aktywistom, dziennikarzom śledczym, czym mają się zajmować, aby nie zaszkodzić przypadkiem wynikowi wyborczemu?</li></ul><p>Co więcej, elektorat Koalicji jako całości, jak i poszczególnych partii jest zdecydowanie bardziej liberalny obyczajowo niż sami politycy i liderzy. OKO.press nie badało co prawda poparcia dla „świętej waginy na Paradzie Równości”, ale dla „aborcji natychmiast na życzenie” już tak.</p><h4><b>Kobieta powinna mieć prawo do przerwania ciąży do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygląda poparcie dla związków partnerskich w elektoracie Koalicji, która na ich temat milczy?</p><h4><b>Przyzwolenie na jednopłciowe związki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna Koalicja Europejska</p><p>Komentatorzy oczywiście nie stawiają tezy, że zniechęcony elektorat KE przepłynął do PiS, bo obraził się za to, że w Gdańsku pokazano „świętą waginę”. Musieliby zakładać, że dla wyborców bardziej liczy się ochrona uczuć religijnych niż obrona praworządności.</p><p>Efekt wyborczy miała przynieść więc mobilizacja. Innymi słowy: oskarża się osoby niezwiązane z komitetem wyborczym KE o to, że swoimi działaniami zdenerwowały wyborców prawicy.</p><p><b>Dlaczego miała to być Matka Boska w Tęczowej aureoli, a nie słowa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje się „świętej waginie” dobry wynik wyborczy PiS, to czy okładanie kukły Żyda w Pruchniku uważać powinniśmy za zjawisko mobilizujące zwolenników KE?</p><h2><b>Co zawiniło?</b></h2><p>Zwolennicy Koalicji przypisują zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href="https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/">najnowszego sondażu IPSOS</a> dla OKO.press*, choć elektorat KE rzeczywiście niesie niechęć do PiS, to dla wyborców prawicy głosowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygląda wykres motywacji elektoratu KE:</p><h3><b>Czym się Pan(i) kierował(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygląda wykres motywacji elektoratu PiS:</p><h3><b>Czym się Pan(i) kierował(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwość</b></h4><p>Co istotne,</p><p><b>elektorat PiS spośród pięciu analizowanych przez nas elektoratów, jako jedyny wskazał motywację negatywną na ostatnim miejscu.</b></p><p>A z wyników wyborów płynie jeden podstawowy wniosek: motywacja negatywna mobilizuje słabiej niż pozytywna.</p>	<p>Jako pierwszy hasło o zgubnym wpływie gdańskiego Marszu Równości rzucił na Twitterze Jarosław Gowin. Choć wicepremier wydarzeniu przypisywał sprawczość nadprzyrodzoną – bluźnierstwo miało skutkować ukaraniem KE w wyborach – w ślad za nim rozpoczęły się bardziej świeckie interpretacje.</p><p>„Mobilizacja środowisk wiejskich, to mogła być reakcja na próbę oderwania Kościoła od polskości” – komentował w „Kropce nad i” 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. „Ludzie odróżniają grzechy księży od fundamentów wspólnotowych” – komentował słowa Moniki Olejnik o tym, że w Radiu Maryja pracuje ksiądz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicujący PiS upodabniają się do zwolenników Koalicji, to upatrywanie sukcesu  mobilizacyjnego w motywacji negatywnej, czyli reakcji na działania przeciwnika. O ile w przypadku KE rzeczywiście rekcja na działania PiS była głównym paliwem, o tyle twierdzenie, że ten sam mechanizm przesądził o zwycięstwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicyści wtórują</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu „wojny religijnej” robi od niedzieli zawrotną karierę wśród publicystów.</p><p><b>Michał Szułdrzyński</b> z „Rzeczpospolitej” <a href="https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html">wskazuje</a> ten wątek kampanii zaraz po „piątce PiS” i akcji przeciwpowodziowej. „Zwycięstwo PiS pokazuje też jakim poważny błędem było granie przez opozycję antyklerykalną kartą. Owszem, film Sekielskich obejrzało 21 milionów Polaków, ale to nie oznacza, że wyborcy chcą wojny z Kościołem”.</p><p>I dodaje na Twitterze: „Jeśli ktoś uznał, że popularność filmu o pedofilii oznacza, że Polacy chcą wojny z Kościołem, to chyba się pomylił”.</p><p><b>Tomasz Lis</b> („Newsweek”) w <a href="https://twitter.com/KonradPiasecki/status/1132939710962241536">social mediach</a> okłada Roberta Biedronia oraz Leszka Jażdżewskiego: „Generalnie proponuję zacząć od szacunku dla wyborców, ich wiary i przywiązania do tradycji. Jak ktoś chce tu robić rewolucję, to kończy jako lider ugrupowania na 6%, albo autor wystąpienia, które było największym prezentem dla PiS – u w tej kampanii”.</p><p><b>Konrad Piasecki</b> (TVN24): „Ciekawe czy poczucie satysfakcji mają wszyscy ci, którzy wpychają opozycję na ścianę bezpardonowej walki z Kościołem, natychmiastowej aborcji na życzenie i cieszą się z »świętej waginy« na Paradzie Równości”.</p><p>„A gdybym był młotkowym, to co byś powiedziała? A gdyby przyszło zrozumieć, że retoryka supportu była paliwem do obrony „naszego proboszcza” przed lewactwem? Że dziś odwołują liderów opozycji malkontenci, którzy sami palcem nie kiwnęli? Że krótkie spodenki Wiosny dały PiS wygraną?” – <a href="https://twitter.com/PSzubartowicz/status/1132989543626530816">retorycznie pyta</a> <b>Przemysław Szubartowicz</b> („Wiadomo Co”).</p><p>„Wojna z Matką Boską Częstochowską, szyderstwa z Najświętszego Sakramentu przyniosły Koalicji Europejskiej gorzką klęskę, być może grzebiąc jakiekolwiek szanse opozycji na jesienne zwycięstwo” – to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> („Sieci”, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentatorów.</p><h2><b>Nie odpływ, a mobilizacja</b></h2><p>„Każda ręka podniesiona na Kościół to ręka podniesiona na Polskę” – mówił kilka tygodni temu <b>Jarosław Kaczyński</b>. Dziś, po wyborach, część publicystów postanowiła przyznać mu rację. Uznali śledzenie pedofilskich skandali w Kościele oraz walkę o prawa osób LGBT za walkę z Kościołem, przyjmując w całej rozciągłości narrację forsowaną przez PiS.</p><p>Zapominając po drodze, że Koalicja Europejska żadnej z tych walk nie prowadziła. Do szuflady schowała aborcję razem z Barbarą Nowacką, o rozdziale Kościoła od państwa nie mówiła w formie innej niż ogólnikowa.</p><p>Pojawiły się deklaracje o komisji do spraw pedofilii, ale zagłuszone przez konkurencyjne propozycje Prawa i Sprawiedliwości. TVP pokazywało co drugi dzień wystąpienie Leszka Jażdżewskiego, twierdząc, że to tajny plan Koalicji na zniszczenie Kościoła.</p><p>Ale TVP twierdzi wiele rzeczy: że Donald Tusk jest niemieckim agentem, że strajk nauczycieli był puczem organizowanym przez totalną opozycję, a przede wszystkim, że przeciętna polska rodzina straci przez Koalicję 120 tysięcy złotych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazić się na nagonkę w mediach publicznych, nie ma żadnego sensu. Będzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo mają zwolennicy Koalicji mówić filmowcom, aktywistom, dziennikarzom śledczym, czym mają się zajmować, aby nie zaszkodzić przypadkiem wynikowi wyborczemu?</li></ul><p>Co więcej, elektorat Koalicji jako całości, jak i poszczególnych partii jest zdecydowanie bardziej liberalny obyczajowo niż sami politycy i liderzy. OKO.press nie badało co prawda poparcia dla „świętej waginy na Paradzie Równości”, ale dla „aborcji natychmiast na życzenie” już tak.</p><h4><b>Kobieta powinna mieć prawo do przerwania ciąży do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygląda poparcie dla związków partnerskich w elektoracie Koalicji, która na ich temat milczy?</p><h4><b>Przyzwolenie na jednopłciowe związki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna Koalicja Europejska</p><p>Komentatorzy oczywiście nie stawiają tezy, że zniechęcony elektorat KE przepłynął do PiS, bo obraził się za to, że w Gdańsku pokazano „świętą waginę”. Musieliby zakładać, że dla wyborców bardziej liczy się ochrona uczuć religijnych niż obrona praworządności.</p><p>Efekt wyborczy miała przynieść więc mobilizacja. Innymi słowy: oskarża się osoby niezwiązane z komitetem wyborczym KE o to, że swoimi działaniami zdenerwowały wyborców prawicy.</p><p><b>Dlaczego miała to być Matka Boska w Tęczowej aureoli, a nie słowa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje się „świętej waginie” dobry wynik wyborczy PiS, to czy okładanie kukły Żyda w Pruchniku uważać powinniśmy za zjawisko mobilizujące zwolenników KE?</p><h2><b>Co zawiniło?</b></h2><p>Zwolennicy Koalicji przypisują zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href="https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/">najnowszego sondażu IPSOS</a> dla OKO.press*, choć elektorat KE rzeczywiście niesie niechęć do PiS, to dla wyborców prawicy głosowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygląda wykres motywacji elektoratu KE:</p><h3><b>Czym się Pan(i) kierował(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygląda wykres motywacji elektoratu PiS:</p><h3><b>Czym się Pan(i) kierował(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwość</b></h4><p>Co istotne,</p><p><b>elektorat PiS spośród pięciu analizowanych przez nas elektoratów, jako jedyny wskazał motywację negatywną na ostatnim miejscu.</b></p><p>A z wyników wyborów płynie jeden podstawowy wniosek: motywacja negatywna mobilizuje słabiej niż pozytywna.</p>	<p>Jako pierwszy hasło o zgubnym wpływie gdańskiego Marszu Równości rzucił na Twitterze Jarosław Gowin. Choć wicepremier wydarzeniu przypisywał sprawczość nadprzyrodzoną – bluźnierstwo miało skutkować ukaraniem KE w wyborach – w ślad za nim rozpoczęły się bardziej świeckie interpretacje.</p><p>„Mobilizacja środowisk wiejskich, to mogła być reakcja na próbę oderwania Kościoła od polskości” – komentował w „Kropce nad i” 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. „Ludzie odróżniają grzechy księży od fundamentów wspólnotowych” – komentował słowa Moniki Olejnik o tym, że w Radiu Maryja pracuje ksiądz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicujący PiS upodabniają się do zwolenników Koalicji, to upatrywanie sukcesu  mobilizacyjnego w motywacji negatywnej, czyli reakcji na działania przeciwnika. O ile w przypadku KE rzeczywiście rekcja na działania PiS była głównym paliwem, o tyle twierdzenie, że ten sam mechanizm przesądził o zwycięstwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicyści wtórują</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu „wojny religijnej” robi od niedzieli zawrotną karierę wśród publicystów.</p><p><b>Michał Szułdrzyński</b> z „Rzeczpospolitej” <a href="https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html">wskazuje</a> ten wątek kampanii zaraz po „piątce PiS” i akcji przeciwpowodziowej. „Zwycięstwo PiS pokazuje też jakim poważny błędem było granie przez opozycję antyklerykalną kartą. Owszem, film Sekielskich obejrzało 21 milionów Polaków, ale to nie oznacza, że wyborcy chcą wojny z Kościołem”.</p><p>I dodaje na Twitterze: „Jeśli ktoś uznał, że popularność filmu o pedofilii oznacza, że Polacy chcą wojny z Kościołem, to chyba się pomylił”.</p><p><b>Tomasz Lis</b> („Newsweek”) w <a href="https://twitter.com/KonradPiasecki/status/1132939710962241536">social mediach</a> okłada Roberta Biedronia oraz Leszka Jażdżewskiego: „Generalnie proponuję zacząć od szacunku dla wyborców, ich wiary i przywiązania do tradycji. Jak ktoś chce tu robić rewolucję, to kończy jako lider ugrupowania na 6%, albo autor wystąpienia, które było największym prezentem dla PiS – u w tej kampanii”.</p><p><b>Konrad Piasecki</b> (TVN24): „Ciekawe czy poczucie satysfakcji mają wszyscy ci, którzy wpychają opozycję na ścianę bezpardonowej walki z Kościołem, natychmiastowej aborcji na życzenie i cieszą się z »świętej waginy« na Paradzie Równości”.</p><p>„A gdybym był młotkowym, to co byś powiedziała? A gdyby przyszło zrozumieć, że retoryka supportu była paliwem do obrony „naszego proboszcza” przed lewactwem? Że dziś odwołują liderów opozycji malkontenci, którzy sami palcem nie kiwnęli? Że krótkie spodenki Wiosny dały PiS wygraną?” – <a href="https://twitter.com/PSzubartowicz/status/1132989543626530816">retorycznie pyta</a> <b>Przemysław Szubartowicz</b> („Wiadomo Co”).</p><p>„Wojna z Matką Boską Częstochowską, szyderstwa z Najświętszego Sakramentu przyniosły Koalicji Europejskiej gorzką klęskę, być może grzebiąc jakiekolwiek szanse opozycji na jesienne zwycięstwo” – to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> („Sieci”, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentatorów.</p><h2><b>Nie odpływ, a mobilizacja</b></h2><p>„Każda ręka podniesiona na Kościół to ręka podniesiona na Polskę” – mówił kilka tygodni temu <b>Jarosław Kaczyński</b>. Dziś, po wyborach, część publicystów postanowiła przyznać mu rację. Uznali śledzenie pedofilskich skandali w Kościele oraz walkę o prawa osób LGBT za walkę z Kościołem, przyjmując w całej rozciągłości narrację forsowaną przez PiS.</p><p>Zapominając po drodze, że Koalicja Europejska żadnej z tych walk nie prowadziła. Do szuflady schowała aborcję razem z Barbarą Nowacką, o rozdziale Kościoła od państwa nie mówiła w formie innej niż ogólnikowa.</p><p>Pojawiły się deklaracje o komisji do spraw pedofilii, ale zagłuszone przez konkurencyjne propozycje Prawa i Sprawiedliwości. TVP pokazywało co drugi dzień wystąpienie Leszka Jażdżewskiego, twierdząc, że to tajny plan Koalicji na zniszczenie Kościoła.</p><p>Ale TVP twierdzi wiele rzeczy: że Donald Tusk jest niemieckim agentem, że strajk nauczycieli był puczem organizowanym przez totalną opozycję, a przede wszystkim, że przeciętna polska rodzina straci przez Koalicję 120 tysięcy złotych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazić się na nagonkę w mediach publicznych, nie ma żadnego sensu. Będzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo mają zwolennicy Koalicji mówić filmowcom, aktywistom, dziennikarzom śledczym, czym mają się zajmować, aby nie zaszkodzić przypadkiem wynikowi wyborczemu?</li></ul><p>Co więcej, elektorat Koalicji jako całości, jak i poszczególnych partii jest zdecydowanie bardziej liberalny obyczajowo niż sami politycy i liderzy. OKO.press nie badało co prawda poparcia dla „świętej waginy na Paradzie Równości”, ale dla „aborcji natychmiast na życzenie” już tak.</p><h4><b>Kobieta powinna mieć prawo do przerwania ciąży do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygląda poparcie dla związków partnerskich w elektoracie Koalicji, która na ich temat milczy?</p><h4><b>Przyzwolenie na jednopłciowe związki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna Koalicja Europejska</p><p>Komentatorzy oczywiście nie stawiają tezy, że zniechęcony elektorat KE przepłynął do PiS, bo obraził się za to, że w Gdańsku pokazano „świętą waginę”. Musieliby zakładać, że dla wyborców bardziej liczy się ochrona uczuć religijnych niż obrona praworządności.</p><p>Efekt wyborczy miała przynieść więc mobilizacja. Innymi słowy: oskarża się osoby niezwiązane z komitetem wyborczym KE o to, że swoimi działaniami zdenerwowały wyborców prawicy.</p><p><b>Dlaczego miała to być Matka Boska w Tęczowej aureoli, a nie słowa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje się „świętej waginie” dobry wynik wyborczy PiS, to czy okładanie kukły Żyda w Pruchniku uważać powinniśmy za zjawisko mobilizujące zwolenników KE?</p><h2><b>Co zawiniło?</b></h2><p>Zwolennicy Koalicji przypisują zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href="https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/">najnowszego sondażu IPSOS</a> dla OKO.press*, choć elektorat KE rzeczywiście niesie niechęć do PiS, to dla wyborców prawicy głosowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygląda wykres motywacji elektoratu KE:</p><h3><b>Czym się Pan(i) kierował(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygląda wykres motywacji elektoratu PiS:</p><h3><b>Czym się Pan(i) kierował(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwość</b></h4><p>Co istotne,</p><p><b>elektorat PiS spośród pięciu analizowanych przez nas elektoratów, jako jedyny wskazał motywację negatywną na ostatnim miejscu.</b></p><p>A z wyników wyborów płynie jeden podstawowy wniosek: motywacja negatywna mobilizuje słabiej niż pozytywna.</p>	13	f
14	Według exit polls wybory do PE wygrał PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzięczamy takie wyniki? Wśród najmłodszych mocna Konfederacja i Wiosna, 30- i 40- latki wolały KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE wśród najmniej wykształconych	Według exit polls wybory do PE wygrał PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzięczamy takie wyniki? Wśród najmłodszych mocna Konfederacja i Wiosna, 30- i 40- latki wolały KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE wśród najmniej wykształconych	Według exit polls wybory do PE wygrał PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzięczamy takie wyniki? Wśród najmłodszych mocna Konfederacja i Wiosna, 30- i 40- latki wolały KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE wśród najmniej wykształconych	2019-05-29	<p>PiS wygrał zarówno wśród kobiet, jak i wśród mężczyzn, ale wśród kobiet z dużo mniejszą przewagą nad KE.</p><p>KE jest w obu tych grupach druga. Wśród kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), wśród mężczyzn – Konfederacja (imponujący wynik 8,9 proc.). U mężczyzn Wiosna czwarta – weszłaby do PE, ale tuż nad progiem.</p><p><a href="https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029"><b>A Flourish data visualisation</b></a></p><p>Wśród najmłodszych wyborców (18-29 lat) PiS i KE mają prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie mają Konfederacja i Wiosna – odpowiednio 18,5 i 13,7 proc. Starsi – 30-, a szczególnie 40-latkowie – zdecydowanie wybrali KE.</p><p>U 50-latków i starszych próg przekroczyłyby tylko PiS i KE. PiS zdecydowanie wygrał wśród najstarszych (52 proc.), KE dostała tu prawie 40 proc.</p><p><a href="https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasował pozostałe komitety wśród osób z wykształceniem podstawowym, pobił tu KE ponad dwukrotnie – 70 proc. do 17,5. Ponad dwukrotną przewagę PiS m także wśród osób z wykształceniem zawodowym.</p><p>W obydwu tych grupach żadna inna partia nie przekroczyła progu. PiS wygrywa także wśród osób ze średnim wykształceniem, ale z dużo mniejszą przewagą – 43 do 38 proc. 6-7 proc. mają Wiosna i Konfederacja. W grupie najlepiej wykształconych z prawie dwukrotną przewagą nad PiS wygrywa KE. Wysoki wynik ma też Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href="https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263"><b>A Flourish data visualisation</b></a></p><p>Zwycięski PiS ma na wsi zdecydowaną przewagę – aż 56,3 proc. mieszkańców wsi głosowało na PiS. Przyłączenie się PSL do Koalicji Europejskiej tego nie zmieniło – na wsi KE ma 27,5 proc. Próg przekracza tam jeszcze tylko Konfederacja i to nieznacznie – 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W dużych miastach (powyżej 500 tys. mieszkańców) jest na odwrót – 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie także Wiosna – 10,2 proc.</p><p>Konfederacja i Wiosna osiągnęły też niezły wynik (7-8 proc.) w średnich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chociaż im mniejszy ośrodek, tym mniejsza jest przewaga KE. W największych miastach (powyżej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href="https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach była rekordowa – 43 proc. W 2014 roku wyniosła tylko 23,83.<br/>Najwięcej osób poszło do urn w województwie mazowieckim (48,1), małopolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poniższa mapa jest interaktywna. Najedź na konkretne województwo i zobacz, kto tu wygrał.</p>	<p>PiS wygrał zarówno wśród kobiet, jak i wśród mężczyzn, ale wśród kobiet z dużo mniejszą przewagą nad KE.</p><p>KE jest w obu tych grupach druga. Wśród kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), wśród mężczyzn – Konfederacja (imponujący wynik 8,9 proc.). U mężczyzn Wiosna czwarta – weszłaby do PE, ale tuż nad progiem.</p><p><a href="https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029"><b>A Flourish data visualisation</b></a></p><p>Wśród najmłodszych wyborców (18-29 lat) PiS i KE mają prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie mają Konfederacja i Wiosna – odpowiednio 18,5 i 13,7 proc. Starsi – 30-, a szczególnie 40-latkowie – zdecydowanie wybrali KE.</p><p>U 50-latków i starszych próg przekroczyłyby tylko PiS i KE. PiS zdecydowanie wygrał wśród najstarszych (52 proc.), KE dostała tu prawie 40 proc.</p><p><a href="https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasował pozostałe komitety wśród osób z wykształceniem podstawowym, pobił tu KE ponad dwukrotnie – 70 proc. do 17,5. Ponad dwukrotną przewagę PiS m także wśród osób z wykształceniem zawodowym.</p><p>W obydwu tych grupach żadna inna partia nie przekroczyła progu. PiS wygrywa także wśród osób ze średnim wykształceniem, ale z dużo mniejszą przewagą – 43 do 38 proc. 6-7 proc. mają Wiosna i Konfederacja. W grupie najlepiej wykształconych z prawie dwukrotną przewagą nad PiS wygrywa KE. Wysoki wynik ma też Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href="https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263"><b>A Flourish data visualisation</b></a></p><p>Zwycięski PiS ma na wsi zdecydowaną przewagę – aż 56,3 proc. mieszkańców wsi głosowało na PiS. Przyłączenie się PSL do Koalicji Europejskiej tego nie zmieniło – na wsi KE ma 27,5 proc. Próg przekracza tam jeszcze tylko Konfederacja i to nieznacznie – 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W dużych miastach (powyżej 500 tys. mieszkańców) jest na odwrót – 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie także Wiosna – 10,2 proc.</p><p>Konfederacja i Wiosna osiągnęły też niezły wynik (7-8 proc.) w średnich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chociaż im mniejszy ośrodek, tym mniejsza jest przewaga KE. W największych miastach (powyżej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href="https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach była rekordowa – 43 proc. W 2014 roku wyniosła tylko 23,83.<br/>Najwięcej osób poszło do urn w województwie mazowieckim (48,1), małopolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poniższa mapa jest interaktywna. Najedź na konkretne województwo i zobacz, kto tu wygrał.</p>	<p>PiS wygrał zarówno wśród kobiet, jak i wśród mężczyzn, ale wśród kobiet z dużo mniejszą przewagą nad KE.</p><p>KE jest w obu tych grupach druga. Wśród kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), wśród mężczyzn – Konfederacja (imponujący wynik 8,9 proc.). U mężczyzn Wiosna czwarta – weszłaby do PE, ale tuż nad progiem.</p><p><a href="https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029"><b>A Flourish data visualisation</b></a></p><p>Wśród najmłodszych wyborców (18-29 lat) PiS i KE mają prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie mają Konfederacja i Wiosna – odpowiednio 18,5 i 13,7 proc. Starsi – 30-, a szczególnie 40-latkowie – zdecydowanie wybrali KE.</p><p>U 50-latków i starszych próg przekroczyłyby tylko PiS i KE. PiS zdecydowanie wygrał wśród najstarszych (52 proc.), KE dostała tu prawie 40 proc.</p><p><a href="https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasował pozostałe komitety wśród osób z wykształceniem podstawowym, pobił tu KE ponad dwukrotnie – 70 proc. do 17,5. Ponad dwukrotną przewagę PiS m także wśród osób z wykształceniem zawodowym.</p><p>W obydwu tych grupach żadna inna partia nie przekroczyła progu. PiS wygrywa także wśród osób ze średnim wykształceniem, ale z dużo mniejszą przewagą – 43 do 38 proc. 6-7 proc. mają Wiosna i Konfederacja. W grupie najlepiej wykształconych z prawie dwukrotną przewagą nad PiS wygrywa KE. Wysoki wynik ma też Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href="https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263"><b>A Flourish data visualisation</b></a></p><p>Zwycięski PiS ma na wsi zdecydowaną przewagę – aż 56,3 proc. mieszkańców wsi głosowało na PiS. Przyłączenie się PSL do Koalicji Europejskiej tego nie zmieniło – na wsi KE ma 27,5 proc. Próg przekracza tam jeszcze tylko Konfederacja i to nieznacznie – 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W dużych miastach (powyżej 500 tys. mieszkańców) jest na odwrót – 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie także Wiosna – 10,2 proc.</p><p>Konfederacja i Wiosna osiągnęły też niezły wynik (7-8 proc.) w średnich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chociaż im mniejszy ośrodek, tym mniejsza jest przewaga KE. W największych miastach (powyżej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href="https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach była rekordowa – 43 proc. W 2014 roku wyniosła tylko 23,83.<br/>Najwięcej osób poszło do urn w województwie mazowieckim (48,1), małopolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poniższa mapa jest interaktywna. Najedź na konkretne województwo i zobacz, kto tu wygrał.</p>	16	t
\.


--
-- Data for Name: main_rodopassadvert; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_rodopassadvert (id, title, title_pl, title_en, description, description_pl, description_en, url, button_text, button_text_pl, button_text_en, page_id) FROM stdin;
3	PS: Jesteśmy zgodni z RODO	PS: Jesteśmy zgodni z RODO	\N	Nasz regulamin został wygenerowany przez stworzone przez nas narzędzie Chcesz sprawdzić, czy z Twoją stronę internetową wszystko ok?	Nasz regulamin został wygenerowany przez stworzone przez nas narzędzie Chcesz sprawdzić, czy z Twoją stronę internetową wszystko ok?	\N	https://rodopass.pl/	dowiedz się więcej	dowiedz się więcej	\N	3
\.


--
-- Data for Name: projects_projectmetric; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_projectmetric (id, sort_order, value, property_name, project_id) FROM stdin;
1	0	21:37	We start	9
2	1	666	We provide	9
3	2	69	We protect	9
\.


--
-- Data for Name: projects_projectpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_projectpage (page_ptr_id, subtitle, subtitle_en, subtitle_pl, challenge, challenge_en, challenge_pl, process, process_en, process_pl, quote, quote_en, quote_pl, self_initiated, image_id, icon_id, short_name) FROM stdin;
9	We gonna earn shitload of money	We gonna earn shitload of money	Zarobimy na nim kupe hajsu	<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>	<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>	<p><b>Początki bywają trudne</b></p><p>Ale potem już jest z górki i w ogóle zajebiście</p>	[{"type": "tiles_list", "value": [{"heading": "rodzisz si\\u0119", "image": 9}, {"heading": "dorastasz", "image": 10}, {"heading": "a potem troche przypa\\u0142", "image": 11}], "id": "1250077e-e6ef-4b39-8b00-27cc4cd0f19c"}]	[{"type": "tiles_list", "value": [{"heading": "rodzisz si\\u0119", "image": 9}, {"heading": "dorastasz", "image": 10}, {"heading": "a potem troche przypa\\u0142", "image": 11}], "id": "1250077e-e6ef-4b39-8b00-27cc4cd0f19c"}]	[{"type": "tiles_list", "value": [{"heading": "rodzisz si\\u0119", "image": 9}, {"heading": "dorastasz", "image": 10}, {"heading": "a potem troche przypa\\u0142", "image": 11}], "id": "49d77b92-2286-4262-9853-a41c878c1525"}]	<h2></h2><embed alt="quote.jpg" embedtype="image" format="fullwidth" id="12"/><p></p>	<h2></h2><embed alt="quote.jpg" embedtype="image" format="fullwidth" id="12"/><p></p>	<h2></h2><embed alt="quote.jpg" embedtype="image" format="fullwidth" id="12"/><p></p>	t	\N	\N	
\.


--
-- Data for Name: projects_specializationindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_specializationindexpage (page_ptr_id) FROM stdin;
5
\.


--
-- Data for Name: projects_specializationpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_specializationpage (page_ptr_id, how_we_work, how_we_work_en, how_we_work_pl, case_study, case_study_en, case_study_pl, tools, tools_en, tools_pl, long_name, short_description, long_name_en, long_name_pl, short_description_en, short_description_pl) FROM stdin;
6	[{"type": "text", "value": "We analyze data, create visualizations, and help make decisions based on data. We advise on how to use data in business prosots and systmahc of classification, prediction and detection of fraud. We create data-driven applications that use Machine Learning and AI algorithms. We help our clients.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Data inventory", "image": 1}, {"heading": "Data Science", "image": 18}, {"heading": "Machine Learning", "image": 19}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "text", "value": "We analyze data, create visualizations, and help make decisions based on data. We advise on how to use data in business prosots and systmahc of classification, prediction and detection of fraud. We create data-driven applications that use Machine Learning and AI algorithms. We help our clients.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Data inventory", "image": 1}, {"heading": "Data Science", "image": 18}, {"heading": "Machine Learning", "image": 19}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych. Doradzamy jak wykorzystywa\\u0107 dane w prosceach bizensowych i systmahc klasyfikacji, predykacji i wykrywaniu nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 1}, {"heading": "Data Science", "image": 18}, {"heading": "Machine Learning", "image": 19}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 20}, {"heading": "Analiza danych historycznych o projektach", "image": 21}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 22}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 20}, {"heading": "Analiza danych historycznych o projektach", "image": 21}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 22}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 20}, {"heading": "Analiza danych historycznych o projektach", "image": 21}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 22}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 4, "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."}, {"heading": "Segmentacja i klasyfikacja", "image": 5, "description": "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 4, "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."}, {"heading": "Segmentacja i klasyfikacja", "image": 5, "description": "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 4, "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."}, {"heading": "Segmentacja i klasyfikacja", "image": 5, "description": "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	Processes automation based on data	<p>We solve the challenges facing your company<br/>using <b>data science </b>and<b> machine learning</b></p>	Processes automation based on data	Automatyzacja procesów w oparciu o dane	<p>We solve the challenges facing your company<br/>using <b>data science </b>and<b> machine learning</b></p>	<p>Rozwiązujemy wyzwania stojące przed Twoją firmą</p><p>stosując <b>data science </b> i <b>machine learning</b></p>
19	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiecdz eksperckq i lata dc6hriadczenia Przykladamy ogromnilwag do poznawania potrzeb i ce low naszyhc klientow. Zestawiamy ie z wymaganiami docelowych u\\u00b1ytkownikow lubodbiorcow uslugi, aby tworzye arigazuj4ce dc6Niadczenia. Budujemy prototypy prociuktow i bad amy je z odbiorcami, aby vve ryh kowae poczynione zalD2enia.", "id": "e9ec14bb-7196-43ba-98f2-f9249bf4eace"}, {"type": "tiles_list", "value": [{"heading": "koncepcje produkt\\u00f3w cyfrowych", "image": 23}, {"heading": "interaktywne portotypy", "image": 23}, {"heading": "us\\u0142ugi online i offine", "image": 23}], "id": "375db8d8-7ae5-41b3-90f2-f3f06ad5ca78"}]	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiecdz eksperckq i lata dc6hriadczenia Przykladamy ogromnilwag do poznawania potrzeb i ce low naszyhc klientow. Zestawiamy ie z wymaganiami docelowych u\\u00b1ytkownikow lubodbiorcow uslugi, aby tworzye arigazuj4ce dc6Niadczenia. Budujemy prototypy prociuktow i bad amy je z odbiorcami, aby vve ryh kowae poczynione zalD2enia.", "id": "e9ec14bb-7196-43ba-98f2-f9249bf4eace"}, {"type": "tiles_list", "value": [{"heading": "koncepcje produkt\\u00f3w cyfrowych", "image": 23}, {"heading": "interaktywne portotypy", "image": 23}, {"heading": "us\\u0142ugi online i offine", "image": 23}], "id": "375db8d8-7ae5-41b3-90f2-f3f06ad5ca78"}]	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiecdz eksperckq i lata dc6hriadczenia Przykladamy ogromnilwag do poznawania potrzeb i ce low naszyhc klientow. Zestawiamy ie z wymaganiami docelowych u\\u00b1ytkownikow lubodbiorcow uslugi, aby tworzye arigazuj4ce dc6Niadczenia. Budujemy prototypy prociuktow i bad amy je z odbiorcami, aby vve ryh kowae poczynione zalD2enia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "koncepcje produkt\\u00f3w cyfrowych", "image": 23}, {"heading": "interaktywne portotypy", "image": 23}, {"heading": "us\\u0142ugi online i offine", "image": 23}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "fd68934e-e555-4c83-93c3-8e53f2cd76fa"}, {"type": "tiles_list", "value": [{"heading": "warsztaty z konsorcjum interesariuszy", "image": 23}, {"heading": "prototyp aplikacji mobilnej", "image": 23}, {"heading": "testy z u\\u017cytkownikami", "image": 23}], "id": "288eb908-dc43-4d70-ae6b-7580730d1f44"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "fd68934e-e555-4c83-93c3-8e53f2cd76fa"}, {"type": "tiles_list", "value": [{"heading": "warsztaty z konsorcjum interesariuszy", "image": 23}, {"heading": "prototyp aplikacji mobilnej", "image": 23}, {"heading": "testy z u\\u017cytkownikami", "image": 23}], "id": "288eb908-dc43-4d70-ae6b-7580730d1f44"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "4693ba0a-f83b-4ffb-aa08-03db23925b11"}, {"type": "tiles_list", "value": [{"heading": "warsztaty z konsorcjum interesariuszy", "image": 23}, {"heading": "prototyp aplikacji mobilnej", "image": 23}, {"heading": "testy z u\\u017cytkownikami", "image": 23}], "id": "0c462b08-ecbd-4c98-b74a-68a4192626f5"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 23, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX"}, {"heading": "Service design", "image": 23, "description": "Opracowujemy koncepcje us\\u0142ug stoj\\u0105cych na styku online i offline"}], "id": "6e310976-6f94-4982-b164-6a27aea808aa"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 23, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX"}, {"heading": "Service design", "image": 23, "description": "Opracowujemy koncepcje us\\u0142ug stoj\\u0105cych na styku online i offline"}], "id": "6e310976-6f94-4982-b164-6a27aea808aa"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 23, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX"}, {"heading": "Service design", "image": 23, "description": "Opracowujemy koncepcje us\\u0142ug stoj\\u0105cych na styku online i offline"}], "id": "145268e9-8cbf-4d22-add9-26fb3172971e"}]	Creating digital services and products	<p>We respond to the needs of our clients by designing intuitive</p><p>and useful digital services<b> from A to Z</b></p>	Creating digital services and products	Tworzenie usług i produktów cyfrowych	<p>We respond to the needs of our clients by designing intuitive</p><p>and useful digital services<b> from A to Z</b></p>	<p>Odpowiadamy na potrzeby naszych klientów projektując intuicyjne</p><p>i użyteczne usługi cyfrowe <b>od A do Z</b></p>
\.


--
-- Data for Name: projects_teamindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teamindexpage (page_ptr_id, who_we_are, who_we_are_pl, who_we_are_en, our_values, our_values_pl, our_values_en) FROM stdin;
16	<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	[{"type": "description", "value": "<p>Pracujemy zwinnie, poniewa\\u017c wiemy, \\u017ce nie ma dw\\u00f3ch takich samych projekt\\u00f3w. Opieramy si\\u0119 na plaskiej strukturze organizacji i prze\\u015bwiadczeniu, \\u017ce ka\\u017cdy cz\\u0142onek zespo\\u0142u jest w stanie wygenerowa\\u0107 warto\\u015b\\u0107 dodan\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\u0119 w realizowaniu naszych cel\\u00f3w.</p>", "id": "e046b871-706e-4fa3-a996-4f6677d75ca6"}, {"type": "tiles_list", "value": [{"heading": "warto\\u015b\\u0107 1", "image": 5}, {"heading": "warto\\u015b\\u0107 2", "image": 4}], "id": "b87d03c6-6a4c-4870-975f-cf70a811ba23"}]	[{"type": "description", "value": "<p>Pracujemy zwinnie, poniewa\\u017c wiemy, \\u017ce nie ma dw\\u00f3ch takich samych projekt\\u00f3w. Opieramy si\\u0119 na plaskiej strukturze organizacji i prze\\u015bwiadczeniu, \\u017ce ka\\u017cdy cz\\u0142onek zespo\\u0142u jest w stanie wygenerowa\\u0107 warto\\u015b\\u0107 dodan\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\u0119 w realizowaniu naszych cel\\u00f3w.</p>", "id": "67553d3e-6ab4-449b-a5d2-b2521e983263"}, {"type": "tiles_list", "value": [{"heading": "warto\\u015b\\u0107 1", "image": 5}, {"heading": "warto\\u015b\\u0107 2", "image": 4}], "id": "4da8ad45-0e74-4a3e-885c-14ad6b4b7490"}]	[{"type": "description", "value": "<p>Pracujemy zwinnie, poniewa\\u017c wiemy, \\u017ce nie ma dw\\u00f3ch takich samych projekt\\u00f3w. Opieramy si\\u0119 na plaskiej strukturze organizacji i prze\\u015bwiadczeniu, \\u017ce ka\\u017cdy cz\\u0142onek zespo\\u0142u jest w stanie wygenerowa\\u0107 warto\\u015b\\u0107 dodan\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\u0119 w realizowaniu naszych cel\\u00f3w.</p>", "id": "e046b871-706e-4fa3-a996-4f6677d75ca6"}, {"type": "tiles_list", "value": [{"heading": "warto\\u015b\\u0107 1", "image": 5}, {"heading": "warto\\u015b\\u0107 2", "image": 4}], "id": "b87d03c6-6a4c-4870-975f-cf70a811ba23"}]
\.


--
-- Data for Name: projects_teammember; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teammember (page_ptr_id, name, photo_id, long_description, long_description_en, long_description_pl, short_description, short_description_en, short_description_pl) FROM stdin;
20	Adrian Krzywicki	24	an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while advocating a nature-centered form of anarchism.	an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while advocating a nature-centered form of anarchism.	an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while advocating a nature-centered form of anarchism.	amerykański matematyk i terrorysta.	amerykański matematyk i terrorysta.	amerykański matematyk i terrorysta.
18	Edward Abramowski	17	polski myśliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana Żeromskiego, pierwowzór Szymona Gajowca w powieści „Przedwiośnie”, wolnomularz[3].	polski myśliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana Żeromskiego, pierwowzór Szymona Gajowca w powieści „Przedwiośnie”, wolnomularz[3].	polski myśliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana Żeromskiego, pierwowzór Szymona Gajowca w powieści „Przedwiośnie”, wolnomularz[3].	polski myśliciel polityczny, filozof, psycholog i socjolog	polski myśliciel polityczny, filozof, psycholog i socjolog	polski myśliciel polityczny, filozof, psycholog i socjolog
17	Jan Kowalski	11	Założyciel ruchu religijnego Neo-Sannyas (uczniowie nazywani są sannjasinami).  Autor kilkuset książek – według różnych danych ich liczba waha się pomiędzy 400 oryginalnymi tytułami a 750, włączając w to różne kompilacje. Tłumaczone na ponad 50 języków.	Założyciel ruchu religijnego Neo-Sannyas (uczniowie nazywani są sannjasinami).  Autor kilkuset książek – według różnych danych ich liczba waha się pomiędzy 400 oryginalnymi tytułami a 750, włączając w to różne kompilacje. Tłumaczone na ponad 50 języków.	Założyciel ruchu religijnego Neo-Sannyas (uczniowie nazywani są sannjasinami).  Autor kilkuset książek – według różnych danych ich liczba waha się pomiędzy 400 oryginalnymi tytułami a 750, włączając w to różne kompilacje. Tłumaczone na ponad 50 języków.	współczesny hinduski guru, nauczyciel i mistrz duchowy	współczesny hinduski guru, nauczyciel i mistrz duchowy	współczesny hinduski guru, nauczyciel i mistrz duchowy
\.


--
-- Data for Name: projects_teammemberspecializationtag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teammemberspecializationtag (id, content_object_id, tag_id) FROM stdin;
7	20	1
8	20	3
9	18	1
10	18	3
11	17	1
12	17	2
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	UX	ux
2	BackEnd	backend
3	SCRUM	scrum
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	2
2	1	2	2
3	1	1	3
4	1	2	3
5	1	1	5
6	1	2	5
7	1	1	6
8	1	2	6
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, seo_title_pl, seo_title_en, search_description_pl, search_description_en, url_path_pl, url_path_en, slug_pl, slug_en, title_pl, title_en) FROM stdin;
12	0001000200010002	4	0	Komorowski: Wyborcy PiS „nie płacą podatków”. A to bogaci, nie ubożsi, płacą niższe podatki	komorowski-wyborcy-pis-nie-płacą-podatków-a-to-bogaci-nie-ubożsi-płacą-niższe-podatki	t	f	/home-page1/ews/komorowski-wyborcy-pis-nie-płacą-podatków-a-to-bogaci-nie-ubożsi-płacą-niższe-podatki/		f		\N	\N	f	34	1	f	2019-05-29 09:32:21.2249+02	2019-05-29 09:32:21.272453+02	14	2019-05-29 09:32:21.272453+02	Komorowski: Wyborcy PiS „nie płacą podatków”. A to bogaci, nie ubożsi, płacą niższe podatki		\N			/strona-domowa1/aktualności/komorowski-wyborcy-pis-nie-płacą-podatków-a-to-bogaci-nie-ubożsi-płacą-niższe-podatki/	/home-page1/news/komorowski-wyborcy-pis-nie-płacą-podatków-a-to-bogaci-nie-ubożsi-płacą-niższe-podatki/	komorowski-wyborcy-pis-nie-płacą-podatków-a-to-bogaci-nie-ubożsi-płacą-niższe-podatki	komorowski-wyborcy-pis-nie-płacą-podatków-a-to-bogaci-nie-ubożsi-płacą-niższe-podatki	Komorowski: Wyborcy PiS „nie płacą podatków”. A to bogaci, nie ubożsi, płacą niższe podatki	Komorowski: Wyborcy PiS „nie płacą podatków”. A to bogaci, nie ubożsi, płacą niższe podatki
9	00010002000300010001	5	0	Our own project	our-own-project	t	f	/home-page1/specializations/specialisation2/our-own-project/		f		\N	\N	f	30	1	f	2019-05-31 12:27:19.334408+02	2019-05-28 12:37:08.678886+02	41	2019-05-31 12:27:19.404805+02	Our own project	\N	\N			/strona-domowa1/specializacje/specjalizacja2/nasz-własny-projekt/	/home-page1/specializations/specialisation2/our-own-project/	nasz-własny-projekt	our-own-project	Nasz własny projekt	Our own project
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root		\N		\N	/	/	root	root	Root	Root
13	0001000200010003	4	0	Ważą się losy 180 wolnych krów. Główny Lekarz Weterynarii podtrzymał decyzję o ich zabiciu	ważą-się-losy-180-wolnych-krów-główny-lekarz-weterynarii-podtrzymał-decyzję-o-ich-zabiciu	t	f	/home-page1/ews/ważą-się-losy-180-wolnych-krów-główny-lekarz-weterynarii-podtrzymał-decyzję-o-ich-zabiciu/		f		\N	\N	f	34	1	f	2019-05-29 09:34:59.769405+02	2019-05-29 09:34:59.823529+02	15	2019-05-29 09:34:59.823529+02	Ważą się losy 180 wolnych krów. Główny Lekarz Weterynarii podtrzymał decyzję o ich zabiciu		\N			/strona-domowa1/aktualności/ważą-się-losy-180-wolnych-krów-główny-lekarz-weterynarii-podtrzymał-decyzję-o-ich-zabiciu/	/home-page1/news/ważą-się-losy-180-wolnych-krów-główny-lekarz-weterynarii-podtrzymał-decyzję-o-ich-zabiciu/	ważą-się-losy-180-wolnych-krów-główny-lekarz-weterynarii-podtrzymał-decyzję-o-ich-zabiciu	ważą-się-losy-180-wolnych-krów-główny-lekarz-weterynarii-podtrzymał-decyzję-o-ich-zabiciu	Ważą się losy 180 wolnych krów. Główny Lekarz Weterynarii podtrzymał decyzję o ich zabiciu	Ważą się losy 180 wolnych krów. Główny Lekarz Weterynarii podtrzymał decyzję o ich zabiciu
5	000100020003	3	2	specializations	specializations	t	f	/home-page1/pecializations/		t		\N	\N	f	32	1	f	2019-05-29 15:16:37.82818+02	2019-05-20 11:45:32.933843+02	24	2019-05-29 15:16:37.874789+02	specializations		\N			/strona-domowa1/specializacje/	/home-page1/specializations/	specializacje	specializations	specjalizacje	specializations
10	000100020001	3	5	news	news	t	f	/home-page1/news/		t		\N	\N	f	37	1	f	2019-05-29 15:17:14.829098+02	2019-05-28 16:08:25.294766+02	25	2019-05-29 15:17:14.869422+02	news		\N			/strona-domowa1/aktualności/	/home-page1/news/	aktualności	news	aktualności	news
19	0001000200030002	4	0	Digital products and services	digital-products-and-services	t	f	/home-page1/specializations/digital-products-and-services/		f		\N	\N	f	31	1	f	2019-05-30 16:48:33.355742+02	2019-05-30 16:48:33.39818+02	30	2019-05-30 16:48:33.39818+02	Digital products and services	\N	\N			/strona-domowa1/specializacje/produkty-i-usługi-cyfrowe/	/home-page1/specializations/digital-products-and-services/	produkty-i-usługi-cyfrowe	digital-products-and-services	Produkty i usługi cyfrowe	Digital products and services
14	0001000200010004	4	0	PiS z ogromną przewagą na wsi i wśród najsłabiej wykształconych. KE wygrywa wśród 30- i 40-latków	pis-z-ogromną-przewagą-na-wsi-i-wśród-najsłabiej-wykształconych-ke-wygrywa-wśród-30-i-40-latków	t	f	/home-page1/news/pis-z-ogromną-przewagą-na-wsi-i-wśród-najsłabiej-wykształconych-ke-wygrywa-wśród-30-i-40-latków/		f		\N	\N	f	34	1	f	2019-05-31 15:14:39.216057+02	2019-05-29 09:36:38.220127+02	46	2019-05-31 15:14:39.285435+02	PiS z ogromną przewagą na wsi i wśród najsłabiej wykształconych. KE wygrywa wśród 30- i 40-latków	\N	\N			/strona-domowa1/aktualności/pis-z-ogromną-przewagą-na-wsi-i-wśród-najsłabiej-wykształconych-ke-wygrywa-wśród-30-i-40-latków/	/home-page1/news/pis-z-ogromną-przewagą-na-wsi-i-wśród-najsłabiej-wykształconych-ke-wygrywa-wśród-30-i-40-latków/	pis-z-ogromną-przewagą-na-wsi-i-wśród-najsłabiej-wykształconych-ke-wygrywa-wśród-30-i-40-latków	pis-z-ogromną-przewagą-na-wsi-i-wśród-najsłabiej-wykształconych-ke-wygrywa-wśród-30-i-40-latków	PiS z ogromną przewagą na wsi i wśród najsłabiej wykształconych. KE wygrywa wśród 30- i 40-latków	PiS z ogromną przewagą na wsi i wśród najsłabiej wykształconych. KE wygrywa wśród 30- i 40-latków
20	0001000200020001	4	0	Adrian Krzywicki	adrian-krzywicki	t	f	/home-page1/about-us/adrian-krzywicki/		f		\N	\N	f	44	1	f	2019-06-03 11:23:37.294993+02	2019-05-31 10:34:24.946014+02	47	2019-06-03 11:23:37.352871+02	Adrian Krzywicki	\N	\N			/strona-domowa1/o-nas/adrian-krzywicki/	/home-page1/about-us/adrian-krzywicki/	adrian-krzywicki	adrian-krzywicki	Adrian Krzywicki	Adrian Krzywicki
8	000100020004	3	0	join us	join-us	t	f	/home-page1/oin-us/		t		\N	\N	f	36	1	f	2019-05-29 15:18:08.437234+02	2019-05-24 16:03:51.716611+02	26	2019-05-29 15:18:08.481319+02	join us		\N			/strona-domowa1/dołącz-do-na/	/home-page1/join-us/	dołącz-do-na	join-us	dołącz do na	join us
3	00010002	2	4	Laboratorium EE	home-page1	t	f	/home-page1/		f		\N	\N	f	29	1	f	2019-05-31 10:32:07.058691+02	2019-05-20 11:40:14.829548+02	33	2019-05-31 10:32:07.128304+02	Laboratorium EE	\N	\N			/strona-domowa1/	/home-page1/	strona-domowa1	home-page1	Laboratorium EE	Laboratorium EE
6	0001000200030001	4	1	Data Science	specialisation2	t	f	/home-page1/specializations/specialisation2/		f		\N	\N	f	31	1	f	2019-05-30 16:32:55.045557+02	2019-05-20 11:49:51.892698+02	29	2019-05-30 16:32:55.095683+02	Data Science	\N	\N			/strona-domowa1/specializacje/specjalizacja2/	/home-page1/specializations/specialisation2/	specjalizacja2	specialisation2	Data Science	Data Science
16	000100020002	3	3	about us	about-us	t	f	/home-page1/about-us/		t		\N	\N	f	43	1	f	2019-05-31 12:28:29.275746+02	2019-05-29 13:04:00.147143+02	42	2019-05-31 12:28:29.317809+02	about us	\N	\N			/strona-domowa1/o-nas/	/home-page1/about-us/	o-nas	about-us	o nas	about us
18	0001000200020003	4	0	Edward Abramowski	edward-abramowski	t	f	/home-page1/about-us/edward-abramowski/		f		\N	\N	f	44	1	f	2019-06-03 11:24:14.275951+02	2019-05-29 14:56:48.773854+02	48	2019-06-03 11:24:14.32395+02	Edward Abramowski	\N	\N			/strona-domowa1/o-nas/edward-abramowski/	/home-page1/about-us/edward-abramowski/	edward-abramowski	edward-abramowski	Edward Abramowski	Edward Abramowski
22	0001000200010005	4	0	1 czerwca manifestacja lekarzy. Dołączmy do nich, bo to o nas chodzi. Krótsze życie, dłuższe kolejki…	1-czerwca-manifestacja-lekarzy-dołączmy-do-nich-bo-to-o-nas-chodzi-krótsze-życie-dłuższe-kolejki	t	f	/home-page1/news/1-czerwca-manifestacja-lekarzy-dołączmy-do-nich-bo-to-o-nas-chodzi-krótsze-życie-dłuższe-kolejki/		f		\N	\N	f	34	1	f	2019-05-31 14:40:00.134758+02	2019-05-31 14:40:00.184645+02	45	2019-05-31 14:40:00.184645+02	1 czerwca manifestacja lekarzy. Dołączmy do nich, bo to o nas chodzi. Krótsze życie, dłuższe kolejki…	\N	\N			/strona-domowa1/aktualności/1-czerwca-manifestacja-lekarzy-dołączmy-do-nich-bo-to-o-nas-chodzi-krótsze-życie-dłuższe-kolejki/	/home-page1/news/1-czerwca-manifestacja-lekarzy-dołączmy-do-nich-bo-to-o-nas-chodzi-krótsze-życie-dłuższe-kolejki/	1-czerwca-manifestacja-lekarzy-dołączmy-do-nich-bo-to-o-nas-chodzi-krótsze-życie-dłuższe-kolejki	1-czerwca-manifestacja-lekarzy-dołączmy-do-nich-bo-to-o-nas-chodzi-krótsze-życie-dłuższe-kolejki	1 czerwca manifestacja lekarzy. Dołączmy do nich, bo to o nas chodzi. Krótsze życie, dłuższe kolejki…	1 czerwca manifestacja lekarzy. Dołączmy do nich, bo to o nas chodzi. Krótsze życie, dłuższe kolejki…
17	0001000200020002	4	0	Jan Kowalski	pracownik1	t	f	/home-page1/about-us/pracownik1/		f		\N	\N	f	44	1	f	2019-06-03 11:41:25.52726+02	2019-05-29 13:05:06.535277+02	49	2019-06-03 11:41:25.581163+02	Jan Kowalski	\N	\N			/strona-domowa1/o-nas/pracownik1/	/home-page1/about-us/pracownik1/	pracownik1	pracownik1	Jan Kowalski	Jan Kowalski
11	0001000200010001	4	0	Geje, lesbijki i Sekielski zatopili Koalicję” – wołają publicyści prorządowi i proeuropejscy	geje-lesbijki-i-sekielski-zatopili-koalicję-wołają-publicyści-prorządowi-i-proeuropejscy	t	f	/home-page1/news/geje-lesbijki-i-sekielski-zatopili-koalicję-wołają-publicyści-prorządowi-i-proeuropejscy/		f		\N	\N	f	34	1	f	2019-05-31 14:33:20.691174+02	2019-05-28 16:51:40.253264+02	44	2019-05-31 14:33:20.755353+02	Geje, lesbijki i Sekielski zatopili Koalicję” – wołają publicyści prorządowi i proeuropejscy	\N	\N			/strona-domowa1/aktualności/geje-lesbijki-i-sekielski-zatopili-koalicję-wołają-publicyści-prorządowi-i-proeuropejscy/	/home-page1/news/geje-lesbijki-i-sekielski-zatopili-koalicję-wołają-publicyści-prorządowi-i-proeuropejscy/	geje-lesbijki-i-sekielski-zatopili-koalicję-wołają-publicyści-prorządowi-i-proeuropejscy	geje-lesbijki-i-sekielski-zatopili-koalicję-wołają-publicyści-prorządowi-i-proeuropejscy	Geje, lesbijki i Sekielski zatopili Koalicję” – wołają publicyści prorządowi i proeuropejscy	Geje, lesbijki i Sekielski zatopili Koalicję” – wołają publicyści prorządowi i proeuropejscy
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
45	f	2019-05-31 14:40:00.134758+02	{"pk": 22, "path": "0001000200010005", "depth": 4, "numchild": 0, "title": "1 czerwca manifestacja lekarzy. Do\\u0142\\u0105czmy do nich, bo to o nas chodzi. Kr\\u00f3tsze \\u017cycie, d\\u0142u\\u017csze kolejki\\u2026", "title_pl": "1 czerwca manifestacja lekarzy. Do\\u0142\\u0105czmy do nich, bo to o nas chodzi. Kr\\u00f3tsze \\u017cycie, d\\u0142u\\u017csze kolejki\\u2026", "title_en": "1 czerwca manifestacja lekarzy. Do\\u0142\\u0105czmy do nich, bo to o nas chodzi. Kr\\u00f3tsze \\u017cycie, d\\u0142u\\u017csze kolejki\\u2026", "draft_title": "1 czerwca manifestacja lekarzy. Do\\u0142\\u0105czmy do nich, bo to o nas chodzi. Kr\\u00f3tsze \\u017cycie, d\\u0142u\\u017csze kolejki\\u2026", "slug": "1-czerwca-manifestacja-lekarzy-do\\u0142\\u0105czmy-do-nich-bo-to-o-nas-chodzi-kr\\u00f3tsze-\\u017cycie-d\\u0142u\\u017csze-kolejki", "slug_pl": "1-czerwca-manifestacja-lekarzy-do\\u0142\\u0105czmy-do-nich-bo-to-o-nas-chodzi-kr\\u00f3tsze-\\u017cycie-d\\u0142u\\u017csze-kolejki", "slug_en": "1-czerwca-manifestacja-lekarzy-do\\u0142\\u0105czmy-do-nich-bo-to-o-nas-chodzi-kr\\u00f3tsze-\\u017cycie-d\\u0142u\\u017csze-kolejki", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/news/1-czerwca-manifestacja-lekarzy-do\\u0142\\u0105czmy-do-nich-bo-to-o-nas-chodzi-kr\\u00f3tsze-\\u017cycie-d\\u0142u\\u017csze-kolejki/", "url_path_pl": "/strona-domowa1/aktualno\\u015bci/1-czerwca-manifestacja-lekarzy-do\\u0142\\u0105czmy-do-nich-bo-to-o-nas-chodzi-kr\\u00f3tsze-\\u017cycie-d\\u0142u\\u017csze-kolejki/", "url_path_en": "/home-page1/news/1-czerwca-manifestacja-lekarzy-do\\u0142\\u0105czmy-do-nich-bo-to-o-nas-chodzi-kr\\u00f3tsze-\\u017cycie-d\\u0142u\\u017csze-kolejki/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "headline": "Lekarze maj\\u0105 do\\u015b\\u0107. Do\\u015b\\u0107 pracy w \\u017ale zorganizowanym, skrajnie niedofinansowanym systemie. W sobot\\u0119 wychodz\\u0105 na ulice. Tym razem walcz\\u0105 nie o w\\u0142asne pensje, lecz o normalno\\u015b\\u0107 w ochronie zdrowia. Rz\\u0105dz\\u0105cy udaj\\u0105, \\u017ce problemu nie ma. Ale bez radykalnego wzrostu nak\\u0142ad\\u00f3w, b\\u0119dzie jeszcze gorzej. B\\u0119dziemy szybciej umiera\\u0107, kolejki si\\u0119 jeszcze wyd\\u0142u\\u017c\\u0105", "headline_pl": "Lekarze maj\\u0105 do\\u015b\\u0107. Do\\u015b\\u0107 pracy w \\u017ale zorganizowanym, skrajnie niedofinansowanym systemie. W sobot\\u0119 wychodz\\u0105 na ulice. Tym razem walcz\\u0105 nie o w\\u0142asne pensje, lecz o normalno\\u015b\\u0107 w ochronie zdrowia. Rz\\u0105dz\\u0105cy udaj\\u0105, \\u017ce problemu nie ma. Ale bez radykalnego wzrostu nak\\u0142ad\\u00f3w, b\\u0119dzie jeszcze gorzej. B\\u0119dziemy szybciej umiera\\u0107, kolejki si\\u0119 jeszcze wyd\\u0142u\\u017c\\u0105", "headline_en": "Lekarze maj\\u0105 do\\u015b\\u0107. Do\\u015b\\u0107 pracy w \\u017ale zorganizowanym, skrajnie niedofinansowanym systemie. W sobot\\u0119 wychodz\\u0105 na ulice. Tym razem walcz\\u0105 nie o w\\u0142asne pensje, lecz o normalno\\u015b\\u0107 w ochronie zdrowia. Rz\\u0105dz\\u0105cy udaj\\u0105, \\u017ce problemu nie ma. Ale bez radykalnego wzrostu nak\\u0142ad\\u00f3w, b\\u0119dzie jeszcze gorzej. B\\u0119dziemy szybciej umiera\\u0107, kolejki si\\u0119 jeszcze wyd\\u0142u\\u017c\\u0105", "body": "<p>\\u201eMy, lekarze, damy sobie rad\\u0119 \\u2013 m\\u00f3wi dr Bartosz Fia\\u0142ek, wsp\\u00f3\\u0142organizator protestu \\u2013 Mamy koleg\\u00f3w w szpitalu, kt\\u00f3rzy zawsze pomog\\u0105, jak zachorujemy. A w najgorszym razie wyjedziemy pracowa\\u0107 w Unii. Pacjenci s\\u0105 w gorszej sytuacji. To dla nich walczymy\\u201d.</p><p>Zapa\\u015b\\u0107 systemu wida\\u0107 w statystykach.</p><h2><b>Przedwcze\\u015bnie umieramy</b></h2><p>D\\u0142ugo\\u015b\\u0107 \\u017cycia Polak\\u00f3w przesta\\u0142a si\\u0119 ju\\u017c praktycznie wyd\\u0142u\\u017ca\\u0107. Mi\\u0119dzy 2014 a 2017 rokiem wzros\\u0142a w przypadku zar\\u00f3wno m\\u0119\\u017cczyzn jak i kobiet zaledwie o 0,2 roku. To najgorszy wynik od 26 lat.</p><p>Wska\\u017anik d\\u0142ugo\\u015bci \\u017cycia w kt\\u00f3rym\\u015b momencie zawsze przestaje rosn\\u0105\\u0107 (mimo ogromnych post\\u0119p\\u00f3w medycyny jeste\\u015bmy \\u015bmiertelni), ale w Polsce zatrzyma\\u0142 si\\u0119 on z pewno\\u015bci\\u0105 zbyt wcze\\u015bnie.</p><p><b>Statystyczny Polak \\u017cyje dzi\\u015b 74 lata, Polka 81,8. Tymczasem m\\u0119\\u017cczy\\u017ani w UE \\u017cyj\\u0105 przeci\\u0119tnie o prawie 5 lat, kobiety o dwa lata d\\u0142u\\u017cej.</b></p><p><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>Polska nie zdrowieje. \\u015arednia d\\u0142ugo\\u015b\\u0107 \\u017cycia w\\u00a0naszym kraju przesta\\u0142a rosn\\u0105\\u0107 [Raport o\\u00a0stanie zdrowia spo\\u0142ecze\\u0144stwa]</b></a></h4><p><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a07 LUTEGO 2019</b></a></p><p>W Polsce zdecydowanie za du\\u017co ludzi umiera przedwcze\\u015bnie. Pokazuje to wska\\u017anik przedwczesnych zgon\\u00f3w mo\\u017cliwych do unikni\\u0119cia dzi\\u0119ki terminowej i skutecznej interwencji medycznej. W 2015 roku by\\u0142 on w Polsce zdecydowanie wy\\u017cszy od \\u015bredniej europejskiej. W przypadku kobiet wynosi\\u0142 121,5 na 100 tys. obywateli (\\u015brednia UE \\u2013 97,5). W\\u015br\\u00f3d m\\u0119\\u017cczyzn by\\u0142o jeszcze gorzej \\u2013 229 wobec \\u015bredniej UE 158,2.</p><p>Je\\u015bli uwzgl\\u0119dnimy obie p\\u0142cie \\u0142\\u0105cznie, mieli\\u015bmy w Polsce 169 zgon\\u00f3w mo\\u017cliwych do unikni\\u0119cia na 100 tys. \\u015arednio w Unii by\\u0142o to 127, w Szwajcarii \\u2013 75.</p><h2><b>24 miesi\\u0105ce oczekiwania</b></h2><p>Jedn\\u0105 z kluczowych spraw jest dost\\u0119p do specjalist\\u00f3w. Wed\\u0142ug danych Barometru Fundacji Watch Health Care \\u015bredni czas oczekiwania na wizyt\\u0119 u lekarza specjalisty pomi\\u0119dzy 2013 a 2019 rokiem wyd\\u0142u\\u017cy\\u0142 si\\u0119 u nas dwukrotnie. W pa\\u017adzierniku/listopadzie 2013 na wizyt\\u0119 czeka\\u0142o si\\u0119 \\u015brednio dwa miesi\\u0105ce, na prze\\u0142omie grudnia 2018 i stycznia 2019 prawie dwa razy d\\u0142u\\u017cej.</p><p>A to tylko \\u015brednia. Dostanie si\\u0119 do lekarzy niekt\\u00f3rych specjalno\\u015bci graniczy bowiem z cudem.</p><p><b>Czas oczekiwania na wizyt\\u0119 u endokrynologa wyni\\u00f3s\\u0142 na pocz\\u0105tku 2019 roku 24 miesi\\u0105ce, do kardiologa dzieci\\u0119cego \\u2013 12 miesi\\u0119cy.</b></p><p>Polacy, tak jak obywatele wielu innych kraj\\u00f3w, coraz cz\\u0119\\u015bciej choruj\\u0105 na nowotwory z\\u0142o\\u015bliwe (wynika to m.in. ze starzenia si\\u0119 spo\\u0142ecze\\u0144stw, a rak to przede wszystkim choroba ludzi starych). O ile jednak w krajach o dobrze zorganizowanej i w\\u0142a\\u015bciwie finansowanej ochronie zdrowia rak coraz cz\\u0119\\u015bciej staje si\\u0119 chorob\\u0105 przewlek\\u0142\\u0105, o tyle w Polsce skuteczno\\u015b\\u0107 leczenia nowotwor\\u00f3w w por\\u00f3wnaniu z Europ\\u0105 spada. Wed\\u0142ug raportu NIK z 2018 w Polsce, na W\\u0119grzech i Chorwacji notuje si\\u0119 najwy\\u017cszy poziom umieralno\\u015bci na choroby nowotworowe w Europie (chodzi tu o liczb\\u0119 zgon\\u00f3w na 100 tys.). I tak np. w przypadku jednego z najcz\\u0119stszych nowotwor\\u00f3w kobiecych \\u2013 raka piersi wsp\\u00f3\\u0142czynnik zgon\\u00f3w w latach 2010-2016 zwi\\u0119kszy\\u0142 si\\u0119 o 7,2 proc. (raport PZH z 2019 roku)</p><h2><b>Psychiatria dzieci\\u0119ca tonie</b></h2><p>W kraju dramatycznie brakuje lekarzy i piel\\u0119gniarek. Przyczyni\\u0142o si\\u0119 do tego z jednej strony radykalne zmniejszenie liczby miejsc na studiach medycznych, z drugiej masowe wyjazdy pracownik\\u00f3w ochrony zdrowia za granic\\u0119. System dzi\\u015b funkcjonuje wy\\u0142\\u0105cznie dzi\\u0119ki najm\\u0142odszym lekarzom i emerytom.</p><p><b>\\u015arednia wieku piel\\u0119gniarki przekroczy\\u0142a 50 lat, za\\u015b \\u015brednia wieku lekarzy niekt\\u00f3rych specjalno\\u015bci np. pediatr\\u00f3w to 60 lat!</b></p><p>O tym jak bardzo brak lekarzy (i wieloletni brak dzia\\u0142a\\u0144 zaradczych w tym wzgl\\u0119dzie) mo\\u017ce odbi\\u0107 si\\u0119 na zdrowiu obywateli, najlepiej wida\\u0107 w psychiatrii dzieci\\u0119cej. Organizacja obywatelska Watchdog Polska stworzy\\u0142a niedawno raport na ten temat. Wnioski s\\u0105 pora\\u017caj\\u0105ce. Jedynym gwarantem miejsca w dzieci\\u0119cym szpitalu psychiatrycznym jest dzi\\u015b nieudana pr\\u00f3ba samob\\u00f3jcza. Pozostali musz\\u0105 czeka\\u0107. Na pobyt w 30 szpitalach ze skierowaniem czeka 626 dzieci. A przecie\\u017c leczenie w takiej plac\\u00f3wce to ostateczno\\u015b\\u0107.</p><p>Kilkudziesi\\u0119ciu psychiatr\\u00f3w pracuje ponad si\\u0142y w przepe\\u0142nionych, nielicznych oddzia\\u0142ach w ca\\u0142ym kraju \\u2013 wynika z raportu.</p><p><b>\\u201eStajemy przed dramatycznym pytaniem: czy powiesi si\\u0119 nastolatek z my\\u015blami samob\\u00f3jczymi odes\\u0142any ze szpitalnej izby przyj\\u0119\\u0107 do domu, czy ten przyj\\u0119ty na oddzia\\u0142, kt\\u00f3remu nie b\\u0119dziemy w stanie zapewni\\u0107 opieki?\\u201d \\u2013 m\\u00f3wi\\u0142 kilka miesi\\u0119cy temu prof. Tomasz Wola\\u0144czyk z Dzieci\\u0119cego Szpitala Klinicznego w Warszawie.</b></p><p><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>Psychiatria dzieci\\u0119ca tonie. Zamyka si\\u0119 kolejny oddzia\\u0142, istnienie kilku innych jest zagro\\u017cone</b></a></h4><p><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a028 MARCA 2019</b></a></p><p>Ca\\u0142a za\\u0142oga prowadzonego przez niego oddzia\\u0142u z\\u0142o\\u017cy\\u0142a wym\\u00f3wienia. 1 kwietnia 2019 odeszli i to nie ze wzgl\\u0119du na niskie p\\u0142ace, lecz z powodu warunk\\u00f3w pracy, kt\\u00f3re by\\u0142y dla nich nie do przyj\\u0119cia i zagra\\u017ca\\u0142y bezpiecze\\u0144stwu lekarzy i pacjent\\u00f3w.</p><h2><b>Porozumienie 2018, czyli rozczarowanie i</b></h2><p>W lutym 2018 roku rezydenci z Og\\u00f3lnopolskiego Zwi\\u0105zku Zawodowego Lekarzy (OZZL) podpisali porozumienie z Ministrem Zdrowia \\u0141ukaszem Szumowskim. Zak\\u0142adano m. in. podwy\\u017cki dla rezydent\\u00f3w i specjalist\\u00f3w. Szczeg\\u00f3lnie istotnym zapisem by\\u0142a decyzja o wzro\\u015bcie nak\\u0142ad\\u00f3w na ochron\\u0119 zdrowia w Polsce. Mia\\u0142a j\\u0105 zagwarantowa\\u0107 specjalna ustawa. Ustalono, \\u017ce nak\\u0142ady b\\u0119d\\u0105 ros\\u0142y stopniowo i w roku 2024 osi\\u0105gn\\u0105 6 proc. PKB (pocz\\u0105tkowo rezydenci zabiegali o 6,8 proc.).</p><p>Ustaw\\u0119 uchwalono w lipcu 2018 jednak rz\\u0105d zastosowa\\u0142 trik i planuj\\u0105c wydatki na zdrowie liczy je wed\\u0142ug PKB sprzed dw\\u00f3ch lat. Ten zgrabny zabieg pozwoli\\u0142 pa\\u0144stwu zaoszcz\\u0119dzi\\u0107 w tym roku 7,6 (wed\\u0142ug innych wylicze\\u0144 nawet 10) mld z\\u0142 na zdrowiu obywateli. Rezydenci oceniaj\\u0105, \\u017ce w zwi\\u0105zku ze sposobem liczenia \\u201en \\u2013 2\\u201d nak\\u0142ady w 2024 si\\u0119gn\\u0105 zamiast obiecanych 6 proc. \\u2013 5,33 proc. PKB.</p><p><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>Licz\\u0105c wydatki na\\u00a0zdrowie w\\u00a02019\\u00a0r., rz\\u0105d stosuje trik: bierze PKB z\\u00a02017. Oszcz\\u0119dza na\\u00a0zdrowiu 7,6 mld</b></a></h4><p><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a018 LUTEGO 2019</b></a></p><p>Wydatki na zdrowie wprawdzie rosn\\u0105, ale dzieje si\\u0119 tak wy\\u0142\\u0105cznie za spraw\\u0105 wzrostu p\\u0142ac w gospodarce, a zatem i dochod\\u00f3w ze sk\\u0142adek p\\u0142aconych z naszych pensji. Niedawno <a href=\\"https://www.prawo.pl/zdrowie/zwiekszenie-planu-finansowego-nfz-o-4-miliardy-z-poparciem,415466.html\\">zwi\\u0119kszono plan finansowy NFZ na ten rok o 4 mld 136 mln z\\u0142</a>. chwal\\u0105c si\\u0119 jednocze\\u015bnie, i\\u017c nak\\u0142ady po raz pierwszy przekrocz\\u0105 100 mld z\\u0142.</p><p>Nie dodano, \\u017ce dodatkowe pieni\\u0105dze pochodz\\u0105 r\\u00f3wnie\\u017c z naszych sk\\u0142adek (w tym m.in. majowej trzynastki dla emeryt\\u00f3w), a poza tym, \\u017ce starcz\\u0105 na zatkanie najwi\\u0119kszych dziur w systemie. Na porz\\u0105dn\\u0105 napraw\\u0119 nie ma co liczy\\u0107.</p><h2><b>Jasnych punkt\\u00f3w prawie brak</b></h2><p>System ledwo zipie od lat. W polskiej ochronie zdrowia trudno nawet wskaza\\u0107 jakiekolwiek jasne punkty (cho\\u0107 naturalnie mamy wielu \\u015bwietnych, oddanych pacjentom lekarzy). Do niedawna takim punktem by\\u0142a kardiologia. W Polsce uda\\u0142o si\\u0119 doprowadzi\\u0107 do tego, \\u017ce bardzo spad\\u0142a umieralno\\u015b\\u0107 z powodu zawa\\u0142\\u00f3w. Za tym sukcesem sta\\u0142 oczywi\\u015bcie du\\u017cy wysi\\u0142ek merytoryczny i organizacyjny polskich kardiolog\\u00f3w, ale przede wszystkim jednak sta\\u0142y pieni\\u0105dze. NFZ po prostu \\u015bwietnie wyceni\\u0142 procedur\\u0119 inwazyjnego badania naczy\\u0144 wie\\u0144cowych (tzw. koronarografi\\u0119), kluczowej procedury w diagnostyce i leczeniu \\u015bwie\\u017cego zawa\\u0142u.</p><p>W efekcie jak grzyby po deszczu zacz\\u0119\\u0142y wyrasta\\u0107 punkty, w kt\\u00f3rych mo\\u017cna by\\u0142o przeprowadza\\u0107 ww. badanie i od razu leczy\\u0107 pacjent\\u00f3w. Dzi\\u015b koronarografia wyceniana jest ju\\u017c znacznie s\\u0142abiej i mo\\u017cemy obawia\\u0107 si\\u0119, \\u017ce wkr\\u00f3tce odbije si\\u0119 to na statystykach.</p><p>Innym jasnym punktem na mapie polskiej s\\u0142u\\u017cby zdrowia jest by\\u0107 mo\\u017ce opieka hospicyjna. Cho\\u0107 i tu ograniczenia finansowe s\\u0105 du\\u017ce, a wiele \\u015bwietnie funkcjonuj\\u0105cych polskich hospicj\\u00f3w dzia\\u0142a\\u0142oby znacznie gorzej, gdyby nie pomoc os\\u00f3b wp\\u0142acaj\\u0105cych 1 proc. podatku, b\\u0105d\\u017a wspieraj\\u0105cych hospicja w inny spos\\u00f3b.</p><h2><b>Nikt za mnie nie zawalczy</b></h2><p>W manifestacji lekarzy 1 czerwca chodzi o warunki pracy, o normalno\\u015b\\u0107 w polskiej ochronie zdrowia, o bezpiecze\\u0144stwo.</p><p>Maria K\\u0142osi\\u0144ska, jedna z wiceprzewodnicz\\u0105cych Porozumienia Rezydent\\u00f3w OZZL tak t\\u0142umaczy na Facebooku sw\\u00f3j przyjazd do Warszawy na protest:</p><p>\\u201eHej,</p><p>na pierwsz\\u0105 manifestacj\\u0119, 3 lata temu, w nocy rysowa\\u0142am dla dzieci transparent.</p><p>Teraz dzieci narysuj\\u0105 (i napisz\\u0105\\ud83d\\ude2e) go same.</p><p>Min\\u0119\\u0142o tyle czasu, jeste\\u015bmy wiele krok\\u00f3w dalej, cho\\u0107 czasem czuj\\u0119 jakby nas hamowano tak bardzo, \\u017ce stoimy w miejscu.</p><p>1 czerwca zn\\u00f3w b\\u0119dziemy.</p><p><b>Nie mam z\\u0142udze\\u0144. Lubi\\u0119 zaw\\u00f3d lekarza, ale nikt za mnie nie zawalczy o lepsze warunki jego wykonywania w Polsce. Nie chce mi si\\u0119 za polityk\\u00f3w t\\u0142umaczy\\u0107 pacjentom, dlaczego jest taka kolejka, \\u017ce inne opcje leczenia nie s\\u0105 dost\\u0119pne \\u201eteraz\\u201d/ \\u201ena NFZ\\u201d/ \\u201enie w Polsce\\u201d.</b></p><p>Zw\\u0142aszcza, \\u017ce nie ma na to czasu, a sporo pacjent\\u00f3w i tak mi nie uwierzy lub nie zrozumie.</p><p>Przyje\\u017cd\\u017cam dla siebie, dla swojej rodziny. Przyjad\\u0119, bo inni nadal walcz\\u0105, bo wszystkiego (zw\\u0142aszcza drobnych, ale istotnych spraw) trzeba pilnowa\\u0107, bo czytam, \\u017ce nie ka\\u017cdy z nas kto powinien, otrzyma\\u0142 nale\\u017cn\\u0105 podwy\\u017ck\\u0119. Przyje\\u017cd\\u017cam, bo je\\u017celi nasza obecno\\u015b\\u0107 ma stymulowa\\u0107 spo\\u0142ecznie zaanga\\u017cowanych lekarzy do kontynuowania tej walki, to warto, bo my ju\\u017c dobrze wiemy, \\u017ce nic \\u201esamo z siebie\\u201d si\\u0119 nie zmieni. Nie chc\\u0119 by moja nieobecno\\u015b\\u0107 zaprzepa\\u015bci\\u0142a to, co si\\u0119 ju\\u017c uda\\u0142o wywalczy\\u0107.</p><p>Przyjad\\u0119, bo niekt\\u00f3re historie pacjent\\u00f3w i ich rodzin mog\\u0142yby si\\u0119 potoczy\\u0107 inaczej, gdyby nie ten chory system, a sama na co dzie\\u0144 nic nie mog\\u0119 z tym zrobi\\u0107. W ko\\u0144cu to tylko jedna sobota, par\\u0119set kilometr\\u00f3w\\u201d.</p><h2><b>Id\\u0119 na manifestacj\\u0119 jako jedyna</b></h2><p><b>\\u201eNasza manifestacja jest m.in. po to, by\\u015bmy policzyli miecze i zorientowali si\\u0119 ilu nas jest i jak w zwi\\u0105zku z tym mo\\u017cemy prowadzi\\u0107 dalsz\\u0105 walk\\u0119 przed wyborami parlamentarnymi\\u201d</b><br/><b>\\u2013 m\\u00f3wi\\u0142 OKO.press niedawno dr Bartosz Fia\\u0142ek, przewodnicz\\u0105cy Regionu Kujawsko-Pomorskiego Og\\u00f3lnopolskiego Zwi\\u0105zku Zawodowego Lekarzy.</b></p><p><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>Ludzie, obud\\u017acie si\\u0119, bo za\\u00a0chwil\\u0119 nie b\\u0119dzie mia\\u0142 was kto leczy\\u0107. 1 czerwca protest lekarzy</b></a></h4><p><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a022 KWIETNIA 2019</b></a></p><p>Niestety, manifestacja mo\\u017ce wcale nie by\\u0107 tak liczna. OZZL nie jest siln\\u0105 organizacj\\u0105. Nale\\u017cy do niej zaledwie 10 proc. lekarzy (\\u201ew krajach, gdzie wykonywanie zawodu lekarza jest i op\\u0142acalne, i ergonomiczne, i bezpieczne, uzwi\\u0105zkowienie si\\u0119ga 50-70 proc.\\u201d \\u2013 pisze na FB dr Fia\\u0142ek).</p><p>W ochronie zdrowia pracuje wiele grup zawodowych \\u2013 lekarze, piel\\u0119gniarki, po\\u0142o\\u017cne, fizjoterapeuci, diagnostycy medyczni, administracja, dietetycy, psycholodzy, logopedzi, technicy, salowe, ratownicy medyczni. Ka\\u017cda z tych grup ma nieco odmienne interesy i rz\\u0105d (nie tylko zreszt\\u0105 obecny) bardzo umiej\\u0119tnie to wykorzystuje. Protesty na og\\u00f3\\u0142 dotycz\\u0105 tylko jednej z grup, a z mniejsz\\u0105 liczb\\u0105 protestuj\\u0105cych \\u0142atwiej si\\u0119 upora\\u0107 i co\\u015b im obieca\\u0107.</p><p>R\\u00f3\\u017cne interesy zdarzaj\\u0105 si\\u0119 nawet w obr\\u0119bie jednej grupy zawodowej. I tak np. m\\u0142odzi lekarze s\\u0105 w zupe\\u0142nie innej sytuacji ni\\u017c specjali\\u015bci. Ci pierwsi jeszcze si\\u0119 buntuj\\u0105, zale\\u017cy im, s\\u0105 te\\u017c na dorobku. Ci drudzy natomiast ca\\u0142kiem nie\\u017ale urz\\u0105dzili si\\u0119 w kiepskim systemie. Dobrze zarabiaj\\u0105, ci kt\\u00f3rzy maj\\u0105 prywatn\\u0105 praktyk\\u0119, cz\\u0119sto wr\\u0119cz \\u015bwietnie i ani im w g\\u0142owie wychodzenie na ulic\\u0119.</p><p><b>\\u201ePyta\\u0142am koleg\\u00f3w ze szpitala kto z nich wybiera si\\u0119 na manifestacj\\u0119 1 czerwca\\u201d \\u2013 m\\u00f3wi OKO.press lekarka z d\\u0142ugim sta\\u017cem z jednej z dzieci\\u0119cych plac\\u00f3wek w Warszawie. \\u201eOkaza\\u0142o si\\u0119, \\u017ce jestem jedyna\\u201d.</b></p><h2><b>Solidarno\\u015b\\u0107 zagro\\u017cona</b></h2><p>Podzia\\u0142y w\\u015br\\u00f3d pracownik\\u00f3w ochrony zdrowia na pewno nie u\\u0142atwia walki o radykaln\\u0105 zmian\\u0119. Dobr\\u0105 wiadomo\\u015bci\\u0105 jest to, \\u017ce w manifestacji 1 czerwca wezm\\u0105 udzia\\u0142 przedstawiciele Og\\u00f3lnopolskiego Zwi\\u0105zku Pracodawc\\u00f3w Szpitali Powiatowych (OZPSP). Dyrektorzy tych plac\\u00f3wek teoretycznie stoj\\u0105 po drugiej stronie barykady. Zatrudniaj\\u0105 pracownik\\u00f3w, negocjuj\\u0105 z nimi stawki. Oni jednak te\\u017c s\\u0105 coraz bardziej zdesperowani z racji warunk\\u00f3w, w jakich przysz\\u0142o im pracowa\\u0107.</p><p>\\u201eRz\\u0105d chcia\\u0142by zamkn\\u0105\\u0107 150 szpitali powiatowych, ale nie ma odwagi powiedzie\\u0107 tego wprost\\u201d \\u2013 m\\u00f3wi\\u0142 niedawno OKO.press Bogumi\\u0142 Kurowski, dyrektor zarz\\u0105du Szpitala Powiatowego w Nowym Mie\\u015bcie Lubawskim. Dyrektor Kurowski wraz z kilkoma osobami ze swojego szpitala wybiera si\\u0119 1 czerwca do Warszawy. \\u201eMam nadziej\\u0119, \\u017ce ludzi b\\u0119dzie tak du\\u017co, \\u017ce si\\u0119 nie spotkamy\\u201d \\u2013 powiedzia\\u0142 nam dwa dni przed manifestacj\\u0105. Oby.</p><p><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>Rz\\u0105d chce likwidacji 150 szpitali powiatowych, ale\\u00a0nie ma odwagi powiedzie\\u0107 tego wprost</b></a></h4><p><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a08 MAJA 2019</b></a></p><p>\\u201eZ oburzeniem zauwa\\u017camy, \\u017ce jako jedyna grupa w ochronie zdrowia domagamy si\\u0119 pieni\\u0119dzy nie dla siebie, a dla leczonych w szpitalach chorych oraz na realizacje obietnic p\\u0142acowych ministra, tymczasem zar\\u00f3wno przez Ministerstwo Zdrowia, jak i Narodowy Fundusz Zdrowia, traktowani jeste\\u015bmy jak natarczywi \\u017cebracy\\u201d \\u2013 czytamy w stanowisku Zarz\\u0105du OZPSP z 17 maja 2019.</p><h2><b>Do 15 lat wi\\u0119zienia</b></h2><p>\\u201eMy lekarze damy sobie rad\\u0119\\u201d \\u2013 m\\u00f3wi wspomniany dr Bartosz Fia\\u0142ek, jeden z \\u2013 jak go nazywam \\u2013 \\u201ewojownik\\u00f3w\\u201d, kt\\u00f3remu chce si\\u0119 po\\u015bwi\\u0119ca\\u0107 w\\u0142asny czas dla walki o spraw\\u0119.</p><p>\\u201eMy lekarze mamy koleg\\u00f3w w szpitalu, kt\\u00f3rzy zawsze pomog\\u0105, jak zachorujemy. A w najgorszym razie wyjedziemy pracowa\\u0107 w Unii. Pacjenci s\\u0105 w gorszej sytuacji. To dla nich walczymy\\u201d \\u2013 m\\u00f3wi dr Fia\\u0142ek.</p><p>Dlatego organizatorzy protestu gor\\u0105co namawiaj\\u0105 pacjent\\u00f3w, a wi\\u0119c tak naprawd\\u0119 nas wszystkich, do przy\\u0142\\u0105czenia si\\u0119 do manifestacji.</p><p>W\\u0142adze od dawna rozbijaj\\u0105 solidarno\\u015b\\u0107 lekarzy i pacjent\\u00f3w. Tych pierwszych przedstawia si\\u0119 jako pazernych, niedouczonych, dzia\\u0142aj\\u0105cych cz\\u0119sto na szkod\\u0119 chorych. Wystarczy wspomnie\\u0107 g\\u0142o\\u015bne s\\u0142owa Zbigniewa Ziobry z 2007 roku. \\u201eJu\\u017c nikt nigdy przez tego pana pozbawiony \\u017cycia nie b\\u0119dzie\\u201d.</p><p>Dzi\\u015b Ziobro wzi\\u0105\\u0142 si\\u0119 za aktualizacj\\u0119 kodeksu karnego i proponuje zmian\\u0119 art. 155 kk, zwi\\u0119kszaj\\u0105c\\u0105 kar\\u0119 za nieumy\\u015blne spowodowanie \\u015bmierci cz\\u0142owieka z dotychczasowych trzech miesi\\u0119cy do 5 lat wi\\u0119zienia na rok do 10 lat wi\\u0119zienia. Poniewa\\u017c kar powy\\u017cej roku nie mo\\u017cna warunkowo zawiesza\\u0107, dlatego lekarz skazany z tego paragrafu p\\u00f3jdzie siedzie\\u0107.</p><p>Ziobro chce te\\u017c wprowadzenia nowego przepisu, kt\\u00f3ry zak\\u0142ada kar\\u0119 od dw\\u00f3ch do 15 lat wi\\u0119zienia dla kogo\\u015b, kto nieumy\\u015blnie spowoduje \\u015bmier\\u0107 wi\\u0119cej ni\\u017c jednej osoby. T\\u0105 nowelizacj\\u0105 zaniepokoili si\\u0119 szczeg\\u00f3lnie ginekolodzy-po\\u0142o\\u017cnicy odpowiadaj\\u0105cy za \\u017cycie dw\\u00f3ch os\\u00f3b \\u2013 matki i dziecka.</p><p>Ministerstwo Zdrowia nie mia\\u0142o uwag do propozycji Ziobry. W maju nowy kodeks by\\u0142 procedowany w Sejmie i w Senacie, ostateczna wersja czeka na akceptacj\\u0119 pos\\u0142\\u00f3w.</p><p>30 maja Ministerstwo Sprawiedliwo\\u015bci przekonywa\\u0142o, \\u017ce zmiana przepisu ma nie dotyczy\\u0107 lekarzy, lecz pospolitych przest\\u0119pc\\u00f3w. MS <a href=\\"https://www.politykazdrowotna.com/45536,ms-zmiana-prawa-nie-uderzy-w-lekarzy-lecz-w-pospolitych-przestepcow\\">podkre\\u015bli\\u0142o tak\\u017ce, \\u017ce b\\u0142\\u0105d medyczny nie musi (ale mo\\u017ce!)</a> by\\u0107 kwalifikowany jako nieumy\\u015blne spowodowanie \\u015bmierci.</p><h2><b>Jako\\u015b to b\\u0119dzie</b></h2><p>Kwestia zaostrzenia kar, kt\\u00f3ra mo\\u017ce dotkn\\u0105\\u0107 \\u015brodowisko lekarskie (a tak\\u017ce nas \\u2013 pacjent\\u00f3w, poniewa\\u017c lekarze b\\u0119d\\u0105 zmuszeni si\\u0119 dodatkowo ubezpieczy\\u0107, a my wszyscy za to zap\\u0142aci\\u0107) z pewno\\u015bci\\u0105 b\\u0119dzie podnoszona podczas manifestacji.</p><p>Ale \\u2013 powt\\u00f3rzmy \\u2013 g\\u0142\\u00f3wny nacisk idzie na popraw\\u0119 systemu. Radykaln\\u0105 popraw\\u0119 finansow\\u0105, poniewa\\u017c bez pieni\\u0119dzy, i to du\\u017cych, sytuacji nie da si\\u0119 zmieni\\u0107. To z czym borykamy si\\u0119 dzi\\u015b, to efekt wieloletnich zaniedba\\u0144. Praktycznie wszystkie rz\\u0105dy po 1989 roku uwa\\u017ca\\u0142y, \\u017ce z ochron\\u0105 zdrowia \\u201ejako\\u015b to b\\u0119dzie\\u201d. Ustalono bardzo nisk\\u0105 wysoko\\u015b\\u0107 sk\\u0142adki zdrowotnej, oszcz\\u0119dzano na czym si\\u0119 da \\u2013 na lekach, na kszta\\u0142ceniu kadr, na sprz\\u0119cie. Zezwolono na rozw\\u00f3j sektora prywatnego, dzi\\u015b spe\\u0142nia on wa\\u017cn\\u0105 rol\\u0119 w systemie. Ale:</p><ul><li>po pierwsze \\u201ezassa\\u0142\\u201d on wielu dobrych lekarzy, kt\\u00f3rzy odeszli z publicznego sektora,</li><li>po drugie licznych obywateli na niego nie sta\\u0107,</li><li>wreszcie po trzecie w razie naprawd\\u0119 powa\\u017cniej choroby i perspektywy naprawd\\u0119 du\\u017cych wydatk\\u00f3w pacjent i tak trafia do publicznej ochrony zdrowia.</li></ul><p>PiS dbaj\\u0105c w tej kadencji o \\u201ezwyk\\u0142ych obywateli\\u201d w kwestii zdrowia zrobi\\u0142 tyle co nic. Trudno za wielk\\u0105 pomoc uzna\\u0107 wprowadzenie bezp\\u0142atnych lek\\u00f3w dla os\\u00f3b 75+ (lista tych lek\\u00f3w jest ograniczona, inne kraje wprowadzi\\u0142y ulgi dla wszystkich emeryt\\u00f3w, itd.). Cho\\u0107 trzeba te\\u017c odda\\u0107 sprawiedliwo\\u015b\\u0107, \\u017ce ten rz\\u0105d by\\u0142 pierwszym, kt\\u00f3ry w og\\u00f3le zaj\\u0105\\u0142 si\\u0119 tym problemem.</p><p>Trudno te\\u017c za sukces uzna\\u0107 zapowiadane szumnie w kampanii zmiany w polskiej onkologii. Mia\\u0142 powsta\\u0107 Narodowy Instytut Raka, a sko\\u0144czy\\u0142o si\\u0119 na kosztownym i mocno oprotestowanym przez specjalist\\u00f3w pilota\\u017cu ds. sieci onkologicznej. Rz\\u0105d przygotowuje strategi\\u0119 walki z nowotworami odrzuciwszy poprzedni gotowy dokument, bo powsta\\u0142 za PO.</p><h2><b>Lekarze sami nie dadz\\u0105 rady</b><br/></h2><p>W pi\\u0105tce PiS w og\\u00f3le nie wspomniano o zdrowiu uznaj\\u0105c, \\u017ce w ten spos\\u00f3b nie pozyska si\\u0119 g\\u0142os\\u00f3w wyborc\\u00f3w.</p><p>Ale bez odwa\\u017cnej politycznej decyzji na zmian\\u0119 \\u2013 jak wspomnia\\u0142em \\u2013 nie ma szans. Lekarze sami jej nie wywalcz\\u0105. Pom\\u00f3\\u017cmy im cho\\u0107by we w\\u0142asnym interesie. Najbli\\u017csza okazja 1 czerwca.</p>", "body_pl": "<p>\\u201eMy, lekarze, damy sobie rad\\u0119 \\u2013 m\\u00f3wi dr Bartosz Fia\\u0142ek, wsp\\u00f3\\u0142organizator protestu \\u2013 Mamy koleg\\u00f3w w szpitalu, kt\\u00f3rzy zawsze pomog\\u0105, jak zachorujemy. A w najgorszym razie wyjedziemy pracowa\\u0107 w Unii. Pacjenci s\\u0105 w gorszej sytuacji. To dla nich walczymy\\u201d.</p><p>Zapa\\u015b\\u0107 systemu wida\\u0107 w statystykach.</p><h2><b>Przedwcze\\u015bnie umieramy</b></h2><p>D\\u0142ugo\\u015b\\u0107 \\u017cycia Polak\\u00f3w przesta\\u0142a si\\u0119 ju\\u017c praktycznie wyd\\u0142u\\u017ca\\u0107. Mi\\u0119dzy 2014 a 2017 rokiem wzros\\u0142a w przypadku zar\\u00f3wno m\\u0119\\u017cczyzn jak i kobiet zaledwie o 0,2 roku. To najgorszy wynik od 26 lat.</p><p>Wska\\u017anik d\\u0142ugo\\u015bci \\u017cycia w kt\\u00f3rym\\u015b momencie zawsze przestaje rosn\\u0105\\u0107 (mimo ogromnych post\\u0119p\\u00f3w medycyny jeste\\u015bmy \\u015bmiertelni), ale w Polsce zatrzyma\\u0142 si\\u0119 on z pewno\\u015bci\\u0105 zbyt wcze\\u015bnie.</p><p><b>Statystyczny Polak \\u017cyje dzi\\u015b 74 lata, Polka 81,8. Tymczasem m\\u0119\\u017cczy\\u017ani w UE \\u017cyj\\u0105 przeci\\u0119tnie o prawie 5 lat, kobiety o dwa lata d\\u0142u\\u017cej.</b></p><p><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>Polska nie zdrowieje. \\u015arednia d\\u0142ugo\\u015b\\u0107 \\u017cycia w\\u00a0naszym kraju przesta\\u0142a rosn\\u0105\\u0107 [Raport o\\u00a0stanie zdrowia spo\\u0142ecze\\u0144stwa]</b></a></h4><p><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a07 LUTEGO 2019</b></a></p><p>W Polsce zdecydowanie za du\\u017co ludzi umiera przedwcze\\u015bnie. Pokazuje to wska\\u017anik przedwczesnych zgon\\u00f3w mo\\u017cliwych do unikni\\u0119cia dzi\\u0119ki terminowej i skutecznej interwencji medycznej. W 2015 roku by\\u0142 on w Polsce zdecydowanie wy\\u017cszy od \\u015bredniej europejskiej. W przypadku kobiet wynosi\\u0142 121,5 na 100 tys. obywateli (\\u015brednia UE \\u2013 97,5). W\\u015br\\u00f3d m\\u0119\\u017cczyzn by\\u0142o jeszcze gorzej \\u2013 229 wobec \\u015bredniej UE 158,2.</p><p>Je\\u015bli uwzgl\\u0119dnimy obie p\\u0142cie \\u0142\\u0105cznie, mieli\\u015bmy w Polsce 169 zgon\\u00f3w mo\\u017cliwych do unikni\\u0119cia na 100 tys. \\u015arednio w Unii by\\u0142o to 127, w Szwajcarii \\u2013 75.</p><h2><b>24 miesi\\u0105ce oczekiwania</b></h2><p>Jedn\\u0105 z kluczowych spraw jest dost\\u0119p do specjalist\\u00f3w. Wed\\u0142ug danych Barometru Fundacji Watch Health Care \\u015bredni czas oczekiwania na wizyt\\u0119 u lekarza specjalisty pomi\\u0119dzy 2013 a 2019 rokiem wyd\\u0142u\\u017cy\\u0142 si\\u0119 u nas dwukrotnie. W pa\\u017adzierniku/listopadzie 2013 na wizyt\\u0119 czeka\\u0142o si\\u0119 \\u015brednio dwa miesi\\u0105ce, na prze\\u0142omie grudnia 2018 i stycznia 2019 prawie dwa razy d\\u0142u\\u017cej.</p><p>A to tylko \\u015brednia. Dostanie si\\u0119 do lekarzy niekt\\u00f3rych specjalno\\u015bci graniczy bowiem z cudem.</p><p><b>Czas oczekiwania na wizyt\\u0119 u endokrynologa wyni\\u00f3s\\u0142 na pocz\\u0105tku 2019 roku 24 miesi\\u0105ce, do kardiologa dzieci\\u0119cego \\u2013 12 miesi\\u0119cy.</b></p><p>Polacy, tak jak obywatele wielu innych kraj\\u00f3w, coraz cz\\u0119\\u015bciej choruj\\u0105 na nowotwory z\\u0142o\\u015bliwe (wynika to m.in. ze starzenia si\\u0119 spo\\u0142ecze\\u0144stw, a rak to przede wszystkim choroba ludzi starych). O ile jednak w krajach o dobrze zorganizowanej i w\\u0142a\\u015bciwie finansowanej ochronie zdrowia rak coraz cz\\u0119\\u015bciej staje si\\u0119 chorob\\u0105 przewlek\\u0142\\u0105, o tyle w Polsce skuteczno\\u015b\\u0107 leczenia nowotwor\\u00f3w w por\\u00f3wnaniu z Europ\\u0105 spada. Wed\\u0142ug raportu NIK z 2018 w Polsce, na W\\u0119grzech i Chorwacji notuje si\\u0119 najwy\\u017cszy poziom umieralno\\u015bci na choroby nowotworowe w Europie (chodzi tu o liczb\\u0119 zgon\\u00f3w na 100 tys.). I tak np. w przypadku jednego z najcz\\u0119stszych nowotwor\\u00f3w kobiecych \\u2013 raka piersi wsp\\u00f3\\u0142czynnik zgon\\u00f3w w latach 2010-2016 zwi\\u0119kszy\\u0142 si\\u0119 o 7,2 proc. (raport PZH z 2019 roku)</p><h2><b>Psychiatria dzieci\\u0119ca tonie</b></h2><p>W kraju dramatycznie brakuje lekarzy i piel\\u0119gniarek. Przyczyni\\u0142o si\\u0119 do tego z jednej strony radykalne zmniejszenie liczby miejsc na studiach medycznych, z drugiej masowe wyjazdy pracownik\\u00f3w ochrony zdrowia za granic\\u0119. System dzi\\u015b funkcjonuje wy\\u0142\\u0105cznie dzi\\u0119ki najm\\u0142odszym lekarzom i emerytom.</p><p><b>\\u015arednia wieku piel\\u0119gniarki przekroczy\\u0142a 50 lat, za\\u015b \\u015brednia wieku lekarzy niekt\\u00f3rych specjalno\\u015bci np. pediatr\\u00f3w to 60 lat!</b></p><p>O tym jak bardzo brak lekarzy (i wieloletni brak dzia\\u0142a\\u0144 zaradczych w tym wzgl\\u0119dzie) mo\\u017ce odbi\\u0107 si\\u0119 na zdrowiu obywateli, najlepiej wida\\u0107 w psychiatrii dzieci\\u0119cej. Organizacja obywatelska Watchdog Polska stworzy\\u0142a niedawno raport na ten temat. Wnioski s\\u0105 pora\\u017caj\\u0105ce. Jedynym gwarantem miejsca w dzieci\\u0119cym szpitalu psychiatrycznym jest dzi\\u015b nieudana pr\\u00f3ba samob\\u00f3jcza. Pozostali musz\\u0105 czeka\\u0107. Na pobyt w 30 szpitalach ze skierowaniem czeka 626 dzieci. A przecie\\u017c leczenie w takiej plac\\u00f3wce to ostateczno\\u015b\\u0107.</p><p>Kilkudziesi\\u0119ciu psychiatr\\u00f3w pracuje ponad si\\u0142y w przepe\\u0142nionych, nielicznych oddzia\\u0142ach w ca\\u0142ym kraju \\u2013 wynika z raportu.</p><p><b>\\u201eStajemy przed dramatycznym pytaniem: czy powiesi si\\u0119 nastolatek z my\\u015blami samob\\u00f3jczymi odes\\u0142any ze szpitalnej izby przyj\\u0119\\u0107 do domu, czy ten przyj\\u0119ty na oddzia\\u0142, kt\\u00f3remu nie b\\u0119dziemy w stanie zapewni\\u0107 opieki?\\u201d \\u2013 m\\u00f3wi\\u0142 kilka miesi\\u0119cy temu prof. Tomasz Wola\\u0144czyk z Dzieci\\u0119cego Szpitala Klinicznego w Warszawie.</b></p><p><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>Psychiatria dzieci\\u0119ca tonie. Zamyka si\\u0119 kolejny oddzia\\u0142, istnienie kilku innych jest zagro\\u017cone</b></a></h4><p><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a028 MARCA 2019</b></a></p><p>Ca\\u0142a za\\u0142oga prowadzonego przez niego oddzia\\u0142u z\\u0142o\\u017cy\\u0142a wym\\u00f3wienia. 1 kwietnia 2019 odeszli i to nie ze wzgl\\u0119du na niskie p\\u0142ace, lecz z powodu warunk\\u00f3w pracy, kt\\u00f3re by\\u0142y dla nich nie do przyj\\u0119cia i zagra\\u017ca\\u0142y bezpiecze\\u0144stwu lekarzy i pacjent\\u00f3w.</p><h2><b>Porozumienie 2018, czyli rozczarowanie i</b></h2><p>W lutym 2018 roku rezydenci z Og\\u00f3lnopolskiego Zwi\\u0105zku Zawodowego Lekarzy (OZZL) podpisali porozumienie z Ministrem Zdrowia \\u0141ukaszem Szumowskim. Zak\\u0142adano m. in. podwy\\u017cki dla rezydent\\u00f3w i specjalist\\u00f3w. Szczeg\\u00f3lnie istotnym zapisem by\\u0142a decyzja o wzro\\u015bcie nak\\u0142ad\\u00f3w na ochron\\u0119 zdrowia w Polsce. Mia\\u0142a j\\u0105 zagwarantowa\\u0107 specjalna ustawa. Ustalono, \\u017ce nak\\u0142ady b\\u0119d\\u0105 ros\\u0142y stopniowo i w roku 2024 osi\\u0105gn\\u0105 6 proc. PKB (pocz\\u0105tkowo rezydenci zabiegali o 6,8 proc.).</p><p>Ustaw\\u0119 uchwalono w lipcu 2018 jednak rz\\u0105d zastosowa\\u0142 trik i planuj\\u0105c wydatki na zdrowie liczy je wed\\u0142ug PKB sprzed dw\\u00f3ch lat. Ten zgrabny zabieg pozwoli\\u0142 pa\\u0144stwu zaoszcz\\u0119dzi\\u0107 w tym roku 7,6 (wed\\u0142ug innych wylicze\\u0144 nawet 10) mld z\\u0142 na zdrowiu obywateli. Rezydenci oceniaj\\u0105, \\u017ce w zwi\\u0105zku ze sposobem liczenia \\u201en \\u2013 2\\u201d nak\\u0142ady w 2024 si\\u0119gn\\u0105 zamiast obiecanych 6 proc. \\u2013 5,33 proc. PKB.</p><p><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>Licz\\u0105c wydatki na\\u00a0zdrowie w\\u00a02019\\u00a0r., rz\\u0105d stosuje trik: bierze PKB z\\u00a02017. Oszcz\\u0119dza na\\u00a0zdrowiu 7,6 mld</b></a></h4><p><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a018 LUTEGO 2019</b></a></p><p>Wydatki na zdrowie wprawdzie rosn\\u0105, ale dzieje si\\u0119 tak wy\\u0142\\u0105cznie za spraw\\u0105 wzrostu p\\u0142ac w gospodarce, a zatem i dochod\\u00f3w ze sk\\u0142adek p\\u0142aconych z naszych pensji. Niedawno <a href=\\"https://www.prawo.pl/zdrowie/zwiekszenie-planu-finansowego-nfz-o-4-miliardy-z-poparciem,415466.html\\">zwi\\u0119kszono plan finansowy NFZ na ten rok o 4 mld 136 mln z\\u0142</a>. chwal\\u0105c si\\u0119 jednocze\\u015bnie, i\\u017c nak\\u0142ady po raz pierwszy przekrocz\\u0105 100 mld z\\u0142.</p><p>Nie dodano, \\u017ce dodatkowe pieni\\u0105dze pochodz\\u0105 r\\u00f3wnie\\u017c z naszych sk\\u0142adek (w tym m.in. majowej trzynastki dla emeryt\\u00f3w), a poza tym, \\u017ce starcz\\u0105 na zatkanie najwi\\u0119kszych dziur w systemie. Na porz\\u0105dn\\u0105 napraw\\u0119 nie ma co liczy\\u0107.</p><h2><b>Jasnych punkt\\u00f3w prawie brak</b></h2><p>System ledwo zipie od lat. W polskiej ochronie zdrowia trudno nawet wskaza\\u0107 jakiekolwiek jasne punkty (cho\\u0107 naturalnie mamy wielu \\u015bwietnych, oddanych pacjentom lekarzy). Do niedawna takim punktem by\\u0142a kardiologia. W Polsce uda\\u0142o si\\u0119 doprowadzi\\u0107 do tego, \\u017ce bardzo spad\\u0142a umieralno\\u015b\\u0107 z powodu zawa\\u0142\\u00f3w. Za tym sukcesem sta\\u0142 oczywi\\u015bcie du\\u017cy wysi\\u0142ek merytoryczny i organizacyjny polskich kardiolog\\u00f3w, ale przede wszystkim jednak sta\\u0142y pieni\\u0105dze. NFZ po prostu \\u015bwietnie wyceni\\u0142 procedur\\u0119 inwazyjnego badania naczy\\u0144 wie\\u0144cowych (tzw. koronarografi\\u0119), kluczowej procedury w diagnostyce i leczeniu \\u015bwie\\u017cego zawa\\u0142u.</p><p>W efekcie jak grzyby po deszczu zacz\\u0119\\u0142y wyrasta\\u0107 punkty, w kt\\u00f3rych mo\\u017cna by\\u0142o przeprowadza\\u0107 ww. badanie i od razu leczy\\u0107 pacjent\\u00f3w. Dzi\\u015b koronarografia wyceniana jest ju\\u017c znacznie s\\u0142abiej i mo\\u017cemy obawia\\u0107 si\\u0119, \\u017ce wkr\\u00f3tce odbije si\\u0119 to na statystykach.</p><p>Innym jasnym punktem na mapie polskiej s\\u0142u\\u017cby zdrowia jest by\\u0107 mo\\u017ce opieka hospicyjna. Cho\\u0107 i tu ograniczenia finansowe s\\u0105 du\\u017ce, a wiele \\u015bwietnie funkcjonuj\\u0105cych polskich hospicj\\u00f3w dzia\\u0142a\\u0142oby znacznie gorzej, gdyby nie pomoc os\\u00f3b wp\\u0142acaj\\u0105cych 1 proc. podatku, b\\u0105d\\u017a wspieraj\\u0105cych hospicja w inny spos\\u00f3b.</p><h2><b>Nikt za mnie nie zawalczy</b></h2><p>W manifestacji lekarzy 1 czerwca chodzi o warunki pracy, o normalno\\u015b\\u0107 w polskiej ochronie zdrowia, o bezpiecze\\u0144stwo.</p><p>Maria K\\u0142osi\\u0144ska, jedna z wiceprzewodnicz\\u0105cych Porozumienia Rezydent\\u00f3w OZZL tak t\\u0142umaczy na Facebooku sw\\u00f3j przyjazd do Warszawy na protest:</p><p>\\u201eHej,</p><p>na pierwsz\\u0105 manifestacj\\u0119, 3 lata temu, w nocy rysowa\\u0142am dla dzieci transparent.</p><p>Teraz dzieci narysuj\\u0105 (i napisz\\u0105\\ud83d\\ude2e) go same.</p><p>Min\\u0119\\u0142o tyle czasu, jeste\\u015bmy wiele krok\\u00f3w dalej, cho\\u0107 czasem czuj\\u0119 jakby nas hamowano tak bardzo, \\u017ce stoimy w miejscu.</p><p>1 czerwca zn\\u00f3w b\\u0119dziemy.</p><p><b>Nie mam z\\u0142udze\\u0144. Lubi\\u0119 zaw\\u00f3d lekarza, ale nikt za mnie nie zawalczy o lepsze warunki jego wykonywania w Polsce. Nie chce mi si\\u0119 za polityk\\u00f3w t\\u0142umaczy\\u0107 pacjentom, dlaczego jest taka kolejka, \\u017ce inne opcje leczenia nie s\\u0105 dost\\u0119pne \\u201eteraz\\u201d/ \\u201ena NFZ\\u201d/ \\u201enie w Polsce\\u201d.</b></p><p>Zw\\u0142aszcza, \\u017ce nie ma na to czasu, a sporo pacjent\\u00f3w i tak mi nie uwierzy lub nie zrozumie.</p><p>Przyje\\u017cd\\u017cam dla siebie, dla swojej rodziny. Przyjad\\u0119, bo inni nadal walcz\\u0105, bo wszystkiego (zw\\u0142aszcza drobnych, ale istotnych spraw) trzeba pilnowa\\u0107, bo czytam, \\u017ce nie ka\\u017cdy z nas kto powinien, otrzyma\\u0142 nale\\u017cn\\u0105 podwy\\u017ck\\u0119. Przyje\\u017cd\\u017cam, bo je\\u017celi nasza obecno\\u015b\\u0107 ma stymulowa\\u0107 spo\\u0142ecznie zaanga\\u017cowanych lekarzy do kontynuowania tej walki, to warto, bo my ju\\u017c dobrze wiemy, \\u017ce nic \\u201esamo z siebie\\u201d si\\u0119 nie zmieni. Nie chc\\u0119 by moja nieobecno\\u015b\\u0107 zaprzepa\\u015bci\\u0142a to, co si\\u0119 ju\\u017c uda\\u0142o wywalczy\\u0107.</p><p>Przyjad\\u0119, bo niekt\\u00f3re historie pacjent\\u00f3w i ich rodzin mog\\u0142yby si\\u0119 potoczy\\u0107 inaczej, gdyby nie ten chory system, a sama na co dzie\\u0144 nic nie mog\\u0119 z tym zrobi\\u0107. W ko\\u0144cu to tylko jedna sobota, par\\u0119set kilometr\\u00f3w\\u201d.</p><h2><b>Id\\u0119 na manifestacj\\u0119 jako jedyna</b></h2><p><b>\\u201eNasza manifestacja jest m.in. po to, by\\u015bmy policzyli miecze i zorientowali si\\u0119 ilu nas jest i jak w zwi\\u0105zku z tym mo\\u017cemy prowadzi\\u0107 dalsz\\u0105 walk\\u0119 przed wyborami parlamentarnymi\\u201d</b><br/><b>\\u2013 m\\u00f3wi\\u0142 OKO.press niedawno dr Bartosz Fia\\u0142ek, przewodnicz\\u0105cy Regionu Kujawsko-Pomorskiego Og\\u00f3lnopolskiego Zwi\\u0105zku Zawodowego Lekarzy.</b></p><p><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>Ludzie, obud\\u017acie si\\u0119, bo za\\u00a0chwil\\u0119 nie b\\u0119dzie mia\\u0142 was kto leczy\\u0107. 1 czerwca protest lekarzy</b></a></h4><p><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a022 KWIETNIA 2019</b></a></p><p>Niestety, manifestacja mo\\u017ce wcale nie by\\u0107 tak liczna. OZZL nie jest siln\\u0105 organizacj\\u0105. Nale\\u017cy do niej zaledwie 10 proc. lekarzy (\\u201ew krajach, gdzie wykonywanie zawodu lekarza jest i op\\u0142acalne, i ergonomiczne, i bezpieczne, uzwi\\u0105zkowienie si\\u0119ga 50-70 proc.\\u201d \\u2013 pisze na FB dr Fia\\u0142ek).</p><p>W ochronie zdrowia pracuje wiele grup zawodowych \\u2013 lekarze, piel\\u0119gniarki, po\\u0142o\\u017cne, fizjoterapeuci, diagnostycy medyczni, administracja, dietetycy, psycholodzy, logopedzi, technicy, salowe, ratownicy medyczni. Ka\\u017cda z tych grup ma nieco odmienne interesy i rz\\u0105d (nie tylko zreszt\\u0105 obecny) bardzo umiej\\u0119tnie to wykorzystuje. Protesty na og\\u00f3\\u0142 dotycz\\u0105 tylko jednej z grup, a z mniejsz\\u0105 liczb\\u0105 protestuj\\u0105cych \\u0142atwiej si\\u0119 upora\\u0107 i co\\u015b im obieca\\u0107.</p><p>R\\u00f3\\u017cne interesy zdarzaj\\u0105 si\\u0119 nawet w obr\\u0119bie jednej grupy zawodowej. I tak np. m\\u0142odzi lekarze s\\u0105 w zupe\\u0142nie innej sytuacji ni\\u017c specjali\\u015bci. Ci pierwsi jeszcze si\\u0119 buntuj\\u0105, zale\\u017cy im, s\\u0105 te\\u017c na dorobku. Ci drudzy natomiast ca\\u0142kiem nie\\u017ale urz\\u0105dzili si\\u0119 w kiepskim systemie. Dobrze zarabiaj\\u0105, ci kt\\u00f3rzy maj\\u0105 prywatn\\u0105 praktyk\\u0119, cz\\u0119sto wr\\u0119cz \\u015bwietnie i ani im w g\\u0142owie wychodzenie na ulic\\u0119.</p><p><b>\\u201ePyta\\u0142am koleg\\u00f3w ze szpitala kto z nich wybiera si\\u0119 na manifestacj\\u0119 1 czerwca\\u201d \\u2013 m\\u00f3wi OKO.press lekarka z d\\u0142ugim sta\\u017cem z jednej z dzieci\\u0119cych plac\\u00f3wek w Warszawie. \\u201eOkaza\\u0142o si\\u0119, \\u017ce jestem jedyna\\u201d.</b></p><h2><b>Solidarno\\u015b\\u0107 zagro\\u017cona</b></h2><p>Podzia\\u0142y w\\u015br\\u00f3d pracownik\\u00f3w ochrony zdrowia na pewno nie u\\u0142atwia walki o radykaln\\u0105 zmian\\u0119. Dobr\\u0105 wiadomo\\u015bci\\u0105 jest to, \\u017ce w manifestacji 1 czerwca wezm\\u0105 udzia\\u0142 przedstawiciele Og\\u00f3lnopolskiego Zwi\\u0105zku Pracodawc\\u00f3w Szpitali Powiatowych (OZPSP). Dyrektorzy tych plac\\u00f3wek teoretycznie stoj\\u0105 po drugiej stronie barykady. Zatrudniaj\\u0105 pracownik\\u00f3w, negocjuj\\u0105 z nimi stawki. Oni jednak te\\u017c s\\u0105 coraz bardziej zdesperowani z racji warunk\\u00f3w, w jakich przysz\\u0142o im pracowa\\u0107.</p><p>\\u201eRz\\u0105d chcia\\u0142by zamkn\\u0105\\u0107 150 szpitali powiatowych, ale nie ma odwagi powiedzie\\u0107 tego wprost\\u201d \\u2013 m\\u00f3wi\\u0142 niedawno OKO.press Bogumi\\u0142 Kurowski, dyrektor zarz\\u0105du Szpitala Powiatowego w Nowym Mie\\u015bcie Lubawskim. Dyrektor Kurowski wraz z kilkoma osobami ze swojego szpitala wybiera si\\u0119 1 czerwca do Warszawy. \\u201eMam nadziej\\u0119, \\u017ce ludzi b\\u0119dzie tak du\\u017co, \\u017ce si\\u0119 nie spotkamy\\u201d \\u2013 powiedzia\\u0142 nam dwa dni przed manifestacj\\u0105. Oby.</p><p><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>Rz\\u0105d chce likwidacji 150 szpitali powiatowych, ale\\u00a0nie ma odwagi powiedzie\\u0107 tego wprost</b></a></h4><p><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a08 MAJA 2019</b></a></p><p>\\u201eZ oburzeniem zauwa\\u017camy, \\u017ce jako jedyna grupa w ochronie zdrowia domagamy si\\u0119 pieni\\u0119dzy nie dla siebie, a dla leczonych w szpitalach chorych oraz na realizacje obietnic p\\u0142acowych ministra, tymczasem zar\\u00f3wno przez Ministerstwo Zdrowia, jak i Narodowy Fundusz Zdrowia, traktowani jeste\\u015bmy jak natarczywi \\u017cebracy\\u201d \\u2013 czytamy w stanowisku Zarz\\u0105du OZPSP z 17 maja 2019.</p><h2><b>Do 15 lat wi\\u0119zienia</b></h2><p>\\u201eMy lekarze damy sobie rad\\u0119\\u201d \\u2013 m\\u00f3wi wspomniany dr Bartosz Fia\\u0142ek, jeden z \\u2013 jak go nazywam \\u2013 \\u201ewojownik\\u00f3w\\u201d, kt\\u00f3remu chce si\\u0119 po\\u015bwi\\u0119ca\\u0107 w\\u0142asny czas dla walki o spraw\\u0119.</p><p>\\u201eMy lekarze mamy koleg\\u00f3w w szpitalu, kt\\u00f3rzy zawsze pomog\\u0105, jak zachorujemy. A w najgorszym razie wyjedziemy pracowa\\u0107 w Unii. Pacjenci s\\u0105 w gorszej sytuacji. To dla nich walczymy\\u201d \\u2013 m\\u00f3wi dr Fia\\u0142ek.</p><p>Dlatego organizatorzy protestu gor\\u0105co namawiaj\\u0105 pacjent\\u00f3w, a wi\\u0119c tak naprawd\\u0119 nas wszystkich, do przy\\u0142\\u0105czenia si\\u0119 do manifestacji.</p><p>W\\u0142adze od dawna rozbijaj\\u0105 solidarno\\u015b\\u0107 lekarzy i pacjent\\u00f3w. Tych pierwszych przedstawia si\\u0119 jako pazernych, niedouczonych, dzia\\u0142aj\\u0105cych cz\\u0119sto na szkod\\u0119 chorych. Wystarczy wspomnie\\u0107 g\\u0142o\\u015bne s\\u0142owa Zbigniewa Ziobry z 2007 roku. \\u201eJu\\u017c nikt nigdy przez tego pana pozbawiony \\u017cycia nie b\\u0119dzie\\u201d.</p><p>Dzi\\u015b Ziobro wzi\\u0105\\u0142 si\\u0119 za aktualizacj\\u0119 kodeksu karnego i proponuje zmian\\u0119 art. 155 kk, zwi\\u0119kszaj\\u0105c\\u0105 kar\\u0119 za nieumy\\u015blne spowodowanie \\u015bmierci cz\\u0142owieka z dotychczasowych trzech miesi\\u0119cy do 5 lat wi\\u0119zienia na rok do 10 lat wi\\u0119zienia. Poniewa\\u017c kar powy\\u017cej roku nie mo\\u017cna warunkowo zawiesza\\u0107, dlatego lekarz skazany z tego paragrafu p\\u00f3jdzie siedzie\\u0107.</p><p>Ziobro chce te\\u017c wprowadzenia nowego przepisu, kt\\u00f3ry zak\\u0142ada kar\\u0119 od dw\\u00f3ch do 15 lat wi\\u0119zienia dla kogo\\u015b, kto nieumy\\u015blnie spowoduje \\u015bmier\\u0107 wi\\u0119cej ni\\u017c jednej osoby. T\\u0105 nowelizacj\\u0105 zaniepokoili si\\u0119 szczeg\\u00f3lnie ginekolodzy-po\\u0142o\\u017cnicy odpowiadaj\\u0105cy za \\u017cycie dw\\u00f3ch os\\u00f3b \\u2013 matki i dziecka.</p><p>Ministerstwo Zdrowia nie mia\\u0142o uwag do propozycji Ziobry. W maju nowy kodeks by\\u0142 procedowany w Sejmie i w Senacie, ostateczna wersja czeka na akceptacj\\u0119 pos\\u0142\\u00f3w.</p><p>30 maja Ministerstwo Sprawiedliwo\\u015bci przekonywa\\u0142o, \\u017ce zmiana przepisu ma nie dotyczy\\u0107 lekarzy, lecz pospolitych przest\\u0119pc\\u00f3w. MS <a href=\\"https://www.politykazdrowotna.com/45536,ms-zmiana-prawa-nie-uderzy-w-lekarzy-lecz-w-pospolitych-przestepcow\\">podkre\\u015bli\\u0142o tak\\u017ce, \\u017ce b\\u0142\\u0105d medyczny nie musi (ale mo\\u017ce!)</a> by\\u0107 kwalifikowany jako nieumy\\u015blne spowodowanie \\u015bmierci.</p><h2><b>Jako\\u015b to b\\u0119dzie</b></h2><p>Kwestia zaostrzenia kar, kt\\u00f3ra mo\\u017ce dotkn\\u0105\\u0107 \\u015brodowisko lekarskie (a tak\\u017ce nas \\u2013 pacjent\\u00f3w, poniewa\\u017c lekarze b\\u0119d\\u0105 zmuszeni si\\u0119 dodatkowo ubezpieczy\\u0107, a my wszyscy za to zap\\u0142aci\\u0107) z pewno\\u015bci\\u0105 b\\u0119dzie podnoszona podczas manifestacji.</p><p>Ale \\u2013 powt\\u00f3rzmy \\u2013 g\\u0142\\u00f3wny nacisk idzie na popraw\\u0119 systemu. Radykaln\\u0105 popraw\\u0119 finansow\\u0105, poniewa\\u017c bez pieni\\u0119dzy, i to du\\u017cych, sytuacji nie da si\\u0119 zmieni\\u0107. To z czym borykamy si\\u0119 dzi\\u015b, to efekt wieloletnich zaniedba\\u0144. Praktycznie wszystkie rz\\u0105dy po 1989 roku uwa\\u017ca\\u0142y, \\u017ce z ochron\\u0105 zdrowia \\u201ejako\\u015b to b\\u0119dzie\\u201d. Ustalono bardzo nisk\\u0105 wysoko\\u015b\\u0107 sk\\u0142adki zdrowotnej, oszcz\\u0119dzano na czym si\\u0119 da \\u2013 na lekach, na kszta\\u0142ceniu kadr, na sprz\\u0119cie. Zezwolono na rozw\\u00f3j sektora prywatnego, dzi\\u015b spe\\u0142nia on wa\\u017cn\\u0105 rol\\u0119 w systemie. Ale:</p><ul><li>po pierwsze \\u201ezassa\\u0142\\u201d on wielu dobrych lekarzy, kt\\u00f3rzy odeszli z publicznego sektora,</li><li>po drugie licznych obywateli na niego nie sta\\u0107,</li><li>wreszcie po trzecie w razie naprawd\\u0119 powa\\u017cniej choroby i perspektywy naprawd\\u0119 du\\u017cych wydatk\\u00f3w pacjent i tak trafia do publicznej ochrony zdrowia.</li></ul><p>PiS dbaj\\u0105c w tej kadencji o \\u201ezwyk\\u0142ych obywateli\\u201d w kwestii zdrowia zrobi\\u0142 tyle co nic. Trudno za wielk\\u0105 pomoc uzna\\u0107 wprowadzenie bezp\\u0142atnych lek\\u00f3w dla os\\u00f3b 75+ (lista tych lek\\u00f3w jest ograniczona, inne kraje wprowadzi\\u0142y ulgi dla wszystkich emeryt\\u00f3w, itd.). Cho\\u0107 trzeba te\\u017c odda\\u0107 sprawiedliwo\\u015b\\u0107, \\u017ce ten rz\\u0105d by\\u0142 pierwszym, kt\\u00f3ry w og\\u00f3le zaj\\u0105\\u0142 si\\u0119 tym problemem.</p><p>Trudno te\\u017c za sukces uzna\\u0107 zapowiadane szumnie w kampanii zmiany w polskiej onkologii. Mia\\u0142 powsta\\u0107 Narodowy Instytut Raka, a sko\\u0144czy\\u0142o si\\u0119 na kosztownym i mocno oprotestowanym przez specjalist\\u00f3w pilota\\u017cu ds. sieci onkologicznej. Rz\\u0105d przygotowuje strategi\\u0119 walki z nowotworami odrzuciwszy poprzedni gotowy dokument, bo powsta\\u0142 za PO.</p><h2><b>Lekarze sami nie dadz\\u0105 rady</b><br/></h2><p>W pi\\u0105tce PiS w og\\u00f3le nie wspomniano o zdrowiu uznaj\\u0105c, \\u017ce w ten spos\\u00f3b nie pozyska si\\u0119 g\\u0142os\\u00f3w wyborc\\u00f3w.</p><p>Ale bez odwa\\u017cnej politycznej decyzji na zmian\\u0119 \\u2013 jak wspomnia\\u0142em \\u2013 nie ma szans. Lekarze sami jej nie wywalcz\\u0105. Pom\\u00f3\\u017cmy im cho\\u0107by we w\\u0142asnym interesie. Najbli\\u017csza okazja 1 czerwca.</p>", "body_en": "<p>\\u201eMy, lekarze, damy sobie rad\\u0119 \\u2013 m\\u00f3wi dr Bartosz Fia\\u0142ek, wsp\\u00f3\\u0142organizator protestu \\u2013 Mamy koleg\\u00f3w w szpitalu, kt\\u00f3rzy zawsze pomog\\u0105, jak zachorujemy. A w najgorszym razie wyjedziemy pracowa\\u0107 w Unii. Pacjenci s\\u0105 w gorszej sytuacji. To dla nich walczymy\\u201d.</p><p>Zapa\\u015b\\u0107 systemu wida\\u0107 w statystykach.</p><h2><b>Przedwcze\\u015bnie umieramy</b></h2><p>D\\u0142ugo\\u015b\\u0107 \\u017cycia Polak\\u00f3w przesta\\u0142a si\\u0119 ju\\u017c praktycznie wyd\\u0142u\\u017ca\\u0107. Mi\\u0119dzy 2014 a 2017 rokiem wzros\\u0142a w przypadku zar\\u00f3wno m\\u0119\\u017cczyzn jak i kobiet zaledwie o 0,2 roku. To najgorszy wynik od 26 lat.</p><p>Wska\\u017anik d\\u0142ugo\\u015bci \\u017cycia w kt\\u00f3rym\\u015b momencie zawsze przestaje rosn\\u0105\\u0107 (mimo ogromnych post\\u0119p\\u00f3w medycyny jeste\\u015bmy \\u015bmiertelni), ale w Polsce zatrzyma\\u0142 si\\u0119 on z pewno\\u015bci\\u0105 zbyt wcze\\u015bnie.</p><p><b>Statystyczny Polak \\u017cyje dzi\\u015b 74 lata, Polka 81,8. Tymczasem m\\u0119\\u017cczy\\u017ani w UE \\u017cyj\\u0105 przeci\\u0119tnie o prawie 5 lat, kobiety o dwa lata d\\u0142u\\u017cej.</b></p><p><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>Polska nie zdrowieje. \\u015arednia d\\u0142ugo\\u015b\\u0107 \\u017cycia w\\u00a0naszym kraju przesta\\u0142a rosn\\u0105\\u0107 [Raport o\\u00a0stanie zdrowia spo\\u0142ecze\\u0144stwa]</b></a></h4><p><a href=\\"https://oko.press/polska-nie-zdrowieje-srednia-dlugosc-zycia-w-naszym-kraju-przestala-rosnac-raport-o-stanie-zdrowia-spoleczenstwa/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a07 LUTEGO 2019</b></a></p><p>W Polsce zdecydowanie za du\\u017co ludzi umiera przedwcze\\u015bnie. Pokazuje to wska\\u017anik przedwczesnych zgon\\u00f3w mo\\u017cliwych do unikni\\u0119cia dzi\\u0119ki terminowej i skutecznej interwencji medycznej. W 2015 roku by\\u0142 on w Polsce zdecydowanie wy\\u017cszy od \\u015bredniej europejskiej. W przypadku kobiet wynosi\\u0142 121,5 na 100 tys. obywateli (\\u015brednia UE \\u2013 97,5). W\\u015br\\u00f3d m\\u0119\\u017cczyzn by\\u0142o jeszcze gorzej \\u2013 229 wobec \\u015bredniej UE 158,2.</p><p>Je\\u015bli uwzgl\\u0119dnimy obie p\\u0142cie \\u0142\\u0105cznie, mieli\\u015bmy w Polsce 169 zgon\\u00f3w mo\\u017cliwych do unikni\\u0119cia na 100 tys. \\u015arednio w Unii by\\u0142o to 127, w Szwajcarii \\u2013 75.</p><h2><b>24 miesi\\u0105ce oczekiwania</b></h2><p>Jedn\\u0105 z kluczowych spraw jest dost\\u0119p do specjalist\\u00f3w. Wed\\u0142ug danych Barometru Fundacji Watch Health Care \\u015bredni czas oczekiwania na wizyt\\u0119 u lekarza specjalisty pomi\\u0119dzy 2013 a 2019 rokiem wyd\\u0142u\\u017cy\\u0142 si\\u0119 u nas dwukrotnie. W pa\\u017adzierniku/listopadzie 2013 na wizyt\\u0119 czeka\\u0142o si\\u0119 \\u015brednio dwa miesi\\u0105ce, na prze\\u0142omie grudnia 2018 i stycznia 2019 prawie dwa razy d\\u0142u\\u017cej.</p><p>A to tylko \\u015brednia. Dostanie si\\u0119 do lekarzy niekt\\u00f3rych specjalno\\u015bci graniczy bowiem z cudem.</p><p><b>Czas oczekiwania na wizyt\\u0119 u endokrynologa wyni\\u00f3s\\u0142 na pocz\\u0105tku 2019 roku 24 miesi\\u0105ce, do kardiologa dzieci\\u0119cego \\u2013 12 miesi\\u0119cy.</b></p><p>Polacy, tak jak obywatele wielu innych kraj\\u00f3w, coraz cz\\u0119\\u015bciej choruj\\u0105 na nowotwory z\\u0142o\\u015bliwe (wynika to m.in. ze starzenia si\\u0119 spo\\u0142ecze\\u0144stw, a rak to przede wszystkim choroba ludzi starych). O ile jednak w krajach o dobrze zorganizowanej i w\\u0142a\\u015bciwie finansowanej ochronie zdrowia rak coraz cz\\u0119\\u015bciej staje si\\u0119 chorob\\u0105 przewlek\\u0142\\u0105, o tyle w Polsce skuteczno\\u015b\\u0107 leczenia nowotwor\\u00f3w w por\\u00f3wnaniu z Europ\\u0105 spada. Wed\\u0142ug raportu NIK z 2018 w Polsce, na W\\u0119grzech i Chorwacji notuje si\\u0119 najwy\\u017cszy poziom umieralno\\u015bci na choroby nowotworowe w Europie (chodzi tu o liczb\\u0119 zgon\\u00f3w na 100 tys.). I tak np. w przypadku jednego z najcz\\u0119stszych nowotwor\\u00f3w kobiecych \\u2013 raka piersi wsp\\u00f3\\u0142czynnik zgon\\u00f3w w latach 2010-2016 zwi\\u0119kszy\\u0142 si\\u0119 o 7,2 proc. (raport PZH z 2019 roku)</p><h2><b>Psychiatria dzieci\\u0119ca tonie</b></h2><p>W kraju dramatycznie brakuje lekarzy i piel\\u0119gniarek. Przyczyni\\u0142o si\\u0119 do tego z jednej strony radykalne zmniejszenie liczby miejsc na studiach medycznych, z drugiej masowe wyjazdy pracownik\\u00f3w ochrony zdrowia za granic\\u0119. System dzi\\u015b funkcjonuje wy\\u0142\\u0105cznie dzi\\u0119ki najm\\u0142odszym lekarzom i emerytom.</p><p><b>\\u015arednia wieku piel\\u0119gniarki przekroczy\\u0142a 50 lat, za\\u015b \\u015brednia wieku lekarzy niekt\\u00f3rych specjalno\\u015bci np. pediatr\\u00f3w to 60 lat!</b></p><p>O tym jak bardzo brak lekarzy (i wieloletni brak dzia\\u0142a\\u0144 zaradczych w tym wzgl\\u0119dzie) mo\\u017ce odbi\\u0107 si\\u0119 na zdrowiu obywateli, najlepiej wida\\u0107 w psychiatrii dzieci\\u0119cej. Organizacja obywatelska Watchdog Polska stworzy\\u0142a niedawno raport na ten temat. Wnioski s\\u0105 pora\\u017caj\\u0105ce. Jedynym gwarantem miejsca w dzieci\\u0119cym szpitalu psychiatrycznym jest dzi\\u015b nieudana pr\\u00f3ba samob\\u00f3jcza. Pozostali musz\\u0105 czeka\\u0107. Na pobyt w 30 szpitalach ze skierowaniem czeka 626 dzieci. A przecie\\u017c leczenie w takiej plac\\u00f3wce to ostateczno\\u015b\\u0107.</p><p>Kilkudziesi\\u0119ciu psychiatr\\u00f3w pracuje ponad si\\u0142y w przepe\\u0142nionych, nielicznych oddzia\\u0142ach w ca\\u0142ym kraju \\u2013 wynika z raportu.</p><p><b>\\u201eStajemy przed dramatycznym pytaniem: czy powiesi si\\u0119 nastolatek z my\\u015blami samob\\u00f3jczymi odes\\u0142any ze szpitalnej izby przyj\\u0119\\u0107 do domu, czy ten przyj\\u0119ty na oddzia\\u0142, kt\\u00f3remu nie b\\u0119dziemy w stanie zapewni\\u0107 opieki?\\u201d \\u2013 m\\u00f3wi\\u0142 kilka miesi\\u0119cy temu prof. Tomasz Wola\\u0144czyk z Dzieci\\u0119cego Szpitala Klinicznego w Warszawie.</b></p><p><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>Psychiatria dzieci\\u0119ca tonie. Zamyka si\\u0119 kolejny oddzia\\u0142, istnienie kilku innych jest zagro\\u017cone</b></a></h4><p><a href=\\"https://oko.press/psychiatria-dziecieca-tonie-zamyka-sie-kolejny-oddzial-istnienie-kilku-innych-jest-zagrozone/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a028 MARCA 2019</b></a></p><p>Ca\\u0142a za\\u0142oga prowadzonego przez niego oddzia\\u0142u z\\u0142o\\u017cy\\u0142a wym\\u00f3wienia. 1 kwietnia 2019 odeszli i to nie ze wzgl\\u0119du na niskie p\\u0142ace, lecz z powodu warunk\\u00f3w pracy, kt\\u00f3re by\\u0142y dla nich nie do przyj\\u0119cia i zagra\\u017ca\\u0142y bezpiecze\\u0144stwu lekarzy i pacjent\\u00f3w.</p><h2><b>Porozumienie 2018, czyli rozczarowanie i</b></h2><p>W lutym 2018 roku rezydenci z Og\\u00f3lnopolskiego Zwi\\u0105zku Zawodowego Lekarzy (OZZL) podpisali porozumienie z Ministrem Zdrowia \\u0141ukaszem Szumowskim. Zak\\u0142adano m. in. podwy\\u017cki dla rezydent\\u00f3w i specjalist\\u00f3w. Szczeg\\u00f3lnie istotnym zapisem by\\u0142a decyzja o wzro\\u015bcie nak\\u0142ad\\u00f3w na ochron\\u0119 zdrowia w Polsce. Mia\\u0142a j\\u0105 zagwarantowa\\u0107 specjalna ustawa. Ustalono, \\u017ce nak\\u0142ady b\\u0119d\\u0105 ros\\u0142y stopniowo i w roku 2024 osi\\u0105gn\\u0105 6 proc. PKB (pocz\\u0105tkowo rezydenci zabiegali o 6,8 proc.).</p><p>Ustaw\\u0119 uchwalono w lipcu 2018 jednak rz\\u0105d zastosowa\\u0142 trik i planuj\\u0105c wydatki na zdrowie liczy je wed\\u0142ug PKB sprzed dw\\u00f3ch lat. Ten zgrabny zabieg pozwoli\\u0142 pa\\u0144stwu zaoszcz\\u0119dzi\\u0107 w tym roku 7,6 (wed\\u0142ug innych wylicze\\u0144 nawet 10) mld z\\u0142 na zdrowiu obywateli. Rezydenci oceniaj\\u0105, \\u017ce w zwi\\u0105zku ze sposobem liczenia \\u201en \\u2013 2\\u201d nak\\u0142ady w 2024 si\\u0119gn\\u0105 zamiast obiecanych 6 proc. \\u2013 5,33 proc. PKB.</p><p><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>Licz\\u0105c wydatki na\\u00a0zdrowie w\\u00a02019\\u00a0r., rz\\u0105d stosuje trik: bierze PKB z\\u00a02017. Oszcz\\u0119dza na\\u00a0zdrowiu 7,6 mld</b></a></h4><p><a href=\\"https://oko.press/liczac-wydatki-na-zdrowie-w-2019-r-rzad-stosuje-trik-bierze-pkb-z-2017-oszczedza-na-zdrowiu-67-mld/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a018 LUTEGO 2019</b></a></p><p>Wydatki na zdrowie wprawdzie rosn\\u0105, ale dzieje si\\u0119 tak wy\\u0142\\u0105cznie za spraw\\u0105 wzrostu p\\u0142ac w gospodarce, a zatem i dochod\\u00f3w ze sk\\u0142adek p\\u0142aconych z naszych pensji. Niedawno <a href=\\"https://www.prawo.pl/zdrowie/zwiekszenie-planu-finansowego-nfz-o-4-miliardy-z-poparciem,415466.html\\">zwi\\u0119kszono plan finansowy NFZ na ten rok o 4 mld 136 mln z\\u0142</a>. chwal\\u0105c si\\u0119 jednocze\\u015bnie, i\\u017c nak\\u0142ady po raz pierwszy przekrocz\\u0105 100 mld z\\u0142.</p><p>Nie dodano, \\u017ce dodatkowe pieni\\u0105dze pochodz\\u0105 r\\u00f3wnie\\u017c z naszych sk\\u0142adek (w tym m.in. majowej trzynastki dla emeryt\\u00f3w), a poza tym, \\u017ce starcz\\u0105 na zatkanie najwi\\u0119kszych dziur w systemie. Na porz\\u0105dn\\u0105 napraw\\u0119 nie ma co liczy\\u0107.</p><h2><b>Jasnych punkt\\u00f3w prawie brak</b></h2><p>System ledwo zipie od lat. W polskiej ochronie zdrowia trudno nawet wskaza\\u0107 jakiekolwiek jasne punkty (cho\\u0107 naturalnie mamy wielu \\u015bwietnych, oddanych pacjentom lekarzy). Do niedawna takim punktem by\\u0142a kardiologia. W Polsce uda\\u0142o si\\u0119 doprowadzi\\u0107 do tego, \\u017ce bardzo spad\\u0142a umieralno\\u015b\\u0107 z powodu zawa\\u0142\\u00f3w. Za tym sukcesem sta\\u0142 oczywi\\u015bcie du\\u017cy wysi\\u0142ek merytoryczny i organizacyjny polskich kardiolog\\u00f3w, ale przede wszystkim jednak sta\\u0142y pieni\\u0105dze. NFZ po prostu \\u015bwietnie wyceni\\u0142 procedur\\u0119 inwazyjnego badania naczy\\u0144 wie\\u0144cowych (tzw. koronarografi\\u0119), kluczowej procedury w diagnostyce i leczeniu \\u015bwie\\u017cego zawa\\u0142u.</p><p>W efekcie jak grzyby po deszczu zacz\\u0119\\u0142y wyrasta\\u0107 punkty, w kt\\u00f3rych mo\\u017cna by\\u0142o przeprowadza\\u0107 ww. badanie i od razu leczy\\u0107 pacjent\\u00f3w. Dzi\\u015b koronarografia wyceniana jest ju\\u017c znacznie s\\u0142abiej i mo\\u017cemy obawia\\u0107 si\\u0119, \\u017ce wkr\\u00f3tce odbije si\\u0119 to na statystykach.</p><p>Innym jasnym punktem na mapie polskiej s\\u0142u\\u017cby zdrowia jest by\\u0107 mo\\u017ce opieka hospicyjna. Cho\\u0107 i tu ograniczenia finansowe s\\u0105 du\\u017ce, a wiele \\u015bwietnie funkcjonuj\\u0105cych polskich hospicj\\u00f3w dzia\\u0142a\\u0142oby znacznie gorzej, gdyby nie pomoc os\\u00f3b wp\\u0142acaj\\u0105cych 1 proc. podatku, b\\u0105d\\u017a wspieraj\\u0105cych hospicja w inny spos\\u00f3b.</p><h2><b>Nikt za mnie nie zawalczy</b></h2><p>W manifestacji lekarzy 1 czerwca chodzi o warunki pracy, o normalno\\u015b\\u0107 w polskiej ochronie zdrowia, o bezpiecze\\u0144stwo.</p><p>Maria K\\u0142osi\\u0144ska, jedna z wiceprzewodnicz\\u0105cych Porozumienia Rezydent\\u00f3w OZZL tak t\\u0142umaczy na Facebooku sw\\u00f3j przyjazd do Warszawy na protest:</p><p>\\u201eHej,</p><p>na pierwsz\\u0105 manifestacj\\u0119, 3 lata temu, w nocy rysowa\\u0142am dla dzieci transparent.</p><p>Teraz dzieci narysuj\\u0105 (i napisz\\u0105\\ud83d\\ude2e) go same.</p><p>Min\\u0119\\u0142o tyle czasu, jeste\\u015bmy wiele krok\\u00f3w dalej, cho\\u0107 czasem czuj\\u0119 jakby nas hamowano tak bardzo, \\u017ce stoimy w miejscu.</p><p>1 czerwca zn\\u00f3w b\\u0119dziemy.</p><p><b>Nie mam z\\u0142udze\\u0144. Lubi\\u0119 zaw\\u00f3d lekarza, ale nikt za mnie nie zawalczy o lepsze warunki jego wykonywania w Polsce. Nie chce mi si\\u0119 za polityk\\u00f3w t\\u0142umaczy\\u0107 pacjentom, dlaczego jest taka kolejka, \\u017ce inne opcje leczenia nie s\\u0105 dost\\u0119pne \\u201eteraz\\u201d/ \\u201ena NFZ\\u201d/ \\u201enie w Polsce\\u201d.</b></p><p>Zw\\u0142aszcza, \\u017ce nie ma na to czasu, a sporo pacjent\\u00f3w i tak mi nie uwierzy lub nie zrozumie.</p><p>Przyje\\u017cd\\u017cam dla siebie, dla swojej rodziny. Przyjad\\u0119, bo inni nadal walcz\\u0105, bo wszystkiego (zw\\u0142aszcza drobnych, ale istotnych spraw) trzeba pilnowa\\u0107, bo czytam, \\u017ce nie ka\\u017cdy z nas kto powinien, otrzyma\\u0142 nale\\u017cn\\u0105 podwy\\u017ck\\u0119. Przyje\\u017cd\\u017cam, bo je\\u017celi nasza obecno\\u015b\\u0107 ma stymulowa\\u0107 spo\\u0142ecznie zaanga\\u017cowanych lekarzy do kontynuowania tej walki, to warto, bo my ju\\u017c dobrze wiemy, \\u017ce nic \\u201esamo z siebie\\u201d si\\u0119 nie zmieni. Nie chc\\u0119 by moja nieobecno\\u015b\\u0107 zaprzepa\\u015bci\\u0142a to, co si\\u0119 ju\\u017c uda\\u0142o wywalczy\\u0107.</p><p>Przyjad\\u0119, bo niekt\\u00f3re historie pacjent\\u00f3w i ich rodzin mog\\u0142yby si\\u0119 potoczy\\u0107 inaczej, gdyby nie ten chory system, a sama na co dzie\\u0144 nic nie mog\\u0119 z tym zrobi\\u0107. W ko\\u0144cu to tylko jedna sobota, par\\u0119set kilometr\\u00f3w\\u201d.</p><h2><b>Id\\u0119 na manifestacj\\u0119 jako jedyna</b></h2><p><b>\\u201eNasza manifestacja jest m.in. po to, by\\u015bmy policzyli miecze i zorientowali si\\u0119 ilu nas jest i jak w zwi\\u0105zku z tym mo\\u017cemy prowadzi\\u0107 dalsz\\u0105 walk\\u0119 przed wyborami parlamentarnymi\\u201d</b><br/><b>\\u2013 m\\u00f3wi\\u0142 OKO.press niedawno dr Bartosz Fia\\u0142ek, przewodnicz\\u0105cy Regionu Kujawsko-Pomorskiego Og\\u00f3lnopolskiego Zwi\\u0105zku Zawodowego Lekarzy.</b></p><p><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>Ludzie, obud\\u017acie si\\u0119, bo za\\u00a0chwil\\u0119 nie b\\u0119dzie mia\\u0142 was kto leczy\\u0107. 1 czerwca protest lekarzy</b></a></h4><p><a href=\\"https://oko.press/ludzie-obudzcie-sie-bo-za-chwile-nie-bedzie-mial-was-kto-leczyc-1-czerwca-protest-lekarzy/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a022 KWIETNIA 2019</b></a></p><p>Niestety, manifestacja mo\\u017ce wcale nie by\\u0107 tak liczna. OZZL nie jest siln\\u0105 organizacj\\u0105. Nale\\u017cy do niej zaledwie 10 proc. lekarzy (\\u201ew krajach, gdzie wykonywanie zawodu lekarza jest i op\\u0142acalne, i ergonomiczne, i bezpieczne, uzwi\\u0105zkowienie si\\u0119ga 50-70 proc.\\u201d \\u2013 pisze na FB dr Fia\\u0142ek).</p><p>W ochronie zdrowia pracuje wiele grup zawodowych \\u2013 lekarze, piel\\u0119gniarki, po\\u0142o\\u017cne, fizjoterapeuci, diagnostycy medyczni, administracja, dietetycy, psycholodzy, logopedzi, technicy, salowe, ratownicy medyczni. Ka\\u017cda z tych grup ma nieco odmienne interesy i rz\\u0105d (nie tylko zreszt\\u0105 obecny) bardzo umiej\\u0119tnie to wykorzystuje. Protesty na og\\u00f3\\u0142 dotycz\\u0105 tylko jednej z grup, a z mniejsz\\u0105 liczb\\u0105 protestuj\\u0105cych \\u0142atwiej si\\u0119 upora\\u0107 i co\\u015b im obieca\\u0107.</p><p>R\\u00f3\\u017cne interesy zdarzaj\\u0105 si\\u0119 nawet w obr\\u0119bie jednej grupy zawodowej. I tak np. m\\u0142odzi lekarze s\\u0105 w zupe\\u0142nie innej sytuacji ni\\u017c specjali\\u015bci. Ci pierwsi jeszcze si\\u0119 buntuj\\u0105, zale\\u017cy im, s\\u0105 te\\u017c na dorobku. Ci drudzy natomiast ca\\u0142kiem nie\\u017ale urz\\u0105dzili si\\u0119 w kiepskim systemie. Dobrze zarabiaj\\u0105, ci kt\\u00f3rzy maj\\u0105 prywatn\\u0105 praktyk\\u0119, cz\\u0119sto wr\\u0119cz \\u015bwietnie i ani im w g\\u0142owie wychodzenie na ulic\\u0119.</p><p><b>\\u201ePyta\\u0142am koleg\\u00f3w ze szpitala kto z nich wybiera si\\u0119 na manifestacj\\u0119 1 czerwca\\u201d \\u2013 m\\u00f3wi OKO.press lekarka z d\\u0142ugim sta\\u017cem z jednej z dzieci\\u0119cych plac\\u00f3wek w Warszawie. \\u201eOkaza\\u0142o si\\u0119, \\u017ce jestem jedyna\\u201d.</b></p><h2><b>Solidarno\\u015b\\u0107 zagro\\u017cona</b></h2><p>Podzia\\u0142y w\\u015br\\u00f3d pracownik\\u00f3w ochrony zdrowia na pewno nie u\\u0142atwia walki o radykaln\\u0105 zmian\\u0119. Dobr\\u0105 wiadomo\\u015bci\\u0105 jest to, \\u017ce w manifestacji 1 czerwca wezm\\u0105 udzia\\u0142 przedstawiciele Og\\u00f3lnopolskiego Zwi\\u0105zku Pracodawc\\u00f3w Szpitali Powiatowych (OZPSP). Dyrektorzy tych plac\\u00f3wek teoretycznie stoj\\u0105 po drugiej stronie barykady. Zatrudniaj\\u0105 pracownik\\u00f3w, negocjuj\\u0105 z nimi stawki. Oni jednak te\\u017c s\\u0105 coraz bardziej zdesperowani z racji warunk\\u00f3w, w jakich przysz\\u0142o im pracowa\\u0107.</p><p>\\u201eRz\\u0105d chcia\\u0142by zamkn\\u0105\\u0107 150 szpitali powiatowych, ale nie ma odwagi powiedzie\\u0107 tego wprost\\u201d \\u2013 m\\u00f3wi\\u0142 niedawno OKO.press Bogumi\\u0142 Kurowski, dyrektor zarz\\u0105du Szpitala Powiatowego w Nowym Mie\\u015bcie Lubawskim. Dyrektor Kurowski wraz z kilkoma osobami ze swojego szpitala wybiera si\\u0119 1 czerwca do Warszawy. \\u201eMam nadziej\\u0119, \\u017ce ludzi b\\u0119dzie tak du\\u017co, \\u017ce si\\u0119 nie spotkamy\\u201d \\u2013 powiedzia\\u0142 nam dwa dni przed manifestacj\\u0105. Oby.</p><p><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>Rz\\u0105d chce likwidacji 150 szpitali powiatowych, ale\\u00a0nie ma odwagi powiedzie\\u0107 tego wprost</b></a></h4><p><a href=\\"https://oko.press/eutanazja-szpitali-powiatowych-rzad-chce-likwidacji-150-z-nich-ale-nie-ma-odwagi-powiedziec-tego-wprost/\\"><b>S\\u0141AWOMIR ZAG\\u00d3RSKI\\u00a0\\u00a08 MAJA 2019</b></a></p><p>\\u201eZ oburzeniem zauwa\\u017camy, \\u017ce jako jedyna grupa w ochronie zdrowia domagamy si\\u0119 pieni\\u0119dzy nie dla siebie, a dla leczonych w szpitalach chorych oraz na realizacje obietnic p\\u0142acowych ministra, tymczasem zar\\u00f3wno przez Ministerstwo Zdrowia, jak i Narodowy Fundusz Zdrowia, traktowani jeste\\u015bmy jak natarczywi \\u017cebracy\\u201d \\u2013 czytamy w stanowisku Zarz\\u0105du OZPSP z 17 maja 2019.</p><h2><b>Do 15 lat wi\\u0119zienia</b></h2><p>\\u201eMy lekarze damy sobie rad\\u0119\\u201d \\u2013 m\\u00f3wi wspomniany dr Bartosz Fia\\u0142ek, jeden z \\u2013 jak go nazywam \\u2013 \\u201ewojownik\\u00f3w\\u201d, kt\\u00f3remu chce si\\u0119 po\\u015bwi\\u0119ca\\u0107 w\\u0142asny czas dla walki o spraw\\u0119.</p><p>\\u201eMy lekarze mamy koleg\\u00f3w w szpitalu, kt\\u00f3rzy zawsze pomog\\u0105, jak zachorujemy. A w najgorszym razie wyjedziemy pracowa\\u0107 w Unii. Pacjenci s\\u0105 w gorszej sytuacji. To dla nich walczymy\\u201d \\u2013 m\\u00f3wi dr Fia\\u0142ek.</p><p>Dlatego organizatorzy protestu gor\\u0105co namawiaj\\u0105 pacjent\\u00f3w, a wi\\u0119c tak naprawd\\u0119 nas wszystkich, do przy\\u0142\\u0105czenia si\\u0119 do manifestacji.</p><p>W\\u0142adze od dawna rozbijaj\\u0105 solidarno\\u015b\\u0107 lekarzy i pacjent\\u00f3w. Tych pierwszych przedstawia si\\u0119 jako pazernych, niedouczonych, dzia\\u0142aj\\u0105cych cz\\u0119sto na szkod\\u0119 chorych. Wystarczy wspomnie\\u0107 g\\u0142o\\u015bne s\\u0142owa Zbigniewa Ziobry z 2007 roku. \\u201eJu\\u017c nikt nigdy przez tego pana pozbawiony \\u017cycia nie b\\u0119dzie\\u201d.</p><p>Dzi\\u015b Ziobro wzi\\u0105\\u0142 si\\u0119 za aktualizacj\\u0119 kodeksu karnego i proponuje zmian\\u0119 art. 155 kk, zwi\\u0119kszaj\\u0105c\\u0105 kar\\u0119 za nieumy\\u015blne spowodowanie \\u015bmierci cz\\u0142owieka z dotychczasowych trzech miesi\\u0119cy do 5 lat wi\\u0119zienia na rok do 10 lat wi\\u0119zienia. Poniewa\\u017c kar powy\\u017cej roku nie mo\\u017cna warunkowo zawiesza\\u0107, dlatego lekarz skazany z tego paragrafu p\\u00f3jdzie siedzie\\u0107.</p><p>Ziobro chce te\\u017c wprowadzenia nowego przepisu, kt\\u00f3ry zak\\u0142ada kar\\u0119 od dw\\u00f3ch do 15 lat wi\\u0119zienia dla kogo\\u015b, kto nieumy\\u015blnie spowoduje \\u015bmier\\u0107 wi\\u0119cej ni\\u017c jednej osoby. T\\u0105 nowelizacj\\u0105 zaniepokoili si\\u0119 szczeg\\u00f3lnie ginekolodzy-po\\u0142o\\u017cnicy odpowiadaj\\u0105cy za \\u017cycie dw\\u00f3ch os\\u00f3b \\u2013 matki i dziecka.</p><p>Ministerstwo Zdrowia nie mia\\u0142o uwag do propozycji Ziobry. W maju nowy kodeks by\\u0142 procedowany w Sejmie i w Senacie, ostateczna wersja czeka na akceptacj\\u0119 pos\\u0142\\u00f3w.</p><p>30 maja Ministerstwo Sprawiedliwo\\u015bci przekonywa\\u0142o, \\u017ce zmiana przepisu ma nie dotyczy\\u0107 lekarzy, lecz pospolitych przest\\u0119pc\\u00f3w. MS <a href=\\"https://www.politykazdrowotna.com/45536,ms-zmiana-prawa-nie-uderzy-w-lekarzy-lecz-w-pospolitych-przestepcow\\">podkre\\u015bli\\u0142o tak\\u017ce, \\u017ce b\\u0142\\u0105d medyczny nie musi (ale mo\\u017ce!)</a> by\\u0107 kwalifikowany jako nieumy\\u015blne spowodowanie \\u015bmierci.</p><h2><b>Jako\\u015b to b\\u0119dzie</b></h2><p>Kwestia zaostrzenia kar, kt\\u00f3ra mo\\u017ce dotkn\\u0105\\u0107 \\u015brodowisko lekarskie (a tak\\u017ce nas \\u2013 pacjent\\u00f3w, poniewa\\u017c lekarze b\\u0119d\\u0105 zmuszeni si\\u0119 dodatkowo ubezpieczy\\u0107, a my wszyscy za to zap\\u0142aci\\u0107) z pewno\\u015bci\\u0105 b\\u0119dzie podnoszona podczas manifestacji.</p><p>Ale \\u2013 powt\\u00f3rzmy \\u2013 g\\u0142\\u00f3wny nacisk idzie na popraw\\u0119 systemu. Radykaln\\u0105 popraw\\u0119 finansow\\u0105, poniewa\\u017c bez pieni\\u0119dzy, i to du\\u017cych, sytuacji nie da si\\u0119 zmieni\\u0107. To z czym borykamy si\\u0119 dzi\\u015b, to efekt wieloletnich zaniedba\\u0144. Praktycznie wszystkie rz\\u0105dy po 1989 roku uwa\\u017ca\\u0142y, \\u017ce z ochron\\u0105 zdrowia \\u201ejako\\u015b to b\\u0119dzie\\u201d. Ustalono bardzo nisk\\u0105 wysoko\\u015b\\u0107 sk\\u0142adki zdrowotnej, oszcz\\u0119dzano na czym si\\u0119 da \\u2013 na lekach, na kszta\\u0142ceniu kadr, na sprz\\u0119cie. Zezwolono na rozw\\u00f3j sektora prywatnego, dzi\\u015b spe\\u0142nia on wa\\u017cn\\u0105 rol\\u0119 w systemie. Ale:</p><ul><li>po pierwsze \\u201ezassa\\u0142\\u201d on wielu dobrych lekarzy, kt\\u00f3rzy odeszli z publicznego sektora,</li><li>po drugie licznych obywateli na niego nie sta\\u0107,</li><li>wreszcie po trzecie w razie naprawd\\u0119 powa\\u017cniej choroby i perspektywy naprawd\\u0119 du\\u017cych wydatk\\u00f3w pacjent i tak trafia do publicznej ochrony zdrowia.</li></ul><p>PiS dbaj\\u0105c w tej kadencji o \\u201ezwyk\\u0142ych obywateli\\u201d w kwestii zdrowia zrobi\\u0142 tyle co nic. Trudno za wielk\\u0105 pomoc uzna\\u0107 wprowadzenie bezp\\u0142atnych lek\\u00f3w dla os\\u00f3b 75+ (lista tych lek\\u00f3w jest ograniczona, inne kraje wprowadzi\\u0142y ulgi dla wszystkich emeryt\\u00f3w, itd.). Cho\\u0107 trzeba te\\u017c odda\\u0107 sprawiedliwo\\u015b\\u0107, \\u017ce ten rz\\u0105d by\\u0142 pierwszym, kt\\u00f3ry w og\\u00f3le zaj\\u0105\\u0142 si\\u0119 tym problemem.</p><p>Trudno te\\u017c za sukces uzna\\u0107 zapowiadane szumnie w kampanii zmiany w polskiej onkologii. Mia\\u0142 powsta\\u0107 Narodowy Instytut Raka, a sko\\u0144czy\\u0142o si\\u0119 na kosztownym i mocno oprotestowanym przez specjalist\\u00f3w pilota\\u017cu ds. sieci onkologicznej. Rz\\u0105d przygotowuje strategi\\u0119 walki z nowotworami odrzuciwszy poprzedni gotowy dokument, bo powsta\\u0142 za PO.</p><h2><b>Lekarze sami nie dadz\\u0105 rady</b><br/></h2><p>W pi\\u0105tce PiS w og\\u00f3le nie wspomniano o zdrowiu uznaj\\u0105c, \\u017ce w ten spos\\u00f3b nie pozyska si\\u0119 g\\u0142os\\u00f3w wyborc\\u00f3w.</p><p>Ale bez odwa\\u017cnej politycznej decyzji na zmian\\u0119 \\u2013 jak wspomnia\\u0142em \\u2013 nie ma szans. Lekarze sami jej nie wywalcz\\u0105. Pom\\u00f3\\u017cmy im cho\\u0107by we w\\u0142asnym interesie. Najbli\\u017csza okazja 1 czerwca.</p>", "photo": 25, "publication_date": "2019-05-31", "marked": false}	\N	22	1
3	f	2019-05-20 11:45:28.420625+02	{"pk": 5, "path": "0001000100010001", "depth": 4, "numchild": 0, "title": "spec2", "title_pl": "spec2", "title_en": "spec2", "draft_title": "spec2", "slug": "spec2", "slug_pl": "spec2", "slug_en": "spec2", "content_type": 32, "live": false, "has_unpublished_changes": false, "url_path": "home-page1/spec2/", "url_path_pl": "strona-domowa1/spec2/", "url_path_en": "home-page1/spec2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null}	\N	5	1
47	f	2019-06-03 11:23:37.294993+02	{"pk": 20, "path": "0001000200020003", "depth": 4, "numchild": 0, "title": "Adrian Krzywicki", "title_pl": "Adrian Krzywicki", "title_en": "Adrian Krzywicki", "draft_title": "Adrian Krzywicki", "slug": "adrian-krzywicki", "slug_pl": "adrian-krzywicki", "slug_en": "adrian-krzywicki", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/about-us/adrian-krzywicki/", "url_path_pl": "/strona-domowa1/o-nas/adrian-krzywicki/", "url_path_en": "/home-page1/about-us/adrian-krzywicki/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-31T08:34:24.946Z", "last_published_at": "2019-05-31T08:34:24.946Z", "latest_revision_created_at": "2019-05-31T08:34:24.895Z", "live_revision": 34, "name": "Adrian Krzywicki", "short_description": "ameryka\\u0144ski matematyk i terrorysta.", "short_description_pl": "ameryka\\u0144ski matematyk i terrorysta.", "short_description_en": "ameryka\\u0144ski matematyk i terrorysta.", "long_description": "an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while advocating a nature-centered form of anarchism.", "long_description_pl": "an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while advocating a nature-centered form of anarchism.", "long_description_en": "an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while advocating a nature-centered form of anarchism.", "photo": 24, "tagged_items": [{"pk": null, "tag": 1, "content_object": 20}, {"pk": null, "tag": 3, "content_object": 20}]}	\N	20	1
1	f	2019-05-20 11:40:14.792213+02	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 0, "title": "Home page1", "title_pl": "Strona domowa1", "title_en": "Home page1", "draft_title": "Home page1", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/", "url_path_pl": "strona-domowa1/", "url_path_en": "home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "header": "header 1", "header_pl": "nag\\u0142\\u00f3wek 1", "header_en": "header 1"}	\N	3	1
46	f	2019-05-31 15:14:39.216057+02	{"pk": 14, "path": "0001000200010004", "depth": 4, "numchild": 0, "title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_pl": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_en": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "draft_title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "slug": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_pl": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_en": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_pl": "/strona-domowa1/aktualno\\u015bci/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_en": "/home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T07:36:38.220Z", "last_published_at": "2019-05-31T12:33:10.694Z", "latest_revision_created_at": "2019-05-31T12:33:10.637Z", "live_revision": 43, "headline": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_pl": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_en": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "body": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_pl": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_en": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "photo": 16, "publication_date": "2019-05-29", "marked": true}	\N	14	1
48	f	2019-06-03 11:24:14.275951+02	{"pk": 18, "path": "0001000200020002", "depth": 4, "numchild": 0, "title": "Edward Abramowski", "title_pl": "Edward Abramowski", "title_en": "Edward Abramowski", "draft_title": "Edward Abramowski", "slug": "edward-abramowski", "slug_pl": "edward-abramowski", "slug_en": "edward-abramowski", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/about-us/edward-abramowski/", "url_path_pl": "/strona-domowa1/o-nas/edward-abramowski/", "url_path_en": "/home-page1/about-us/edward-abramowski/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T12:56:48.773Z", "last_published_at": "2019-05-29T12:56:48.773Z", "latest_revision_created_at": "2019-05-29T12:56:48.718Z", "live_revision": 22, "name": "Edward Abramowski", "short_description": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog", "short_description_pl": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog", "short_description_en": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog", "long_description": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana \\u017beromskiego, pierwowz\\u00f3r Szymona Gajowca w powie\\u015bci \\u201ePrzedwio\\u015bnie\\u201d, wolnomularz[3].", "long_description_pl": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana \\u017beromskiego, pierwowz\\u00f3r Szymona Gajowca w powie\\u015bci \\u201ePrzedwio\\u015bnie\\u201d, wolnomularz[3].", "long_description_en": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana \\u017beromskiego, pierwowz\\u00f3r Szymona Gajowca w powie\\u015bci \\u201ePrzedwio\\u015bnie\\u201d, wolnomularz[3].", "photo": 17, "tagged_items": [{"pk": null, "tag": 1, "content_object": 18}, {"pk": null, "tag": 3, "content_object": 18}]}	\N	18	1
7	f	2019-05-24 16:03:51.670053+02	{"pk": 8, "path": "0001000100010002", "depth": 4, "numchild": 0, "title": "Do\\u0142\\u0105cz do na", "title_pl": "Do\\u0142\\u0105cz do na", "title_en": "Do\\u0142\\u0105cz do na", "draft_title": "Do\\u0142\\u0105cz do na", "slug": "do\\u0142\\u0105cz-do-na", "slug_pl": "do\\u0142\\u0105cz-do-na", "slug_en": "do\\u0142\\u0105cz-do-na", "content_type": 36, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/do\\u0142\\u0105cz-do-na/", "url_path_pl": "strona-domowa1/do\\u0142\\u0105cz-do-na/", "url_path_en": "home-page1/do\\u0142\\u0105cz-do-na/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "cooperation": "je\\u015bli jeste\\u015b programist\\u0105 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "cooperation_pl": "je\\u015bli jeste\\u015b programist\\u0105 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "cooperation_en": "je\\u015bli jeste\\u015b programist\\u0105 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "recruitment": "[{\\"type\\": \\"text\\", \\"value\\": \\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\\", \\"id\\": \\"32fb5ecb-8b19-48b5-a8af-9cf281e3a9ad\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"asdf\\", \\"image\\": 5}, {\\"heading\\": \\"asdfdfs\\", \\"image\\": 4}], \\"id\\": \\"59410ba6-d33c-4024-a640-e4155feaf0f9\\"}]", "recruitment_pl": "[{\\"type\\": \\"text\\", \\"value\\": \\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\\", \\"id\\": \\"8652e896-14d2-44a7-8c25-3c3581d7927c\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"asdf\\", \\"image\\": 5}, {\\"heading\\": \\"asdfdfs\\", \\"image\\": 4}], \\"id\\": \\"e6ade72c-287a-4647-8cbb-6d134d322169\\"}]", "recruitment_en": "[{\\"type\\": \\"text\\", \\"value\\": \\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\\", \\"id\\": \\"fe7e845b-42d9-4377-97e2-461e592456f4\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"asdf\\", \\"image\\": 5}, {\\"heading\\": \\"asdfdfs\\", \\"image\\": 4}], \\"id\\": \\"aedd0b07-c379-46aa-9303-1cfc6156d8a0\\"}]"}	\N	8	1
4	f	2019-05-20 11:45:32.900589+02	{"pk": 5, "path": "0001000100010001", "depth": 4, "numchild": 0, "title": "spec2", "title_pl": "spec2", "title_en": "spec2", "draft_title": "spec2", "slug": "spec2", "slug_pl": "spec2", "slug_en": "spec2", "content_type": 32, "live": false, "has_unpublished_changes": true, "url_path": "home-page1/spec2/", "url_path_pl": "strona-domowa1/spec2/", "url_path_en": "home-page1/spec2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2019-05-20T09:45:28.420Z", "live_revision": null}	\N	5	1
9	f	2019-05-28 11:14:37.748558+02	{"pk": 5, "path": "0001000100010001", "depth": 4, "numchild": 1, "title": "specjalizacje index", "title_pl": "specjalizacje index", "title_en": "specjalizacje index", "draft_title": "spec2", "slug": "spec2", "slug_pl": "spec2", "slug_en": "spec2", "content_type": 32, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/spec2/", "url_path_pl": "strona-domowa1/spec2/", "url_path_en": "home-page1/spec2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:45:32.933Z", "last_published_at": "2019-05-20T09:45:32.933Z", "latest_revision_created_at": "2019-05-20T09:45:32.900Z", "live_revision": 4}	\N	5	1
49	f	2019-06-03 11:41:25.52726+02	{"pk": 17, "path": "0001000200020001", "depth": 4, "numchild": 0, "title": "Jan Kowalski", "title_pl": "Jan Kowalski", "title_en": "Jan Kowalski", "draft_title": "pracownik1", "slug": "pracownik1", "slug_pl": "pracownik1", "slug_en": "pracownik1", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/about-us/pracownik1/", "url_path_pl": "/strona-domowa1/o-nas/pracownik1/", "url_path_en": "/home-page1/about-us/pracownik1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T11:05:06.535Z", "last_published_at": "2019-05-29T11:05:06.535Z", "latest_revision_created_at": "2019-05-29T11:05:06.488Z", "live_revision": 21, "name": "Jan Kowalski", "short_description": "wsp\\u00f3\\u0142czesny hinduski guru, nauczyciel i mistrz duchowy", "short_description_pl": "wsp\\u00f3\\u0142czesny hinduski guru, nauczyciel i mistrz duchowy", "short_description_en": "wsp\\u00f3\\u0142czesny hinduski guru, nauczyciel i mistrz duchowy", "long_description": "Za\\u0142o\\u017cyciel ruchu religijnego Neo-Sannyas (uczniowie nazywani s\\u0105 sannjasinami).  Autor kilkuset ksi\\u0105\\u017cek \\u2013 wed\\u0142ug r\\u00f3\\u017cnych danych ich liczba waha si\\u0119 pomi\\u0119dzy 400 oryginalnymi tytu\\u0142ami a 750, w\\u0142\\u0105czaj\\u0105c w to r\\u00f3\\u017cne kompilacje. T\\u0142umaczone na ponad 50 j\\u0119zyk\\u00f3w.", "long_description_pl": "Za\\u0142o\\u017cyciel ruchu religijnego Neo-Sannyas (uczniowie nazywani s\\u0105 sannjasinami).  Autor kilkuset ksi\\u0105\\u017cek \\u2013 wed\\u0142ug r\\u00f3\\u017cnych danych ich liczba waha si\\u0119 pomi\\u0119dzy 400 oryginalnymi tytu\\u0142ami a 750, w\\u0142\\u0105czaj\\u0105c w to r\\u00f3\\u017cne kompilacje. T\\u0142umaczone na ponad 50 j\\u0119zyk\\u00f3w.", "long_description_en": "Za\\u0142o\\u017cyciel ruchu religijnego Neo-Sannyas (uczniowie nazywani s\\u0105 sannjasinami).  Autor kilkuset ksi\\u0105\\u017cek \\u2013 wed\\u0142ug r\\u00f3\\u017cnych danych ich liczba waha si\\u0119 pomi\\u0119dzy 400 oryginalnymi tytu\\u0142ami a 750, w\\u0142\\u0105czaj\\u0105c w to r\\u00f3\\u017cne kompilacje. T\\u0142umaczone na ponad 50 j\\u0119zyk\\u00f3w.", "photo": 11, "tagged_items": [{"pk": null, "tag": 1, "content_object": 17}, {"pk": null, "tag": 2, "content_object": 17}]}	\N	17	1
12	f	2019-05-28 16:08:25.26129+02	{"pk": 10, "path": "0001000100010003", "depth": 4, "numchild": 0, "title": "News", "title_pl": "Aktualno\\u015bci", "title_en": "News", "draft_title": "News", "slug": "news", "slug_pl": "aktualno\\u015bci", "slug_en": "news", "content_type": 37, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/news/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/", "url_path_en": "home-page1/news/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null}	\N	10	1
16	f	2019-05-29 09:36:32.593945+02	{"pk": 14, "path": "00010001000100030004", "depth": 5, "numchild": 0, "title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_pl": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_en": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "draft_title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "slug": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_pl": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_en": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "content_type": 34, "live": false, "has_unpublished_changes": false, "url_path": "home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_en": "home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "headline": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_pl": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_en": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "body": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_pl": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_en": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "photo": 16, "publication_date": "2019-05-29"}	\N	14	1
11	f	2019-05-28 12:49:52.748377+02	{"pk": 9, "path": "000100010001000100010001", "depth": 6, "numchild": 0, "title": "Our own project", "title_pl": "Nasz w\\u0142asny projekt", "title_en": "Our own project", "draft_title": "Our own project", "slug": "our-own-project", "slug_pl": "nasz-w\\u0142asny-projekt", "slug_en": "our-own-project", "content_type": 30, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/spec2/specialisation2/our-own-project/", "url_path_pl": "strona-domowa1/spec2/specjalizacja2/nasz-w\\u0142asny-projekt/", "url_path_en": "home-page1/spec2/specialisation2/our-own-project/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-28T10:37:08.678Z", "last_published_at": "2019-05-28T10:37:08.678Z", "latest_revision_created_at": "2019-05-28T10:37:08.631Z", "live_revision": 10, "self_initiated": true, "subtitle": "We gonna earn shitload of money", "subtitle_pl": "Zarobimy na nim kupe hajsu", "subtitle_en": "We gonna earn shitload of money", "challenge": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "challenge_pl": "<p><b>Pocz\\u0105tki bywaj\\u0105 trudne</b></p><p>Ale potem ju\\u017c jest z g\\u00f3rki i w og\\u00f3le zajebi\\u015bcie</p>", "challenge_en": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "process": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "process_pl": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"49d77b92-2286-4262-9853-a41c878c1525\\"}]", "process_en": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "quote": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_pl": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_en": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "metrics": [{"pk": 1, "sort_order": 0, "project": 9, "value": "21:37", "property_name": "We start"}, {"pk": 2, "sort_order": 1, "project": 9, "value": "666", "property_name": "We provide"}, {"pk": 3, "sort_order": 2, "project": 9, "value": "69", "property_name": "We protect"}]}	\N	9	1
14	f	2019-05-29 09:32:21.2249+02	{"pk": 12, "path": "00010001000100030002", "depth": 5, "numchild": 0, "title": "Komorowski: Wyborcy PiS \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. A to bogaci, nie ubo\\u017csi, p\\u0142ac\\u0105 ni\\u017csze podatki", "title_pl": "Komorowski: Wyborcy PiS \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. A to bogaci, nie ubo\\u017csi, p\\u0142ac\\u0105 ni\\u017csze podatki", "title_en": "Komorowski: Wyborcy PiS \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. A to bogaci, nie ubo\\u017csi, p\\u0142ac\\u0105 ni\\u017csze podatki", "draft_title": "Komorowski: Wyborcy PiS \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. A to bogaci, nie ubo\\u017csi, p\\u0142ac\\u0105 ni\\u017csze podatki", "slug": "komorowski-wyborcy-pis-nie-p\\u0142ac\\u0105-podatk\\u00f3w-a-to-bogaci-nie-ubo\\u017csi-p\\u0142ac\\u0105-ni\\u017csze-podatki", "slug_pl": "komorowski-wyborcy-pis-nie-p\\u0142ac\\u0105-podatk\\u00f3w-a-to-bogaci-nie-ubo\\u017csi-p\\u0142ac\\u0105-ni\\u017csze-podatki", "slug_en": "komorowski-wyborcy-pis-nie-p\\u0142ac\\u0105-podatk\\u00f3w-a-to-bogaci-nie-ubo\\u017csi-p\\u0142ac\\u0105-ni\\u017csze-podatki", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/news/komorowski-wyborcy-pis-nie-p\\u0142ac\\u0105-podatk\\u00f3w-a-to-bogaci-nie-ubo\\u017csi-p\\u0142ac\\u0105-ni\\u017csze-podatki/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/komorowski-wyborcy-pis-nie-p\\u0142ac\\u0105-podatk\\u00f3w-a-to-bogaci-nie-ubo\\u017csi-p\\u0142ac\\u0105-ni\\u017csze-podatki/", "url_path_en": "home-page1/news/komorowski-wyborcy-pis-nie-p\\u0142ac\\u0105-podatk\\u00f3w-a-to-bogaci-nie-ubo\\u017csi-p\\u0142ac\\u0105-ni\\u017csze-podatki/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "headline": "Bronis\\u0142aw Komorowski powiela opini\\u0119, \\u017ce wyborcy Prawa i Sprawiedliwo\\u015bci ci\\u0105gn\\u0105 pieni\\u0105dze od reszty spo\\u0142ecze\\u0144stwa. Jednak s\\u0142absze zarobki ich wyborc\\u00f3w, nie znacz\\u0105 wcale, \\u017ce \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. Wr\\u0119cz przeciwnie, ubodzy p\\u0142ac\\u0105 w Polsce ponad dwa razy wy\\u017csze stawki danin ni\\u017c bogaci", "headline_pl": "Bronis\\u0142aw Komorowski powiela opini\\u0119, \\u017ce wyborcy Prawa i Sprawiedliwo\\u015bci ci\\u0105gn\\u0105 pieni\\u0105dze od reszty spo\\u0142ecze\\u0144stwa. Jednak s\\u0142absze zarobki ich wyborc\\u00f3w, nie znacz\\u0105 wcale, \\u017ce \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. Wr\\u0119cz przeciwnie, ubodzy p\\u0142ac\\u0105 w Polsce ponad dwa razy wy\\u017csze stawki danin ni\\u017c bogaci", "headline_en": "Bronis\\u0142aw Komorowski powiela opini\\u0119, \\u017ce wyborcy Prawa i Sprawiedliwo\\u015bci ci\\u0105gn\\u0105 pieni\\u0105dze od reszty spo\\u0142ecze\\u0144stwa. Jednak s\\u0142absze zarobki ich wyborc\\u00f3w, nie znacz\\u0105 wcale, \\u017ce \\u201enie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d. Wr\\u0119cz przeciwnie, ubodzy p\\u0142ac\\u0105 w Polsce ponad dwa razy wy\\u017csze stawki danin ni\\u017c bogaci", "body": "<p>Polska potrzebuje wolnych medi\\u00f3w. Wesprzyj nas, by\\u015bmy mogli pisa\\u0107 takie teksty dalej. <a href=\\"https://oko.press/wesprzyj/\\"><b>WSPIERAM &gt;&gt;</b></a></p><p>27 maja, dzie\\u0144 po wyborach do europarlamentu, Bronis\\u0142aw Komorowski komentowa\\u0142 ich wynik w audycji Onet Rano. Diagnozuj\\u0105c \\u017ar\\u00f3d\\u0142o zwyci\\u0119stwa PiS, kt\\u00f3re w skali kraju zdoby\\u0142o 45,3 proc poparcia, by\\u0142y prezydent Polski stwierdzi\\u0142, \\u017ce \\u201ePiS wygrywa\\u0142o w tych kr\\u0119gach wyborczych, kt\\u00f3re nie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d.</p><p><b><i>Jest charakterystyczne i warte przeanalizowania to, \\u017ce PiS wygrywa\\u0142o w tych kr\\u0119gach wyborczych, kt\\u00f3re nie p\\u0142ac\\u0105 podatk\\u00f3w</i></b></p><p><a href=\\"https://oko.press/komorowski-bronislaw/\\">Bronis\\u0142aw Komorowski</a>, <a href=\\"https://wiadomosci.onet.pl/tylko-w-onecie/wybory-do-europarlamentu-2019-bronislaw-komorowski-komentuje/rdvgp4l\\">Onet Rano</a> - 27/05/2019</p><h4><b>PODATKI P\\u0141ACIMY WSZYSCY. A UBODZY POLACY (CZYLI WYBORCY PIS-U) NAWET WI\\u0118KSZ\\u0104 CZ\\u0118\\u015a\\u0106 SWOICH PRZYCHOD\\u00d3W, NI\\u017b ZAMO\\u017bNIEJSI OBYWATELE.</b></h4><p>Komorowski pokaza\\u0142, \\u017ce s\\u0142abo orientuje si\\u0119 w polskich realiach podatkowych oraz sytuacji mniej od siebie zamo\\u017cnych obywateli. Powtarza krzywdz\\u0105ce stereotypy i odwraca wzrok od prawdziwych problem\\u00f3w polskiej gospodarki.</p><h2><b>Przesta\\u0144cie by\\u0107 biedni!</b></h2><p>Zacznijmy od tego, sk\\u0105d by\\u0142y prezydent wyci\\u0105ga takie wnioski. Danych o dochodach g\\u0142osuj\\u0105cych nie zbiera bowiem ani Pa\\u0144stwowa Komisja Wyborcza (PKW), ani realizuj\\u0105ca <a href=\\"https://oko.press/tajemnice-exit-polls-oko-press-ujawnia-czego-sie-dowiemy-dzis-o-21-00/\\">sonda\\u017ce exit poll</a>\\u00a0firma IPSOS. Z informacji tej pierwszej wiadomo jednak, jak g\\u0142osowa\\u0142y poszczeg\\u00f3lne powiaty i wojew\\u00f3dztwa, a tej drugiej \\u2013 przedstawiciele poszczeg\\u00f3lnych grup zawodowych.</p><p>PiS zdobywa\\u0142o g\\u0142osy przede wszystkim w d\\u0142ugotrwale ubo\\u017cszych wojew\\u00f3dztwach Polski wschodniej, centralnej i po\\u0142udniowej:</p><ul><li>Lubelskim (59 proc. g\\u0142os\\u00f3w za PiS)</li><li>\\u0141\\u00f3dzkim (46,7 proc.)</li><li>Ma\\u0142opolskim (55,8 proc.)</li><li>Mazowieckim (42,9 proc. \\u2013 przeciwnie g\\u0142osowa\\u0142a tylko bogata aglomeracja warszawska)</li><li>Podlaskim (54,4 proc.)</li><li>Podkarpackim (65,1 proc.)</li><li>\\u015al\\u0105skim (43,3 proc.)</li><li>\\u015awi\\u0119tokrzyskim (57,85 proc.)</li><li>Warmi\\u0144sko-Mazurskim (42,15 proc.)</li></ul><p>Taki stan rzeczy powtarza si\\u0119 w tych regionach od lat. Wytar\\u0142 si\\u0119 ju\\u017c wyborczy \\u017cart, \\u017ce po wynikach \\u201ewida\\u0107 granice zabor\\u00f3w\\u201d.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382407/?utm_source=showcase&amp;utm_campaign=visualisation/382407\\"><b>A Flourish data visualisation</b></a></p><p>Gdy bra\\u0107 pod uwag\\u0119 demografi\\u0119, na PiS zag\\u0142osowali:</p><ul><li>Bezrobotni (54,5 proc. g\\u0142os\\u00f3w za PiS)</li><li>Emeryci (56,4 proc.)</li><li>Rolnicy (72,3 proc.)</li><li>Robotnicy (59,8 proc.)</li></ul><p>To grupy gorzej sytuowane ni\\u017c przedsi\\u0119biorcy czy specjali\\u015bci, kt\\u00f3re w badaniu IPSOS deklarowa\\u0142y poparcie dla Koalicji Obywatelskiej. A z przedwyborczego sonda\\u017cu OKO.press wynika, \\u017ce to</p><p><b>w\\u015br\\u00f3d najmniej zarabiaj\\u0105cych poparcie dla Prawa i Sprawiedliwo\\u015bci by\\u0142o najwy\\u017csze.</b></p><p>PiS wygra\\u0142 jedynie w grupach os\\u00f3b zarabiaj\\u0105cych do 1500 z\\u0142 oraz 1501-2500 z\\u0142 (poparcie odpowiednio 55 i 48 proc.), gdy we wszystkich zamo\\u017cniejszych prowadzi\\u0142a Koalicja.</p><p>Prezydent Komorowski wysy\\u0142a zatem komunikat, \\u017ce wyborcy PiS paso\\u017cytuj\\u0105 na podatkach p\\u0142aconych przez wyborc\\u00f3w innych partii. Nie m\\u00f3wi wprost, o kogo chodzi, ale \\u0142atwo wywnioskowa\\u0107, \\u017ce ma na my\\u015bli biednych.</p><h2><b>Jak nie p\\u0142aci\\u0107 podatk\\u00f3w</b></h2><p>M\\u00f3wi\\u0105c, \\u017ce jaki\\u015b kr\\u0105g \\u201enie p\\u0142aci podatk\\u00f3w\\u201d, Bronis\\u0142aw Komorowski u\\u017cywa formy nazywanej w logice kwantyfikatorem wielkim, sugeruj\\u0105c, \\u017ce ka\\u017cdy przedstawiciel \\u201ekr\\u0119g\\u00f3w\\u201d g\\u0142osuj\\u0105cych na PiS nie p\\u0142aci podatk\\u00f3w. Jest wr\\u0119cz przeciwnie: ka\\u017cdy wyborca PiS, nawet bezrobotny, podatki p\\u0142aci. Co wi\\u0119cej, robi to te\\u017c wyborca skrajnego wolnorynkowca Janusza Korwin-Mikkego, cho\\u0107 pewnie bardzo nie chce.</p><p>Opr\\u00f3cz podatk\\u00f3w dochodowych PIT i CIT, w Polsce obowi\\u0105zuj\\u0105 bowiem i inne daniny. Najpopularniejszy z nich to VAT, czyli podatek od towar\\u00f3w i us\\u0142ug, wliczony zazwyczaj w ich cen\\u0119 przy zakupie \\u2013 odpowiada za ok. 40 proc. wp\\u0142yw\\u00f3w do bud\\u017cetu pa\\u0144stwa. Z kolei rolnicy zamiast PIT p\\u0142ac\\u0105 podatek rolny, zale\\u017cny nie od przychod\\u00f3w, a od posiadanego area\\u0142u i cen zbo\\u017ca. Jest te\\u017c akcyza, kt\\u00f3ra ma zniech\\u0119ca\\u0107 do zakupu okre\\u015blonych produkt\\u00f3w (np. alkoholu, papieros\\u00f3w czy paliw kopalnych), a tak\\u017ce podatki od nieruchomo\\u015bci, od spadk\\u00f3w i darowizn czy te\\u017c czynno\\u015bci cywilnoprawnych \\u2013 i jeszcze kilka innych.</p><p>Przyjmijmy, \\u017ce prezydent u\\u017cy\\u0142 skr\\u00f3tu my\\u015blowego, a chodzi\\u0142o mu o grupy, kt\\u00f3re wp\\u0142acaj\\u0105 relatywnie mniej do wsp\\u00f3lnej kasy, bo zarabiaj\\u0105 mniej \\u2013 jako \\u017ce wykonuj\\u0105 gorzej p\\u0142atne zawody, s\\u0105 zale\\u017cni od wyp\\u0142at socjalnych lub mieszkaj\\u0105 w biedniejszym regionie.</p><h2><b>Ulgi dla bogatych</b></h2><p>Wci\\u0105\\u017c jednak prezydent mija si\\u0119 z prawd\\u0105. Z <a href=\\"https://www.gov.pl/web/finanse/wybrane-aspekty-systemu-podatkowo-skladkowego-na-podstawie-danych-pit-i-zus-2016\\">dokumentu Ministerstwa Finans\\u00f3w</a><i>Wybrane aspekty systemu podatkowo-sk\\u0142adkowego na podstawie danych PIT i ZUS 2016</i> wynika bowiem, \\u017ce</p><p><b>grupy najs\\u0142abiej zarabiaj\\u0105ce oddaj\\u0105 pa\\u0144stwu</b> <b>wi\\u0119ksz\\u0105</b> <b>cz\\u0119\\u015b\\u0107 swojego przychodu ni\\u017c lepiej sytuowani.</b> </p><p>Osoby zarabiaj\\u0105ce do 10 tys. z\\u0142 brutto rocznie przekazuj\\u0105 w podatku dochodowym i sk\\u0142adkach a\\u017c 59,9 proc. swoich przychod\\u00f3w. Drug\\u0105 pod wzgl\\u0119dem obci\\u0105\\u017ce\\u0144 grup\\u0105 jest klasa \\u015brednia \\u2013 zarabiaj\\u0105c 20 do 100 tys. z\\u0142 brutto oddajemy mi\\u0119dzy 11,5 a 18,6 punktu procentowego wi\\u0119cej ni\\u017c milionerzy. Ci ostatni sk\\u0142adaj\\u0105 si\\u0119 na us\\u0142ugi publiczne jedynie w 20,4 procent przychodu.</p><p>Dzieje si\\u0119 tak, gdy\\u017c najlepiej zarabiaj\\u0105cym op\\u0142aca si\\u0119 korzysta\\u0107 z 19-procentowego podatku liniowego, aby unikn\\u0105\\u0107 wej\\u015bcia w drugi \\u00a0pr\\u00f3g podatkowy (32-procentow\\u0105 stawk\\u0119 p\\u0142aci zaledwie ok. 3 proc. Polak\\u00f3w). Do tego\\u00a0sk\\u0142adki ZUS mniej wi\\u0119cej w\\u0142a\\u015bnie od bariery 100 tys. z\\u0142 przychodu nie rosn\\u0105 proporcjonalnie do przychodu. Podobnie ze sk\\u0142adk\\u0105 zdrowotn\\u0105.</p><p>Nawet je\\u015bli mniejszy procent zarobk\\u00f3w bogacza to i tak wi\\u0119cej w liczbie bezwzgl\\u0119dnej, to</p><p><b>pa\\u0144stwo utrzymuje si\\u0119 g\\u0142\\u00f3wnie dzi\\u0119ki \\u015brednio i s\\u0142abo zarabiaj\\u0105cym.</b></p><h2><b>Biedny dwa razy p\\u0142aci</b></h2><p>Sytuacj\\u0119 mniej maj\\u0119tnych pogarsza VAT, gdy\\u017c zn\\u00f3w przeznaczaj\\u0105 na podatek wi\\u0119kszy odsetek przychod\\u00f3w, ni\\u017c bogaci.</p><p><b>\\u201eNajbiedniejsze 10 proc. p\\u0142aci VAT o warto\\u015bci odpowiadaj\\u0105cej przeci\\u0119tnie 16,3 proc. swojego dochodu, a najbogatsze 10 proc. Polak\\u00f3w \\u2013 6,8 proc.\\u201d</b></p><p>\\u2013 wyliczy\\u0142a w 2015 r. fundacja <a href=\\"http://www.cenea.org.pl/images/stories/pdf/press_releases/raport1_vat_press.pdf\\">Centrum Analiz Ekonomicznych</a>. </p><p>Dzieje si\\u0119 tak, bo wi\\u0119ksz\\u0105 cz\\u0119\\u015b\\u0107 domowych bud\\u017cet\\u00f3w zajmuje u biedniejszych konsumpcja bie\\u017c\\u0105ca. Osoba zarabiaj\\u0105ca 10 razy wi\\u0119cej nie zje bowiem 5 razy wi\\u0119cej bochenk\\u00f3w 2-krotnie dro\\u017cszego chleba dziennie, nie zu\\u017cywa te\\u017c 10 razy wi\\u0119cej pr\\u0105du. Co wi\\u0119cej, prowadz\\u0105c dzia\\u0142alno\\u015b\\u0107 gospodarcz\\u0105 osoba bogatsza mo\\u017ce te\\u017c odliczy\\u0107 podatek naliczony przy zakupie np. komputera od tego, co sama musi zap\\u0142aci\\u0107. Nie pomaga fakt, \\u017ce Polska ma obok W\\u0119gier i Chorwacji <a href=\\"https://en.wikipedia.org/wiki/European_Union_value_added_tax\\">jedn\\u0105 z najwy\\u017cszych stawek VAT w regionie.</a></p><h2><b>Platforma mog\\u0142a, ale nie zmieni\\u0142a</b></h2><p>To za prezydentury Bronis\\u0142awa Komorowskiego rz\\u0105d Donalda Tuska podni\\u00f3s\\u0142 stawk\\u0119 VAT o 1 punkt procentowy, co zn\\u00f3w najbardziej uderzy\\u0142o w ubo\\u017cszych (podwy\\u017cka mia\\u0142a by\\u0107 tymczasowa, jednak rz\\u0105dy Prawa i Sprawiedliwo\\u015bci nie zrezygnowa\\u0142y z dodatkowych wp\\u0142yw\\u00f3w do bud\\u017cetu). Podpisuj\\u0105c ustaw\\u0119 powinien zna\\u0107 analizy, kt\\u00f3re dotycz\\u0105 wp\\u0142ywu VAT na poszczeg\\u00f3lne grupy p\\u0142atnik\\u00f3w. </p><p>A nawet je\\u015bli prezydent podziela <a href=\\"https://www.rp.pl/Podatek-dochodowy/302199996-Rolnicy-jakie-przychody-sa-obciazone-podatkiem-dochodowym.html\\">zdanie cz\\u0119\\u015bci ekspert\\u00f3w</a>, \\u017ce rycza\\u0142towy podatek rolny zamiast PIT i ubezpieczenie w KRUS zamiast ZUS to \\u201enieuzasadnione uprzywilejowanie\\u201d dla rolnik\\u00f3w, to powinien zastanowi\\u0107, si\\u0119 dlaczego <a href=\\"https://finanse.wp.pl/to-poczatek-konca-krus-6114118106986113a\\">mimo wielu przymiarek</a> Platforma nie zdecydowa\\u0142a si\\u0119 na likwidacj\\u0119 specjalnego rolniczego ubezpieczenia \\u2013 a nie oskar\\u017ca\\u0107 dzi\\u015b mieszka\\u0144c\\u00f3w wsi, \\u017ce \\u201enie p\\u0142ac\\u0105\\u201d podatk\\u00f3w.</p><p>Podtrzymywanie bezpodstawnej opinii, wedle kt\\u00f3rej ubo\\u017csze grupy paso\\u017cytuj\\u0105 na pracy bogatszych jest wyj\\u0105tkowo szkodliwe. Prowadzi do stygmatyzacji s\\u0142abiej zarabiaj\\u0105cych i ich rodzin. Bez nacisku spo\\u0142ecze\\u0144stwa na egzekwowanie progresji podatkowej najbogatsi b\\u0119d\\u0105 pomna\\u017ca\\u0107 sw\\u00f3j maj\\u0105tek kosztem publicznej opieki zdrowotnej, edukacji czy transportu \\u2013 oraz polskiej klasy \\u015bredniej.</p><p>Klasistowski j\\u0119zyk i bezduszna narracja, by \\u201ewzi\\u0105\\u0107 kredyt i zmieni\\u0107 prac\\u0119\\u201d, z kt\\u00f3rej korzysta\\u0142 Komorowski przed pora\\u017ck\\u0105 z Andrzejem Dud\\u0105, z pewno\\u015bci\\u0105 nie przysporz\\u0105 KE wyborc\\u00f3w w\\u015br\\u00f3d tych, kt\\u00f3rym w \\u017cyciu wiedzie si\\u0119 gorzej.</p>", "body_pl": "<p>Polska potrzebuje wolnych medi\\u00f3w. Wesprzyj nas, by\\u015bmy mogli pisa\\u0107 takie teksty dalej. <a href=\\"https://oko.press/wesprzyj/\\"><b>WSPIERAM &gt;&gt;</b></a></p><p>27 maja, dzie\\u0144 po wyborach do europarlamentu, Bronis\\u0142aw Komorowski komentowa\\u0142 ich wynik w audycji Onet Rano. Diagnozuj\\u0105c \\u017ar\\u00f3d\\u0142o zwyci\\u0119stwa PiS, kt\\u00f3re w skali kraju zdoby\\u0142o 45,3 proc poparcia, by\\u0142y prezydent Polski stwierdzi\\u0142, \\u017ce \\u201ePiS wygrywa\\u0142o w tych kr\\u0119gach wyborczych, kt\\u00f3re nie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d.</p><p><b><i>Jest charakterystyczne i warte przeanalizowania to, \\u017ce PiS wygrywa\\u0142o w tych kr\\u0119gach wyborczych, kt\\u00f3re nie p\\u0142ac\\u0105 podatk\\u00f3w</i></b></p><p><a href=\\"https://oko.press/komorowski-bronislaw/\\">Bronis\\u0142aw Komorowski</a>, <a href=\\"https://wiadomosci.onet.pl/tylko-w-onecie/wybory-do-europarlamentu-2019-bronislaw-komorowski-komentuje/rdvgp4l\\">Onet Rano</a> - 27/05/2019</p><h4><b>PODATKI P\\u0141ACIMY WSZYSCY. A UBODZY POLACY (CZYLI WYBORCY PIS-U) NAWET WI\\u0118KSZ\\u0104 CZ\\u0118\\u015a\\u0106 SWOICH PRZYCHOD\\u00d3W, NI\\u017b ZAMO\\u017bNIEJSI OBYWATELE.</b></h4><p>Komorowski pokaza\\u0142, \\u017ce s\\u0142abo orientuje si\\u0119 w polskich realiach podatkowych oraz sytuacji mniej od siebie zamo\\u017cnych obywateli. Powtarza krzywdz\\u0105ce stereotypy i odwraca wzrok od prawdziwych problem\\u00f3w polskiej gospodarki.</p><h2><b>Przesta\\u0144cie by\\u0107 biedni!</b></h2><p>Zacznijmy od tego, sk\\u0105d by\\u0142y prezydent wyci\\u0105ga takie wnioski. Danych o dochodach g\\u0142osuj\\u0105cych nie zbiera bowiem ani Pa\\u0144stwowa Komisja Wyborcza (PKW), ani realizuj\\u0105ca <a href=\\"https://oko.press/tajemnice-exit-polls-oko-press-ujawnia-czego-sie-dowiemy-dzis-o-21-00/\\">sonda\\u017ce exit poll</a>\\u00a0firma IPSOS. Z informacji tej pierwszej wiadomo jednak, jak g\\u0142osowa\\u0142y poszczeg\\u00f3lne powiaty i wojew\\u00f3dztwa, a tej drugiej \\u2013 przedstawiciele poszczeg\\u00f3lnych grup zawodowych.</p><p>PiS zdobywa\\u0142o g\\u0142osy przede wszystkim w d\\u0142ugotrwale ubo\\u017cszych wojew\\u00f3dztwach Polski wschodniej, centralnej i po\\u0142udniowej:</p><ul><li>Lubelskim (59 proc. g\\u0142os\\u00f3w za PiS)</li><li>\\u0141\\u00f3dzkim (46,7 proc.)</li><li>Ma\\u0142opolskim (55,8 proc.)</li><li>Mazowieckim (42,9 proc. \\u2013 przeciwnie g\\u0142osowa\\u0142a tylko bogata aglomeracja warszawska)</li><li>Podlaskim (54,4 proc.)</li><li>Podkarpackim (65,1 proc.)</li><li>\\u015al\\u0105skim (43,3 proc.)</li><li>\\u015awi\\u0119tokrzyskim (57,85 proc.)</li><li>Warmi\\u0144sko-Mazurskim (42,15 proc.)</li></ul><p>Taki stan rzeczy powtarza si\\u0119 w tych regionach od lat. Wytar\\u0142 si\\u0119 ju\\u017c wyborczy \\u017cart, \\u017ce po wynikach \\u201ewida\\u0107 granice zabor\\u00f3w\\u201d.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382407/?utm_source=showcase&amp;utm_campaign=visualisation/382407\\"><b>A Flourish data visualisation</b></a></p><p>Gdy bra\\u0107 pod uwag\\u0119 demografi\\u0119, na PiS zag\\u0142osowali:</p><ul><li>Bezrobotni (54,5 proc. g\\u0142os\\u00f3w za PiS)</li><li>Emeryci (56,4 proc.)</li><li>Rolnicy (72,3 proc.)</li><li>Robotnicy (59,8 proc.)</li></ul><p>To grupy gorzej sytuowane ni\\u017c przedsi\\u0119biorcy czy specjali\\u015bci, kt\\u00f3re w badaniu IPSOS deklarowa\\u0142y poparcie dla Koalicji Obywatelskiej. A z przedwyborczego sonda\\u017cu OKO.press wynika, \\u017ce to</p><p><b>w\\u015br\\u00f3d najmniej zarabiaj\\u0105cych poparcie dla Prawa i Sprawiedliwo\\u015bci by\\u0142o najwy\\u017csze.</b></p><p>PiS wygra\\u0142 jedynie w grupach os\\u00f3b zarabiaj\\u0105cych do 1500 z\\u0142 oraz 1501-2500 z\\u0142 (poparcie odpowiednio 55 i 48 proc.), gdy we wszystkich zamo\\u017cniejszych prowadzi\\u0142a Koalicja.</p><p>Prezydent Komorowski wysy\\u0142a zatem komunikat, \\u017ce wyborcy PiS paso\\u017cytuj\\u0105 na podatkach p\\u0142aconych przez wyborc\\u00f3w innych partii. Nie m\\u00f3wi wprost, o kogo chodzi, ale \\u0142atwo wywnioskowa\\u0107, \\u017ce ma na my\\u015bli biednych.</p><h2><b>Jak nie p\\u0142aci\\u0107 podatk\\u00f3w</b></h2><p>M\\u00f3wi\\u0105c, \\u017ce jaki\\u015b kr\\u0105g \\u201enie p\\u0142aci podatk\\u00f3w\\u201d, Bronis\\u0142aw Komorowski u\\u017cywa formy nazywanej w logice kwantyfikatorem wielkim, sugeruj\\u0105c, \\u017ce ka\\u017cdy przedstawiciel \\u201ekr\\u0119g\\u00f3w\\u201d g\\u0142osuj\\u0105cych na PiS nie p\\u0142aci podatk\\u00f3w. Jest wr\\u0119cz przeciwnie: ka\\u017cdy wyborca PiS, nawet bezrobotny, podatki p\\u0142aci. Co wi\\u0119cej, robi to te\\u017c wyborca skrajnego wolnorynkowca Janusza Korwin-Mikkego, cho\\u0107 pewnie bardzo nie chce.</p><p>Opr\\u00f3cz podatk\\u00f3w dochodowych PIT i CIT, w Polsce obowi\\u0105zuj\\u0105 bowiem i inne daniny. Najpopularniejszy z nich to VAT, czyli podatek od towar\\u00f3w i us\\u0142ug, wliczony zazwyczaj w ich cen\\u0119 przy zakupie \\u2013 odpowiada za ok. 40 proc. wp\\u0142yw\\u00f3w do bud\\u017cetu pa\\u0144stwa. Z kolei rolnicy zamiast PIT p\\u0142ac\\u0105 podatek rolny, zale\\u017cny nie od przychod\\u00f3w, a od posiadanego area\\u0142u i cen zbo\\u017ca. Jest te\\u017c akcyza, kt\\u00f3ra ma zniech\\u0119ca\\u0107 do zakupu okre\\u015blonych produkt\\u00f3w (np. alkoholu, papieros\\u00f3w czy paliw kopalnych), a tak\\u017ce podatki od nieruchomo\\u015bci, od spadk\\u00f3w i darowizn czy te\\u017c czynno\\u015bci cywilnoprawnych \\u2013 i jeszcze kilka innych.</p><p>Przyjmijmy, \\u017ce prezydent u\\u017cy\\u0142 skr\\u00f3tu my\\u015blowego, a chodzi\\u0142o mu o grupy, kt\\u00f3re wp\\u0142acaj\\u0105 relatywnie mniej do wsp\\u00f3lnej kasy, bo zarabiaj\\u0105 mniej \\u2013 jako \\u017ce wykonuj\\u0105 gorzej p\\u0142atne zawody, s\\u0105 zale\\u017cni od wyp\\u0142at socjalnych lub mieszkaj\\u0105 w biedniejszym regionie.</p><h2><b>Ulgi dla bogatych</b></h2><p>Wci\\u0105\\u017c jednak prezydent mija si\\u0119 z prawd\\u0105. Z <a href=\\"https://www.gov.pl/web/finanse/wybrane-aspekty-systemu-podatkowo-skladkowego-na-podstawie-danych-pit-i-zus-2016\\">dokumentu Ministerstwa Finans\\u00f3w</a><i>Wybrane aspekty systemu podatkowo-sk\\u0142adkowego na podstawie danych PIT i ZUS 2016</i> wynika bowiem, \\u017ce</p><p><b>grupy najs\\u0142abiej zarabiaj\\u0105ce oddaj\\u0105 pa\\u0144stwu</b> <b>wi\\u0119ksz\\u0105</b> <b>cz\\u0119\\u015b\\u0107 swojego przychodu ni\\u017c lepiej sytuowani.</b> </p><p>Osoby zarabiaj\\u0105ce do 10 tys. z\\u0142 brutto rocznie przekazuj\\u0105 w podatku dochodowym i sk\\u0142adkach a\\u017c 59,9 proc. swoich przychod\\u00f3w. Drug\\u0105 pod wzgl\\u0119dem obci\\u0105\\u017ce\\u0144 grup\\u0105 jest klasa \\u015brednia \\u2013 zarabiaj\\u0105c 20 do 100 tys. z\\u0142 brutto oddajemy mi\\u0119dzy 11,5 a 18,6 punktu procentowego wi\\u0119cej ni\\u017c milionerzy. Ci ostatni sk\\u0142adaj\\u0105 si\\u0119 na us\\u0142ugi publiczne jedynie w 20,4 procent przychodu.</p><p>Dzieje si\\u0119 tak, gdy\\u017c najlepiej zarabiaj\\u0105cym op\\u0142aca si\\u0119 korzysta\\u0107 z 19-procentowego podatku liniowego, aby unikn\\u0105\\u0107 wej\\u015bcia w drugi \\u00a0pr\\u00f3g podatkowy (32-procentow\\u0105 stawk\\u0119 p\\u0142aci zaledwie ok. 3 proc. Polak\\u00f3w). Do tego\\u00a0sk\\u0142adki ZUS mniej wi\\u0119cej w\\u0142a\\u015bnie od bariery 100 tys. z\\u0142 przychodu nie rosn\\u0105 proporcjonalnie do przychodu. Podobnie ze sk\\u0142adk\\u0105 zdrowotn\\u0105.</p><p>Nawet je\\u015bli mniejszy procent zarobk\\u00f3w bogacza to i tak wi\\u0119cej w liczbie bezwzgl\\u0119dnej, to</p><p><b>pa\\u0144stwo utrzymuje si\\u0119 g\\u0142\\u00f3wnie dzi\\u0119ki \\u015brednio i s\\u0142abo zarabiaj\\u0105cym.</b></p><h2><b>Biedny dwa razy p\\u0142aci</b></h2><p>Sytuacj\\u0119 mniej maj\\u0119tnych pogarsza VAT, gdy\\u017c zn\\u00f3w przeznaczaj\\u0105 na podatek wi\\u0119kszy odsetek przychod\\u00f3w, ni\\u017c bogaci.</p><p><b>\\u201eNajbiedniejsze 10 proc. p\\u0142aci VAT o warto\\u015bci odpowiadaj\\u0105cej przeci\\u0119tnie 16,3 proc. swojego dochodu, a najbogatsze 10 proc. Polak\\u00f3w \\u2013 6,8 proc.\\u201d</b></p><p>\\u2013 wyliczy\\u0142a w 2015 r. fundacja <a href=\\"http://www.cenea.org.pl/images/stories/pdf/press_releases/raport1_vat_press.pdf\\">Centrum Analiz Ekonomicznych</a>. </p><p>Dzieje si\\u0119 tak, bo wi\\u0119ksz\\u0105 cz\\u0119\\u015b\\u0107 domowych bud\\u017cet\\u00f3w zajmuje u biedniejszych konsumpcja bie\\u017c\\u0105ca. Osoba zarabiaj\\u0105ca 10 razy wi\\u0119cej nie zje bowiem 5 razy wi\\u0119cej bochenk\\u00f3w 2-krotnie dro\\u017cszego chleba dziennie, nie zu\\u017cywa te\\u017c 10 razy wi\\u0119cej pr\\u0105du. Co wi\\u0119cej, prowadz\\u0105c dzia\\u0142alno\\u015b\\u0107 gospodarcz\\u0105 osoba bogatsza mo\\u017ce te\\u017c odliczy\\u0107 podatek naliczony przy zakupie np. komputera od tego, co sama musi zap\\u0142aci\\u0107. Nie pomaga fakt, \\u017ce Polska ma obok W\\u0119gier i Chorwacji <a href=\\"https://en.wikipedia.org/wiki/European_Union_value_added_tax\\">jedn\\u0105 z najwy\\u017cszych stawek VAT w regionie.</a></p><h2><b>Platforma mog\\u0142a, ale nie zmieni\\u0142a</b></h2><p>To za prezydentury Bronis\\u0142awa Komorowskiego rz\\u0105d Donalda Tuska podni\\u00f3s\\u0142 stawk\\u0119 VAT o 1 punkt procentowy, co zn\\u00f3w najbardziej uderzy\\u0142o w ubo\\u017cszych (podwy\\u017cka mia\\u0142a by\\u0107 tymczasowa, jednak rz\\u0105dy Prawa i Sprawiedliwo\\u015bci nie zrezygnowa\\u0142y z dodatkowych wp\\u0142yw\\u00f3w do bud\\u017cetu). Podpisuj\\u0105c ustaw\\u0119 powinien zna\\u0107 analizy, kt\\u00f3re dotycz\\u0105 wp\\u0142ywu VAT na poszczeg\\u00f3lne grupy p\\u0142atnik\\u00f3w. </p><p>A nawet je\\u015bli prezydent podziela <a href=\\"https://www.rp.pl/Podatek-dochodowy/302199996-Rolnicy-jakie-przychody-sa-obciazone-podatkiem-dochodowym.html\\">zdanie cz\\u0119\\u015bci ekspert\\u00f3w</a>, \\u017ce rycza\\u0142towy podatek rolny zamiast PIT i ubezpieczenie w KRUS zamiast ZUS to \\u201enieuzasadnione uprzywilejowanie\\u201d dla rolnik\\u00f3w, to powinien zastanowi\\u0107, si\\u0119 dlaczego <a href=\\"https://finanse.wp.pl/to-poczatek-konca-krus-6114118106986113a\\">mimo wielu przymiarek</a> Platforma nie zdecydowa\\u0142a si\\u0119 na likwidacj\\u0119 specjalnego rolniczego ubezpieczenia \\u2013 a nie oskar\\u017ca\\u0107 dzi\\u015b mieszka\\u0144c\\u00f3w wsi, \\u017ce \\u201enie p\\u0142ac\\u0105\\u201d podatk\\u00f3w.</p><p>Podtrzymywanie bezpodstawnej opinii, wedle kt\\u00f3rej ubo\\u017csze grupy paso\\u017cytuj\\u0105 na pracy bogatszych jest wyj\\u0105tkowo szkodliwe. Prowadzi do stygmatyzacji s\\u0142abiej zarabiaj\\u0105cych i ich rodzin. Bez nacisku spo\\u0142ecze\\u0144stwa na egzekwowanie progresji podatkowej najbogatsi b\\u0119d\\u0105 pomna\\u017ca\\u0107 sw\\u00f3j maj\\u0105tek kosztem publicznej opieki zdrowotnej, edukacji czy transportu \\u2013 oraz polskiej klasy \\u015bredniej.</p><p>Klasistowski j\\u0119zyk i bezduszna narracja, by \\u201ewzi\\u0105\\u0107 kredyt i zmieni\\u0107 prac\\u0119\\u201d, z kt\\u00f3rej korzysta\\u0142 Komorowski przed pora\\u017ck\\u0105 z Andrzejem Dud\\u0105, z pewno\\u015bci\\u0105 nie przysporz\\u0105 KE wyborc\\u00f3w w\\u015br\\u00f3d tych, kt\\u00f3rym w \\u017cyciu wiedzie si\\u0119 gorzej.</p>", "body_en": "<p>Polska potrzebuje wolnych medi\\u00f3w. Wesprzyj nas, by\\u015bmy mogli pisa\\u0107 takie teksty dalej. <a href=\\"https://oko.press/wesprzyj/\\"><b>WSPIERAM &gt;&gt;</b></a></p><p>27 maja, dzie\\u0144 po wyborach do europarlamentu, Bronis\\u0142aw Komorowski komentowa\\u0142 ich wynik w audycji Onet Rano. Diagnozuj\\u0105c \\u017ar\\u00f3d\\u0142o zwyci\\u0119stwa PiS, kt\\u00f3re w skali kraju zdoby\\u0142o 45,3 proc poparcia, by\\u0142y prezydent Polski stwierdzi\\u0142, \\u017ce \\u201ePiS wygrywa\\u0142o w tych kr\\u0119gach wyborczych, kt\\u00f3re nie p\\u0142ac\\u0105 podatk\\u00f3w\\u201d.</p><p><b><i>Jest charakterystyczne i warte przeanalizowania to, \\u017ce PiS wygrywa\\u0142o w tych kr\\u0119gach wyborczych, kt\\u00f3re nie p\\u0142ac\\u0105 podatk\\u00f3w</i></b></p><p><a href=\\"https://oko.press/komorowski-bronislaw/\\">Bronis\\u0142aw Komorowski</a>, <a href=\\"https://wiadomosci.onet.pl/tylko-w-onecie/wybory-do-europarlamentu-2019-bronislaw-komorowski-komentuje/rdvgp4l\\">Onet Rano</a> - 27/05/2019</p><h4><b>PODATKI P\\u0141ACIMY WSZYSCY. A UBODZY POLACY (CZYLI WYBORCY PIS-U) NAWET WI\\u0118KSZ\\u0104 CZ\\u0118\\u015a\\u0106 SWOICH PRZYCHOD\\u00d3W, NI\\u017b ZAMO\\u017bNIEJSI OBYWATELE.</b></h4><p>Komorowski pokaza\\u0142, \\u017ce s\\u0142abo orientuje si\\u0119 w polskich realiach podatkowych oraz sytuacji mniej od siebie zamo\\u017cnych obywateli. Powtarza krzywdz\\u0105ce stereotypy i odwraca wzrok od prawdziwych problem\\u00f3w polskiej gospodarki.</p><h2><b>Przesta\\u0144cie by\\u0107 biedni!</b></h2><p>Zacznijmy od tego, sk\\u0105d by\\u0142y prezydent wyci\\u0105ga takie wnioski. Danych o dochodach g\\u0142osuj\\u0105cych nie zbiera bowiem ani Pa\\u0144stwowa Komisja Wyborcza (PKW), ani realizuj\\u0105ca <a href=\\"https://oko.press/tajemnice-exit-polls-oko-press-ujawnia-czego-sie-dowiemy-dzis-o-21-00/\\">sonda\\u017ce exit poll</a>\\u00a0firma IPSOS. Z informacji tej pierwszej wiadomo jednak, jak g\\u0142osowa\\u0142y poszczeg\\u00f3lne powiaty i wojew\\u00f3dztwa, a tej drugiej \\u2013 przedstawiciele poszczeg\\u00f3lnych grup zawodowych.</p><p>PiS zdobywa\\u0142o g\\u0142osy przede wszystkim w d\\u0142ugotrwale ubo\\u017cszych wojew\\u00f3dztwach Polski wschodniej, centralnej i po\\u0142udniowej:</p><ul><li>Lubelskim (59 proc. g\\u0142os\\u00f3w za PiS)</li><li>\\u0141\\u00f3dzkim (46,7 proc.)</li><li>Ma\\u0142opolskim (55,8 proc.)</li><li>Mazowieckim (42,9 proc. \\u2013 przeciwnie g\\u0142osowa\\u0142a tylko bogata aglomeracja warszawska)</li><li>Podlaskim (54,4 proc.)</li><li>Podkarpackim (65,1 proc.)</li><li>\\u015al\\u0105skim (43,3 proc.)</li><li>\\u015awi\\u0119tokrzyskim (57,85 proc.)</li><li>Warmi\\u0144sko-Mazurskim (42,15 proc.)</li></ul><p>Taki stan rzeczy powtarza si\\u0119 w tych regionach od lat. Wytar\\u0142 si\\u0119 ju\\u017c wyborczy \\u017cart, \\u017ce po wynikach \\u201ewida\\u0107 granice zabor\\u00f3w\\u201d.</p><p><b>  </b><a href=\\"https://public.flourish.studio/visualisation/382407/?utm_source=showcase&amp;utm_campaign=visualisation/382407\\"><b>A Flourish data visualisation</b></a></p><p>Gdy bra\\u0107 pod uwag\\u0119 demografi\\u0119, na PiS zag\\u0142osowali:</p><ul><li>Bezrobotni (54,5 proc. g\\u0142os\\u00f3w za PiS)</li><li>Emeryci (56,4 proc.)</li><li>Rolnicy (72,3 proc.)</li><li>Robotnicy (59,8 proc.)</li></ul><p>To grupy gorzej sytuowane ni\\u017c przedsi\\u0119biorcy czy specjali\\u015bci, kt\\u00f3re w badaniu IPSOS deklarowa\\u0142y poparcie dla Koalicji Obywatelskiej. A z przedwyborczego sonda\\u017cu OKO.press wynika, \\u017ce to</p><p><b>w\\u015br\\u00f3d najmniej zarabiaj\\u0105cych poparcie dla Prawa i Sprawiedliwo\\u015bci by\\u0142o najwy\\u017csze.</b></p><p>PiS wygra\\u0142 jedynie w grupach os\\u00f3b zarabiaj\\u0105cych do 1500 z\\u0142 oraz 1501-2500 z\\u0142 (poparcie odpowiednio 55 i 48 proc.), gdy we wszystkich zamo\\u017cniejszych prowadzi\\u0142a Koalicja.</p><p>Prezydent Komorowski wysy\\u0142a zatem komunikat, \\u017ce wyborcy PiS paso\\u017cytuj\\u0105 na podatkach p\\u0142aconych przez wyborc\\u00f3w innych partii. Nie m\\u00f3wi wprost, o kogo chodzi, ale \\u0142atwo wywnioskowa\\u0107, \\u017ce ma na my\\u015bli biednych.</p><h2><b>Jak nie p\\u0142aci\\u0107 podatk\\u00f3w</b></h2><p>M\\u00f3wi\\u0105c, \\u017ce jaki\\u015b kr\\u0105g \\u201enie p\\u0142aci podatk\\u00f3w\\u201d, Bronis\\u0142aw Komorowski u\\u017cywa formy nazywanej w logice kwantyfikatorem wielkim, sugeruj\\u0105c, \\u017ce ka\\u017cdy przedstawiciel \\u201ekr\\u0119g\\u00f3w\\u201d g\\u0142osuj\\u0105cych na PiS nie p\\u0142aci podatk\\u00f3w. Jest wr\\u0119cz przeciwnie: ka\\u017cdy wyborca PiS, nawet bezrobotny, podatki p\\u0142aci. Co wi\\u0119cej, robi to te\\u017c wyborca skrajnego wolnorynkowca Janusza Korwin-Mikkego, cho\\u0107 pewnie bardzo nie chce.</p><p>Opr\\u00f3cz podatk\\u00f3w dochodowych PIT i CIT, w Polsce obowi\\u0105zuj\\u0105 bowiem i inne daniny. Najpopularniejszy z nich to VAT, czyli podatek od towar\\u00f3w i us\\u0142ug, wliczony zazwyczaj w ich cen\\u0119 przy zakupie \\u2013 odpowiada za ok. 40 proc. wp\\u0142yw\\u00f3w do bud\\u017cetu pa\\u0144stwa. Z kolei rolnicy zamiast PIT p\\u0142ac\\u0105 podatek rolny, zale\\u017cny nie od przychod\\u00f3w, a od posiadanego area\\u0142u i cen zbo\\u017ca. Jest te\\u017c akcyza, kt\\u00f3ra ma zniech\\u0119ca\\u0107 do zakupu okre\\u015blonych produkt\\u00f3w (np. alkoholu, papieros\\u00f3w czy paliw kopalnych), a tak\\u017ce podatki od nieruchomo\\u015bci, od spadk\\u00f3w i darowizn czy te\\u017c czynno\\u015bci cywilnoprawnych \\u2013 i jeszcze kilka innych.</p><p>Przyjmijmy, \\u017ce prezydent u\\u017cy\\u0142 skr\\u00f3tu my\\u015blowego, a chodzi\\u0142o mu o grupy, kt\\u00f3re wp\\u0142acaj\\u0105 relatywnie mniej do wsp\\u00f3lnej kasy, bo zarabiaj\\u0105 mniej \\u2013 jako \\u017ce wykonuj\\u0105 gorzej p\\u0142atne zawody, s\\u0105 zale\\u017cni od wyp\\u0142at socjalnych lub mieszkaj\\u0105 w biedniejszym regionie.</p><h2><b>Ulgi dla bogatych</b></h2><p>Wci\\u0105\\u017c jednak prezydent mija si\\u0119 z prawd\\u0105. Z <a href=\\"https://www.gov.pl/web/finanse/wybrane-aspekty-systemu-podatkowo-skladkowego-na-podstawie-danych-pit-i-zus-2016\\">dokumentu Ministerstwa Finans\\u00f3w</a><i>Wybrane aspekty systemu podatkowo-sk\\u0142adkowego na podstawie danych PIT i ZUS 2016</i> wynika bowiem, \\u017ce</p><p><b>grupy najs\\u0142abiej zarabiaj\\u0105ce oddaj\\u0105 pa\\u0144stwu</b> <b>wi\\u0119ksz\\u0105</b> <b>cz\\u0119\\u015b\\u0107 swojego przychodu ni\\u017c lepiej sytuowani.</b> </p><p>Osoby zarabiaj\\u0105ce do 10 tys. z\\u0142 brutto rocznie przekazuj\\u0105 w podatku dochodowym i sk\\u0142adkach a\\u017c 59,9 proc. swoich przychod\\u00f3w. Drug\\u0105 pod wzgl\\u0119dem obci\\u0105\\u017ce\\u0144 grup\\u0105 jest klasa \\u015brednia \\u2013 zarabiaj\\u0105c 20 do 100 tys. z\\u0142 brutto oddajemy mi\\u0119dzy 11,5 a 18,6 punktu procentowego wi\\u0119cej ni\\u017c milionerzy. Ci ostatni sk\\u0142adaj\\u0105 si\\u0119 na us\\u0142ugi publiczne jedynie w 20,4 procent przychodu.</p><p>Dzieje si\\u0119 tak, gdy\\u017c najlepiej zarabiaj\\u0105cym op\\u0142aca si\\u0119 korzysta\\u0107 z 19-procentowego podatku liniowego, aby unikn\\u0105\\u0107 wej\\u015bcia w drugi \\u00a0pr\\u00f3g podatkowy (32-procentow\\u0105 stawk\\u0119 p\\u0142aci zaledwie ok. 3 proc. Polak\\u00f3w). Do tego\\u00a0sk\\u0142adki ZUS mniej wi\\u0119cej w\\u0142a\\u015bnie od bariery 100 tys. z\\u0142 przychodu nie rosn\\u0105 proporcjonalnie do przychodu. Podobnie ze sk\\u0142adk\\u0105 zdrowotn\\u0105.</p><p>Nawet je\\u015bli mniejszy procent zarobk\\u00f3w bogacza to i tak wi\\u0119cej w liczbie bezwzgl\\u0119dnej, to</p><p><b>pa\\u0144stwo utrzymuje si\\u0119 g\\u0142\\u00f3wnie dzi\\u0119ki \\u015brednio i s\\u0142abo zarabiaj\\u0105cym.</b></p><h2><b>Biedny dwa razy p\\u0142aci</b></h2><p>Sytuacj\\u0119 mniej maj\\u0119tnych pogarsza VAT, gdy\\u017c zn\\u00f3w przeznaczaj\\u0105 na podatek wi\\u0119kszy odsetek przychod\\u00f3w, ni\\u017c bogaci.</p><p><b>\\u201eNajbiedniejsze 10 proc. p\\u0142aci VAT o warto\\u015bci odpowiadaj\\u0105cej przeci\\u0119tnie 16,3 proc. swojego dochodu, a najbogatsze 10 proc. Polak\\u00f3w \\u2013 6,8 proc.\\u201d</b></p><p>\\u2013 wyliczy\\u0142a w 2015 r. fundacja <a href=\\"http://www.cenea.org.pl/images/stories/pdf/press_releases/raport1_vat_press.pdf\\">Centrum Analiz Ekonomicznych</a>. </p><p>Dzieje si\\u0119 tak, bo wi\\u0119ksz\\u0105 cz\\u0119\\u015b\\u0107 domowych bud\\u017cet\\u00f3w zajmuje u biedniejszych konsumpcja bie\\u017c\\u0105ca. Osoba zarabiaj\\u0105ca 10 razy wi\\u0119cej nie zje bowiem 5 razy wi\\u0119cej bochenk\\u00f3w 2-krotnie dro\\u017cszego chleba dziennie, nie zu\\u017cywa te\\u017c 10 razy wi\\u0119cej pr\\u0105du. Co wi\\u0119cej, prowadz\\u0105c dzia\\u0142alno\\u015b\\u0107 gospodarcz\\u0105 osoba bogatsza mo\\u017ce te\\u017c odliczy\\u0107 podatek naliczony przy zakupie np. komputera od tego, co sama musi zap\\u0142aci\\u0107. Nie pomaga fakt, \\u017ce Polska ma obok W\\u0119gier i Chorwacji <a href=\\"https://en.wikipedia.org/wiki/European_Union_value_added_tax\\">jedn\\u0105 z najwy\\u017cszych stawek VAT w regionie.</a></p><h2><b>Platforma mog\\u0142a, ale nie zmieni\\u0142a</b></h2><p>To za prezydentury Bronis\\u0142awa Komorowskiego rz\\u0105d Donalda Tuska podni\\u00f3s\\u0142 stawk\\u0119 VAT o 1 punkt procentowy, co zn\\u00f3w najbardziej uderzy\\u0142o w ubo\\u017cszych (podwy\\u017cka mia\\u0142a by\\u0107 tymczasowa, jednak rz\\u0105dy Prawa i Sprawiedliwo\\u015bci nie zrezygnowa\\u0142y z dodatkowych wp\\u0142yw\\u00f3w do bud\\u017cetu). Podpisuj\\u0105c ustaw\\u0119 powinien zna\\u0107 analizy, kt\\u00f3re dotycz\\u0105 wp\\u0142ywu VAT na poszczeg\\u00f3lne grupy p\\u0142atnik\\u00f3w. </p><p>A nawet je\\u015bli prezydent podziela <a href=\\"https://www.rp.pl/Podatek-dochodowy/302199996-Rolnicy-jakie-przychody-sa-obciazone-podatkiem-dochodowym.html\\">zdanie cz\\u0119\\u015bci ekspert\\u00f3w</a>, \\u017ce rycza\\u0142towy podatek rolny zamiast PIT i ubezpieczenie w KRUS zamiast ZUS to \\u201enieuzasadnione uprzywilejowanie\\u201d dla rolnik\\u00f3w, to powinien zastanowi\\u0107, si\\u0119 dlaczego <a href=\\"https://finanse.wp.pl/to-poczatek-konca-krus-6114118106986113a\\">mimo wielu przymiarek</a> Platforma nie zdecydowa\\u0142a si\\u0119 na likwidacj\\u0119 specjalnego rolniczego ubezpieczenia \\u2013 a nie oskar\\u017ca\\u0107 dzi\\u015b mieszka\\u0144c\\u00f3w wsi, \\u017ce \\u201enie p\\u0142ac\\u0105\\u201d podatk\\u00f3w.</p><p>Podtrzymywanie bezpodstawnej opinii, wedle kt\\u00f3rej ubo\\u017csze grupy paso\\u017cytuj\\u0105 na pracy bogatszych jest wyj\\u0105tkowo szkodliwe. Prowadzi do stygmatyzacji s\\u0142abiej zarabiaj\\u0105cych i ich rodzin. Bez nacisku spo\\u0142ecze\\u0144stwa na egzekwowanie progresji podatkowej najbogatsi b\\u0119d\\u0105 pomna\\u017ca\\u0107 sw\\u00f3j maj\\u0105tek kosztem publicznej opieki zdrowotnej, edukacji czy transportu \\u2013 oraz polskiej klasy \\u015bredniej.</p><p>Klasistowski j\\u0119zyk i bezduszna narracja, by \\u201ewzi\\u0105\\u0107 kredyt i zmieni\\u0107 prac\\u0119\\u201d, z kt\\u00f3rej korzysta\\u0142 Komorowski przed pora\\u017ck\\u0105 z Andrzejem Dud\\u0105, z pewno\\u015bci\\u0105 nie przysporz\\u0105 KE wyborc\\u00f3w w\\u015br\\u00f3d tych, kt\\u00f3rym w \\u017cyciu wiedzie si\\u0119 gorzej.</p>", "photo": 14, "publication_date": "2019-05-29"}	\N	12	1
17	f	2019-05-29 09:36:38.175274+02	{"pk": 14, "path": "00010001000100030004", "depth": 5, "numchild": 0, "title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_pl": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_en": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "draft_title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "slug": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_pl": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_en": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "content_type": 34, "live": false, "has_unpublished_changes": true, "url_path": "home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_en": "home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2019-05-29T07:36:32.593Z", "live_revision": null, "headline": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_pl": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_en": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "body": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_pl": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_en": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "photo": 16, "publication_date": "2019-05-29"}	\N	14	1
15	f	2019-05-29 09:34:59.769405+02	{"pk": 13, "path": "00010001000100030003", "depth": 5, "numchild": 0, "title": "Wa\\u017c\\u0105 si\\u0119 losy 180 wolnych kr\\u00f3w. G\\u0142\\u00f3wny Lekarz Weterynarii podtrzyma\\u0142 decyzj\\u0119 o ich zabiciu", "title_pl": "Wa\\u017c\\u0105 si\\u0119 losy 180 wolnych kr\\u00f3w. G\\u0142\\u00f3wny Lekarz Weterynarii podtrzyma\\u0142 decyzj\\u0119 o ich zabiciu", "title_en": "Wa\\u017c\\u0105 si\\u0119 losy 180 wolnych kr\\u00f3w. G\\u0142\\u00f3wny Lekarz Weterynarii podtrzyma\\u0142 decyzj\\u0119 o ich zabiciu", "draft_title": "Wa\\u017c\\u0105 si\\u0119 losy 180 wolnych kr\\u00f3w. G\\u0142\\u00f3wny Lekarz Weterynarii podtrzyma\\u0142 decyzj\\u0119 o ich zabiciu", "slug": "wa\\u017c\\u0105-si\\u0119-losy-180-wolnych-kr\\u00f3w-g\\u0142\\u00f3wny-lekarz-weterynarii-podtrzyma\\u0142-decyzj\\u0119-o-ich-zabiciu", "slug_pl": "wa\\u017c\\u0105-si\\u0119-losy-180-wolnych-kr\\u00f3w-g\\u0142\\u00f3wny-lekarz-weterynarii-podtrzyma\\u0142-decyzj\\u0119-o-ich-zabiciu", "slug_en": "wa\\u017c\\u0105-si\\u0119-losy-180-wolnych-kr\\u00f3w-g\\u0142\\u00f3wny-lekarz-weterynarii-podtrzyma\\u0142-decyzj\\u0119-o-ich-zabiciu", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/news/wa\\u017c\\u0105-si\\u0119-losy-180-wolnych-kr\\u00f3w-g\\u0142\\u00f3wny-lekarz-weterynarii-podtrzyma\\u0142-decyzj\\u0119-o-ich-zabiciu/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/wa\\u017c\\u0105-si\\u0119-losy-180-wolnych-kr\\u00f3w-g\\u0142\\u00f3wny-lekarz-weterynarii-podtrzyma\\u0142-decyzj\\u0119-o-ich-zabiciu/", "url_path_en": "home-page1/news/wa\\u017c\\u0105-si\\u0119-losy-180-wolnych-kr\\u00f3w-g\\u0142\\u00f3wny-lekarz-weterynarii-podtrzyma\\u0142-decyzj\\u0119-o-ich-zabiciu/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "headline": "Jednak walka o uratowanie wolnych kr\\u00f3w z Deszczna jeszcze nie zako\\u0144czona. Prawnicy si\\u0119 odwo\\u0142uj\\u0105 od decyzji s\\u0105du, kt\\u00f3ry przyklepa\\u0142 wniosek o zabicie stada, obro\\u0144cy zwierz\\u0105t koczuj\\u0105 obok stada pilnuj\\u0105c kr\\u00f3w. Pojawi\\u0142y si\\u0119 sygna\\u0142y, \\u017ce mo\\u017cliwa jest ingerencja Jaros\\u0142awa Kaczy\\u0144skiego. Przypomnijmy, \\u017ce w ca\\u0142ym kraju s\\u0105 ch\\u0119tni do przyj\\u0119cia wszystkich kr\\u00f3w", "headline_pl": "Jednak walka o uratowanie wolnych kr\\u00f3w z Deszczna jeszcze nie zako\\u0144czona. Prawnicy si\\u0119 odwo\\u0142uj\\u0105 od decyzji s\\u0105du, kt\\u00f3ry przyklepa\\u0142 wniosek o zabicie stada, obro\\u0144cy zwierz\\u0105t koczuj\\u0105 obok stada pilnuj\\u0105c kr\\u00f3w. Pojawi\\u0142y si\\u0119 sygna\\u0142y, \\u017ce mo\\u017cliwa jest ingerencja Jaros\\u0142awa Kaczy\\u0144skiego. Przypomnijmy, \\u017ce w ca\\u0142ym kraju s\\u0105 ch\\u0119tni do przyj\\u0119cia wszystkich kr\\u00f3w", "headline_en": "Jednak walka o uratowanie wolnych kr\\u00f3w z Deszczna jeszcze nie zako\\u0144czona. Prawnicy si\\u0119 odwo\\u0142uj\\u0105 od decyzji s\\u0105du, kt\\u00f3ry przyklepa\\u0142 wniosek o zabicie stada, obro\\u0144cy zwierz\\u0105t koczuj\\u0105 obok stada pilnuj\\u0105c kr\\u00f3w. Pojawi\\u0142y si\\u0119 sygna\\u0142y, \\u017ce mo\\u017cliwa jest ingerencja Jaros\\u0142awa Kaczy\\u0144skiego. Przypomnijmy, \\u017ce w ca\\u0142ym kraju s\\u0105 ch\\u0119tni do przyj\\u0119cia wszystkich kr\\u00f3w", "body": "<p>Krowy s\\u0105 troch\\u0119 nie\\u015bmia\\u0142e, ale w\\u0119sz\\u0105 ciekawie, kiedy od strony koczuj\\u0105cych nieopodal aktywist\\u00f3w zawieje wiatr. Odwa\\u017cniejsza grupka byczk\\u00f3w podchodzi bli\\u017cej. Pow\\u0105cha\\u0142y ju\\u017c jak pachn\\u0105 ludzie z Poznania, Szczecina, Pi\\u0142y, \\u0141odzi, Gda\\u0144ska czy Warszawy. Wszystko w b\\u0142ogim otoczeniu \\u0142\\u0105k Santockiego Zakola ko\\u0142o Ciecierzyc, przy r\\u00f3wnie b\\u0142ogiej nie\\u015bwiadomo\\u015bci wolno\\u015bciowych kr\\u00f3w, \\u017ce toczy si\\u0119 walka o ich \\u017cycie.</p><p>O historii kr\\u00f3w z gminy Deszczno niedaleko Gorzowa Wlk. pisali\\u015bmy ju\\u017c wielokrotnie. Mimo presji opinii publicznej, kt\\u00f3ra wstawi\\u0142a si\\u0119 za krowami i absurdalnych podstaw wydania przez Powiatowego Lekarza Weterynarii nakazu uboju kr\\u00f3w od kilkunastu lat \\u017cyj\\u0105cych wolno, w poniedzia\\u0142ek 28 maja G\\u0142\\u00f3wny Inspektorat Weterynarii wyda\\u0142 <a href=\\"https://www.wetgiw.gov.pl/main/aktualnosci/Komunikat-dotyczacy-stada-krow-przebywajacych-na-terenie-gminy-Deszczno-w-woj.-lubuskim-cd/idn:963?fbclid=IwAR0zII2fgrs0vXqYwd2oTaz8s2TP5rhZ1NSttZZdEOwuaCLtKc5osbVAfLs\\">komunikat</a>, w kt\\u00f3rym podtrzymuje decyzj\\u0119.</p><p>Obro\\u0144cy kr\\u00f3w walcz\\u0105 dalej, dzisiaj z\\u0142o\\u017cono do prokuratury<a href=\\"https://www.facebook.com/wimieniuzwierzat/videos/439996493443739/UzpfSTEyODAxODY4MDI6MTAyMTk1NjA0NjY3NDM4NDI/\\"> wiosek o kasacj\\u0119</a> od wyroku s\\u0105du, kt\\u00f3ry popar\\u0142 wniosek weterynarzy\\u00a0zabicia kr\\u00f3w uzasadniaj\\u0105c go przepisami ustawy o ochronie zwierz\\u0105t.</p><p><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>170 kr\\u00f3w \\u017cyje wolno i\\u00a0dziko w\\u00a0lubuskiem. Weterynarz i\\u00a0wojewoda chc\\u0105 je zabi\\u0107</b></a></h4><p><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>ROBERT JURSZO\\u00a0\\u00a06 MAJA 2019</b></a></p><p>Niespodziewanie pojawi\\u0142a si\\u0119 jednak nadzieja i sygna\\u0142y o zmianie podej\\u015bcia urz\\u0119dnik\\u00f3w. Mo\\u017cliwe, \\u017ce jest to wynik interwencji Jaros\\u0142awa Kaczy\\u0144skiego. Aktywi\\u015bci, kt\\u00f3rzy koczuj\\u0105 przy krowach od pi\\u0105tku, pe\\u0142ni\\u0105c warty w dzie\\u0144 i w nocy, wci\\u0105\\u017c boj\\u0105 si\\u0119 najgorszego. Sytuacja mo\\u017ce si\\u0119 zmieni\\u0107 w ka\\u017cdej chwili.</p><h2><b>Kr\\u00f3tka historia krowiej wolno\\u015bci</b></h2><p>O krowach z gminy Deszczno (woj. lubuskie) g\\u0142o\\u015bno zrobi\\u0142o si\\u0119 na pocz\\u0105tku maja, chocia\\u017c hasa\\u0142y dziko po lokalnych polach od kilkunastu lat. Ich w\\u0142a\\u015bciciel pewnego dnia po prostu je porzuci\\u0142, a one zacz\\u0119\\u0142y \\u017cy\\u0107 po swojemu. Stado rozros\\u0142o si\\u0119 do 185 osobnik\\u00f3w. S\\u0105 w dobrej formie, chocia\\u017c od lat nie by\\u0142y ewidencjonowane ani badane weterynaryjnie.</p><p>Krowy nie wiedzia\\u0142y niestety, \\u017ce prawo zabrania im takiej samowoli, a w urz\\u0119dniczych oczach nagle sta\\u0142y si\\u0119 zagro\\u017ceniem epidemiologicznym.\\u00a0Powiatowy Lekarz Weterynarii z Gorzowa Wielkopolskiego wyda\\u0142 nakaz u\\u015bmiercenia i zutylizowania zwierz\\u0105t, a s\\u0105d nakaza\\u0142 wykonanie decyzji.</p><p>Od tamtej pory toczy si\\u0119 nier\\u00f3wna walka: aktywi\\u015bci kontra biurokratyczna machina. Bo nie chodzi ju\\u017c nawet o to, \\u017ce z krowami nie ma co zrobi\\u0107. W ci\\u0105gu kilku dni od nag\\u0142o\\u015bnienia sprawy znalaz\\u0142y si\\u0119 osoby i organizacje, kt\\u00f3re gotowe s\\u0105 przyj\\u0105\\u0107 krowy na w\\u0142asne utrzymanie.</p><p><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>Dzikie krowy mo\\u017cna uratowa\\u0107. Nie tylko 185, ale\\u00a0nawet 500. Teraz wszystko w\\u00a0r\\u0119kach Lekarza Weterynarii</b></a></h4><p><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>ROBERT JURSZO\\u00a0\\u00a08 MAJA 2019</b></a></p><p>Wszystko wskazywa\\u0142o na to, \\u017ce krowi\\u0105 histori\\u0119 czeka szcz\\u0119\\u015bliwe zako\\u0144czenie. \\u201ePo raz pierwszy spo\\u0142ecze\\u0144stwo tak wyra\\u017anie upomnia\\u0142o si\\u0119 o prawo do \\u017cycia dla zwierz\\u0105t zwykle traktowanych tylko jako produkt w przemy\\u015ble mi\\u0119snym\\u201d \\u2013 m\\u00f3wi mec. Karolina Kuszlewicz, Rzeczniczka ds. Zwierz\\u0105t przy Polskim Towarzystwie Etycznym.Niestety, rze\\u017aniczej machiny tak \\u0142atwo si\\u0119 nie powstrzyma.</p><h2><b>Zutylizowa\\u0107</b></h2><p>\\u201eDecyzj\\u0105 Inspekcji Weterynaryjnej wolne krowy z wojew\\u00f3dztwa lubuskiego\\u00a0zostan\\u0105 zabite i zutylizowane. Egzekucja wykonana b\\u0119dzie tydzie\\u0144 po wyborach do Parlamentu Europejskiego\\u201d \\u2013 poinformowa\\u0142 na Twitterze Konrad Ku\\u017ami\\u0144ski z\\u00a0Dolno\\u015bl\\u0105skiego Inspektoratu Ochrony Zwierz\\u0105t. Informacje uzyska\\u0142<a href=\\"https://twitter.com/KuzminskiKonrad/status/1130952247083454466\\">\\u00a0nieoficjalnie</a>\\u00a0od jednego z pracownik\\u00f3w Powiatowego Inspektoratu Weterynarii, kt\\u00f3ry z obawy przed zwolnieniem wola\\u0142 pozosta\\u0107 anonimowy.</p><p>Wszystko wskazywa\\u0142o na to, \\u017ce urz\\u0119dnicy chcieli przeczeka\\u0107 okres medialnego zainteresowania tematem i zabi\\u0107 \\u201epo cichu\\u201d krowy, gdy oczy medi\\u00f3w skupione b\\u0119d\\u0105 na czym innym.</p><p><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>Dzikie krowy z\\u00a0lubuskiego mia\\u0142y zosta\\u0107 zabite w\\u00a0tajemnicy po\\u00a0eurowyborach. Ale\\u00a0si\\u0119 wyda\\u0142o</b></a></h4><p><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>ROBERT JURSZO\\u00a0\\u00a023 MAJA 2019</b></a></p><p>\\u201eKrowy pad\\u0142y ofiar\\u0105 zdecydowanie zbyt uproszczonego stosowania prawa\\u201d \\u2013 m\\u00f3wi OKO.press mec. Kuszlewicz, kt\\u00f3ra\\u00a0z\\u0142o\\u017cy\\u0142a ju\\u017c wniosek do Powiatowego Inspektoratu Weterynarii o uchylenie decyzji, do Wojew\\u00f3dzkiego Inspektoratu Weterynarii o stwierdzenie jej niewa\\u017cno\\u015bci oraz do Prokuratury Generalnej o z\\u0142o\\u017cenie kasacji od wyroku w sprawie kr\\u00f3w.</p><p>\\u201eWszystkie te kroki prawne oparte s\\u0105 na przepisach prawa i organy Inspekcji maj\\u0105 obowi\\u0105zek je rozpatrzy\\u0107\\u201d \\u2013 m\\u00f3wi mec. Kuszlewicz.</p><p>Miejmy nadziej\\u0119, \\u017ce wnioski zostan\\u0105 rozpatrzone i do urz\\u0119dnik\\u00f3w dotrze informacja o spi\\u0119trzeniu absurd\\u00f3w, kt\\u00f3re maj\\u0105 przes\\u0105dzi\\u0107 o \\u017cyciu lub \\u015bmierci zwierz\\u0105t.</p><h2><b>Absurd goni absurd</b></h2><p>W pa\\u017adzierniku 2018 Powiatowy Lekarz Weterynarii w Gorzowie Wielkopolskim zobowi\\u0105za\\u0142 w\\u0142a\\u015bciciela kr\\u00f3w do zabicia 170 sztuk. W\\u0142a\\u015bciciel tego nie zrobi\\u0142.</p><p>\\u201eRozmawiali\\u015bmy z nim i z jego bratem. To pro\\u015bci ludzie, maj\\u0105 tu niedaleko dom, s\\u0105 rolnikami. Urz\\u0119dowe pisma niewiele im m\\u00f3wi\\u0142y, kr\\u00f3w nie chcieli zabija\\u0107. T\\u0142umaczyli, \\u017ce przegrali przetarg na pastwisko i nie mieli gdzie oficjalnie ich wypasa\\u0107\\u201d \\u2013 m\\u00f3wi Agnieszka z Gorzowa, jedna z aktywistek stoj\\u0105cych na stra\\u017cy kr\\u00f3w.</p><p>W\\u0142a\\u015bciciel odwiedza obozowisko codziennie. \\u201eJest mu \\u017cal zwierz\\u0105t, czuje si\\u0119 winny\\u201d.</p><p>Urz\\u0119dnicy przej\\u0119li wi\\u0119c obowi\\u0105zek wykonania decyzji na siebie, utrzymuj\\u0105c, \\u017ce krowy musz\\u0105 zosta\\u0107 zabite. Powo\\u0142ywano si\\u0119 przy tym na prawo unijne. \\u201eK\\u0142opot w tym, \\u017ce przepisy prawa unijnego, na kt\\u00f3rych podstawie podj\\u0119to decyzj\\u0119, w og\\u00f3le tej sytuacji nie dotycz\\u0105. M\\u00f3wi si\\u0119 tam o ryzyku dla bezpiecze\\u0144stwa \\u017cywno\\u015bci, a \\u017cadna z tych kr\\u00f3w nie ma przecie\\u017c spe\\u0142nia\\u0107 cel\\u00f3w produkcyjnych\\u201d \\u2013 t\\u0142umaczy mec. Kuszlewicz.</p><p>Krowy maj\\u0105 zosta\\u0107 przebadane (mog\\u0142yby do tego pos\\u0142u\\u017cy\\u0107 pieni\\u0105dze \\u2013 300 tys. z\\u0142 \\u2013 kt\\u00f3re przeznaczono ju\\u017c na ich ub\\u00f3j, na razie pr\\u0119\\u017cnie dzia\\u0142a zbi\\u00f3rka pieni\\u0119dzy na Facebooku) i trafi\\u0107 do ludzi, kt\\u00f3rzy zdecydowali si\\u0119 zapewni\\u0107 im odpowiedni teren i warunki do \\u017cycia.</p><p>Je\\u015bli decyzja Powiatowego Lekarza Weterynarii oparta jest na nieadekwatnych przepisach, to decyzja s\\u0105du, kt\\u00f3ra j\\u0105 podtrzyma\\u0142a jest ju\\u017c czystym nadu\\u017cyciem.</p><p>Sprawa zosta\\u0142a wszcz\\u0119ta z ustawy o ochronie zwierz\\u0105t, w\\u0142a\\u015bciciela oskar\\u017cono o zn\\u0119canie si\\u0119 nad zwierz\\u0119tami \\u2013 nie zapewni\\u0142 im jedzenia, opieki weterynaryjnej.</p><p><b>Zamiast odebra\\u0107 mu zwierz\\u0119ta i przekaza\\u0107 je w dobre r\\u0119ce,\\u00a0 s\\u0105d nakaza\\u0142 mu wykonanie decyzji o ich zabiciu. To tak jakby w\\u0142a\\u015bciciela zn\\u0119caj\\u0105cego si\\u0119 nad psem skaza\\u0107 za kar\\u0119 na zabicie zwierz\\u0119cia. Wszystko w ramach ochrony zwierz\\u0105t.</b></p><p>\\u201eTo aberracja\\u201d \\u2013 komentuje mec. Kuszlewicz. \\u2013 \\u201eProces o ochronie zwierz\\u0105t ma je chroni\\u0107, a nie zabija\\u0107. Zgodnie z przepisami, je\\u015bli zwierz\\u0119ta s\\u0105 ofiarami, musz\\u0105 by\\u0107 obligatoryjnie odebrane w\\u0142a\\u015bcicielowi i przekazane pod opiek\\u0119 podmiotu, kt\\u00f3ry zapewni im odpowiednie warunki do \\u017cycia. Tutaj wyrok s\\u0105du jest dla zwierz\\u0105t gorszy ni\\u017c zaniedbania w\\u0142a\\u015bciciela\\u201d.</p><h2><b>Kr\\u00f3w nie oddamy</b></h2><p>W niedziel\\u0119 26 maja, w dzie\\u0144 wybor\\u00f3w do europarlamentu, w Deszcznie przy krowach czuwa\\u0142o oko\\u0142o 30 os\\u00f3b, teraz s\\u0105 3, ale w najbli\\u017cszych dniach uczestnik\\u00f3w ma przyby\\u0107. \\u201eOd pi\\u0105tku ci\\u0105gle kto\\u015b przy nich jest, jedni przyje\\u017cd\\u017caj\\u0105 w dzie\\u0144, inni pilnuj\\u0105 w nocy\\u201d \\u2013 m\\u00f3wi jedna z uczestniczek czuwania, Ewelina Gajda. \\u201eNa pocz\\u0105tku nie by\\u0142o nawet namiotu, wi\\u0119c jedna z dziewczyn spa\\u0142a w szczerym polu\\u201d.</p><p>\\u201eJest nas ci\\u0105gle za ma\\u0142o, ale robimy, co mo\\u017cemy\\u201d \\u2013 m\\u00f3wi Agnieszka. \\u201eWarty mamy tak\\u017ce w nocy, boimy si\\u0119, \\u017ce b\\u0119d\\u0105 chcieli zabra\\u0107 krowy po cichu\\u201d. Cho\\u0107 po cichu b\\u0119dzie trudno, bo z tego, co opowiadaj\\u0105 miejscowi rolnicy, zaganianie tak wielkiego stada mo\\u017ce zamieni\\u0107 si\\u0119 w rze\\u017a.</p><p><b>\\u201eNajpierw zagania si\\u0119 m\\u0142ode, oddziela si\\u0119 je od reszty. Wtedy zaczyna si\\u0119 chaos, m\\u0142ode si\\u0119 przewracaj\\u0105, \\u0142ami\\u0105 nogi, mog\\u0105 zosta\\u0107 stratowane. Potem przychodzi czas na reszt\\u0119 przera\\u017conego stada. Trudno mi sobie to wszystko wyobrazi\\u0107, to b\\u0119dzie rze\\u017a\\u201d \\u2013 kiedy Agnieszka opowiada, g\\u0142os jej si\\u0119 \\u0142amie.</b></p><p>\\u201eCo wtedy zrobimy? Du\\u017co o tym my\\u015blimy. B\\u0119dziemy patrze\\u0107 na rze\\u017a? Nie wiem, czy b\\u0119d\\u0119 w stanie to wytrzyma\\u0107\\u201d.</p><p>\\u201eLicz\\u0119, \\u017ce kto\\u015b w ko\\u0144cu przejrzy na oczy, przecie\\u017c my chcemy tylko je st\\u0105d bezpiecznie zabra\\u0107. Podchodz\\u0105 do nas, nie s\\u0105 agresywne. S\\u0105 przyjazne, spokojne. Trudno to opisa\\u0107, panuje tu niesamowita atmosfera, chce si\\u0119 wraca\\u0107\\u201d.</p><p>Agnieszka pisze listy do wszystkich: \\u201eDo papie\\u017ca, do Trumpa, do kogo mog\\u0119. W Anglii by\\u0142 spory odzew, pani z Yahoo odezwa\\u0142a si\\u0119 z poparciem, Pamela Anderson odpisa\\u0142a, \\u017ce popiera, podpisa\\u0142a petycj\\u0119. Ale do polskich urz\\u0119dnik\\u00f3w jakby nic nie dociera\\u0142o\\u201d.</p><p>Jeden z list\\u00f3w dostaje te\\u017c prezes PiS\\u00a0Jaros\\u0142aw Kaczy\\u0144ski, kt\\u00f3ry <a href=\\"https://wiadomosci.onet.pl/tylko-w-onecie/stado-krow-z-deszczna-prezes-pis-jaroslaw-kaczynski-interweniuje/plcdl1r?utm_source=m.facebook.com_viasg_lubuskie&amp;utm_medium=referal&amp;utm_campaign=leo_automatic&amp;srcc=ucs&amp;utm_v=2\\">mia\\u0142 podobno interweniowa\\u0107 w sprawie kr\\u00f3w</a> u Ministra Rolnictwa i Rozwoju Wsi.</p><p>\\u201eOstateczna decyzja nie le\\u017cy jednak w kompetencjach pos\\u0142a na Sejm RP\\u201d \\u2013 informowa\\u0142 aktywist\\u00f3w Rados\\u0142aw Fogiel,\\u00a0dyrektor biura poselskiego Kaczy\\u0144skiego.</p><p>Nie wiadomo czy prezes opowiada\\u0142 si\\u0119 za jakim\\u015b konkretnym rozwi\\u0105zaniem. \\u201eJego wielkie serce do zwierz\\u0105t nie jest tajemnic\\u0105\\u201d \\u2013 t\\u0142umaczy\\u0142 Fogiel.</p><h2><b>Interwencja</b></h2><p>\\u201eDzi\\u015b (28 maja 2019) jednak otrzymali\\u015bmy sygna\\u0142, \\u017ce jest przestrze\\u0144 do rozmowy z Inspekcj\\u0105 o uratowaniu tych zwierz\\u0105t. Zobaczymy, jakie b\\u0119d\\u0105 jej efekty, ale najwa\\u017cniejsze jest teraz, by organy nie dzia\\u0142a\\u0142y pochopnie, tylko otworzy\\u0142y si\\u0119 na to, \\u017ce istniej\\u0105 opcje pozwalaj\\u0105ce pozostawi\\u0107 te krowy przy \\u017cyciu. Od jutra rana b\\u0119dziemy starali si\\u0119 podj\\u0105\\u0107 te rozmowy\\u201d \\u2013 m\\u00f3wi mec.\\u00a0Kuszlewicz.</p><p>\\u201eWygl\\u0105da na to, \\u017ce zmiana wysz\\u0142a od kierownictwa partii rz\\u0105dz\\u0105cej\\u201d \\u2013 m\\u00f3wi m\\u00f3wi OKO.press etyk i zoolog prof. Andrzej El\\u017canowski z Polskiego Towarzystwa Etycznego. \\u2013 \\u201eTo nie zmienia oczywi\\u015bcie faktu, \\u017ce b\\u0119dziemy kontynuowa\\u0107 procedury prawne w zwi\\u0105zku z fataln\\u0105 decyzj\\u0105 Powiatowego Lekarza Weterynarii i wadliwym wyrokiem s\\u0105du\\u201d.</p><p>\\u201eMo\\u017ce krowy zatrz\\u0105sn\\u0105 tymi powiatowymi uk\\u0142adami, a\\u00a0Inspekcja Weterynaryjna nauczy si\\u0119 respektowa\\u0107 wra\\u017cliwo\\u015b\\u0107 spo\\u0142eczn\\u0105 w sprawach, kt\\u00f3rych sama nie rozumie, czyli kwestii etycznego podej\\u015bcia do zwierz\\u0105t. Sytuacja kr\\u00f3w wywo\\u0142a\\u0142a wyj\\u0105tkow\\u0105 reakcj\\u0119, bo poruszy\\u0142a zar\\u00f3wno \\u015brodowisko miejskie, jak i wiejskie. Opinia publiczna by\\u0142a zdecydowanie po stronie kr\\u00f3w\\u201d.</p><p>\\u201eSpokojny b\\u0119d\\u0119 jednak dopiero, kiedy krowy trafi\\u0105 bezpiecznie na przygotowane dla nich pastwiska\\u201d \\u2013 m\\u00f3wi prof. El\\u017canowski.</p><p>Na razie decyzja wci\\u0105\\u017c jest jednak w mocy, a aktywi\\u015bci obawiaj\\u0105 si\\u0119, \\u017ce do zabrania kr\\u00f3w na ub\\u00f3j dojdzie ju\\u017c w pi\\u0105tek. Apeluj\\u0105 o obecno\\u015b\\u0107. Wszyscy, kt\\u00f3rzy nie mog\\u0105 wybra\\u0107 si\\u0119 na miejsce, mog\\u0105 wesprze\\u0107 inicjatyw\\u0119 podpisuj\\u0105c <a href=\\"https://secure.avaaz.org/pl/community_petitions/G_Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno/?rc=fb&amp;utm_source=sharetools&amp;utm_medium=facebook&amp;utm_campaign=petition-725767-Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno&amp;utm_term=txbidb%2Bpl&amp;fbclid=IwAR0PARNo8r9W7WbR6e8w2YMctX1j_7hMd3YkN_nilgh_0z-XMNT7eehytpQ\\">petycj\\u0119</a>. Czuwamy dalej.</p>", "body_pl": "<p>Krowy s\\u0105 troch\\u0119 nie\\u015bmia\\u0142e, ale w\\u0119sz\\u0105 ciekawie, kiedy od strony koczuj\\u0105cych nieopodal aktywist\\u00f3w zawieje wiatr. Odwa\\u017cniejsza grupka byczk\\u00f3w podchodzi bli\\u017cej. Pow\\u0105cha\\u0142y ju\\u017c jak pachn\\u0105 ludzie z Poznania, Szczecina, Pi\\u0142y, \\u0141odzi, Gda\\u0144ska czy Warszawy. Wszystko w b\\u0142ogim otoczeniu \\u0142\\u0105k Santockiego Zakola ko\\u0142o Ciecierzyc, przy r\\u00f3wnie b\\u0142ogiej nie\\u015bwiadomo\\u015bci wolno\\u015bciowych kr\\u00f3w, \\u017ce toczy si\\u0119 walka o ich \\u017cycie.</p><p>O historii kr\\u00f3w z gminy Deszczno niedaleko Gorzowa Wlk. pisali\\u015bmy ju\\u017c wielokrotnie. Mimo presji opinii publicznej, kt\\u00f3ra wstawi\\u0142a si\\u0119 za krowami i absurdalnych podstaw wydania przez Powiatowego Lekarza Weterynarii nakazu uboju kr\\u00f3w od kilkunastu lat \\u017cyj\\u0105cych wolno, w poniedzia\\u0142ek 28 maja G\\u0142\\u00f3wny Inspektorat Weterynarii wyda\\u0142 <a href=\\"https://www.wetgiw.gov.pl/main/aktualnosci/Komunikat-dotyczacy-stada-krow-przebywajacych-na-terenie-gminy-Deszczno-w-woj.-lubuskim-cd/idn:963?fbclid=IwAR0zII2fgrs0vXqYwd2oTaz8s2TP5rhZ1NSttZZdEOwuaCLtKc5osbVAfLs\\">komunikat</a>, w kt\\u00f3rym podtrzymuje decyzj\\u0119.</p><p>Obro\\u0144cy kr\\u00f3w walcz\\u0105 dalej, dzisiaj z\\u0142o\\u017cono do prokuratury<a href=\\"https://www.facebook.com/wimieniuzwierzat/videos/439996493443739/UzpfSTEyODAxODY4MDI6MTAyMTk1NjA0NjY3NDM4NDI/\\"> wiosek o kasacj\\u0119</a> od wyroku s\\u0105du, kt\\u00f3ry popar\\u0142 wniosek weterynarzy\\u00a0zabicia kr\\u00f3w uzasadniaj\\u0105c go przepisami ustawy o ochronie zwierz\\u0105t.</p><p><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>170 kr\\u00f3w \\u017cyje wolno i\\u00a0dziko w\\u00a0lubuskiem. Weterynarz i\\u00a0wojewoda chc\\u0105 je zabi\\u0107</b></a></h4><p><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>ROBERT JURSZO\\u00a0\\u00a06 MAJA 2019</b></a></p><p>Niespodziewanie pojawi\\u0142a si\\u0119 jednak nadzieja i sygna\\u0142y o zmianie podej\\u015bcia urz\\u0119dnik\\u00f3w. Mo\\u017cliwe, \\u017ce jest to wynik interwencji Jaros\\u0142awa Kaczy\\u0144skiego. Aktywi\\u015bci, kt\\u00f3rzy koczuj\\u0105 przy krowach od pi\\u0105tku, pe\\u0142ni\\u0105c warty w dzie\\u0144 i w nocy, wci\\u0105\\u017c boj\\u0105 si\\u0119 najgorszego. Sytuacja mo\\u017ce si\\u0119 zmieni\\u0107 w ka\\u017cdej chwili.</p><h2><b>Kr\\u00f3tka historia krowiej wolno\\u015bci</b></h2><p>O krowach z gminy Deszczno (woj. lubuskie) g\\u0142o\\u015bno zrobi\\u0142o si\\u0119 na pocz\\u0105tku maja, chocia\\u017c hasa\\u0142y dziko po lokalnych polach od kilkunastu lat. Ich w\\u0142a\\u015bciciel pewnego dnia po prostu je porzuci\\u0142, a one zacz\\u0119\\u0142y \\u017cy\\u0107 po swojemu. Stado rozros\\u0142o si\\u0119 do 185 osobnik\\u00f3w. S\\u0105 w dobrej formie, chocia\\u017c od lat nie by\\u0142y ewidencjonowane ani badane weterynaryjnie.</p><p>Krowy nie wiedzia\\u0142y niestety, \\u017ce prawo zabrania im takiej samowoli, a w urz\\u0119dniczych oczach nagle sta\\u0142y si\\u0119 zagro\\u017ceniem epidemiologicznym.\\u00a0Powiatowy Lekarz Weterynarii z Gorzowa Wielkopolskiego wyda\\u0142 nakaz u\\u015bmiercenia i zutylizowania zwierz\\u0105t, a s\\u0105d nakaza\\u0142 wykonanie decyzji.</p><p>Od tamtej pory toczy si\\u0119 nier\\u00f3wna walka: aktywi\\u015bci kontra biurokratyczna machina. Bo nie chodzi ju\\u017c nawet o to, \\u017ce z krowami nie ma co zrobi\\u0107. W ci\\u0105gu kilku dni od nag\\u0142o\\u015bnienia sprawy znalaz\\u0142y si\\u0119 osoby i organizacje, kt\\u00f3re gotowe s\\u0105 przyj\\u0105\\u0107 krowy na w\\u0142asne utrzymanie.</p><p><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>Dzikie krowy mo\\u017cna uratowa\\u0107. Nie tylko 185, ale\\u00a0nawet 500. Teraz wszystko w\\u00a0r\\u0119kach Lekarza Weterynarii</b></a></h4><p><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>ROBERT JURSZO\\u00a0\\u00a08 MAJA 2019</b></a></p><p>Wszystko wskazywa\\u0142o na to, \\u017ce krowi\\u0105 histori\\u0119 czeka szcz\\u0119\\u015bliwe zako\\u0144czenie. \\u201ePo raz pierwszy spo\\u0142ecze\\u0144stwo tak wyra\\u017anie upomnia\\u0142o si\\u0119 o prawo do \\u017cycia dla zwierz\\u0105t zwykle traktowanych tylko jako produkt w przemy\\u015ble mi\\u0119snym\\u201d \\u2013 m\\u00f3wi mec. Karolina Kuszlewicz, Rzeczniczka ds. Zwierz\\u0105t przy Polskim Towarzystwie Etycznym.Niestety, rze\\u017aniczej machiny tak \\u0142atwo si\\u0119 nie powstrzyma.</p><h2><b>Zutylizowa\\u0107</b></h2><p>\\u201eDecyzj\\u0105 Inspekcji Weterynaryjnej wolne krowy z wojew\\u00f3dztwa lubuskiego\\u00a0zostan\\u0105 zabite i zutylizowane. Egzekucja wykonana b\\u0119dzie tydzie\\u0144 po wyborach do Parlamentu Europejskiego\\u201d \\u2013 poinformowa\\u0142 na Twitterze Konrad Ku\\u017ami\\u0144ski z\\u00a0Dolno\\u015bl\\u0105skiego Inspektoratu Ochrony Zwierz\\u0105t. Informacje uzyska\\u0142<a href=\\"https://twitter.com/KuzminskiKonrad/status/1130952247083454466\\">\\u00a0nieoficjalnie</a>\\u00a0od jednego z pracownik\\u00f3w Powiatowego Inspektoratu Weterynarii, kt\\u00f3ry z obawy przed zwolnieniem wola\\u0142 pozosta\\u0107 anonimowy.</p><p>Wszystko wskazywa\\u0142o na to, \\u017ce urz\\u0119dnicy chcieli przeczeka\\u0107 okres medialnego zainteresowania tematem i zabi\\u0107 \\u201epo cichu\\u201d krowy, gdy oczy medi\\u00f3w skupione b\\u0119d\\u0105 na czym innym.</p><p><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>Dzikie krowy z\\u00a0lubuskiego mia\\u0142y zosta\\u0107 zabite w\\u00a0tajemnicy po\\u00a0eurowyborach. Ale\\u00a0si\\u0119 wyda\\u0142o</b></a></h4><p><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>ROBERT JURSZO\\u00a0\\u00a023 MAJA 2019</b></a></p><p>\\u201eKrowy pad\\u0142y ofiar\\u0105 zdecydowanie zbyt uproszczonego stosowania prawa\\u201d \\u2013 m\\u00f3wi OKO.press mec. Kuszlewicz, kt\\u00f3ra\\u00a0z\\u0142o\\u017cy\\u0142a ju\\u017c wniosek do Powiatowego Inspektoratu Weterynarii o uchylenie decyzji, do Wojew\\u00f3dzkiego Inspektoratu Weterynarii o stwierdzenie jej niewa\\u017cno\\u015bci oraz do Prokuratury Generalnej o z\\u0142o\\u017cenie kasacji od wyroku w sprawie kr\\u00f3w.</p><p>\\u201eWszystkie te kroki prawne oparte s\\u0105 na przepisach prawa i organy Inspekcji maj\\u0105 obowi\\u0105zek je rozpatrzy\\u0107\\u201d \\u2013 m\\u00f3wi mec. Kuszlewicz.</p><p>Miejmy nadziej\\u0119, \\u017ce wnioski zostan\\u0105 rozpatrzone i do urz\\u0119dnik\\u00f3w dotrze informacja o spi\\u0119trzeniu absurd\\u00f3w, kt\\u00f3re maj\\u0105 przes\\u0105dzi\\u0107 o \\u017cyciu lub \\u015bmierci zwierz\\u0105t.</p><h2><b>Absurd goni absurd</b></h2><p>W pa\\u017adzierniku 2018 Powiatowy Lekarz Weterynarii w Gorzowie Wielkopolskim zobowi\\u0105za\\u0142 w\\u0142a\\u015bciciela kr\\u00f3w do zabicia 170 sztuk. W\\u0142a\\u015bciciel tego nie zrobi\\u0142.</p><p>\\u201eRozmawiali\\u015bmy z nim i z jego bratem. To pro\\u015bci ludzie, maj\\u0105 tu niedaleko dom, s\\u0105 rolnikami. Urz\\u0119dowe pisma niewiele im m\\u00f3wi\\u0142y, kr\\u00f3w nie chcieli zabija\\u0107. T\\u0142umaczyli, \\u017ce przegrali przetarg na pastwisko i nie mieli gdzie oficjalnie ich wypasa\\u0107\\u201d \\u2013 m\\u00f3wi Agnieszka z Gorzowa, jedna z aktywistek stoj\\u0105cych na stra\\u017cy kr\\u00f3w.</p><p>W\\u0142a\\u015bciciel odwiedza obozowisko codziennie. \\u201eJest mu \\u017cal zwierz\\u0105t, czuje si\\u0119 winny\\u201d.</p><p>Urz\\u0119dnicy przej\\u0119li wi\\u0119c obowi\\u0105zek wykonania decyzji na siebie, utrzymuj\\u0105c, \\u017ce krowy musz\\u0105 zosta\\u0107 zabite. Powo\\u0142ywano si\\u0119 przy tym na prawo unijne. \\u201eK\\u0142opot w tym, \\u017ce przepisy prawa unijnego, na kt\\u00f3rych podstawie podj\\u0119to decyzj\\u0119, w og\\u00f3le tej sytuacji nie dotycz\\u0105. M\\u00f3wi si\\u0119 tam o ryzyku dla bezpiecze\\u0144stwa \\u017cywno\\u015bci, a \\u017cadna z tych kr\\u00f3w nie ma przecie\\u017c spe\\u0142nia\\u0107 cel\\u00f3w produkcyjnych\\u201d \\u2013 t\\u0142umaczy mec. Kuszlewicz.</p><p>Krowy maj\\u0105 zosta\\u0107 przebadane (mog\\u0142yby do tego pos\\u0142u\\u017cy\\u0107 pieni\\u0105dze \\u2013 300 tys. z\\u0142 \\u2013 kt\\u00f3re przeznaczono ju\\u017c na ich ub\\u00f3j, na razie pr\\u0119\\u017cnie dzia\\u0142a zbi\\u00f3rka pieni\\u0119dzy na Facebooku) i trafi\\u0107 do ludzi, kt\\u00f3rzy zdecydowali si\\u0119 zapewni\\u0107 im odpowiedni teren i warunki do \\u017cycia.</p><p>Je\\u015bli decyzja Powiatowego Lekarza Weterynarii oparta jest na nieadekwatnych przepisach, to decyzja s\\u0105du, kt\\u00f3ra j\\u0105 podtrzyma\\u0142a jest ju\\u017c czystym nadu\\u017cyciem.</p><p>Sprawa zosta\\u0142a wszcz\\u0119ta z ustawy o ochronie zwierz\\u0105t, w\\u0142a\\u015bciciela oskar\\u017cono o zn\\u0119canie si\\u0119 nad zwierz\\u0119tami \\u2013 nie zapewni\\u0142 im jedzenia, opieki weterynaryjnej.</p><p><b>Zamiast odebra\\u0107 mu zwierz\\u0119ta i przekaza\\u0107 je w dobre r\\u0119ce,\\u00a0 s\\u0105d nakaza\\u0142 mu wykonanie decyzji o ich zabiciu. To tak jakby w\\u0142a\\u015bciciela zn\\u0119caj\\u0105cego si\\u0119 nad psem skaza\\u0107 za kar\\u0119 na zabicie zwierz\\u0119cia. Wszystko w ramach ochrony zwierz\\u0105t.</b></p><p>\\u201eTo aberracja\\u201d \\u2013 komentuje mec. Kuszlewicz. \\u2013 \\u201eProces o ochronie zwierz\\u0105t ma je chroni\\u0107, a nie zabija\\u0107. Zgodnie z przepisami, je\\u015bli zwierz\\u0119ta s\\u0105 ofiarami, musz\\u0105 by\\u0107 obligatoryjnie odebrane w\\u0142a\\u015bcicielowi i przekazane pod opiek\\u0119 podmiotu, kt\\u00f3ry zapewni im odpowiednie warunki do \\u017cycia. Tutaj wyrok s\\u0105du jest dla zwierz\\u0105t gorszy ni\\u017c zaniedbania w\\u0142a\\u015bciciela\\u201d.</p><h2><b>Kr\\u00f3w nie oddamy</b></h2><p>W niedziel\\u0119 26 maja, w dzie\\u0144 wybor\\u00f3w do europarlamentu, w Deszcznie przy krowach czuwa\\u0142o oko\\u0142o 30 os\\u00f3b, teraz s\\u0105 3, ale w najbli\\u017cszych dniach uczestnik\\u00f3w ma przyby\\u0107. \\u201eOd pi\\u0105tku ci\\u0105gle kto\\u015b przy nich jest, jedni przyje\\u017cd\\u017caj\\u0105 w dzie\\u0144, inni pilnuj\\u0105 w nocy\\u201d \\u2013 m\\u00f3wi jedna z uczestniczek czuwania, Ewelina Gajda. \\u201eNa pocz\\u0105tku nie by\\u0142o nawet namiotu, wi\\u0119c jedna z dziewczyn spa\\u0142a w szczerym polu\\u201d.</p><p>\\u201eJest nas ci\\u0105gle za ma\\u0142o, ale robimy, co mo\\u017cemy\\u201d \\u2013 m\\u00f3wi Agnieszka. \\u201eWarty mamy tak\\u017ce w nocy, boimy si\\u0119, \\u017ce b\\u0119d\\u0105 chcieli zabra\\u0107 krowy po cichu\\u201d. Cho\\u0107 po cichu b\\u0119dzie trudno, bo z tego, co opowiadaj\\u0105 miejscowi rolnicy, zaganianie tak wielkiego stada mo\\u017ce zamieni\\u0107 si\\u0119 w rze\\u017a.</p><p><b>\\u201eNajpierw zagania si\\u0119 m\\u0142ode, oddziela si\\u0119 je od reszty. Wtedy zaczyna si\\u0119 chaos, m\\u0142ode si\\u0119 przewracaj\\u0105, \\u0142ami\\u0105 nogi, mog\\u0105 zosta\\u0107 stratowane. Potem przychodzi czas na reszt\\u0119 przera\\u017conego stada. Trudno mi sobie to wszystko wyobrazi\\u0107, to b\\u0119dzie rze\\u017a\\u201d \\u2013 kiedy Agnieszka opowiada, g\\u0142os jej si\\u0119 \\u0142amie.</b></p><p>\\u201eCo wtedy zrobimy? Du\\u017co o tym my\\u015blimy. B\\u0119dziemy patrze\\u0107 na rze\\u017a? Nie wiem, czy b\\u0119d\\u0119 w stanie to wytrzyma\\u0107\\u201d.</p><p>\\u201eLicz\\u0119, \\u017ce kto\\u015b w ko\\u0144cu przejrzy na oczy, przecie\\u017c my chcemy tylko je st\\u0105d bezpiecznie zabra\\u0107. Podchodz\\u0105 do nas, nie s\\u0105 agresywne. S\\u0105 przyjazne, spokojne. Trudno to opisa\\u0107, panuje tu niesamowita atmosfera, chce si\\u0119 wraca\\u0107\\u201d.</p><p>Agnieszka pisze listy do wszystkich: \\u201eDo papie\\u017ca, do Trumpa, do kogo mog\\u0119. W Anglii by\\u0142 spory odzew, pani z Yahoo odezwa\\u0142a si\\u0119 z poparciem, Pamela Anderson odpisa\\u0142a, \\u017ce popiera, podpisa\\u0142a petycj\\u0119. Ale do polskich urz\\u0119dnik\\u00f3w jakby nic nie dociera\\u0142o\\u201d.</p><p>Jeden z list\\u00f3w dostaje te\\u017c prezes PiS\\u00a0Jaros\\u0142aw Kaczy\\u0144ski, kt\\u00f3ry <a href=\\"https://wiadomosci.onet.pl/tylko-w-onecie/stado-krow-z-deszczna-prezes-pis-jaroslaw-kaczynski-interweniuje/plcdl1r?utm_source=m.facebook.com_viasg_lubuskie&amp;utm_medium=referal&amp;utm_campaign=leo_automatic&amp;srcc=ucs&amp;utm_v=2\\">mia\\u0142 podobno interweniowa\\u0107 w sprawie kr\\u00f3w</a> u Ministra Rolnictwa i Rozwoju Wsi.</p><p>\\u201eOstateczna decyzja nie le\\u017cy jednak w kompetencjach pos\\u0142a na Sejm RP\\u201d \\u2013 informowa\\u0142 aktywist\\u00f3w Rados\\u0142aw Fogiel,\\u00a0dyrektor biura poselskiego Kaczy\\u0144skiego.</p><p>Nie wiadomo czy prezes opowiada\\u0142 si\\u0119 za jakim\\u015b konkretnym rozwi\\u0105zaniem. \\u201eJego wielkie serce do zwierz\\u0105t nie jest tajemnic\\u0105\\u201d \\u2013 t\\u0142umaczy\\u0142 Fogiel.</p><h2><b>Interwencja</b></h2><p>\\u201eDzi\\u015b (28 maja 2019) jednak otrzymali\\u015bmy sygna\\u0142, \\u017ce jest przestrze\\u0144 do rozmowy z Inspekcj\\u0105 o uratowaniu tych zwierz\\u0105t. Zobaczymy, jakie b\\u0119d\\u0105 jej efekty, ale najwa\\u017cniejsze jest teraz, by organy nie dzia\\u0142a\\u0142y pochopnie, tylko otworzy\\u0142y si\\u0119 na to, \\u017ce istniej\\u0105 opcje pozwalaj\\u0105ce pozostawi\\u0107 te krowy przy \\u017cyciu. Od jutra rana b\\u0119dziemy starali si\\u0119 podj\\u0105\\u0107 te rozmowy\\u201d \\u2013 m\\u00f3wi mec.\\u00a0Kuszlewicz.</p><p>\\u201eWygl\\u0105da na to, \\u017ce zmiana wysz\\u0142a od kierownictwa partii rz\\u0105dz\\u0105cej\\u201d \\u2013 m\\u00f3wi m\\u00f3wi OKO.press etyk i zoolog prof. Andrzej El\\u017canowski z Polskiego Towarzystwa Etycznego. \\u2013 \\u201eTo nie zmienia oczywi\\u015bcie faktu, \\u017ce b\\u0119dziemy kontynuowa\\u0107 procedury prawne w zwi\\u0105zku z fataln\\u0105 decyzj\\u0105 Powiatowego Lekarza Weterynarii i wadliwym wyrokiem s\\u0105du\\u201d.</p><p>\\u201eMo\\u017ce krowy zatrz\\u0105sn\\u0105 tymi powiatowymi uk\\u0142adami, a\\u00a0Inspekcja Weterynaryjna nauczy si\\u0119 respektowa\\u0107 wra\\u017cliwo\\u015b\\u0107 spo\\u0142eczn\\u0105 w sprawach, kt\\u00f3rych sama nie rozumie, czyli kwestii etycznego podej\\u015bcia do zwierz\\u0105t. Sytuacja kr\\u00f3w wywo\\u0142a\\u0142a wyj\\u0105tkow\\u0105 reakcj\\u0119, bo poruszy\\u0142a zar\\u00f3wno \\u015brodowisko miejskie, jak i wiejskie. Opinia publiczna by\\u0142a zdecydowanie po stronie kr\\u00f3w\\u201d.</p><p>\\u201eSpokojny b\\u0119d\\u0119 jednak dopiero, kiedy krowy trafi\\u0105 bezpiecznie na przygotowane dla nich pastwiska\\u201d \\u2013 m\\u00f3wi prof. El\\u017canowski.</p><p>Na razie decyzja wci\\u0105\\u017c jest jednak w mocy, a aktywi\\u015bci obawiaj\\u0105 si\\u0119, \\u017ce do zabrania kr\\u00f3w na ub\\u00f3j dojdzie ju\\u017c w pi\\u0105tek. Apeluj\\u0105 o obecno\\u015b\\u0107. Wszyscy, kt\\u00f3rzy nie mog\\u0105 wybra\\u0107 si\\u0119 na miejsce, mog\\u0105 wesprze\\u0107 inicjatyw\\u0119 podpisuj\\u0105c <a href=\\"https://secure.avaaz.org/pl/community_petitions/G_Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno/?rc=fb&amp;utm_source=sharetools&amp;utm_medium=facebook&amp;utm_campaign=petition-725767-Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno&amp;utm_term=txbidb%2Bpl&amp;fbclid=IwAR0PARNo8r9W7WbR6e8w2YMctX1j_7hMd3YkN_nilgh_0z-XMNT7eehytpQ\\">petycj\\u0119</a>. Czuwamy dalej.</p>", "body_en": "<p>Krowy s\\u0105 troch\\u0119 nie\\u015bmia\\u0142e, ale w\\u0119sz\\u0105 ciekawie, kiedy od strony koczuj\\u0105cych nieopodal aktywist\\u00f3w zawieje wiatr. Odwa\\u017cniejsza grupka byczk\\u00f3w podchodzi bli\\u017cej. Pow\\u0105cha\\u0142y ju\\u017c jak pachn\\u0105 ludzie z Poznania, Szczecina, Pi\\u0142y, \\u0141odzi, Gda\\u0144ska czy Warszawy. Wszystko w b\\u0142ogim otoczeniu \\u0142\\u0105k Santockiego Zakola ko\\u0142o Ciecierzyc, przy r\\u00f3wnie b\\u0142ogiej nie\\u015bwiadomo\\u015bci wolno\\u015bciowych kr\\u00f3w, \\u017ce toczy si\\u0119 walka o ich \\u017cycie.</p><p>O historii kr\\u00f3w z gminy Deszczno niedaleko Gorzowa Wlk. pisali\\u015bmy ju\\u017c wielokrotnie. Mimo presji opinii publicznej, kt\\u00f3ra wstawi\\u0142a si\\u0119 za krowami i absurdalnych podstaw wydania przez Powiatowego Lekarza Weterynarii nakazu uboju kr\\u00f3w od kilkunastu lat \\u017cyj\\u0105cych wolno, w poniedzia\\u0142ek 28 maja G\\u0142\\u00f3wny Inspektorat Weterynarii wyda\\u0142 <a href=\\"https://www.wetgiw.gov.pl/main/aktualnosci/Komunikat-dotyczacy-stada-krow-przebywajacych-na-terenie-gminy-Deszczno-w-woj.-lubuskim-cd/idn:963?fbclid=IwAR0zII2fgrs0vXqYwd2oTaz8s2TP5rhZ1NSttZZdEOwuaCLtKc5osbVAfLs\\">komunikat</a>, w kt\\u00f3rym podtrzymuje decyzj\\u0119.</p><p>Obro\\u0144cy kr\\u00f3w walcz\\u0105 dalej, dzisiaj z\\u0142o\\u017cono do prokuratury<a href=\\"https://www.facebook.com/wimieniuzwierzat/videos/439996493443739/UzpfSTEyODAxODY4MDI6MTAyMTk1NjA0NjY3NDM4NDI/\\"> wiosek o kasacj\\u0119</a> od wyroku s\\u0105du, kt\\u00f3ry popar\\u0142 wniosek weterynarzy\\u00a0zabicia kr\\u00f3w uzasadniaj\\u0105c go przepisami ustawy o ochronie zwierz\\u0105t.</p><p><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>170 kr\\u00f3w \\u017cyje wolno i\\u00a0dziko w\\u00a0lubuskiem. Weterynarz i\\u00a0wojewoda chc\\u0105 je zabi\\u0107</b></a></h4><p><a href=\\"https://oko.press/170-krow-zyje-wolno-i-dziko-w-woj-lubuskim-weterynarz-i-wojewoda-chca-je-zabic/\\"><b>ROBERT JURSZO\\u00a0\\u00a06 MAJA 2019</b></a></p><p>Niespodziewanie pojawi\\u0142a si\\u0119 jednak nadzieja i sygna\\u0142y o zmianie podej\\u015bcia urz\\u0119dnik\\u00f3w. Mo\\u017cliwe, \\u017ce jest to wynik interwencji Jaros\\u0142awa Kaczy\\u0144skiego. Aktywi\\u015bci, kt\\u00f3rzy koczuj\\u0105 przy krowach od pi\\u0105tku, pe\\u0142ni\\u0105c warty w dzie\\u0144 i w nocy, wci\\u0105\\u017c boj\\u0105 si\\u0119 najgorszego. Sytuacja mo\\u017ce si\\u0119 zmieni\\u0107 w ka\\u017cdej chwili.</p><h2><b>Kr\\u00f3tka historia krowiej wolno\\u015bci</b></h2><p>O krowach z gminy Deszczno (woj. lubuskie) g\\u0142o\\u015bno zrobi\\u0142o si\\u0119 na pocz\\u0105tku maja, chocia\\u017c hasa\\u0142y dziko po lokalnych polach od kilkunastu lat. Ich w\\u0142a\\u015bciciel pewnego dnia po prostu je porzuci\\u0142, a one zacz\\u0119\\u0142y \\u017cy\\u0107 po swojemu. Stado rozros\\u0142o si\\u0119 do 185 osobnik\\u00f3w. S\\u0105 w dobrej formie, chocia\\u017c od lat nie by\\u0142y ewidencjonowane ani badane weterynaryjnie.</p><p>Krowy nie wiedzia\\u0142y niestety, \\u017ce prawo zabrania im takiej samowoli, a w urz\\u0119dniczych oczach nagle sta\\u0142y si\\u0119 zagro\\u017ceniem epidemiologicznym.\\u00a0Powiatowy Lekarz Weterynarii z Gorzowa Wielkopolskiego wyda\\u0142 nakaz u\\u015bmiercenia i zutylizowania zwierz\\u0105t, a s\\u0105d nakaza\\u0142 wykonanie decyzji.</p><p>Od tamtej pory toczy si\\u0119 nier\\u00f3wna walka: aktywi\\u015bci kontra biurokratyczna machina. Bo nie chodzi ju\\u017c nawet o to, \\u017ce z krowami nie ma co zrobi\\u0107. W ci\\u0105gu kilku dni od nag\\u0142o\\u015bnienia sprawy znalaz\\u0142y si\\u0119 osoby i organizacje, kt\\u00f3re gotowe s\\u0105 przyj\\u0105\\u0107 krowy na w\\u0142asne utrzymanie.</p><p><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>Dzikie krowy mo\\u017cna uratowa\\u0107. Nie tylko 185, ale\\u00a0nawet 500. Teraz wszystko w\\u00a0r\\u0119kach Lekarza Weterynarii</b></a></h4><p><a href=\\"https://oko.press/dzikie-krowy-mozna-uratowac-nie-tylko-185-ale-nawet-500-teraz-wszystko-w-rekach-lekarza-weterynarii-gotowy/\\"><b>ROBERT JURSZO\\u00a0\\u00a08 MAJA 2019</b></a></p><p>Wszystko wskazywa\\u0142o na to, \\u017ce krowi\\u0105 histori\\u0119 czeka szcz\\u0119\\u015bliwe zako\\u0144czenie. \\u201ePo raz pierwszy spo\\u0142ecze\\u0144stwo tak wyra\\u017anie upomnia\\u0142o si\\u0119 o prawo do \\u017cycia dla zwierz\\u0105t zwykle traktowanych tylko jako produkt w przemy\\u015ble mi\\u0119snym\\u201d \\u2013 m\\u00f3wi mec. Karolina Kuszlewicz, Rzeczniczka ds. Zwierz\\u0105t przy Polskim Towarzystwie Etycznym.Niestety, rze\\u017aniczej machiny tak \\u0142atwo si\\u0119 nie powstrzyma.</p><h2><b>Zutylizowa\\u0107</b></h2><p>\\u201eDecyzj\\u0105 Inspekcji Weterynaryjnej wolne krowy z wojew\\u00f3dztwa lubuskiego\\u00a0zostan\\u0105 zabite i zutylizowane. Egzekucja wykonana b\\u0119dzie tydzie\\u0144 po wyborach do Parlamentu Europejskiego\\u201d \\u2013 poinformowa\\u0142 na Twitterze Konrad Ku\\u017ami\\u0144ski z\\u00a0Dolno\\u015bl\\u0105skiego Inspektoratu Ochrony Zwierz\\u0105t. Informacje uzyska\\u0142<a href=\\"https://twitter.com/KuzminskiKonrad/status/1130952247083454466\\">\\u00a0nieoficjalnie</a>\\u00a0od jednego z pracownik\\u00f3w Powiatowego Inspektoratu Weterynarii, kt\\u00f3ry z obawy przed zwolnieniem wola\\u0142 pozosta\\u0107 anonimowy.</p><p>Wszystko wskazywa\\u0142o na to, \\u017ce urz\\u0119dnicy chcieli przeczeka\\u0107 okres medialnego zainteresowania tematem i zabi\\u0107 \\u201epo cichu\\u201d krowy, gdy oczy medi\\u00f3w skupione b\\u0119d\\u0105 na czym innym.</p><p><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>Przeczytaj te\\u017c:</b></a></p><h4><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>Dzikie krowy z\\u00a0lubuskiego mia\\u0142y zosta\\u0107 zabite w\\u00a0tajemnicy po\\u00a0eurowyborach. Ale\\u00a0si\\u0119 wyda\\u0142o</b></a></h4><p><a href=\\"https://oko.press/dzikie-krowy-z-lubuskiego-mialy-zostac-zabite-w-tajemnicy-po-eurowyborach-ale-sie-wydalo/\\"><b>ROBERT JURSZO\\u00a0\\u00a023 MAJA 2019</b></a></p><p>\\u201eKrowy pad\\u0142y ofiar\\u0105 zdecydowanie zbyt uproszczonego stosowania prawa\\u201d \\u2013 m\\u00f3wi OKO.press mec. Kuszlewicz, kt\\u00f3ra\\u00a0z\\u0142o\\u017cy\\u0142a ju\\u017c wniosek do Powiatowego Inspektoratu Weterynarii o uchylenie decyzji, do Wojew\\u00f3dzkiego Inspektoratu Weterynarii o stwierdzenie jej niewa\\u017cno\\u015bci oraz do Prokuratury Generalnej o z\\u0142o\\u017cenie kasacji od wyroku w sprawie kr\\u00f3w.</p><p>\\u201eWszystkie te kroki prawne oparte s\\u0105 na przepisach prawa i organy Inspekcji maj\\u0105 obowi\\u0105zek je rozpatrzy\\u0107\\u201d \\u2013 m\\u00f3wi mec. Kuszlewicz.</p><p>Miejmy nadziej\\u0119, \\u017ce wnioski zostan\\u0105 rozpatrzone i do urz\\u0119dnik\\u00f3w dotrze informacja o spi\\u0119trzeniu absurd\\u00f3w, kt\\u00f3re maj\\u0105 przes\\u0105dzi\\u0107 o \\u017cyciu lub \\u015bmierci zwierz\\u0105t.</p><h2><b>Absurd goni absurd</b></h2><p>W pa\\u017adzierniku 2018 Powiatowy Lekarz Weterynarii w Gorzowie Wielkopolskim zobowi\\u0105za\\u0142 w\\u0142a\\u015bciciela kr\\u00f3w do zabicia 170 sztuk. W\\u0142a\\u015bciciel tego nie zrobi\\u0142.</p><p>\\u201eRozmawiali\\u015bmy z nim i z jego bratem. To pro\\u015bci ludzie, maj\\u0105 tu niedaleko dom, s\\u0105 rolnikami. Urz\\u0119dowe pisma niewiele im m\\u00f3wi\\u0142y, kr\\u00f3w nie chcieli zabija\\u0107. T\\u0142umaczyli, \\u017ce przegrali przetarg na pastwisko i nie mieli gdzie oficjalnie ich wypasa\\u0107\\u201d \\u2013 m\\u00f3wi Agnieszka z Gorzowa, jedna z aktywistek stoj\\u0105cych na stra\\u017cy kr\\u00f3w.</p><p>W\\u0142a\\u015bciciel odwiedza obozowisko codziennie. \\u201eJest mu \\u017cal zwierz\\u0105t, czuje si\\u0119 winny\\u201d.</p><p>Urz\\u0119dnicy przej\\u0119li wi\\u0119c obowi\\u0105zek wykonania decyzji na siebie, utrzymuj\\u0105c, \\u017ce krowy musz\\u0105 zosta\\u0107 zabite. Powo\\u0142ywano si\\u0119 przy tym na prawo unijne. \\u201eK\\u0142opot w tym, \\u017ce przepisy prawa unijnego, na kt\\u00f3rych podstawie podj\\u0119to decyzj\\u0119, w og\\u00f3le tej sytuacji nie dotycz\\u0105. M\\u00f3wi si\\u0119 tam o ryzyku dla bezpiecze\\u0144stwa \\u017cywno\\u015bci, a \\u017cadna z tych kr\\u00f3w nie ma przecie\\u017c spe\\u0142nia\\u0107 cel\\u00f3w produkcyjnych\\u201d \\u2013 t\\u0142umaczy mec. Kuszlewicz.</p><p>Krowy maj\\u0105 zosta\\u0107 przebadane (mog\\u0142yby do tego pos\\u0142u\\u017cy\\u0107 pieni\\u0105dze \\u2013 300 tys. z\\u0142 \\u2013 kt\\u00f3re przeznaczono ju\\u017c na ich ub\\u00f3j, na razie pr\\u0119\\u017cnie dzia\\u0142a zbi\\u00f3rka pieni\\u0119dzy na Facebooku) i trafi\\u0107 do ludzi, kt\\u00f3rzy zdecydowali si\\u0119 zapewni\\u0107 im odpowiedni teren i warunki do \\u017cycia.</p><p>Je\\u015bli decyzja Powiatowego Lekarza Weterynarii oparta jest na nieadekwatnych przepisach, to decyzja s\\u0105du, kt\\u00f3ra j\\u0105 podtrzyma\\u0142a jest ju\\u017c czystym nadu\\u017cyciem.</p><p>Sprawa zosta\\u0142a wszcz\\u0119ta z ustawy o ochronie zwierz\\u0105t, w\\u0142a\\u015bciciela oskar\\u017cono o zn\\u0119canie si\\u0119 nad zwierz\\u0119tami \\u2013 nie zapewni\\u0142 im jedzenia, opieki weterynaryjnej.</p><p><b>Zamiast odebra\\u0107 mu zwierz\\u0119ta i przekaza\\u0107 je w dobre r\\u0119ce,\\u00a0 s\\u0105d nakaza\\u0142 mu wykonanie decyzji o ich zabiciu. To tak jakby w\\u0142a\\u015bciciela zn\\u0119caj\\u0105cego si\\u0119 nad psem skaza\\u0107 za kar\\u0119 na zabicie zwierz\\u0119cia. Wszystko w ramach ochrony zwierz\\u0105t.</b></p><p>\\u201eTo aberracja\\u201d \\u2013 komentuje mec. Kuszlewicz. \\u2013 \\u201eProces o ochronie zwierz\\u0105t ma je chroni\\u0107, a nie zabija\\u0107. Zgodnie z przepisami, je\\u015bli zwierz\\u0119ta s\\u0105 ofiarami, musz\\u0105 by\\u0107 obligatoryjnie odebrane w\\u0142a\\u015bcicielowi i przekazane pod opiek\\u0119 podmiotu, kt\\u00f3ry zapewni im odpowiednie warunki do \\u017cycia. Tutaj wyrok s\\u0105du jest dla zwierz\\u0105t gorszy ni\\u017c zaniedbania w\\u0142a\\u015bciciela\\u201d.</p><h2><b>Kr\\u00f3w nie oddamy</b></h2><p>W niedziel\\u0119 26 maja, w dzie\\u0144 wybor\\u00f3w do europarlamentu, w Deszcznie przy krowach czuwa\\u0142o oko\\u0142o 30 os\\u00f3b, teraz s\\u0105 3, ale w najbli\\u017cszych dniach uczestnik\\u00f3w ma przyby\\u0107. \\u201eOd pi\\u0105tku ci\\u0105gle kto\\u015b przy nich jest, jedni przyje\\u017cd\\u017caj\\u0105 w dzie\\u0144, inni pilnuj\\u0105 w nocy\\u201d \\u2013 m\\u00f3wi jedna z uczestniczek czuwania, Ewelina Gajda. \\u201eNa pocz\\u0105tku nie by\\u0142o nawet namiotu, wi\\u0119c jedna z dziewczyn spa\\u0142a w szczerym polu\\u201d.</p><p>\\u201eJest nas ci\\u0105gle za ma\\u0142o, ale robimy, co mo\\u017cemy\\u201d \\u2013 m\\u00f3wi Agnieszka. \\u201eWarty mamy tak\\u017ce w nocy, boimy si\\u0119, \\u017ce b\\u0119d\\u0105 chcieli zabra\\u0107 krowy po cichu\\u201d. Cho\\u0107 po cichu b\\u0119dzie trudno, bo z tego, co opowiadaj\\u0105 miejscowi rolnicy, zaganianie tak wielkiego stada mo\\u017ce zamieni\\u0107 si\\u0119 w rze\\u017a.</p><p><b>\\u201eNajpierw zagania si\\u0119 m\\u0142ode, oddziela si\\u0119 je od reszty. Wtedy zaczyna si\\u0119 chaos, m\\u0142ode si\\u0119 przewracaj\\u0105, \\u0142ami\\u0105 nogi, mog\\u0105 zosta\\u0107 stratowane. Potem przychodzi czas na reszt\\u0119 przera\\u017conego stada. Trudno mi sobie to wszystko wyobrazi\\u0107, to b\\u0119dzie rze\\u017a\\u201d \\u2013 kiedy Agnieszka opowiada, g\\u0142os jej si\\u0119 \\u0142amie.</b></p><p>\\u201eCo wtedy zrobimy? Du\\u017co o tym my\\u015blimy. B\\u0119dziemy patrze\\u0107 na rze\\u017a? Nie wiem, czy b\\u0119d\\u0119 w stanie to wytrzyma\\u0107\\u201d.</p><p>\\u201eLicz\\u0119, \\u017ce kto\\u015b w ko\\u0144cu przejrzy na oczy, przecie\\u017c my chcemy tylko je st\\u0105d bezpiecznie zabra\\u0107. Podchodz\\u0105 do nas, nie s\\u0105 agresywne. S\\u0105 przyjazne, spokojne. Trudno to opisa\\u0107, panuje tu niesamowita atmosfera, chce si\\u0119 wraca\\u0107\\u201d.</p><p>Agnieszka pisze listy do wszystkich: \\u201eDo papie\\u017ca, do Trumpa, do kogo mog\\u0119. W Anglii by\\u0142 spory odzew, pani z Yahoo odezwa\\u0142a si\\u0119 z poparciem, Pamela Anderson odpisa\\u0142a, \\u017ce popiera, podpisa\\u0142a petycj\\u0119. Ale do polskich urz\\u0119dnik\\u00f3w jakby nic nie dociera\\u0142o\\u201d.</p><p>Jeden z list\\u00f3w dostaje te\\u017c prezes PiS\\u00a0Jaros\\u0142aw Kaczy\\u0144ski, kt\\u00f3ry <a href=\\"https://wiadomosci.onet.pl/tylko-w-onecie/stado-krow-z-deszczna-prezes-pis-jaroslaw-kaczynski-interweniuje/plcdl1r?utm_source=m.facebook.com_viasg_lubuskie&amp;utm_medium=referal&amp;utm_campaign=leo_automatic&amp;srcc=ucs&amp;utm_v=2\\">mia\\u0142 podobno interweniowa\\u0107 w sprawie kr\\u00f3w</a> u Ministra Rolnictwa i Rozwoju Wsi.</p><p>\\u201eOstateczna decyzja nie le\\u017cy jednak w kompetencjach pos\\u0142a na Sejm RP\\u201d \\u2013 informowa\\u0142 aktywist\\u00f3w Rados\\u0142aw Fogiel,\\u00a0dyrektor biura poselskiego Kaczy\\u0144skiego.</p><p>Nie wiadomo czy prezes opowiada\\u0142 si\\u0119 za jakim\\u015b konkretnym rozwi\\u0105zaniem. \\u201eJego wielkie serce do zwierz\\u0105t nie jest tajemnic\\u0105\\u201d \\u2013 t\\u0142umaczy\\u0142 Fogiel.</p><h2><b>Interwencja</b></h2><p>\\u201eDzi\\u015b (28 maja 2019) jednak otrzymali\\u015bmy sygna\\u0142, \\u017ce jest przestrze\\u0144 do rozmowy z Inspekcj\\u0105 o uratowaniu tych zwierz\\u0105t. Zobaczymy, jakie b\\u0119d\\u0105 jej efekty, ale najwa\\u017cniejsze jest teraz, by organy nie dzia\\u0142a\\u0142y pochopnie, tylko otworzy\\u0142y si\\u0119 na to, \\u017ce istniej\\u0105 opcje pozwalaj\\u0105ce pozostawi\\u0107 te krowy przy \\u017cyciu. Od jutra rana b\\u0119dziemy starali si\\u0119 podj\\u0105\\u0107 te rozmowy\\u201d \\u2013 m\\u00f3wi mec.\\u00a0Kuszlewicz.</p><p>\\u201eWygl\\u0105da na to, \\u017ce zmiana wysz\\u0142a od kierownictwa partii rz\\u0105dz\\u0105cej\\u201d \\u2013 m\\u00f3wi m\\u00f3wi OKO.press etyk i zoolog prof. Andrzej El\\u017canowski z Polskiego Towarzystwa Etycznego. \\u2013 \\u201eTo nie zmienia oczywi\\u015bcie faktu, \\u017ce b\\u0119dziemy kontynuowa\\u0107 procedury prawne w zwi\\u0105zku z fataln\\u0105 decyzj\\u0105 Powiatowego Lekarza Weterynarii i wadliwym wyrokiem s\\u0105du\\u201d.</p><p>\\u201eMo\\u017ce krowy zatrz\\u0105sn\\u0105 tymi powiatowymi uk\\u0142adami, a\\u00a0Inspekcja Weterynaryjna nauczy si\\u0119 respektowa\\u0107 wra\\u017cliwo\\u015b\\u0107 spo\\u0142eczn\\u0105 w sprawach, kt\\u00f3rych sama nie rozumie, czyli kwestii etycznego podej\\u015bcia do zwierz\\u0105t. Sytuacja kr\\u00f3w wywo\\u0142a\\u0142a wyj\\u0105tkow\\u0105 reakcj\\u0119, bo poruszy\\u0142a zar\\u00f3wno \\u015brodowisko miejskie, jak i wiejskie. Opinia publiczna by\\u0142a zdecydowanie po stronie kr\\u00f3w\\u201d.</p><p>\\u201eSpokojny b\\u0119d\\u0119 jednak dopiero, kiedy krowy trafi\\u0105 bezpiecznie na przygotowane dla nich pastwiska\\u201d \\u2013 m\\u00f3wi prof. El\\u017canowski.</p><p>Na razie decyzja wci\\u0105\\u017c jest jednak w mocy, a aktywi\\u015bci obawiaj\\u0105 si\\u0119, \\u017ce do zabrania kr\\u00f3w na ub\\u00f3j dojdzie ju\\u017c w pi\\u0105tek. Apeluj\\u0105 o obecno\\u015b\\u0107. Wszyscy, kt\\u00f3rzy nie mog\\u0105 wybra\\u0107 si\\u0119 na miejsce, mog\\u0105 wesprze\\u0107 inicjatyw\\u0119 podpisuj\\u0105c <a href=\\"https://secure.avaaz.org/pl/community_petitions/G_Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno/?rc=fb&amp;utm_source=sharetools&amp;utm_medium=facebook&amp;utm_campaign=petition-725767-Zapewnienie_dobrego_zycia_dla_stada_wolnych_krow_z_gminy_Deszczno&amp;utm_term=txbidb%2Bpl&amp;fbclid=IwAR0PARNo8r9W7WbR6e8w2YMctX1j_7hMd3YkN_nilgh_0z-XMNT7eehytpQ\\">petycj\\u0119</a>. Czuwamy dalej.</p>", "photo": 15, "publication_date": "2019-05-29"}	\N	13	1
13	f	2019-05-28 16:51:40.20286+02	{"pk": 11, "path": "00010001000100030001", "depth": 5, "numchild": 0, "title": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "title_pl": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "title_en": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "draft_title": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "slug": "geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy", "slug_pl": "geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy", "slug_en": "geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/news/geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy/", "url_path_en": "home-page1/news/geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "headline": "\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142, to r\\u0119ka podniesiona na Polsk\\u0119\\u201d - m\\u00f3wi\\u0142 kilka tygodni temu Jaros\\u0142aw Kaczy\\u0144ski. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Ju\\u017c wiedz\\u0105, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedro\\u0144, Leszek Ja\\u017cd\\u017cewski, Tomasz Sekielski i gda\\u0144ski Marsz R\\u00f3wno\\u015bci.", "headline_pl": "\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142, to r\\u0119ka podniesiona na Polsk\\u0119\\u201d - m\\u00f3wi\\u0142 kilka tygodni temu Jaros\\u0142aw Kaczy\\u0144ski. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Ju\\u017c wiedz\\u0105, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedro\\u0144, Leszek Ja\\u017cd\\u017cewski, Tomasz Sekielski i gda\\u0144ski Marsz R\\u00f3wno\\u015bci.", "headline_en": "\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142, to r\\u0119ka podniesiona na Polsk\\u0119\\u201d - m\\u00f3wi\\u0142 kilka tygodni temu Jaros\\u0142aw Kaczy\\u0144ski. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Ju\\u017c wiedz\\u0105, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedro\\u0144, Leszek Ja\\u017cd\\u017cewski, Tomasz Sekielski i gda\\u0144ski Marsz R\\u00f3wno\\u015bci.", "photo": 13, "publication_date": "2019-05-28", "body": "<p>Jako pierwszy has\\u0142o o zgubnym wp\\u0142ywie gda\\u0144skiego Marszu R\\u00f3wno\\u015bci rzuci\\u0142 na Twitterze Jaros\\u0142aw Gowin. Cho\\u0107 wicepremier wydarzeniu przypisywa\\u0142 sprawczo\\u015b\\u0107 nadprzyrodzon\\u0105 \\u2013 blu\\u017anierstwo mia\\u0142o skutkowa\\u0107 ukaraniem KE w wyborach \\u2013 w \\u015blad za nim rozpocz\\u0119\\u0142y si\\u0119 bardziej \\u015bwieckie interpretacje.</p><p>\\u201eMobilizacja \\u015brodowisk wiejskich, to mog\\u0142a by\\u0107 reakcja na pr\\u00f3b\\u0119 oderwania Ko\\u015bcio\\u0142a od polsko\\u015bci\\u201d \\u2013 komentowa\\u0142 w \\u201eKropce nad i\\u201d 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. \\u201eLudzie odr\\u00f3\\u017cniaj\\u0105 grzechy ksi\\u0119\\u017cy od fundament\\u00f3w wsp\\u00f3lnotowych\\u201d \\u2013 komentowa\\u0142 s\\u0142owa Moniki Olejnik o tym, \\u017ce w Radiu Maryja pracuje ksi\\u0105dz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicuj\\u0105cy PiS upodabniaj\\u0105 si\\u0119 do zwolennik\\u00f3w Koalicji, to upatrywanie sukcesu\\u00a0 mobilizacyjnego w motywacji negatywnej, czyli reakcji na dzia\\u0142ania przeciwnika. O ile w przypadku KE rzeczywi\\u015bcie rekcja na dzia\\u0142ania PiS by\\u0142a g\\u0142\\u00f3wnym paliwem, o tyle twierdzenie, \\u017ce ten sam mechanizm przes\\u0105dzi\\u0142 o zwyci\\u0119stwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicy\\u015bci wt\\u00f3ruj\\u0105</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu \\u201ewojny religijnej\\u201d robi od niedzieli zawrotn\\u0105 karier\\u0119 w\\u015br\\u00f3d publicyst\\u00f3w.</p><p><b>Micha\\u0142 Szu\\u0142drzy\\u0144ski</b> z \\u201eRzeczpospolitej\\u201d\\u00a0<a href=\\"https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html\\">wskazuje</a> ten w\\u0105tek kampanii zaraz po \\u201epi\\u0105tce PiS\\u201d i akcji przeciwpowodziowej. \\u201eZwyci\\u0119stwo PiS pokazuje te\\u017c jakim powa\\u017cny b\\u0142\\u0119dem by\\u0142o granie przez opozycj\\u0119 antyklerykaln\\u0105 kart\\u0105. Owszem, film Sekielskich obejrza\\u0142o 21 milion\\u00f3w Polak\\u00f3w, ale to nie oznacza, \\u017ce wyborcy chc\\u0105 wojny z Ko\\u015bcio\\u0142em\\u201d.</p><p>I dodaje na Twitterze: \\u201eJe\\u015bli kto\\u015b uzna\\u0142, \\u017ce popularno\\u015b\\u0107 filmu o pedofilii oznacza, \\u017ce Polacy chc\\u0105 wojny z Ko\\u015bcio\\u0142em, to chyba si\\u0119 pomyli\\u0142\\u201d.</p><p><b>Tomasz Lis</b>\\u00a0(\\u201eNewsweek\\u201d) w <a href=\\"https://twitter.com/KonradPiasecki/status/1132939710962241536\\">social mediach</a> ok\\u0142ada Roberta Biedronia oraz Leszka Ja\\u017cd\\u017cewskiego: \\u201eGeneralnie proponuj\\u0119 zacz\\u0105\\u0107 od szacunku dla wyborc\\u00f3w, ich wiary i przywi\\u0105zania do tradycji. Jak kto\\u015b chce tu robi\\u0107 rewolucj\\u0119, to ko\\u0144czy jako lider ugrupowania na 6%, albo autor wyst\\u0105pienia, kt\\u00f3re by\\u0142o najwi\\u0119kszym prezentem dla PiS \\u2013 u w tej kampanii\\u201d.</p><p><b>Konrad Piasecki</b> (TVN24): \\u201eCiekawe czy poczucie satysfakcji maj\\u0105 wszyscy ci, kt\\u00f3rzy wpychaj\\u0105 opozycj\\u0119 na \\u015bcian\\u0119 bezpardonowej walki z Ko\\u015bcio\\u0142em, natychmiastowej aborcji na \\u017cyczenie i ciesz\\u0105 si\\u0119 z \\u00bb\\u015bwi\\u0119tej waginy\\u00ab na Paradzie R\\u00f3wno\\u015bci\\u201d.</p><p>\\u201eA gdybym by\\u0142 m\\u0142otkowym, to co by\\u015b powiedzia\\u0142a? A gdyby przysz\\u0142o zrozumie\\u0107, \\u017ce retoryka supportu by\\u0142a paliwem do obrony \\u201enaszego proboszcza\\u201d przed lewactwem? \\u017be dzi\\u015b odwo\\u0142uj\\u0105 lider\\u00f3w opozycji malkontenci, kt\\u00f3rzy sami palcem nie kiwn\\u0119li? \\u017be kr\\u00f3tkie spodenki Wiosny da\\u0142y PiS wygran\\u0105?\\u201d \\u2013 <a href=\\"https://twitter.com/PSzubartowicz/status/1132989543626530816\\">retorycznie pyta</a> <b>Przemys\\u0142aw Szubartowicz</b> (\\u201eWiadomo Co\\u201d).</p><p>\\u201eWojna z Matk\\u0105 Bosk\\u0105 Cz\\u0119stochowsk\\u0105, szyderstwa z Naj\\u015bwi\\u0119tszego Sakramentu przynios\\u0142y Koalicji Europejskiej gorzk\\u0105 kl\\u0119sk\\u0119, by\\u0107 mo\\u017ce grzebi\\u0105c jakiekolwiek szanse opozycji na jesienne zwyci\\u0119stwo\\u201d \\u2013 to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> (\\u201eSieci\\u201d, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentator\\u00f3w.</p><h2><b>Nie odp\\u0142yw, a mobilizacja</b></h2><p>\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142 to r\\u0119ka podniesiona na Polsk\\u0119\\u201d \\u2013 m\\u00f3wi\\u0142 kilka tygodni temu <b>Jaros\\u0142aw Kaczy\\u0144ski</b>. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Uznali \\u015bledzenie pedofilskich skandali w Ko\\u015bciele oraz walk\\u0119 o prawa os\\u00f3b LGBT za walk\\u0119 z Ko\\u015bcio\\u0142em, przyjmuj\\u0105c w ca\\u0142ej rozci\\u0105g\\u0142o\\u015bci narracj\\u0119 forsowan\\u0105 przez PiS.</p><p>Zapominaj\\u0105c po drodze, \\u017ce Koalicja Europejska \\u017cadnej z tych walk nie prowadzi\\u0142a. Do szuflady schowa\\u0142a aborcj\\u0119 razem z Barbar\\u0105 Nowack\\u0105, o rozdziale Ko\\u015bcio\\u0142a od pa\\u0144stwa nie m\\u00f3wi\\u0142a w formie innej ni\\u017c og\\u00f3lnikowa.</p><p>Pojawi\\u0142y si\\u0119 deklaracje o komisji do spraw pedofilii, ale zag\\u0142uszone przez konkurencyjne propozycje Prawa i Sprawiedliwo\\u015bci. TVP pokazywa\\u0142o co drugi dzie\\u0144 wyst\\u0105pienie Leszka Ja\\u017cd\\u017cewskiego, twierdz\\u0105c, \\u017ce to tajny plan Koalicji na zniszczenie Ko\\u015bcio\\u0142a.</p><p>Ale TVP twierdzi wiele rzeczy: \\u017ce Donald Tusk jest niemieckim agentem, \\u017ce strajk nauczycieli by\\u0142 puczem organizowanym przez totaln\\u0105 opozycj\\u0119, a przede wszystkim, \\u017ce przeci\\u0119tna polska rodzina straci przez Koalicj\\u0119 120 tysi\\u0119cy z\\u0142otych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazi\\u0107 si\\u0119 na nagonk\\u0119 w mediach publicznych, nie ma \\u017cadnego sensu. B\\u0119dzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo maj\\u0105 zwolennicy Koalicji m\\u00f3wi\\u0107 filmowcom, aktywistom, dziennikarzom \\u015bledczym, czym maj\\u0105 si\\u0119 zajmowa\\u0107, aby nie zaszkodzi\\u0107 przypadkiem wynikowi wyborczemu?</li></ul><p>Co wi\\u0119cej, elektorat Koalicji jako ca\\u0142o\\u015bci, jak i poszczeg\\u00f3lnych partii jest zdecydowanie bardziej liberalny obyczajowo ni\\u017c sami politycy i liderzy. OKO.press nie bada\\u0142o co prawda poparcia dla \\u201e\\u015bwi\\u0119tej waginy na Paradzie R\\u00f3wno\\u015bci\\u201d, ale dla \\u201eaborcji natychmiast na \\u017cyczenie\\u201d ju\\u017c tak.</p><h4><b>Kobieta powinna mie\\u0107 prawo do przerwania ci\\u0105\\u017cy do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygl\\u0105da poparcie dla zwi\\u0105zk\\u00f3w partnerskich w elektoracie Koalicji, kt\\u00f3ra na ich temat milczy?</p><h4><b>Przyzwolenie na jednop\\u0142ciowe zwi\\u0105zki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna  Koalicja Europejska</p><p>Komentatorzy oczywi\\u015bcie nie stawiaj\\u0105 tezy, \\u017ce zniech\\u0119cony elektorat KE przep\\u0142yn\\u0105\\u0142 do PiS, bo obrazi\\u0142 si\\u0119 za to, \\u017ce w Gda\\u0144sku pokazano \\u201e\\u015bwi\\u0119t\\u0105 wagin\\u0119\\u201d. Musieliby zak\\u0142ada\\u0107, \\u017ce dla wyborc\\u00f3w bardziej liczy si\\u0119 ochrona uczu\\u0107 religijnych ni\\u017c obrona praworz\\u0105dno\\u015bci.</p><p>Efekt wyborczy mia\\u0142a przynie\\u015b\\u0107 wi\\u0119c mobilizacja. Innymi s\\u0142owy: oskar\\u017ca si\\u0119 osoby niezwi\\u0105zane z komitetem wyborczym KE o to, \\u017ce swoimi dzia\\u0142aniami zdenerwowa\\u0142y wyborc\\u00f3w prawicy.</p><p><b>Dlaczego mia\\u0142a to by\\u0107 Matka Boska w T\\u0119czowej aureoli, a nie s\\u0142owa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje si\\u0119 \\u201e\\u015bwi\\u0119tej waginie\\u201d dobry wynik wyborczy PiS, to czy ok\\u0142adanie kuk\\u0142y \\u017byda w Pruchniku uwa\\u017ca\\u0107 powinni\\u015bmy za zjawisko mobilizuj\\u0105ce zwolennik\\u00f3w KE?</p><h2><b>Co zawini\\u0142o?</b></h2><p>Zwolennicy Koalicji przypisuj\\u0105 zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href=\\"https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/\\">najnowszego sonda\\u017cu IPSOS</a> dla OKO.press*, cho\\u0107 elektorat KE rzeczywi\\u015bcie niesie niech\\u0119\\u0107 do PiS, to dla wyborc\\u00f3w prawicy g\\u0142osowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygl\\u0105da wykres motywacji elektoratu KE:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygl\\u0105da wykres motywacji elektoratu PiS:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwo\\u015b\\u0107</b></h4><p>Co istotne,</p><p><b>elektorat PiS spo\\u015br\\u00f3d pi\\u0119ciu analizowanych przez nas elektorat\\u00f3w, jako jedyny wskaza\\u0142 motywacj\\u0119 negatywn\\u0105 na ostatnim miejscu.</b></p><p>A z wynik\\u00f3w wybor\\u00f3w p\\u0142ynie jeden podstawowy wniosek: motywacja negatywna mobilizuje s\\u0142abiej ni\\u017c pozytywna.</p>", "body_pl": "<p>Jako pierwszy has\\u0142o o zgubnym wp\\u0142ywie gda\\u0144skiego Marszu R\\u00f3wno\\u015bci rzuci\\u0142 na Twitterze Jaros\\u0142aw Gowin. Cho\\u0107 wicepremier wydarzeniu przypisywa\\u0142 sprawczo\\u015b\\u0107 nadprzyrodzon\\u0105 \\u2013 blu\\u017anierstwo mia\\u0142o skutkowa\\u0107 ukaraniem KE w wyborach \\u2013 w \\u015blad za nim rozpocz\\u0119\\u0142y si\\u0119 bardziej \\u015bwieckie interpretacje.</p><p>\\u201eMobilizacja \\u015brodowisk wiejskich, to mog\\u0142a by\\u0107 reakcja na pr\\u00f3b\\u0119 oderwania Ko\\u015bcio\\u0142a od polsko\\u015bci\\u201d \\u2013 komentowa\\u0142 w \\u201eKropce nad i\\u201d 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. \\u201eLudzie odr\\u00f3\\u017cniaj\\u0105 grzechy ksi\\u0119\\u017cy od fundament\\u00f3w wsp\\u00f3lnotowych\\u201d \\u2013 komentowa\\u0142 s\\u0142owa Moniki Olejnik o tym, \\u017ce w Radiu Maryja pracuje ksi\\u0105dz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicuj\\u0105cy PiS upodabniaj\\u0105 si\\u0119 do zwolennik\\u00f3w Koalicji, to upatrywanie sukcesu\\u00a0 mobilizacyjnego w motywacji negatywnej, czyli reakcji na dzia\\u0142ania przeciwnika. O ile w przypadku KE rzeczywi\\u015bcie rekcja na dzia\\u0142ania PiS by\\u0142a g\\u0142\\u00f3wnym paliwem, o tyle twierdzenie, \\u017ce ten sam mechanizm przes\\u0105dzi\\u0142 o zwyci\\u0119stwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicy\\u015bci wt\\u00f3ruj\\u0105</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu \\u201ewojny religijnej\\u201d robi od niedzieli zawrotn\\u0105 karier\\u0119 w\\u015br\\u00f3d publicyst\\u00f3w.</p><p><b>Micha\\u0142 Szu\\u0142drzy\\u0144ski</b> z \\u201eRzeczpospolitej\\u201d\\u00a0<a href=\\"https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html\\">wskazuje</a> ten w\\u0105tek kampanii zaraz po \\u201epi\\u0105tce PiS\\u201d i akcji przeciwpowodziowej. \\u201eZwyci\\u0119stwo PiS pokazuje te\\u017c jakim powa\\u017cny b\\u0142\\u0119dem by\\u0142o granie przez opozycj\\u0119 antyklerykaln\\u0105 kart\\u0105. Owszem, film Sekielskich obejrza\\u0142o 21 milion\\u00f3w Polak\\u00f3w, ale to nie oznacza, \\u017ce wyborcy chc\\u0105 wojny z Ko\\u015bcio\\u0142em\\u201d.</p><p>I dodaje na Twitterze: \\u201eJe\\u015bli kto\\u015b uzna\\u0142, \\u017ce popularno\\u015b\\u0107 filmu o pedofilii oznacza, \\u017ce Polacy chc\\u0105 wojny z Ko\\u015bcio\\u0142em, to chyba si\\u0119 pomyli\\u0142\\u201d.</p><p><b>Tomasz Lis</b>\\u00a0(\\u201eNewsweek\\u201d) w <a href=\\"https://twitter.com/KonradPiasecki/status/1132939710962241536\\">social mediach</a> ok\\u0142ada Roberta Biedronia oraz Leszka Ja\\u017cd\\u017cewskiego: \\u201eGeneralnie proponuj\\u0119 zacz\\u0105\\u0107 od szacunku dla wyborc\\u00f3w, ich wiary i przywi\\u0105zania do tradycji. Jak kto\\u015b chce tu robi\\u0107 rewolucj\\u0119, to ko\\u0144czy jako lider ugrupowania na 6%, albo autor wyst\\u0105pienia, kt\\u00f3re by\\u0142o najwi\\u0119kszym prezentem dla PiS \\u2013 u w tej kampanii\\u201d.</p><p><b>Konrad Piasecki</b> (TVN24): \\u201eCiekawe czy poczucie satysfakcji maj\\u0105 wszyscy ci, kt\\u00f3rzy wpychaj\\u0105 opozycj\\u0119 na \\u015bcian\\u0119 bezpardonowej walki z Ko\\u015bcio\\u0142em, natychmiastowej aborcji na \\u017cyczenie i ciesz\\u0105 si\\u0119 z \\u00bb\\u015bwi\\u0119tej waginy\\u00ab na Paradzie R\\u00f3wno\\u015bci\\u201d.</p><p>\\u201eA gdybym by\\u0142 m\\u0142otkowym, to co by\\u015b powiedzia\\u0142a? A gdyby przysz\\u0142o zrozumie\\u0107, \\u017ce retoryka supportu by\\u0142a paliwem do obrony \\u201enaszego proboszcza\\u201d przed lewactwem? \\u017be dzi\\u015b odwo\\u0142uj\\u0105 lider\\u00f3w opozycji malkontenci, kt\\u00f3rzy sami palcem nie kiwn\\u0119li? \\u017be kr\\u00f3tkie spodenki Wiosny da\\u0142y PiS wygran\\u0105?\\u201d \\u2013 <a href=\\"https://twitter.com/PSzubartowicz/status/1132989543626530816\\">retorycznie pyta</a> <b>Przemys\\u0142aw Szubartowicz</b> (\\u201eWiadomo Co\\u201d).</p><p>\\u201eWojna z Matk\\u0105 Bosk\\u0105 Cz\\u0119stochowsk\\u0105, szyderstwa z Naj\\u015bwi\\u0119tszego Sakramentu przynios\\u0142y Koalicji Europejskiej gorzk\\u0105 kl\\u0119sk\\u0119, by\\u0107 mo\\u017ce grzebi\\u0105c jakiekolwiek szanse opozycji na jesienne zwyci\\u0119stwo\\u201d \\u2013 to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> (\\u201eSieci\\u201d, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentator\\u00f3w.</p><h2><b>Nie odp\\u0142yw, a mobilizacja</b></h2><p>\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142 to r\\u0119ka podniesiona na Polsk\\u0119\\u201d \\u2013 m\\u00f3wi\\u0142 kilka tygodni temu <b>Jaros\\u0142aw Kaczy\\u0144ski</b>. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Uznali \\u015bledzenie pedofilskich skandali w Ko\\u015bciele oraz walk\\u0119 o prawa os\\u00f3b LGBT za walk\\u0119 z Ko\\u015bcio\\u0142em, przyjmuj\\u0105c w ca\\u0142ej rozci\\u0105g\\u0142o\\u015bci narracj\\u0119 forsowan\\u0105 przez PiS.</p><p>Zapominaj\\u0105c po drodze, \\u017ce Koalicja Europejska \\u017cadnej z tych walk nie prowadzi\\u0142a. Do szuflady schowa\\u0142a aborcj\\u0119 razem z Barbar\\u0105 Nowack\\u0105, o rozdziale Ko\\u015bcio\\u0142a od pa\\u0144stwa nie m\\u00f3wi\\u0142a w formie innej ni\\u017c og\\u00f3lnikowa.</p><p>Pojawi\\u0142y si\\u0119 deklaracje o komisji do spraw pedofilii, ale zag\\u0142uszone przez konkurencyjne propozycje Prawa i Sprawiedliwo\\u015bci. TVP pokazywa\\u0142o co drugi dzie\\u0144 wyst\\u0105pienie Leszka Ja\\u017cd\\u017cewskiego, twierdz\\u0105c, \\u017ce to tajny plan Koalicji na zniszczenie Ko\\u015bcio\\u0142a.</p><p>Ale TVP twierdzi wiele rzeczy: \\u017ce Donald Tusk jest niemieckim agentem, \\u017ce strajk nauczycieli by\\u0142 puczem organizowanym przez totaln\\u0105 opozycj\\u0119, a przede wszystkim, \\u017ce przeci\\u0119tna polska rodzina straci przez Koalicj\\u0119 120 tysi\\u0119cy z\\u0142otych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazi\\u0107 si\\u0119 na nagonk\\u0119 w mediach publicznych, nie ma \\u017cadnego sensu. B\\u0119dzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo maj\\u0105 zwolennicy Koalicji m\\u00f3wi\\u0107 filmowcom, aktywistom, dziennikarzom \\u015bledczym, czym maj\\u0105 si\\u0119 zajmowa\\u0107, aby nie zaszkodzi\\u0107 przypadkiem wynikowi wyborczemu?</li></ul><p>Co wi\\u0119cej, elektorat Koalicji jako ca\\u0142o\\u015bci, jak i poszczeg\\u00f3lnych partii jest zdecydowanie bardziej liberalny obyczajowo ni\\u017c sami politycy i liderzy. OKO.press nie bada\\u0142o co prawda poparcia dla \\u201e\\u015bwi\\u0119tej waginy na Paradzie R\\u00f3wno\\u015bci\\u201d, ale dla \\u201eaborcji natychmiast na \\u017cyczenie\\u201d ju\\u017c tak.</p><h4><b>Kobieta powinna mie\\u0107 prawo do przerwania ci\\u0105\\u017cy do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygl\\u0105da poparcie dla zwi\\u0105zk\\u00f3w partnerskich w elektoracie Koalicji, kt\\u00f3ra na ich temat milczy?</p><h4><b>Przyzwolenie na jednop\\u0142ciowe zwi\\u0105zki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna  Koalicja Europejska</p><p>Komentatorzy oczywi\\u015bcie nie stawiaj\\u0105 tezy, \\u017ce zniech\\u0119cony elektorat KE przep\\u0142yn\\u0105\\u0142 do PiS, bo obrazi\\u0142 si\\u0119 za to, \\u017ce w Gda\\u0144sku pokazano \\u201e\\u015bwi\\u0119t\\u0105 wagin\\u0119\\u201d. Musieliby zak\\u0142ada\\u0107, \\u017ce dla wyborc\\u00f3w bardziej liczy si\\u0119 ochrona uczu\\u0107 religijnych ni\\u017c obrona praworz\\u0105dno\\u015bci.</p><p>Efekt wyborczy mia\\u0142a przynie\\u015b\\u0107 wi\\u0119c mobilizacja. Innymi s\\u0142owy: oskar\\u017ca si\\u0119 osoby niezwi\\u0105zane z komitetem wyborczym KE o to, \\u017ce swoimi dzia\\u0142aniami zdenerwowa\\u0142y wyborc\\u00f3w prawicy.</p><p><b>Dlaczego mia\\u0142a to by\\u0107 Matka Boska w T\\u0119czowej aureoli, a nie s\\u0142owa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje si\\u0119 \\u201e\\u015bwi\\u0119tej waginie\\u201d dobry wynik wyborczy PiS, to czy ok\\u0142adanie kuk\\u0142y \\u017byda w Pruchniku uwa\\u017ca\\u0107 powinni\\u015bmy za zjawisko mobilizuj\\u0105ce zwolennik\\u00f3w KE?</p><h2><b>Co zawini\\u0142o?</b></h2><p>Zwolennicy Koalicji przypisuj\\u0105 zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href=\\"https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/\\">najnowszego sonda\\u017cu IPSOS</a> dla OKO.press*, cho\\u0107 elektorat KE rzeczywi\\u015bcie niesie niech\\u0119\\u0107 do PiS, to dla wyborc\\u00f3w prawicy g\\u0142osowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygl\\u0105da wykres motywacji elektoratu KE:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygl\\u0105da wykres motywacji elektoratu PiS:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwo\\u015b\\u0107</b></h4><p>Co istotne,</p><p><b>elektorat PiS spo\\u015br\\u00f3d pi\\u0119ciu analizowanych przez nas elektorat\\u00f3w, jako jedyny wskaza\\u0142 motywacj\\u0119 negatywn\\u0105 na ostatnim miejscu.</b></p><p>A z wynik\\u00f3w wybor\\u00f3w p\\u0142ynie jeden podstawowy wniosek: motywacja negatywna mobilizuje s\\u0142abiej ni\\u017c pozytywna.</p>", "body_en": "<p>Jako pierwszy has\\u0142o o zgubnym wp\\u0142ywie gda\\u0144skiego Marszu R\\u00f3wno\\u015bci rzuci\\u0142 na Twitterze Jaros\\u0142aw Gowin. Cho\\u0107 wicepremier wydarzeniu przypisywa\\u0142 sprawczo\\u015b\\u0107 nadprzyrodzon\\u0105 \\u2013 blu\\u017anierstwo mia\\u0142o skutkowa\\u0107 ukaraniem KE w wyborach \\u2013 w \\u015blad za nim rozpocz\\u0119\\u0142y si\\u0119 bardziej \\u015bwieckie interpretacje.</p><p>\\u201eMobilizacja \\u015brodowisk wiejskich, to mog\\u0142a by\\u0107 reakcja na pr\\u00f3b\\u0119 oderwania Ko\\u015bcio\\u0142a od polsko\\u015bci\\u201d \\u2013 komentowa\\u0142 w \\u201eKropce nad i\\u201d 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. \\u201eLudzie odr\\u00f3\\u017cniaj\\u0105 grzechy ksi\\u0119\\u017cy od fundament\\u00f3w wsp\\u00f3lnotowych\\u201d \\u2013 komentowa\\u0142 s\\u0142owa Moniki Olejnik o tym, \\u017ce w Radiu Maryja pracuje ksi\\u0105dz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicuj\\u0105cy PiS upodabniaj\\u0105 si\\u0119 do zwolennik\\u00f3w Koalicji, to upatrywanie sukcesu\\u00a0 mobilizacyjnego w motywacji negatywnej, czyli reakcji na dzia\\u0142ania przeciwnika. O ile w przypadku KE rzeczywi\\u015bcie rekcja na dzia\\u0142ania PiS by\\u0142a g\\u0142\\u00f3wnym paliwem, o tyle twierdzenie, \\u017ce ten sam mechanizm przes\\u0105dzi\\u0142 o zwyci\\u0119stwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicy\\u015bci wt\\u00f3ruj\\u0105</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu \\u201ewojny religijnej\\u201d robi od niedzieli zawrotn\\u0105 karier\\u0119 w\\u015br\\u00f3d publicyst\\u00f3w.</p><p><b>Micha\\u0142 Szu\\u0142drzy\\u0144ski</b> z \\u201eRzeczpospolitej\\u201d\\u00a0<a href=\\"https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html\\">wskazuje</a> ten w\\u0105tek kampanii zaraz po \\u201epi\\u0105tce PiS\\u201d i akcji przeciwpowodziowej. \\u201eZwyci\\u0119stwo PiS pokazuje te\\u017c jakim powa\\u017cny b\\u0142\\u0119dem by\\u0142o granie przez opozycj\\u0119 antyklerykaln\\u0105 kart\\u0105. Owszem, film Sekielskich obejrza\\u0142o 21 milion\\u00f3w Polak\\u00f3w, ale to nie oznacza, \\u017ce wyborcy chc\\u0105 wojny z Ko\\u015bcio\\u0142em\\u201d.</p><p>I dodaje na Twitterze: \\u201eJe\\u015bli kto\\u015b uzna\\u0142, \\u017ce popularno\\u015b\\u0107 filmu o pedofilii oznacza, \\u017ce Polacy chc\\u0105 wojny z Ko\\u015bcio\\u0142em, to chyba si\\u0119 pomyli\\u0142\\u201d.</p><p><b>Tomasz Lis</b>\\u00a0(\\u201eNewsweek\\u201d) w <a href=\\"https://twitter.com/KonradPiasecki/status/1132939710962241536\\">social mediach</a> ok\\u0142ada Roberta Biedronia oraz Leszka Ja\\u017cd\\u017cewskiego: \\u201eGeneralnie proponuj\\u0119 zacz\\u0105\\u0107 od szacunku dla wyborc\\u00f3w, ich wiary i przywi\\u0105zania do tradycji. Jak kto\\u015b chce tu robi\\u0107 rewolucj\\u0119, to ko\\u0144czy jako lider ugrupowania na 6%, albo autor wyst\\u0105pienia, kt\\u00f3re by\\u0142o najwi\\u0119kszym prezentem dla PiS \\u2013 u w tej kampanii\\u201d.</p><p><b>Konrad Piasecki</b> (TVN24): \\u201eCiekawe czy poczucie satysfakcji maj\\u0105 wszyscy ci, kt\\u00f3rzy wpychaj\\u0105 opozycj\\u0119 na \\u015bcian\\u0119 bezpardonowej walki z Ko\\u015bcio\\u0142em, natychmiastowej aborcji na \\u017cyczenie i ciesz\\u0105 si\\u0119 z \\u00bb\\u015bwi\\u0119tej waginy\\u00ab na Paradzie R\\u00f3wno\\u015bci\\u201d.</p><p>\\u201eA gdybym by\\u0142 m\\u0142otkowym, to co by\\u015b powiedzia\\u0142a? A gdyby przysz\\u0142o zrozumie\\u0107, \\u017ce retoryka supportu by\\u0142a paliwem do obrony \\u201enaszego proboszcza\\u201d przed lewactwem? \\u017be dzi\\u015b odwo\\u0142uj\\u0105 lider\\u00f3w opozycji malkontenci, kt\\u00f3rzy sami palcem nie kiwn\\u0119li? \\u017be kr\\u00f3tkie spodenki Wiosny da\\u0142y PiS wygran\\u0105?\\u201d \\u2013 <a href=\\"https://twitter.com/PSzubartowicz/status/1132989543626530816\\">retorycznie pyta</a> <b>Przemys\\u0142aw Szubartowicz</b> (\\u201eWiadomo Co\\u201d).</p><p>\\u201eWojna z Matk\\u0105 Bosk\\u0105 Cz\\u0119stochowsk\\u0105, szyderstwa z Naj\\u015bwi\\u0119tszego Sakramentu przynios\\u0142y Koalicji Europejskiej gorzk\\u0105 kl\\u0119sk\\u0119, by\\u0107 mo\\u017ce grzebi\\u0105c jakiekolwiek szanse opozycji na jesienne zwyci\\u0119stwo\\u201d \\u2013 to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> (\\u201eSieci\\u201d, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentator\\u00f3w.</p><h2><b>Nie odp\\u0142yw, a mobilizacja</b></h2><p>\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142 to r\\u0119ka podniesiona na Polsk\\u0119\\u201d \\u2013 m\\u00f3wi\\u0142 kilka tygodni temu <b>Jaros\\u0142aw Kaczy\\u0144ski</b>. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Uznali \\u015bledzenie pedofilskich skandali w Ko\\u015bciele oraz walk\\u0119 o prawa os\\u00f3b LGBT za walk\\u0119 z Ko\\u015bcio\\u0142em, przyjmuj\\u0105c w ca\\u0142ej rozci\\u0105g\\u0142o\\u015bci narracj\\u0119 forsowan\\u0105 przez PiS.</p><p>Zapominaj\\u0105c po drodze, \\u017ce Koalicja Europejska \\u017cadnej z tych walk nie prowadzi\\u0142a. Do szuflady schowa\\u0142a aborcj\\u0119 razem z Barbar\\u0105 Nowack\\u0105, o rozdziale Ko\\u015bcio\\u0142a od pa\\u0144stwa nie m\\u00f3wi\\u0142a w formie innej ni\\u017c og\\u00f3lnikowa.</p><p>Pojawi\\u0142y si\\u0119 deklaracje o komisji do spraw pedofilii, ale zag\\u0142uszone przez konkurencyjne propozycje Prawa i Sprawiedliwo\\u015bci. TVP pokazywa\\u0142o co drugi dzie\\u0144 wyst\\u0105pienie Leszka Ja\\u017cd\\u017cewskiego, twierdz\\u0105c, \\u017ce to tajny plan Koalicji na zniszczenie Ko\\u015bcio\\u0142a.</p><p>Ale TVP twierdzi wiele rzeczy: \\u017ce Donald Tusk jest niemieckim agentem, \\u017ce strajk nauczycieli by\\u0142 puczem organizowanym przez totaln\\u0105 opozycj\\u0119, a przede wszystkim, \\u017ce przeci\\u0119tna polska rodzina straci przez Koalicj\\u0119 120 tysi\\u0119cy z\\u0142otych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazi\\u0107 si\\u0119 na nagonk\\u0119 w mediach publicznych, nie ma \\u017cadnego sensu. B\\u0119dzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo maj\\u0105 zwolennicy Koalicji m\\u00f3wi\\u0107 filmowcom, aktywistom, dziennikarzom \\u015bledczym, czym maj\\u0105 si\\u0119 zajmowa\\u0107, aby nie zaszkodzi\\u0107 przypadkiem wynikowi wyborczemu?</li></ul><p>Co wi\\u0119cej, elektorat Koalicji jako ca\\u0142o\\u015bci, jak i poszczeg\\u00f3lnych partii jest zdecydowanie bardziej liberalny obyczajowo ni\\u017c sami politycy i liderzy. OKO.press nie bada\\u0142o co prawda poparcia dla \\u201e\\u015bwi\\u0119tej waginy na Paradzie R\\u00f3wno\\u015bci\\u201d, ale dla \\u201eaborcji natychmiast na \\u017cyczenie\\u201d ju\\u017c tak.</p><h4><b>Kobieta powinna mie\\u0107 prawo do przerwania ci\\u0105\\u017cy do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygl\\u0105da poparcie dla zwi\\u0105zk\\u00f3w partnerskich w elektoracie Koalicji, kt\\u00f3ra na ich temat milczy?</p><h4><b>Przyzwolenie na jednop\\u0142ciowe zwi\\u0105zki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna  Koalicja Europejska</p><p>Komentatorzy oczywi\\u015bcie nie stawiaj\\u0105 tezy, \\u017ce zniech\\u0119cony elektorat KE przep\\u0142yn\\u0105\\u0142 do PiS, bo obrazi\\u0142 si\\u0119 za to, \\u017ce w Gda\\u0144sku pokazano \\u201e\\u015bwi\\u0119t\\u0105 wagin\\u0119\\u201d. Musieliby zak\\u0142ada\\u0107, \\u017ce dla wyborc\\u00f3w bardziej liczy si\\u0119 ochrona uczu\\u0107 religijnych ni\\u017c obrona praworz\\u0105dno\\u015bci.</p><p>Efekt wyborczy mia\\u0142a przynie\\u015b\\u0107 wi\\u0119c mobilizacja. Innymi s\\u0142owy: oskar\\u017ca si\\u0119 osoby niezwi\\u0105zane z komitetem wyborczym KE o to, \\u017ce swoimi dzia\\u0142aniami zdenerwowa\\u0142y wyborc\\u00f3w prawicy.</p><p><b>Dlaczego mia\\u0142a to by\\u0107 Matka Boska w T\\u0119czowej aureoli, a nie s\\u0142owa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje si\\u0119 \\u201e\\u015bwi\\u0119tej waginie\\u201d dobry wynik wyborczy PiS, to czy ok\\u0142adanie kuk\\u0142y \\u017byda w Pruchniku uwa\\u017ca\\u0107 powinni\\u015bmy za zjawisko mobilizuj\\u0105ce zwolennik\\u00f3w KE?</p><h2><b>Co zawini\\u0142o?</b></h2><p>Zwolennicy Koalicji przypisuj\\u0105 zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href=\\"https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/\\">najnowszego sonda\\u017cu IPSOS</a> dla OKO.press*, cho\\u0107 elektorat KE rzeczywi\\u015bcie niesie niech\\u0119\\u0107 do PiS, to dla wyborc\\u00f3w prawicy g\\u0142osowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygl\\u0105da wykres motywacji elektoratu KE:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygl\\u0105da wykres motywacji elektoratu PiS:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwo\\u015b\\u0107</b></h4><p>Co istotne,</p><p><b>elektorat PiS spo\\u015br\\u00f3d pi\\u0119ciu analizowanych przez nas elektorat\\u00f3w, jako jedyny wskaza\\u0142 motywacj\\u0119 negatywn\\u0105 na ostatnim miejscu.</b></p><p>A z wynik\\u00f3w wybor\\u00f3w p\\u0142ynie jeden podstawowy wniosek: motywacja negatywna mobilizuje s\\u0142abiej ni\\u017c pozytywna.</p>"}	\N	11	1
19	f	2019-05-29 12:00:56.777697+02	{"pk": 3, "path": "00010002", "depth": 2, "numchild": 3, "title": "Home page1", "title_pl": "Strona domowa1", "title_en": "Home page1", "draft_title": "Home page1", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/", "url_path_pl": "strona-domowa1/", "url_path_en": "home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-05-28T08:31:09.799Z", "latest_revision_created_at": "2019-05-28T08:31:09.739Z", "live_revision": 8, "header": "We work with those who are not afraid to break the rules", "header_pl": "Pracujemy z tymi, kt\\u00f3rzy nie boj\\u0105 si\\u0119 \\u0142ama\\u0107 regu\\u0142", "header_en": "We work with those who are not afraid to break the rules", "specializations_headline": "spec headline EN", "specializations_headline_pl": "spec headline PL", "specializations_headline_en": "spec headline EN", "r_and_d_center_headline": "Your private R&D center", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144, Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "cooperators_logos": [{"pk": 1, "sort_order": 0, "page": 3, "image": 8}, {"pk": 2, "sort_order": 1, "page": 3, "image": 6}, {"pk": 3, "sort_order": 2, "page": 3, "image": 7}], "rodo_pass": [{"pk": 3, "page": 3, "title": "PS: Jeste\\u015bmy zgodni z RODO", "title_pl": "PS: Jeste\\u015bmy zgodni z RODO", "title_en": null, "description": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_pl": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_en": null, "url": "https://rodopass.pl/", "button_text": "dowiedz si\\u0119 wi\\u0119cej", "button_text_pl": "dowiedz si\\u0119 wi\\u0119cej", "button_text_en": null}], "footer": [{"pk": 2, "page": 3, "contact": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_pl": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_en": "", "address": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_pl": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_en": "", "how_we_work": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_pl": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_en": "", "privacy_policy": "https://youtu.be/UG-7hqw90LE"}]}	\N	3	1
22	f	2019-05-29 14:56:48.718288+02	{"pk": 18, "path": "0001000200040002", "depth": 4, "numchild": 0, "title": "Edward Abramowski", "title_pl": "Edward Abramowski", "title_en": "Edward Abramowski", "draft_title": "Edward Abramowski", "slug": "edward-abramowski", "slug_pl": "edward-abramowski", "slug_en": "edward-abramowski", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/eksperymentalni-i-elastyczni/edward-abramowski/", "url_path_pl": "strona-domowa1/eksperymentalni-i-elastyczni/edward-abramowski/", "url_path_en": "home-page1/eksperymentalni-i-elastyczni/edward-abramowski/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "name": "Edward Abramowski", "description": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana \\u017beromskiego, pierwowz\\u00f3r Szymona Gajowca w powie\\u015bci \\u201ePrzedwio\\u015bnie\\u201d, wolnomularz[3].  Wojciech Gie\\u0142\\u017cy\\u0144ski wskazuje, \\u017ce \\u201eabramowszczyzna\\u201d zabarwia\\u0142a nie tylko program ludowo-demokratycznej opozycji PSL przeciw ustrojowi komunistycznemu \\u201edemokracji ludowej\\u201d, ale tak\\u017ce dzia\\u0142aczy socjalizmu humanistycznego w PPS. Tak\\u017ce Komitet Obrony Robotnik\\u00f3w, a nawet \\u201eSolidarno\\u015b\\u0107\\u201d, mia\\u0142y swoje korzenie w filozofii Edwarda Abramowskiego[4]. By\\u0142 (i", "description_pl": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana \\u017beromskiego, pierwowz\\u00f3r Szymona Gajowca w powie\\u015bci \\u201ePrzedwio\\u015bnie\\u201d, wolnomularz[3].  Wojciech Gie\\u0142\\u017cy\\u0144ski wskazuje, \\u017ce \\u201eabramowszczyzna\\u201d zabarwia\\u0142a nie tylko program ludowo-demokratycznej opozycji PSL przeciw ustrojowi komunistycznemu \\u201edemokracji ludowej\\u201d, ale tak\\u017ce dzia\\u0142aczy socjalizmu humanistycznego w PPS. Tak\\u017ce Komitet Obrony Robotnik\\u00f3w, a nawet \\u201eSolidarno\\u015b\\u0107\\u201d, mia\\u0142y swoje korzenie w filozofii Edwarda Abramowskiego[4]. By\\u0142 (i", "description_en": "polski my\\u015bliciel polityczny, filozof, psycholog i socjolog. Bliski przyjaciel Stefana \\u017beromskiego, pierwowz\\u00f3r Szymona Gajowca w powie\\u015bci \\u201ePrzedwio\\u015bnie\\u201d, wolnomularz[3].  Wojciech Gie\\u0142\\u017cy\\u0144ski wskazuje, \\u017ce \\u201eabramowszczyzna\\u201d zabarwia\\u0142a nie tylko program ludowo-demokratycznej opozycji PSL przeciw ustrojowi komunistycznemu \\u201edemokracji ludowej\\u201d, ale tak\\u017ce dzia\\u0142aczy socjalizmu humanistycznego w PPS. Tak\\u017ce Komitet Obrony Robotnik\\u00f3w, a nawet \\u201eSolidarno\\u015b\\u0107\\u201d, mia\\u0142y swoje korzenie w filozofii Edwarda Abramowskiego[4]. By\\u0142 (i", "photo": 17, "tagged_items": [{"pk": 3, "tag": 1, "content_object": 18}, {"pk": 4, "tag": 3, "content_object": 18}]}	\N	18	1
21	f	2019-05-29 13:05:06.488812+02	{"pk": 17, "path": "0001000200040001", "depth": 4, "numchild": 0, "title": "pracownik1", "title_pl": "pracownik1", "title_en": "pracownik1", "draft_title": "pracownik1", "slug": "pracownik1", "slug_pl": "pracownik1", "slug_en": "pracownik1", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/eksperymentalni-i-elastyczni/pracownik1/", "url_path_pl": "strona-domowa1/eksperymentalni-i-elastyczni/pracownik1/", "url_path_en": "home-page1/eksperymentalni-i-elastyczni/pracownik1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "name": "Jan Kowalski", "description": "\\u2013 ameryka\\u0144ski polityk, cz\\u0142onek Partii Republika\\u0144skiej. Od 2011 do 2017 by\\u0142 przedstawicielem czwartego okr\\u0119gu wyborczego w stanie Kansas do Izby Reprezentant\\u00f3w Stan\\u00f3w Zjednoczonych. Od 2018 sekretarz stanu Stan\\u00f3w Zjednoczonych w administracji prezydenta Donalda Trumpa.", "description_pl": "\\u2013 ameryka\\u0144ski polityk, cz\\u0142onek Partii Republika\\u0144skiej. Od 2011 do 2017 by\\u0142 przedstawicielem czwartego okr\\u0119gu wyborczego w stanie Kansas do Izby Reprezentant\\u00f3w Stan\\u00f3w Zjednoczonych. Od 2018 sekretarz stanu Stan\\u00f3w Zjednoczonych w administracji prezydenta Donalda Trumpa.", "description_en": "\\u2013 ameryka\\u0144ski polityk, cz\\u0142onek Partii Republika\\u0144skiej. Od 2011 do 2017 by\\u0142 przedstawicielem czwartego okr\\u0119gu wyborczego w stanie Kansas do Izby Reprezentant\\u00f3w Stan\\u00f3w Zjednoczonych. Od 2018 sekretarz stanu Stan\\u00f3w Zjednoczonych w administracji prezydenta Donalda Trumpa.", "photo": 11, "tagged_items": [{"pk": 1, "tag": 1, "content_object": 17}, {"pk": 2, "tag": 2, "content_object": 17}]}	\N	17	1
25	f	2019-05-29 15:17:14.829098+02	{"pk": 10, "path": "000100020003", "depth": 3, "numchild": 4, "title": "news", "title_pl": "aktualno\\u015bci", "title_en": "news", "draft_title": "News", "slug": "news", "slug_pl": "aktualno\\u015bci", "slug_en": "news", "content_type": 37, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/news/", "url_path_pl": "strona-domowa1/aktualno\\u015bci/", "url_path_en": "home-page1/news/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-28T14:08:25.294Z", "last_published_at": "2019-05-28T14:08:25.294Z", "latest_revision_created_at": "2019-05-28T14:08:25.261Z", "live_revision": 12}	\N	10	1
24	f	2019-05-29 15:16:37.82818+02	{"pk": 5, "path": "000100020001", "depth": 3, "numchild": 1, "title": "specializations", "title_pl": "specjalizacje", "title_en": "specializations", "draft_title": "specjalizacje index", "slug": "specializations", "slug_pl": "specializacje", "slug_en": "specializations", "content_type": 32, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/spec2/", "url_path_pl": "strona-domowa1/spec2/", "url_path_en": "home-page1/spec2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:45:32.933Z", "last_published_at": "2019-05-28T09:14:37.788Z", "latest_revision_created_at": "2019-05-28T09:14:37.748Z", "live_revision": 9}	\N	5	1
26	f	2019-05-29 15:18:08.437234+02	{"pk": 8, "path": "000100020002", "depth": 3, "numchild": 0, "title": "join us", "title_pl": "do\\u0142\\u0105cz do na", "title_en": "join us", "draft_title": "Do\\u0142\\u0105cz do na", "slug": "join-us", "slug_pl": "do\\u0142\\u0105cz-do-na", "slug_en": "join-us", "content_type": 36, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/do\\u0142\\u0105cz-do-na/", "url_path_pl": "strona-domowa1/do\\u0142\\u0105cz-do-na/", "url_path_en": "home-page1/do\\u0142\\u0105cz-do-na/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-24T14:03:51.716Z", "last_published_at": "2019-05-24T14:03:51.716Z", "latest_revision_created_at": "2019-05-24T14:03:51.670Z", "live_revision": 7, "cooperation": "je\\u015bli jeste\\u015b programist\\u0105 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "cooperation_pl": "je\\u015bli jeste\\u015b programist\\u0105 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "cooperation_en": "je\\u015bli jeste\\u015b programist\\u0105 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <b>quis</b> nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "recruitment": "[{\\"type\\": \\"text\\", \\"value\\": \\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\\", \\"id\\": \\"fe7e845b-42d9-4377-97e2-461e592456f4\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"asdf\\", \\"image\\": 5}, {\\"heading\\": \\"asdfdfs\\", \\"image\\": 4}], \\"id\\": \\"aedd0b07-c379-46aa-9303-1cfc6156d8a0\\"}]", "recruitment_pl": "[{\\"type\\": \\"text\\", \\"value\\": \\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\\", \\"id\\": \\"8652e896-14d2-44a7-8c25-3c3581d7927c\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"asdf\\", \\"image\\": 5}, {\\"heading\\": \\"asdfdfs\\", \\"image\\": 4}], \\"id\\": \\"e6ade72c-287a-4647-8cbb-6d134d322169\\"}]", "recruitment_en": "[{\\"type\\": \\"text\\", \\"value\\": \\"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\\", \\"id\\": \\"fe7e845b-42d9-4377-97e2-461e592456f4\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"asdf\\", \\"image\\": 5}, {\\"heading\\": \\"asdfdfs\\", \\"image\\": 4}], \\"id\\": \\"aedd0b07-c379-46aa-9303-1cfc6156d8a0\\"}]"}	\N	8	1
23	f	2019-05-29 15:14:42.761367+02	{"pk": 16, "path": "000100020004", "depth": 3, "numchild": 2, "title": "about us", "title_pl": "o nas", "title_en": "about us", "draft_title": "Eksperymentalni i elastyczni", "slug": "about-us", "slug_pl": "o-nas", "slug_en": "about-us", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/eksperymentalni-i-elastyczni/", "url_path_pl": "strona-domowa1/eksperymentalni-i-elastyczni/", "url_path_en": "home-page1/eksperymentalni-i-elastyczni/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T11:04:00.147Z", "last_published_at": "2019-05-29T11:04:00.147Z", "latest_revision_created_at": "2019-05-29T11:04:00.109Z", "live_revision": 20, "who_we_are": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_pl": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_en": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "our_values": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]", "our_values_pl": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"67553d3e-6ab4-449b-a5d2-b2521e983263\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"4da8ad45-0e74-4a3e-885c-14ad6b4b7490\\"}]", "our_values_en": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]"}	\N	16	1
27	f	2019-05-29 15:58:57.280151+02	{"pk": 3, "path": "00010002", "depth": 2, "numchild": 4, "title": "Laboratorium EE", "title_pl": "Laboratorium EE", "title_en": "Laboratorium EE", "draft_title": "Home page1", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/", "url_path_pl": "strona-domowa1/", "url_path_en": "home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-05-29T10:00:56.851Z", "latest_revision_created_at": "2019-05-29T10:00:56.777Z", "live_revision": 19, "header": "We work with those who are not afraid to break the rules", "header_pl": "Pracujemy z tymi, kt\\u00f3rzy nie boj\\u0105 si\\u0119 \\u0142ama\\u0107 regu\\u0142", "header_en": "We work with those who are not afraid to break the rules", "specializations_headline": "We specialize in", "specializations_headline_pl": "Specjalizujemy si\\u0119 w", "specializations_headline_en": "We specialize in", "r_and_d_center_headline": "Your private R&D center", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144, Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "cooperators_logos": [{"pk": 1, "sort_order": 0, "page": 3, "image": 8}, {"pk": 2, "sort_order": 1, "page": 3, "image": 6}, {"pk": 3, "sort_order": 2, "page": 3, "image": 7}], "rodo_pass": [{"pk": 3, "page": 3, "title": "PS: Jeste\\u015bmy zgodni z RODO", "title_pl": "PS: Jeste\\u015bmy zgodni z RODO", "title_en": null, "description": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_pl": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_en": null, "url": "https://rodopass.pl/", "button_text": "dowiedz si\\u0119 wi\\u0119cej", "button_text_pl": "dowiedz si\\u0119 wi\\u0119cej", "button_text_en": null}], "footer": [{"pk": 2, "page": 3, "contact": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_pl": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_en": "", "address": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_pl": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_en": "", "how_we_work": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_pl": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_en": "", "privacy_policy": "https://youtu.be/UG-7hqw90LE"}]}	\N	3	1
28	f	2019-05-30 15:32:19.657459+02	{"pk": 6, "path": "0001000200030001", "depth": 4, "numchild": 1, "title": "Data Science", "title_pl": "Data Science", "title_en": "Data Science", "draft_title": "specialisation2", "slug": "specialisation2", "slug_pl": "specjalizacja2", "slug_en": "specialisation2", "content_type": 31, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/specializations/specialisation2/", "url_path_pl": "/strona-domowa1/specializacje/specjalizacja2/", "url_path_en": "/home-page1/specializations/specialisation2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:49:51.892Z", "last_published_at": "2019-05-20T09:49:51.892Z", "latest_revision_created_at": "2019-05-20T09:49:51.852Z", "live_revision": 5, "how_we_work": "[{\\"type\\": \\"text\\", \\"value\\": \\"We analyze data, create visualizations, and help make decisions based on data. We advise on how to use data in business prosots and systmahc of classification, prediction and detection of fraud. We create data-driven applications that use Machine Learning and AI algorithms. We help our clients.\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Data inventory\\", \\"image\\": 1}, {\\"heading\\": \\"Data Science\\", \\"image\\": 18}, {\\"heading\\": \\"Machine Learning\\", \\"image\\": 19}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "how_we_work_pl": "[{\\"type\\": \\"text\\", \\"value\\": \\"Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\\\u0107 decyzje oparte na danych. Doradzamy jak wykorzystywa\\\\u0107 dane w prosceach bizensowych i systmahc klasyfikacji, predykacji i wykrywaniu nadu\\\\u017cy\\\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\\\u0105ce z Machine Learning i algorytm\\\\u00f3w AI. Pomagamy w tym naszym klientom.\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Inwentaryzacja danych\\", \\"image\\": 1}, {\\"heading\\": \\"Data Science\\", \\"image\\": 18}, {\\"heading\\": \\"Machine Learning\\", \\"image\\": 19}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "how_we_work_en": "[{\\"type\\": \\"text\\", \\"value\\": \\"We analyze data, create visualizations, and help make decisions based on data. We advise on how to use data in business prosots and systmahc of classification, prediction and detection of fraud. We create data-driven applications that use Machine Learning and AI algorithms. We help our clients.\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Data inventory\\", \\"image\\": 1}, {\\"heading\\": \\"Data Science\\", \\"image\\": 18}, {\\"heading\\": \\"Machine Learning\\", \\"image\\": 19}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "case_study": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Narodowy Fundusz Ochrony \\\\u015arodowiska\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Zebranie danych o projektach finansowanych przez NFO\\\\u015a\\", \\"image\\": 20}, {\\"heading\\": \\"Analiza danych historycznych o projektach\\", \\"image\\": 21}, {\\"heading\\": \\"Tworzenie algorytmu optymalizuj\\\\u0105cego podzia\\\\u0142\\\\u00a0\\\\u015brodk\\\\u00f3w\\", \\"image\\": 22}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "case_study_pl": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Narodowy Fundusz Ochrony \\\\u015arodowiska\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Zebranie danych o projektach finansowanych przez NFO\\\\u015a\\", \\"image\\": 20}, {\\"heading\\": \\"Analiza danych historycznych o projektach\\", \\"image\\": 21}, {\\"heading\\": \\"Tworzenie algorytmu optymalizuj\\\\u0105cego podzia\\\\u0142\\\\u00a0\\\\u015brodk\\\\u00f3w\\", \\"image\\": 22}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "case_study_en": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Narodowy Fundusz Ochrony \\\\u015arodowiska\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Zebranie danych o projektach finansowanych przez NFO\\\\u015a\\", \\"image\\": 20}, {\\"heading\\": \\"Analiza danych historycznych o projektach\\", \\"image\\": 21}, {\\"heading\\": \\"Tworzenie algorytmu optymalizuj\\\\u0105cego podzia\\\\u0142\\\\u00a0\\\\u015brodk\\\\u00f3w\\", \\"image\\": 22}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "tools": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"Analiza i consulting\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"Segmentacja i klasyfikacja\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]", "tools_pl": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"Analiza i consulting\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"Segmentacja i klasyfikacja\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]", "tools_en": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"Analiza i consulting\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"Segmentacja i klasyfikacja\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]"}	\N	6	1
29	f	2019-05-30 16:32:55.045557+02	{"pk": 6, "path": "0001000200030001", "depth": 4, "numchild": 1, "title": "Data Science", "title_pl": "Data Science", "title_en": "Data Science", "draft_title": "Data Science", "slug": "specialisation2", "slug_pl": "specjalizacja2", "slug_en": "specialisation2", "content_type": 31, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/specializations/specialisation2/", "url_path_pl": "/strona-domowa1/specializacje/specjalizacja2/", "url_path_en": "/home-page1/specializations/specialisation2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:49:51.892Z", "last_published_at": "2019-05-30T13:32:19.720Z", "latest_revision_created_at": "2019-05-30T13:32:19.657Z", "live_revision": 28, "long_name": "Processes automation based on data", "long_name_pl": "Automatyzacja proces\\u00f3w w oparciu o dane", "long_name_en": "Processes automation based on data", "short_description": "<p>We solve the challenges facing your company<br/>using <b>data science </b>and<b> machine learning</b></p>", "short_description_pl": "<p>Rozwi\\u0105zujemy wyzwania stoj\\u0105ce przed Twoj\\u0105 firm\\u0105</p><p>stosuj\\u0105c <b>data science </b> i <b>machine learning</b></p>", "short_description_en": "<p>We solve the challenges facing your company<br/>using <b>data science </b>and<b> machine learning</b></p>", "how_we_work": "[{\\"type\\": \\"text\\", \\"value\\": \\"We analyze data, create visualizations, and help make decisions based on data. We advise on how to use data in business prosots and systmahc of classification, prediction and detection of fraud. We create data-driven applications that use Machine Learning and AI algorithms. We help our clients.\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Data inventory\\", \\"image\\": 1}, {\\"heading\\": \\"Data Science\\", \\"image\\": 18}, {\\"heading\\": \\"Machine Learning\\", \\"image\\": 19}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "how_we_work_pl": "[{\\"type\\": \\"text\\", \\"value\\": \\"Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\\\u0107 decyzje oparte na danych. Doradzamy jak wykorzystywa\\\\u0107 dane w prosceach bizensowych i systmahc klasyfikacji, predykacji i wykrywaniu nadu\\\\u017cy\\\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\\\u0105ce z Machine Learning i algorytm\\\\u00f3w AI. Pomagamy w tym naszym klientom.\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Inwentaryzacja danych\\", \\"image\\": 1}, {\\"heading\\": \\"Data Science\\", \\"image\\": 18}, {\\"heading\\": \\"Machine Learning\\", \\"image\\": 19}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "how_we_work_en": "[{\\"type\\": \\"text\\", \\"value\\": \\"We analyze data, create visualizations, and help make decisions based on data. We advise on how to use data in business prosots and systmahc of classification, prediction and detection of fraud. We create data-driven applications that use Machine Learning and AI algorithms. We help our clients.\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Data inventory\\", \\"image\\": 1}, {\\"heading\\": \\"Data Science\\", \\"image\\": 18}, {\\"heading\\": \\"Machine Learning\\", \\"image\\": 19}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "case_study": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Narodowy Fundusz Ochrony \\\\u015arodowiska\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Zebranie danych o projektach finansowanych przez NFO\\\\u015a\\", \\"image\\": 20}, {\\"heading\\": \\"Analiza danych historycznych o projektach\\", \\"image\\": 21}, {\\"heading\\": \\"Tworzenie algorytmu optymalizuj\\\\u0105cego podzia\\\\u0142\\\\u00a0\\\\u015brodk\\\\u00f3w\\", \\"image\\": 22}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "case_study_pl": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Narodowy Fundusz Ochrony \\\\u015arodowiska\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Zebranie danych o projektach finansowanych przez NFO\\\\u015a\\", \\"image\\": 20}, {\\"heading\\": \\"Analiza danych historycznych o projektach\\", \\"image\\": 21}, {\\"heading\\": \\"Tworzenie algorytmu optymalizuj\\\\u0105cego podzia\\\\u0142\\\\u00a0\\\\u015brodk\\\\u00f3w\\", \\"image\\": 22}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "case_study_en": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Narodowy Fundusz Ochrony \\\\u015arodowiska\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"Zebranie danych o projektach finansowanych przez NFO\\\\u015a\\", \\"image\\": 20}, {\\"heading\\": \\"Analiza danych historycznych o projektach\\", \\"image\\": 21}, {\\"heading\\": \\"Tworzenie algorytmu optymalizuj\\\\u0105cego podzia\\\\u0142\\\\u00a0\\\\u015brodk\\\\u00f3w\\", \\"image\\": 22}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "tools": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"Analiza i consulting\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"Segmentacja i klasyfikacja\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]", "tools_pl": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"Analiza i consulting\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"Segmentacja i klasyfikacja\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]", "tools_en": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"Analiza i consulting\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"Segmentacja i klasyfikacja\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]"}	\N	6	1
5	f	2019-05-20 11:49:51.852693+02	{"pk": 6, "path": "00010001000100010001", "depth": 5, "numchild": 0, "title": "specialisation2", "title_pl": "specjalizacja2", "title_en": "specialisation2", "draft_title": "specialisation2", "slug": "specialisation2", "slug_pl": "specjalizacja2", "slug_en": "specialisation2", "content_type": 31, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/spec2/specialisation2/", "url_path_pl": "strona-domowa1/spec2/specjalizacja2/", "url_path_en": "home-page1/spec2/specialisation2/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "how_we_work": "[{\\"type\\": \\"text\\", \\"value\\": \\"how we work2\\", \\"id\\": \\"9527acf0-08b2-4fe6-bb38-c4c4c4a54706\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"tail1\\", \\"image\\": 1}], \\"id\\": \\"b6cc4de8-9de1-4990-9b5b-67ce411efee3\\"}]", "how_we_work_pl": "[{\\"type\\": \\"text\\", \\"value\\": \\"how we work2\\", \\"id\\": \\"ae7400f3-3504-423a-a07c-c4998c647d1f\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"tile1\\", \\"image\\": 1}], \\"id\\": \\"410f07de-4c07-4572-a7d0-96ab7cbb7cc6\\"}]", "how_we_work_en": "[{\\"type\\": \\"text\\", \\"value\\": \\"how we work2\\", \\"id\\": \\"852bb130-4bf6-4cc7-8fb2-f81f127f9741\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"tail1\\", \\"image\\": 1}], \\"id\\": \\"4e5c35c3-8099-40c2-8729-9b6913b69719\\"}]", "case_study": "[{\\"type\\": \\"heading\\", \\"value\\": \\"case study heading1\\", \\"id\\": \\"71041d51-9b53-4ed9-9413-f47f54b1e893\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"tile2\\", \\"image\\": 2}, {\\"heading\\": \\"tile2\\", \\"image\\": 3}], \\"id\\": \\"389543f9-5073-4762-a865-6c4dba9e40c9\\"}]", "case_study_pl": "[{\\"type\\": \\"heading\\", \\"value\\": \\"case study heading1\\", \\"id\\": \\"de75bd20-0128-4f19-ae13-cd4e7ea4487b\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"tile2\\", \\"image\\": 2}, {\\"heading\\": \\"tile2\\", \\"image\\": 3}], \\"id\\": \\"1aea76ac-262c-4b6e-9715-bb3df6326214\\"}]", "case_study_en": "[{\\"type\\": \\"heading\\", \\"value\\": \\"case study heading1\\", \\"id\\": \\"72e5fa2b-f08c-46c2-bf77-6696102004c3\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"tile2\\", \\"image\\": 2}, {\\"heading\\": \\"tile2\\", \\"image\\": 3}], \\"id\\": \\"59a6de3e-4bbd-4300-bb8a-c4e0cd9d9ac1\\"}]", "tools": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"tool1\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"tool2\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"0be995cf-2a50-4502-be24-edd21a710f8f\\"}]", "tools_pl": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"tool1\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"tool2\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"71b480ee-1caa-414c-88e7-0516fb459619\\"}]", "tools_en": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"tool1\\", \\"image\\": 4, \\"description\\": \\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\"}, {\\"heading\\": \\"tool2\\", \\"image\\": 5, \\"description\\": \\"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\"}], \\"id\\": \\"cd7ea7eb-6296-4134-8a1a-3464bd7a0782\\"}]"}	\N	6	1
30	f	2019-05-30 16:48:33.355742+02	{"pk": 19, "path": "0001000200030002", "depth": 4, "numchild": 0, "title": "Digital products and services", "title_pl": "Produkty i us\\u0142ugi cyfrowe", "title_en": "Digital products and services", "draft_title": "Digital products and services", "slug": "digital-products-and-services", "slug_pl": "produkty-i-us\\u0142ugi-cyfrowe", "slug_en": "digital-products-and-services", "content_type": 31, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/specializations/digital-products-and-services/", "url_path_pl": "/strona-domowa1/specializacje/produkty-i-us\\u0142ugi-cyfrowe/", "url_path_en": "/home-page1/specializations/digital-products-and-services/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "long_name": "Creating digital services and products", "long_name_pl": "Tworzenie us\\u0142ug i produkt\\u00f3w cyfrowych", "long_name_en": "Creating digital services and products", "short_description": "<p>We respond to the needs of our clients by designing intuitive</p><p>and useful digital services<b> from A to Z</b></p>", "short_description_pl": "<p>Odpowiadamy na potrzeby naszych klient\\u00f3w projektuj\\u0105c intuicyjne</p><p>i u\\u017cyteczne us\\u0142ugi cyfrowe <b>od A do Z</b></p>", "short_description_en": "<p>We respond to the needs of our clients by designing intuitive</p><p>and useful digital services<b> from A to Z</b></p>", "how_we_work": "[{\\"type\\": \\"text\\", \\"value\\": \\"\\\\ufeffProjektujemy produkty cyfrowe oraz us\\\\u0142ugi w oparciu o najlepsz\\\\u0105 wiecdz eksperckq i lata dc6hriadczenia Przykladamy ogromnilwag do poznawania potrzeb i ce low naszyhc klientow. Zestawiamy ie z wymaganiami docelowych u\\\\u00b1ytkownikow lubodbiorcow uslugi, aby tworzye arigazuj4ce dc6Niadczenia. Budujemy prototypy prociuktow i bad amy je z odbiorcami, aby vve ryh kowae poczynione zalD2enia.\\", \\"id\\": \\"bd49c610-06ac-41a6-b6be-0db2fd786e62\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"koncepcje produkt\\\\u00f3w cyfrowych\\", \\"image\\": 23}, {\\"heading\\": \\"interaktywne portotypy\\", \\"image\\": 23}, {\\"heading\\": \\"us\\\\u0142ugi online i offine\\", \\"image\\": 23}], \\"id\\": \\"b50c54f9-b0a5-49ad-b0f4-40d09d6d0c80\\"}]", "how_we_work_pl": "[{\\"type\\": \\"text\\", \\"value\\": \\"\\\\ufeffProjektujemy produkty cyfrowe oraz us\\\\u0142ugi w oparciu o najlepsz\\\\u0105 wiecdz eksperckq i lata dc6hriadczenia Przykladamy ogromnilwag do poznawania potrzeb i ce low naszyhc klientow. Zestawiamy ie z wymaganiami docelowych u\\\\u00b1ytkownikow lubodbiorcow uslugi, aby tworzye arigazuj4ce dc6Niadczenia. Budujemy prototypy prociuktow i bad amy je z odbiorcami, aby vve ryh kowae poczynione zalD2enia.\\", \\"id\\": \\"88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"koncepcje produkt\\\\u00f3w cyfrowych\\", \\"image\\": 23}, {\\"heading\\": \\"interaktywne portotypy\\", \\"image\\": 23}, {\\"heading\\": \\"us\\\\u0142ugi online i offine\\", \\"image\\": 23}], \\"id\\": \\"e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f\\"}]", "how_we_work_en": "[{\\"type\\": \\"text\\", \\"value\\": \\"\\\\ufeffProjektujemy produkty cyfrowe oraz us\\\\u0142ugi w oparciu o najlepsz\\\\u0105 wiecdz eksperckq i lata dc6hriadczenia Przykladamy ogromnilwag do poznawania potrzeb i ce low naszyhc klientow. Zestawiamy ie z wymaganiami docelowych u\\\\u00b1ytkownikow lubodbiorcow uslugi, aby tworzye arigazuj4ce dc6Niadczenia. Budujemy prototypy prociuktow i bad amy je z odbiorcami, aby vve ryh kowae poczynione zalD2enia.\\", \\"id\\": \\"e9ec14bb-7196-43ba-98f2-f9249bf4eace\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"koncepcje produkt\\\\u00f3w cyfrowych\\", \\"image\\": 23}, {\\"heading\\": \\"interaktywne portotypy\\", \\"image\\": 23}, {\\"heading\\": \\"us\\\\u0142ugi online i offine\\", \\"image\\": 23}], \\"id\\": \\"375db8d8-7ae5-41b3-90f2-f3f06ad5ca78\\"}]", "case_study": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Aplikacja wspieraj\\\\u0105ca program termomodernizacji budynk\\\\u00f3w\\", \\"id\\": \\"ddc07597-0cf4-40f5-833d-d5cb038847ad\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warsztaty z konsorcjum interesariuszy\\", \\"image\\": 23}, {\\"heading\\": \\"prototyp aplikacji mobilnej\\", \\"image\\": 23}, {\\"heading\\": \\"testy z u\\\\u017cytkownikami\\", \\"image\\": 23}], \\"id\\": \\"89a5e208-3e56-4b73-8894-659db12e7b08\\"}]", "case_study_pl": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Aplikacja wspieraj\\\\u0105ca program termomodernizacji budynk\\\\u00f3w\\", \\"id\\": \\"4693ba0a-f83b-4ffb-aa08-03db23925b11\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warsztaty z konsorcjum interesariuszy\\", \\"image\\": 23}, {\\"heading\\": \\"prototyp aplikacji mobilnej\\", \\"image\\": 23}, {\\"heading\\": \\"testy z u\\\\u017cytkownikami\\", \\"image\\": 23}], \\"id\\": \\"0c462b08-ecbd-4c98-b74a-68a4192626f5\\"}]", "case_study_en": "[{\\"type\\": \\"heading\\", \\"value\\": \\"Aplikacja wspieraj\\\\u0105ca program termomodernizacji budynk\\\\u00f3w\\", \\"id\\": \\"fd68934e-e555-4c83-93c3-8e53f2cd76fa\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warsztaty z konsorcjum interesariuszy\\", \\"image\\": 23}, {\\"heading\\": \\"prototyp aplikacji mobilnej\\", \\"image\\": 23}, {\\"heading\\": \\"testy z u\\\\u017cytkownikami\\", \\"image\\": 23}], \\"id\\": \\"288eb908-dc43-4d70-ae6b-7580730d1f44\\"}]", "tools": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"User Experience Design\\", \\"image\\": 23, \\"description\\": \\"Projektowanie w oparciu o szerok\\\\u0105 wiedz\\\\u0119 i do\\\\u015bwiadczenia z zakresu UX\\"}, {\\"heading\\": \\"Service design\\", \\"image\\": 23, \\"description\\": \\"Opracowujemy koncepcje us\\\\u0142ug stoj\\\\u0105cych na styku online i offline\\"}], \\"id\\": \\"31637694-c4a1-47e9-b8c0-a26cdf0e3ab4\\"}]", "tools_pl": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"User Experience Design\\", \\"image\\": 23, \\"description\\": \\"Projektowanie w oparciu o szerok\\\\u0105 wiedz\\\\u0119 i do\\\\u015bwiadczenia z zakresu UX\\"}, {\\"heading\\": \\"Service design\\", \\"image\\": 23, \\"description\\": \\"Opracowujemy koncepcje us\\\\u0142ug stoj\\\\u0105cych na styku online i offline\\"}], \\"id\\": \\"145268e9-8cbf-4d22-add9-26fb3172971e\\"}]", "tools_en": "[{\\"type\\": \\"tiles_with_description_list\\", \\"value\\": [{\\"heading\\": \\"User Experience Design\\", \\"image\\": 23, \\"description\\": \\"Projektowanie w oparciu o szerok\\\\u0105 wiedz\\\\u0119 i do\\\\u015bwiadczenia z zakresu UX\\"}, {\\"heading\\": \\"Service design\\", \\"image\\": 23, \\"description\\": \\"Opracowujemy koncepcje us\\\\u0142ug stoj\\\\u0105cych na styku online i offline\\"}], \\"id\\": \\"6e310976-6f94-4982-b164-6a27aea808aa\\"}]"}	\N	19	1
8	f	2019-05-28 10:31:09.73916+02	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 2, "title": "Home page1", "title_pl": "Strona domowa1", "title_en": "Home page1", "draft_title": "Home page1", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/", "url_path_pl": "strona-domowa1/", "url_path_en": "home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-05-20T09:40:14.829Z", "latest_revision_created_at": "2019-05-20T09:40:14.792Z", "live_revision": 1, "header": "header 1", "header_pl": "nag\\u0142\\u00f3wek 1", "header_en": "header 1", "specializations_headline": "spec headline EN", "specializations_headline_pl": "spec headline PL", "specializations_headline_en": "spec headline EN", "r_and_d_center_headline": "Your private R&D center", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144, Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "cooperators_logos": [{"pk": null, "sort_order": 0, "page": 3, "image": 8}, {"pk": null, "sort_order": 1, "page": 3, "image": 6}, {"pk": null, "sort_order": 2, "page": 3, "image": 7}]}	\N	3	1
33	f	2019-05-31 10:32:07.058691+02	{"pk": 3, "path": "00010002", "depth": 2, "numchild": 4, "title": "Laboratorium EE", "title_pl": "Laboratorium EE", "title_en": "Laboratorium EE", "draft_title": "EEEEELaboratorium EE", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/", "url_path_pl": "/strona-domowa1/", "url_path_en": "/home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-05-31T08:26:51.950Z", "latest_revision_created_at": "2019-05-31T08:26:51.880Z", "live_revision": 32, "header": "We work with those who are not afraid to break the rules", "header_pl": "Pracujemy z tymi, kt\\u00f3rzy nie boj\\u0105 si\\u0119 \\u0142ama\\u0107 regu\\u0142", "header_en": "We work with those who are not afraid to break the rules", "specializations_headline": "We specialize in", "specializations_headline_pl": "Specjalizujemy si\\u0119 w", "specializations_headline_en": "We specialize in", "r_and_d_center_headline": "Your private R&D center", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144, Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "cooperators_logos": [{"pk": 1, "sort_order": 0, "page": 3, "image": 8}, {"pk": 2, "sort_order": 1, "page": 3, "image": 6}, {"pk": 3, "sort_order": 2, "page": 3, "image": 7}], "rodo_pass": [{"pk": 3, "page": 3, "title": "PS: Jeste\\u015bmy zgodni z RODO", "title_pl": "PS: Jeste\\u015bmy zgodni z RODO", "title_en": null, "description": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_pl": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_en": null, "url": "https://rodopass.pl/", "button_text": "dowiedz si\\u0119 wi\\u0119cej", "button_text_pl": "dowiedz si\\u0119 wi\\u0119cej", "button_text_en": null}], "footer": [{"pk": 2, "page": 3, "contact": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_pl": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_en": "", "address": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_pl": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_en": "", "how_we_work": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_pl": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_en": "", "privacy_policy": "https://youtu.be/UG-7hqw90LE"}]}	\N	3	1
31	f	2019-05-31 10:26:32.538387+02	{"pk": 3, "path": "00010002", "depth": 2, "numchild": 4, "title": "Laboratorium EE", "title_pl": "Laboratorium EEEEEE", "title_en": "Laboratorium EE", "draft_title": "Laboratorium EE", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/", "url_path_pl": "/strona-domowa1/", "url_path_en": "/home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-05-29T13:58:57.351Z", "latest_revision_created_at": "2019-05-29T13:58:57.280Z", "live_revision": 27, "header": "We work with those who are not afraid to break the rules", "header_pl": "Pracujemy z tymi, kt\\u00f3rzy nie boj\\u0105 si\\u0119 \\u0142ama\\u0107 regu\\u0142", "header_en": "We work with those who are not afraid to break the rules", "specializations_headline": "We specialize in", "specializations_headline_pl": "Specjalizujemy si\\u0119 w", "specializations_headline_en": "We specialize in", "r_and_d_center_headline": "Your private R&D center", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144, Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "cooperators_logos": [{"pk": 1, "sort_order": 0, "page": 3, "image": 8}, {"pk": 2, "sort_order": 1, "page": 3, "image": 6}, {"pk": 3, "sort_order": 2, "page": 3, "image": 7}], "rodo_pass": [{"pk": 3, "page": 3, "title": "PS: Jeste\\u015bmy zgodni z RODO", "title_pl": "PS: Jeste\\u015bmy zgodni z RODO", "title_en": null, "description": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_pl": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_en": null, "url": "https://rodopass.pl/", "button_text": "dowiedz si\\u0119 wi\\u0119cej", "button_text_pl": "dowiedz si\\u0119 wi\\u0119cej", "button_text_en": null}], "footer": [{"pk": 2, "page": 3, "contact": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_pl": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_en": "", "address": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_pl": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_en": "", "how_we_work": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_pl": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_en": "", "privacy_policy": "https://youtu.be/UG-7hqw90LE"}]}	\N	3	1
32	f	2019-05-31 10:26:51.880355+02	{"pk": 3, "path": "00010002", "depth": 2, "numchild": 4, "title": "EEEEELaboratorium EE", "title_pl": "Laboratorium EEEEEE", "title_en": "EEEEELaboratorium EE", "draft_title": "Laboratorium EE", "slug": "home-page1", "slug_pl": "strona-domowa1", "slug_en": "home-page1", "content_type": 29, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/", "url_path_pl": "/strona-domowa1/", "url_path_en": "/home-page1/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-20T09:40:14.829Z", "last_published_at": "2019-05-31T08:26:32.622Z", "latest_revision_created_at": "2019-05-31T08:26:32.538Z", "live_revision": 31, "header": "We work with those who are not afraid to break the rules", "header_pl": "Pracujemy z tymi, kt\\u00f3rzy nie boj\\u0105 si\\u0119 \\u0142ama\\u0107 regu\\u0142", "header_en": "We work with those who are not afraid to break the rules", "specializations_headline": "We specialize in", "specializations_headline_pl": "Specjalizujemy si\\u0119 w", "specializations_headline_en": "We specialize in", "r_and_d_center_headline": "Your private R&D center", "r_and_d_center_headline_pl": "Twoje prywatne centrum badawczo rozwojowe", "r_and_d_center_headline_en": "Your private R&D center", "r_and_d_center_body": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "r_and_d_center_body_pl": "Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144, Skupiamy sie na dok\\u0142adnej analizie stawianych nam wyzwa\\u0144", "r_and_d_center_body_en": "We focus on a thorough analysis of the challenges we are facing We focus on a thorough analysis of the challenges we are facing", "cooperators_logos": [{"pk": 1, "sort_order": 0, "page": 3, "image": 8}, {"pk": 2, "sort_order": 1, "page": 3, "image": 6}, {"pk": 3, "sort_order": 2, "page": 3, "image": 7}], "rodo_pass": [{"pk": 3, "page": 3, "title": "PS: Jeste\\u015bmy zgodni z RODO", "title_pl": "PS: Jeste\\u015bmy zgodni z RODO", "title_en": null, "description": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_pl": "Nasz regulamin zosta\\u0142 wygenerowany przez stworzone przez nas narz\\u0119dzie Chcesz sprawdzi\\u0107, czy z Twoj\\u0105 stron\\u0119 internetow\\u0105 wszystko ok?", "description_en": null, "url": "https://rodopass.pl/", "button_text": "dowiedz si\\u0119 wi\\u0119cej", "button_text_pl": "dowiedz si\\u0119 wi\\u0119cej", "button_text_en": null}], "footer": [{"pk": 2, "page": 3, "contact": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_pl": "<p><b>Laboratorium ee sp. z o.o. </b></p><p>tel<b>: (+48) 666 666 666 </b></p><p>mail<b>: kontakt@laboratorium.ee</b></p><p><b> </b>NIP<b>: 5252593479</b></p>", "contact_en": "", "address": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_pl": "<p>Aleja 3 maja 2/49 </p><p>00-391 Warszawa</p>", "address_en": "", "how_we_work": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_pl": "<p>Rozwi\\u0105zujemy <b>wa\\u017cne problemy</b> naszych klient\\u00f3w w obszarach, w kt\\u00f3rych si\\u0119 specjalizujemy.</p><p></p><p>Interesuje nad <b>praca nad zmian\\u0105</b>, szukamy klient\\u00f3w, kt\\u00f3rzy maj\\u0105 odwag\\u0119 tworzy\\u0107 nowe, innowacyjne rozwi\\u0105zania.</p><p></p><p>Wykorzystujemy <b>dane</b> w celu automatyzacji proces\\u00f3w, podejmowania lepszych decyzji i zaanga\\u017cowania u\\u017cytkownik\\u00f3w.</p>", "how_we_work_en": "", "privacy_policy": "https://youtu.be/UG-7hqw90LE"}]}	\N	3	1
34	f	2019-05-31 10:34:24.895568+02	{"pk": 20, "path": "0001000200020003", "depth": 4, "numchild": 0, "title": "Adrian Krzywicki", "title_pl": "Adrian Krzywicki", "title_en": "Adrian Krzywicki", "draft_title": "Adrian Krzywicki", "slug": "adrian-krzywicki", "slug_pl": "adrian-krzywicki", "slug_en": "adrian-krzywicki", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/about-us/adrian-krzywicki/", "url_path_pl": "/strona-domowa1/o-nas/adrian-krzywicki/", "url_path_en": "/home-page1/about-us/adrian-krzywicki/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "name": "Adrian Krzywicki", "description": "also known as the Unabomber (/\\u02c8ju\\u02d0n\\u0259b\\u0252m\\u0259r/), is an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while a", "description_pl": "ameryka\\u0144ski matematyk i terrorysta. Przydomek Unabomber powsta\\u0142 z kryptonimu UNABOM (UNiversity and Airline BOMbings), kt\\u00f3ry FBI nada\\u0142a sprawie Theodore\\u2019a Kaczynskiego.", "description_en": "also known as the Unabomber (/\\u02c8ju\\u02d0n\\u0259b\\u0252m\\u0259r/), is an American domestic terrorist, former mathematics professor, and anarchist author.[2][3][4] A mathematics prodigy,[5] he abandoned an academic career in 1969 to pursue a primitive lifestyle. Between 1978 and 1995, he killed three people and injured 23 others in an attempt to start a revolution by conducting a nationwide bombing campaign targeting people involved with modern technology. In conjunction, he issued a social critique opposing industrialization while a", "photo": 24, "tagged_items": [{"pk": 5, "tag": 1, "content_object": 20}, {"pk": 6, "tag": 3, "content_object": 20}]}	\N	20	1
38	f	2019-05-31 10:49:40.684827+02	{"pk": 9, "path": "00010002000300010001", "depth": 5, "numchild": 0, "title": "Our own project", "title_pl": "Nasz w\\u0142asny projekt", "title_en": "Our own project", "draft_title": "Our own project", "slug": "our-own-project", "slug_pl": "nasz-w\\u0142asny-projekt", "slug_en": "our-own-project", "content_type": 30, "live": true, "has_unpublished_changes": true, "url_path": "/home-page1/specializations/specialisation2/our-own-project/", "url_path_pl": "/strona-domowa1/specializacje/specjalizacja2/nasz-w\\u0142asny-projekt/", "url_path_en": "/home-page1/specializations/specialisation2/our-own-project/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-28T10:37:08.678Z", "last_published_at": "2019-05-28T10:37:08.678Z", "latest_revision_created_at": "2019-05-28T10:49:52.748Z", "live_revision": 10, "self_initiated": true, "subtitle": "We gonna earn shitload of money", "subtitle_pl": "Zarobimy na nim kupe hajsu", "subtitle_en": "We gonna earn shitload of money", "challenge": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "challenge_pl": "<p><b>Pocz\\u0105tki bywaj\\u0105 trudne</b></p><p>Ale potem ju\\u017c jest z g\\u00f3rki i w og\\u00f3le zajebi\\u015bcie</p>", "challenge_en": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "process": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "process_pl": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"49d77b92-2286-4262-9853-a41c878c1525\\"}]", "process_en": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "quote": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_pl": "<h2><b>DUPSKO</b></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_en": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "image": null, "metrics": [{"pk": 1, "sort_order": 0, "project": null, "value": "21:37", "property_name": "We start"}, {"pk": 2, "sort_order": 1, "project": null, "value": "666", "property_name": "We provide"}, {"pk": 3, "sort_order": 2, "project": null, "value": "69", "property_name": "We protect"}]}	\N	9	1
39	f	2019-05-31 10:50:03.502177+02	{"pk": 9, "path": "00010002000300010001", "depth": 5, "numchild": 0, "title": "Our own project", "title_pl": "Nasz w\\u0142asny projekt", "title_en": "Our own project", "draft_title": "Our own project", "slug": "our-own-project", "slug_pl": "nasz-w\\u0142asny-projekt", "slug_en": "our-own-project", "content_type": 30, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/specializations/specialisation2/our-own-project/", "url_path_pl": "/strona-domowa1/specializacje/specjalizacja2/nasz-w\\u0142asny-projekt/", "url_path_en": "/home-page1/specializations/specialisation2/our-own-project/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-28T10:37:08.678Z", "last_published_at": "2019-05-31T08:49:40.727Z", "latest_revision_created_at": "2019-05-31T08:49:40.684Z", "live_revision": 38, "self_initiated": true, "subtitle": "We gonna earn shitload of money", "subtitle_pl": "Zarobimy na nim kupe hajsu", "subtitle_en": "We gonna earn shitload of money", "challenge": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "challenge_pl": "<p><b>Pocz\\u0105tki bywaj\\u0105 trudne</b></p><p>Ale potem ju\\u017c jest z g\\u00f3rki i w og\\u00f3le zajebi\\u015bcie</p>", "challenge_en": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "process": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "process_pl": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"49d77b92-2286-4262-9853-a41c878c1525\\"}]", "process_en": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "quote": "<h2><b>DUPSKO</b></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_pl": "<h2><b>DUPSKO</b></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_en": "<h2><b>DUPSKO</b></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "image": null, "metrics": [{"pk": 1, "sort_order": 0, "project": 9, "value": "21:37", "property_name": "We start"}, {"pk": 2, "sort_order": 1, "project": 9, "value": "666", "property_name": "We provide"}, {"pk": 3, "sort_order": 2, "project": 9, "value": "69", "property_name": "We protect"}]}	\N	9	1
10	f	2019-05-28 12:37:08.631217+02	{"pk": 9, "path": "000100010001000100010001", "depth": 6, "numchild": 0, "title": "Our own project", "title_pl": "Nasz w\\u0142asny projekt", "title_en": "Our own project", "draft_title": "Our own project", "slug": "our-own-project", "slug_pl": "nasz-w\\u0142asny-projekt", "slug_en": "our-own-project", "content_type": 30, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/spec2/specialisation2/our-own-project/", "url_path_pl": "strona-domowa1/spec2/specjalizacja2/nasz-w\\u0142asny-projekt/", "url_path_en": "home-page1/spec2/specialisation2/our-own-project/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "self_initiated": true, "subtitle": "We gonna earn shitload of money", "subtitle_pl": "Zarobimy na nim kupe hajsu", "subtitle_en": "We gonna earn shitload of money", "challenge": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "challenge_pl": "<p><b>Pocz\\u0105tki bywaj\\u0105 trudne</b></p><p>Ale potem ju\\u017c jest z g\\u00f3rki i w og\\u00f3le zajebi\\u015bcie</p>", "challenge_en": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "process": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"52a1fd0f-b398-462f-8927-1246a00b27fe\\"}]", "process_pl": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"49d77b92-2286-4262-9853-a41c878c1525\\"}]", "process_en": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "quote": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_pl": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_en": "<p></p><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "metrics": [{"pk": 1, "sort_order": 0, "project": 9, "value": "21:37", "property_name": "We start"}, {"pk": 2, "sort_order": 1, "project": 9, "value": "666", "property_name": "We provide"}, {"pk": 3, "sort_order": 2, "project": 9, "value": "69", "property_name": "We protect"}]}	\N	9	1
41	f	2019-05-31 12:27:19.334408+02	{"pk": 9, "path": "00010002000300010001", "depth": 5, "numchild": 0, "title": "Our own project", "title_pl": "Nasz w\\u0142asny projekt", "title_en": "Our own project", "draft_title": "Our own project", "slug": "our-own-project", "slug_pl": "nasz-w\\u0142asny-projekt", "slug_en": "our-own-project", "content_type": 30, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/specializations/specialisation2/our-own-project/", "url_path_pl": "/strona-domowa1/specializacje/specjalizacja2/nasz-w\\u0142asny-projekt/", "url_path_en": "/home-page1/specializations/specialisation2/our-own-project/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-28T10:37:08.678Z", "last_published_at": "2019-05-31T08:50:03.556Z", "latest_revision_created_at": "2019-05-31T08:50:03.502Z", "live_revision": 39, "self_initiated": true, "subtitle": "We gonna earn shitload of money", "subtitle_pl": "Zarobimy na nim kupe hajsu", "subtitle_en": "We gonna earn shitload of money", "challenge": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "challenge_pl": "<p><b>Pocz\\u0105tki bywaj\\u0105 trudne</b></p><p>Ale potem ju\\u017c jest z g\\u00f3rki i w og\\u00f3le zajebi\\u015bcie</p>", "challenge_en": "<p></p><p><b>Beginnings can be difficult</b></p><p>But then it&#x27;s already down the hill in general horny</p>", "process": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "process_pl": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"49d77b92-2286-4262-9853-a41c878c1525\\"}]", "process_en": "[{\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"rodzisz si\\\\u0119\\", \\"image\\": 9}, {\\"heading\\": \\"dorastasz\\", \\"image\\": 10}, {\\"heading\\": \\"a potem troche przypa\\\\u0142\\", \\"image\\": 11}], \\"id\\": \\"1250077e-e6ef-4b39-8b00-27cc4cd0f19c\\"}]", "quote": "<h2></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_pl": "<h2></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "quote_en": "<h2></h2><embed alt=\\"quote.jpg\\" embedtype=\\"image\\" format=\\"fullwidth\\" id=\\"12\\"/><p></p>", "image": null, "metrics": [{"pk": 1, "sort_order": 0, "project": 9, "value": "21:37", "property_name": "We start"}, {"pk": 2, "sort_order": 1, "project": 9, "value": "666", "property_name": "We provide"}, {"pk": 3, "sort_order": 2, "project": 9, "value": "69", "property_name": "We protect"}]}	\N	9	1
35	f	2019-05-31 10:43:12.484853+02	{"pk": 16, "path": "000100020002", "depth": 3, "numchild": 3, "title": "about us", "title_pl": "o nas", "title_en": "about us", "draft_title": "about us", "slug": "about-us", "slug_pl": "o-nas", "slug_en": "about-us", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/about-us/", "url_path_pl": "/strona-domowa1/o-nas/", "url_path_en": "/home-page1/about-us/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T11:04:00.147Z", "last_published_at": "2019-05-29T13:14:42.809Z", "latest_revision_created_at": "2019-05-29T13:14:42.761Z", "live_revision": 23, "who_we_are": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_pl": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_en": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "our_values": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]", "our_values_pl": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"67553d3e-6ab4-449b-a5d2-b2521e983263\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"4da8ad45-0e74-4a3e-885c-14ad6b4b7490\\"}]", "our_values_en": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]"}	\N	16	1
20	f	2019-05-29 13:04:00.109638+02	{"pk": 16, "path": "000100020004", "depth": 3, "numchild": 0, "title": "Eksperymentalni i elastyczni", "title_pl": "Eksperymentalni i elastyczni", "title_en": "Eksperymentalni i elastyczni", "draft_title": "Eksperymentalni i elastyczni", "slug": "eksperymentalni-i-elastyczni", "slug_pl": "eksperymentalni-i-elastyczni", "slug_en": "eksperymentalni-i-elastyczni", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "home-page1/eksperymentalni-i-elastyczni/", "url_path_pl": "strona-domowa1/eksperymentalni-i-elastyczni/", "url_path_en": "home-page1/eksperymentalni-i-elastyczni/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "who_we_are": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_pl": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_en": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "our_values": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"1e912838-9a94-4c0f-b94e-0bd61ce707cc\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"69380591-b525-40b9-84b1-d73eb12b1426\\"}]", "our_values_pl": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"67553d3e-6ab4-449b-a5d2-b2521e983263\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"4da8ad45-0e74-4a3e-885c-14ad6b4b7490\\"}]", "our_values_en": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]"}	\N	16	1
42	f	2019-05-31 12:28:29.275746+02	{"pk": 16, "path": "000100020002", "depth": 3, "numchild": 3, "title": "about us", "title_pl": "o nas", "title_en": "about us", "draft_title": "about us", "slug": "about-us", "slug_pl": "o-nas", "slug_en": "about-us", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/about-us/", "url_path_pl": "/strona-domowa1/o-nas/", "url_path_en": "/home-page1/about-us/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": true, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T11:04:00.147Z", "last_published_at": "2019-05-31T08:43:12.523Z", "latest_revision_created_at": "2019-05-31T08:43:12.484Z", "live_revision": 35, "who_we_are": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_pl": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "who_we_are_en": "<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "our_values": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]", "our_values_pl": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"67553d3e-6ab4-449b-a5d2-b2521e983263\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"4da8ad45-0e74-4a3e-885c-14ad6b4b7490\\"}]", "our_values_en": "[{\\"type\\": \\"description\\", \\"value\\": \\"<p>Pracujemy zwinnie, poniewa\\\\u017c wiemy, \\\\u017ce nie ma dw\\\\u00f3ch takich samych projekt\\\\u00f3w. Opieramy si\\\\u0119 na plaskiej strukturze organizacji i prze\\\\u015bwiadczeniu, \\\\u017ce ka\\\\u017cdy cz\\\\u0142onek zespo\\\\u0142u jest w stanie wygenerowa\\\\u0107 warto\\\\u015b\\\\u0107 dodan\\\\u0105 do produktu.</p><p>Poznaj zasady, jakimi kierujemy si\\\\u0119 w realizowaniu naszych cel\\\\u00f3w.</p>\\", \\"id\\": \\"e046b871-706e-4fa3-a996-4f6677d75ca6\\"}, {\\"type\\": \\"tiles_list\\", \\"value\\": [{\\"heading\\": \\"warto\\\\u015b\\\\u0107 1\\", \\"image\\": 5}, {\\"heading\\": \\"warto\\\\u015b\\\\u0107 2\\", \\"image\\": 4}], \\"id\\": \\"b87d03c6-6a4c-4870-975f-cf70a811ba23\\"}]"}	\N	16	1
43	f	2019-05-31 14:33:10.637868+02	{"pk": 14, "path": "0001000200010004", "depth": 4, "numchild": 0, "title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_pl": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "title_en": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "draft_title": "PiS z ogromn\\u0105 przewag\\u0105 na wsi i w\\u015br\\u00f3d najs\\u0142abiej wykszta\\u0142conych. KE wygrywa w\\u015br\\u00f3d 30- i 40-latk\\u00f3w", "slug": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_pl": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "slug_en": "pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_pl": "/strona-domowa1/aktualno\\u015bci/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "url_path_en": "/home-page1/news/pis-z-ogromn\\u0105-przewag\\u0105-na-wsi-i-w\\u015br\\u00f3d-najs\\u0142abiej-wykszta\\u0142conych-ke-wygrywa-w\\u015br\\u00f3d-30-i-40-latk\\u00f3w/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-29T07:36:38.220Z", "last_published_at": "2019-05-29T07:36:38.220Z", "latest_revision_created_at": "2019-05-29T07:36:38.175Z", "live_revision": 17, "headline": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_pl": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "headline_en": "Wed\\u0142ug exit polls wybory do PE wygra\\u0142 PiS - 42,4 proc., KE - 39,1, Wiosna -6,6 i Konfederacja 6,1. Komu zawdzi\\u0119czamy takie wyniki? W\\u015br\\u00f3d najm\\u0142odszych mocna Konfederacja i Wiosna, 30- i 40- latki wola\\u0142y KE. Na wsi bezapelacyjnie wygrywa PiS. Trzykrotna przewaga PiS nad KE w\\u015br\\u00f3d najmniej wykszta\\u0142conych", "body": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_pl": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "body_en": "<p>PiS wygra\\u0142 zar\\u00f3wno w\\u015br\\u00f3d kobiet, jak i w\\u015br\\u00f3d m\\u0119\\u017cczyzn, ale w\\u015br\\u00f3d kobiet z du\\u017co mniejsz\\u0105 przewag\\u0105 nad KE.</p><p>KE jest w obu tych grupach druga. W\\u015br\\u00f3d kobiet na trzecim miejscu jest Wiosna Biedronia (7,7 proc.), w\\u015br\\u00f3d m\\u0119\\u017cczyzn \\u2013 Konfederacja (imponuj\\u0105cy wynik 8,9 proc.). U m\\u0119\\u017cczyzn Wiosna czwarta \\u2013 wesz\\u0142aby do PE, ale tu\\u017c nad progiem.</p><p><a href=\\"https://public.flourish.studio/visualisation/382029/?utm_source=showcase&amp;utm_campaign=visualisation/382029\\"><b>A Flourish data visualisation</b></a></p><p>W\\u015br\\u00f3d najm\\u0142odszych wyborc\\u00f3w (18-29 lat) PiS i KE maj\\u0105 prawie takie samo poparcie (28,4 i 27,3 proc.). Mocne pozycje w tej grupie maj\\u0105 Konfederacja i Wiosna \\u2013 odpowiednio 18,5 i 13,7 proc. Starsi \\u2013 30-, a szczeg\\u00f3lnie 40-latkowie \\u2013 zdecydowanie wybrali KE.</p><p>U 50-latk\\u00f3w i starszych pr\\u00f3g przekroczy\\u0142yby tylko PiS i KE. PiS zdecydowanie wygra\\u0142 w\\u015br\\u00f3d najstarszych (52 proc.), KE dosta\\u0142a tu prawie 40 proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382261/?utm_source=showcase&amp;utm_campaign=visualisation/382261\\"><b>A Flourish data visualisation</b></a></p><p>PiS zdeklasowa\\u0142 pozosta\\u0142e komitety w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem podstawowym, pobi\\u0142 tu KE ponad dwukrotnie \\u2013 70 proc. do 17,5. Ponad dwukrotn\\u0105 przewag\\u0119 PiS m tak\\u017ce w\\u015br\\u00f3d os\\u00f3b z wykszta\\u0142ceniem zawodowym.</p><p>W obydwu tych grupach \\u017cadna inna partia nie przekroczy\\u0142a progu. PiS wygrywa tak\\u017ce w\\u015br\\u00f3d os\\u00f3b ze \\u015brednim wykszta\\u0142ceniem, ale z du\\u017co mniejsz\\u0105 przewag\\u0105 \\u2013 43 do 38 proc. 6-7 proc. maj\\u0105 Wiosna i Konfederacja. W grupie najlepiej wykszta\\u0142conych z prawie dwukrotn\\u0105 przewag\\u0105 nad PiS wygrywa KE. Wysoki wynik ma te\\u017c Wiosna (9 proc.) i Konfederacja (7 proc.).</p><p><a href=\\"https://public.flourish.studio/visualisation/382263/?utm_source=showcase&amp;utm_campaign=visualisation/382263\\"><b>A Flourish data visualisation</b></a></p><p>Zwyci\\u0119ski PiS ma na wsi zdecydowan\\u0105 przewag\\u0119 \\u2013 a\\u017c 56,3 proc. mieszka\\u0144c\\u00f3w wsi g\\u0142osowa\\u0142o na PiS. Przy\\u0142\\u0105czenie si\\u0119 PSL do Koalicji Europejskiej tego nie zmieni\\u0142o \\u2013 na wsi KE ma 27,5 proc. Pr\\u00f3g przekracza tam jeszcze tylko Konfederacja i to nieznacznie \\u2013 5,5 proc. Konfederacja nie jest na wsi lubiana.</p><p>W du\\u017cych miastach (powy\\u017cej 500 tys. mieszka\\u0144c\\u00f3w) jest na odwr\\u00f3t \\u2013 50,4 proc. za KE, 27 proc. za PiS. Lepiej radzi tu sobie tak\\u017ce Wiosna \\u2013 10,2 proc.</p><p>Konfederacja i Wiosna osi\\u0105gn\\u0119\\u0142y te\\u017c niez\\u0142y wynik (7-8 proc.) w \\u015brednich miastach 50-200 tys.</p><p>Koalicja wygrywa we wszystkich miastach, chocia\\u017c im mniejszy o\\u015brodek, tym mniejsza jest przewaga KE. W najwi\\u0119kszych miastach (powy\\u017cej 500 tys.) przewaga jest niemal dwukrotna: 50 proc. dla KE i 27 proc. PiS, a w miastach do 50 tys. tylko 4 pkt proc.</p><p><a href=\\"https://public.flourish.studio/visualisation/382280/?utm_source=showcase&amp;utm_campaign=visualisation/382280\\"><b>A Flourish data visualisation</b></a></p><p>Frekwencja w wyborach by\\u0142a rekordowa \\u2013 43 proc. W 2014 roku wynios\\u0142a tylko 23,83.<br/>Najwi\\u0119cej os\\u00f3b posz\\u0142o do urn w wojew\\u00f3dztwie mazowieckim (48,1), ma\\u0142opolskim (46,6), pomorskim (45,1), wielkopolskim (44,7) i lubelskim (43,6).<br/>Poni\\u017csza mapa jest interaktywna. Najed\\u017a na konkretne wojew\\u00f3dztwo i zobacz, kto tu wygra\\u0142.</p>", "photo": 16, "publication_date": "2019-05-29", "marked": true}	\N	14	1
44	f	2019-05-31 14:33:20.691174+02	{"pk": 11, "path": "0001000200010001", "depth": 4, "numchild": 0, "title": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "title_pl": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "title_en": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "draft_title": "Geje, lesbijki i Sekielski zatopili Koalicj\\u0119\\u201d \\u2013 wo\\u0142aj\\u0105 publicy\\u015bci prorz\\u0105dowi i proeuropejscy", "slug": "geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy", "slug_pl": "geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy", "slug_en": "geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy", "content_type": 34, "live": true, "has_unpublished_changes": false, "url_path": "/home-page1/news/geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy/", "url_path_pl": "/strona-domowa1/aktualno\\u015bci/geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy/", "url_path_en": "/home-page1/news/geje-lesbijki-i-sekielski-zatopili-koalicj\\u0119-wo\\u0142aj\\u0105-publicy\\u015bci-prorz\\u0105dowi-i-proeuropejscy/", "owner": 1, "seo_title": "", "seo_title_pl": null, "seo_title_en": null, "show_in_menus": false, "search_description": "", "search_description_pl": "", "search_description_en": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2019-05-28T14:51:40.253Z", "last_published_at": "2019-05-28T14:51:40.253Z", "latest_revision_created_at": "2019-05-28T14:51:40.202Z", "live_revision": 13, "headline": "\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142, to r\\u0119ka podniesiona na Polsk\\u0119\\u201d - m\\u00f3wi\\u0142 kilka tygodni temu Jaros\\u0142aw Kaczy\\u0144ski. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Ju\\u017c wiedz\\u0105, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedro\\u0144, Leszek Ja\\u017cd\\u017cewski, Tomasz Sekielski i gda\\u0144ski Marsz R\\u00f3wno\\u015bci.", "headline_pl": "\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142, to r\\u0119ka podniesiona na Polsk\\u0119\\u201d - m\\u00f3wi\\u0142 kilka tygodni temu Jaros\\u0142aw Kaczy\\u0144ski. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Ju\\u017c wiedz\\u0105, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedro\\u0144, Leszek Ja\\u017cd\\u017cewski, Tomasz Sekielski i gda\\u0144ski Marsz R\\u00f3wno\\u015bci.", "headline_en": "\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142, to r\\u0119ka podniesiona na Polsk\\u0119\\u201d - m\\u00f3wi\\u0142 kilka tygodni temu Jaros\\u0142aw Kaczy\\u0144ski. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Ju\\u017c wiedz\\u0105, kto winien jest przegranej Koalicji Europejskiej: to Robert Biedro\\u0144, Leszek Ja\\u017cd\\u017cewski, Tomasz Sekielski i gda\\u0144ski Marsz R\\u00f3wno\\u015bci.", "body": "<p>Jako pierwszy has\\u0142o o zgubnym wp\\u0142ywie gda\\u0144skiego Marszu R\\u00f3wno\\u015bci rzuci\\u0142 na Twitterze Jaros\\u0142aw Gowin. Cho\\u0107 wicepremier wydarzeniu przypisywa\\u0142 sprawczo\\u015b\\u0107 nadprzyrodzon\\u0105 \\u2013 blu\\u017anierstwo mia\\u0142o skutkowa\\u0107 ukaraniem KE w wyborach \\u2013 w \\u015blad za nim rozpocz\\u0119\\u0142y si\\u0119 bardziej \\u015bwieckie interpretacje.</p><p>\\u201eMobilizacja \\u015brodowisk wiejskich, to mog\\u0142a by\\u0107 reakcja na pr\\u00f3b\\u0119 oderwania Ko\\u015bcio\\u0142a od polsko\\u015bci\\u201d \\u2013 komentowa\\u0142 w \\u201eKropce nad i\\u201d 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. \\u201eLudzie odr\\u00f3\\u017cniaj\\u0105 grzechy ksi\\u0119\\u017cy od fundament\\u00f3w wsp\\u00f3lnotowych\\u201d \\u2013 komentowa\\u0142 s\\u0142owa Moniki Olejnik o tym, \\u017ce w Radiu Maryja pracuje ksi\\u0105dz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicuj\\u0105cy PiS upodabniaj\\u0105 si\\u0119 do zwolennik\\u00f3w Koalicji, to upatrywanie sukcesu\\u00a0 mobilizacyjnego w motywacji negatywnej, czyli reakcji na dzia\\u0142ania przeciwnika. O ile w przypadku KE rzeczywi\\u015bcie rekcja na dzia\\u0142ania PiS by\\u0142a g\\u0142\\u00f3wnym paliwem, o tyle twierdzenie, \\u017ce ten sam mechanizm przes\\u0105dzi\\u0142 o zwyci\\u0119stwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicy\\u015bci wt\\u00f3ruj\\u0105</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu \\u201ewojny religijnej\\u201d robi od niedzieli zawrotn\\u0105 karier\\u0119 w\\u015br\\u00f3d publicyst\\u00f3w.</p><p><b>Micha\\u0142 Szu\\u0142drzy\\u0144ski</b> z \\u201eRzeczpospolitej\\u201d\\u00a0<a href=\\"https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html\\">wskazuje</a> ten w\\u0105tek kampanii zaraz po \\u201epi\\u0105tce PiS\\u201d i akcji przeciwpowodziowej. \\u201eZwyci\\u0119stwo PiS pokazuje te\\u017c jakim powa\\u017cny b\\u0142\\u0119dem by\\u0142o granie przez opozycj\\u0119 antyklerykaln\\u0105 kart\\u0105. Owszem, film Sekielskich obejrza\\u0142o 21 milion\\u00f3w Polak\\u00f3w, ale to nie oznacza, \\u017ce wyborcy chc\\u0105 wojny z Ko\\u015bcio\\u0142em\\u201d.</p><p>I dodaje na Twitterze: \\u201eJe\\u015bli kto\\u015b uzna\\u0142, \\u017ce popularno\\u015b\\u0107 filmu o pedofilii oznacza, \\u017ce Polacy chc\\u0105 wojny z Ko\\u015bcio\\u0142em, to chyba si\\u0119 pomyli\\u0142\\u201d.</p><p><b>Tomasz Lis</b>\\u00a0(\\u201eNewsweek\\u201d) w <a href=\\"https://twitter.com/KonradPiasecki/status/1132939710962241536\\">social mediach</a> ok\\u0142ada Roberta Biedronia oraz Leszka Ja\\u017cd\\u017cewskiego: \\u201eGeneralnie proponuj\\u0119 zacz\\u0105\\u0107 od szacunku dla wyborc\\u00f3w, ich wiary i przywi\\u0105zania do tradycji. Jak kto\\u015b chce tu robi\\u0107 rewolucj\\u0119, to ko\\u0144czy jako lider ugrupowania na 6%, albo autor wyst\\u0105pienia, kt\\u00f3re by\\u0142o najwi\\u0119kszym prezentem dla PiS \\u2013 u w tej kampanii\\u201d.</p><p><b>Konrad Piasecki</b> (TVN24): \\u201eCiekawe czy poczucie satysfakcji maj\\u0105 wszyscy ci, kt\\u00f3rzy wpychaj\\u0105 opozycj\\u0119 na \\u015bcian\\u0119 bezpardonowej walki z Ko\\u015bcio\\u0142em, natychmiastowej aborcji na \\u017cyczenie i ciesz\\u0105 si\\u0119 z \\u00bb\\u015bwi\\u0119tej waginy\\u00ab na Paradzie R\\u00f3wno\\u015bci\\u201d.</p><p>\\u201eA gdybym by\\u0142 m\\u0142otkowym, to co by\\u015b powiedzia\\u0142a? A gdyby przysz\\u0142o zrozumie\\u0107, \\u017ce retoryka supportu by\\u0142a paliwem do obrony \\u201enaszego proboszcza\\u201d przed lewactwem? \\u017be dzi\\u015b odwo\\u0142uj\\u0105 lider\\u00f3w opozycji malkontenci, kt\\u00f3rzy sami palcem nie kiwn\\u0119li? \\u017be kr\\u00f3tkie spodenki Wiosny da\\u0142y PiS wygran\\u0105?\\u201d \\u2013 <a href=\\"https://twitter.com/PSzubartowicz/status/1132989543626530816\\">retorycznie pyta</a> <b>Przemys\\u0142aw Szubartowicz</b> (\\u201eWiadomo Co\\u201d).</p><p>\\u201eWojna z Matk\\u0105 Bosk\\u0105 Cz\\u0119stochowsk\\u0105, szyderstwa z Naj\\u015bwi\\u0119tszego Sakramentu przynios\\u0142y Koalicji Europejskiej gorzk\\u0105 kl\\u0119sk\\u0119, by\\u0107 mo\\u017ce grzebi\\u0105c jakiekolwiek szanse opozycji na jesienne zwyci\\u0119stwo\\u201d \\u2013 to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> (\\u201eSieci\\u201d, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentator\\u00f3w.</p><h2><b>Nie odp\\u0142yw, a mobilizacja</b></h2><p>\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142 to r\\u0119ka podniesiona na Polsk\\u0119\\u201d \\u2013 m\\u00f3wi\\u0142 kilka tygodni temu <b>Jaros\\u0142aw Kaczy\\u0144ski</b>. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Uznali \\u015bledzenie pedofilskich skandali w Ko\\u015bciele oraz walk\\u0119 o prawa os\\u00f3b LGBT za walk\\u0119 z Ko\\u015bcio\\u0142em, przyjmuj\\u0105c w ca\\u0142ej rozci\\u0105g\\u0142o\\u015bci narracj\\u0119 forsowan\\u0105 przez PiS.</p><p>Zapominaj\\u0105c po drodze, \\u017ce Koalicja Europejska \\u017cadnej z tych walk nie prowadzi\\u0142a. Do szuflady schowa\\u0142a aborcj\\u0119 razem z Barbar\\u0105 Nowack\\u0105, o rozdziale Ko\\u015bcio\\u0142a od pa\\u0144stwa nie m\\u00f3wi\\u0142a w formie innej ni\\u017c og\\u00f3lnikowa.</p><p>Pojawi\\u0142y si\\u0119 deklaracje o komisji do spraw pedofilii, ale zag\\u0142uszone przez konkurencyjne propozycje Prawa i Sprawiedliwo\\u015bci. TVP pokazywa\\u0142o co drugi dzie\\u0144 wyst\\u0105pienie Leszka Ja\\u017cd\\u017cewskiego, twierdz\\u0105c, \\u017ce to tajny plan Koalicji na zniszczenie Ko\\u015bcio\\u0142a.</p><p>Ale TVP twierdzi wiele rzeczy: \\u017ce Donald Tusk jest niemieckim agentem, \\u017ce strajk nauczycieli by\\u0142 puczem organizowanym przez totaln\\u0105 opozycj\\u0119, a przede wszystkim, \\u017ce przeci\\u0119tna polska rodzina straci przez Koalicj\\u0119 120 tysi\\u0119cy z\\u0142otych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazi\\u0107 si\\u0119 na nagonk\\u0119 w mediach publicznych, nie ma \\u017cadnego sensu. B\\u0119dzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo maj\\u0105 zwolennicy Koalicji m\\u00f3wi\\u0107 filmowcom, aktywistom, dziennikarzom \\u015bledczym, czym maj\\u0105 si\\u0119 zajmowa\\u0107, aby nie zaszkodzi\\u0107 przypadkiem wynikowi wyborczemu?</li></ul><p>Co wi\\u0119cej, elektorat Koalicji jako ca\\u0142o\\u015bci, jak i poszczeg\\u00f3lnych partii jest zdecydowanie bardziej liberalny obyczajowo ni\\u017c sami politycy i liderzy. OKO.press nie bada\\u0142o co prawda poparcia dla \\u201e\\u015bwi\\u0119tej waginy na Paradzie R\\u00f3wno\\u015bci\\u201d, ale dla \\u201eaborcji natychmiast na \\u017cyczenie\\u201d ju\\u017c tak.</p><h4><b>Kobieta powinna mie\\u0107 prawo do przerwania ci\\u0105\\u017cy do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygl\\u0105da poparcie dla zwi\\u0105zk\\u00f3w partnerskich w elektoracie Koalicji, kt\\u00f3ra na ich temat milczy?</p><h4><b>Przyzwolenie na jednop\\u0142ciowe zwi\\u0105zki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna Koalicja Europejska</p><p>Komentatorzy oczywi\\u015bcie nie stawiaj\\u0105 tezy, \\u017ce zniech\\u0119cony elektorat KE przep\\u0142yn\\u0105\\u0142 do PiS, bo obrazi\\u0142 si\\u0119 za to, \\u017ce w Gda\\u0144sku pokazano \\u201e\\u015bwi\\u0119t\\u0105 wagin\\u0119\\u201d. Musieliby zak\\u0142ada\\u0107, \\u017ce dla wyborc\\u00f3w bardziej liczy si\\u0119 ochrona uczu\\u0107 religijnych ni\\u017c obrona praworz\\u0105dno\\u015bci.</p><p>Efekt wyborczy mia\\u0142a przynie\\u015b\\u0107 wi\\u0119c mobilizacja. Innymi s\\u0142owy: oskar\\u017ca si\\u0119 osoby niezwi\\u0105zane z komitetem wyborczym KE o to, \\u017ce swoimi dzia\\u0142aniami zdenerwowa\\u0142y wyborc\\u00f3w prawicy.</p><p><b>Dlaczego mia\\u0142a to by\\u0107 Matka Boska w T\\u0119czowej aureoli, a nie s\\u0142owa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje si\\u0119 \\u201e\\u015bwi\\u0119tej waginie\\u201d dobry wynik wyborczy PiS, to czy ok\\u0142adanie kuk\\u0142y \\u017byda w Pruchniku uwa\\u017ca\\u0107 powinni\\u015bmy za zjawisko mobilizuj\\u0105ce zwolennik\\u00f3w KE?</p><h2><b>Co zawini\\u0142o?</b></h2><p>Zwolennicy Koalicji przypisuj\\u0105 zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href=\\"https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/\\">najnowszego sonda\\u017cu IPSOS</a> dla OKO.press*, cho\\u0107 elektorat KE rzeczywi\\u015bcie niesie niech\\u0119\\u0107 do PiS, to dla wyborc\\u00f3w prawicy g\\u0142osowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygl\\u0105da wykres motywacji elektoratu KE:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygl\\u0105da wykres motywacji elektoratu PiS:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwo\\u015b\\u0107</b></h4><p>Co istotne,</p><p><b>elektorat PiS spo\\u015br\\u00f3d pi\\u0119ciu analizowanych przez nas elektorat\\u00f3w, jako jedyny wskaza\\u0142 motywacj\\u0119 negatywn\\u0105 na ostatnim miejscu.</b></p><p>A z wynik\\u00f3w wybor\\u00f3w p\\u0142ynie jeden podstawowy wniosek: motywacja negatywna mobilizuje s\\u0142abiej ni\\u017c pozytywna.</p>", "body_pl": "<p>Jako pierwszy has\\u0142o o zgubnym wp\\u0142ywie gda\\u0144skiego Marszu R\\u00f3wno\\u015bci rzuci\\u0142 na Twitterze Jaros\\u0142aw Gowin. Cho\\u0107 wicepremier wydarzeniu przypisywa\\u0142 sprawczo\\u015b\\u0107 nadprzyrodzon\\u0105 \\u2013 blu\\u017anierstwo mia\\u0142o skutkowa\\u0107 ukaraniem KE w wyborach \\u2013 w \\u015blad za nim rozpocz\\u0119\\u0142y si\\u0119 bardziej \\u015bwieckie interpretacje.</p><p>\\u201eMobilizacja \\u015brodowisk wiejskich, to mog\\u0142a by\\u0107 reakcja na pr\\u00f3b\\u0119 oderwania Ko\\u015bcio\\u0142a od polsko\\u015bci\\u201d \\u2013 komentowa\\u0142 w \\u201eKropce nad i\\u201d 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. \\u201eLudzie odr\\u00f3\\u017cniaj\\u0105 grzechy ksi\\u0119\\u017cy od fundament\\u00f3w wsp\\u00f3lnotowych\\u201d \\u2013 komentowa\\u0142 s\\u0142owa Moniki Olejnik o tym, \\u017ce w Radiu Maryja pracuje ksi\\u0105dz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicuj\\u0105cy PiS upodabniaj\\u0105 si\\u0119 do zwolennik\\u00f3w Koalicji, to upatrywanie sukcesu\\u00a0 mobilizacyjnego w motywacji negatywnej, czyli reakcji na dzia\\u0142ania przeciwnika. O ile w przypadku KE rzeczywi\\u015bcie rekcja na dzia\\u0142ania PiS by\\u0142a g\\u0142\\u00f3wnym paliwem, o tyle twierdzenie, \\u017ce ten sam mechanizm przes\\u0105dzi\\u0142 o zwyci\\u0119stwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicy\\u015bci wt\\u00f3ruj\\u0105</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu \\u201ewojny religijnej\\u201d robi od niedzieli zawrotn\\u0105 karier\\u0119 w\\u015br\\u00f3d publicyst\\u00f3w.</p><p><b>Micha\\u0142 Szu\\u0142drzy\\u0144ski</b> z \\u201eRzeczpospolitej\\u201d\\u00a0<a href=\\"https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html\\">wskazuje</a> ten w\\u0105tek kampanii zaraz po \\u201epi\\u0105tce PiS\\u201d i akcji przeciwpowodziowej. \\u201eZwyci\\u0119stwo PiS pokazuje te\\u017c jakim powa\\u017cny b\\u0142\\u0119dem by\\u0142o granie przez opozycj\\u0119 antyklerykaln\\u0105 kart\\u0105. Owszem, film Sekielskich obejrza\\u0142o 21 milion\\u00f3w Polak\\u00f3w, ale to nie oznacza, \\u017ce wyborcy chc\\u0105 wojny z Ko\\u015bcio\\u0142em\\u201d.</p><p>I dodaje na Twitterze: \\u201eJe\\u015bli kto\\u015b uzna\\u0142, \\u017ce popularno\\u015b\\u0107 filmu o pedofilii oznacza, \\u017ce Polacy chc\\u0105 wojny z Ko\\u015bcio\\u0142em, to chyba si\\u0119 pomyli\\u0142\\u201d.</p><p><b>Tomasz Lis</b>\\u00a0(\\u201eNewsweek\\u201d) w <a href=\\"https://twitter.com/KonradPiasecki/status/1132939710962241536\\">social mediach</a> ok\\u0142ada Roberta Biedronia oraz Leszka Ja\\u017cd\\u017cewskiego: \\u201eGeneralnie proponuj\\u0119 zacz\\u0105\\u0107 od szacunku dla wyborc\\u00f3w, ich wiary i przywi\\u0105zania do tradycji. Jak kto\\u015b chce tu robi\\u0107 rewolucj\\u0119, to ko\\u0144czy jako lider ugrupowania na 6%, albo autor wyst\\u0105pienia, kt\\u00f3re by\\u0142o najwi\\u0119kszym prezentem dla PiS \\u2013 u w tej kampanii\\u201d.</p><p><b>Konrad Piasecki</b> (TVN24): \\u201eCiekawe czy poczucie satysfakcji maj\\u0105 wszyscy ci, kt\\u00f3rzy wpychaj\\u0105 opozycj\\u0119 na \\u015bcian\\u0119 bezpardonowej walki z Ko\\u015bcio\\u0142em, natychmiastowej aborcji na \\u017cyczenie i ciesz\\u0105 si\\u0119 z \\u00bb\\u015bwi\\u0119tej waginy\\u00ab na Paradzie R\\u00f3wno\\u015bci\\u201d.</p><p>\\u201eA gdybym by\\u0142 m\\u0142otkowym, to co by\\u015b powiedzia\\u0142a? A gdyby przysz\\u0142o zrozumie\\u0107, \\u017ce retoryka supportu by\\u0142a paliwem do obrony \\u201enaszego proboszcza\\u201d przed lewactwem? \\u017be dzi\\u015b odwo\\u0142uj\\u0105 lider\\u00f3w opozycji malkontenci, kt\\u00f3rzy sami palcem nie kiwn\\u0119li? \\u017be kr\\u00f3tkie spodenki Wiosny da\\u0142y PiS wygran\\u0105?\\u201d \\u2013 <a href=\\"https://twitter.com/PSzubartowicz/status/1132989543626530816\\">retorycznie pyta</a> <b>Przemys\\u0142aw Szubartowicz</b> (\\u201eWiadomo Co\\u201d).</p><p>\\u201eWojna z Matk\\u0105 Bosk\\u0105 Cz\\u0119stochowsk\\u0105, szyderstwa z Naj\\u015bwi\\u0119tszego Sakramentu przynios\\u0142y Koalicji Europejskiej gorzk\\u0105 kl\\u0119sk\\u0119, by\\u0107 mo\\u017ce grzebi\\u0105c jakiekolwiek szanse opozycji na jesienne zwyci\\u0119stwo\\u201d \\u2013 to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> (\\u201eSieci\\u201d, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentator\\u00f3w.</p><h2><b>Nie odp\\u0142yw, a mobilizacja</b></h2><p>\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142 to r\\u0119ka podniesiona na Polsk\\u0119\\u201d \\u2013 m\\u00f3wi\\u0142 kilka tygodni temu <b>Jaros\\u0142aw Kaczy\\u0144ski</b>. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Uznali \\u015bledzenie pedofilskich skandali w Ko\\u015bciele oraz walk\\u0119 o prawa os\\u00f3b LGBT za walk\\u0119 z Ko\\u015bcio\\u0142em, przyjmuj\\u0105c w ca\\u0142ej rozci\\u0105g\\u0142o\\u015bci narracj\\u0119 forsowan\\u0105 przez PiS.</p><p>Zapominaj\\u0105c po drodze, \\u017ce Koalicja Europejska \\u017cadnej z tych walk nie prowadzi\\u0142a. Do szuflady schowa\\u0142a aborcj\\u0119 razem z Barbar\\u0105 Nowack\\u0105, o rozdziale Ko\\u015bcio\\u0142a od pa\\u0144stwa nie m\\u00f3wi\\u0142a w formie innej ni\\u017c og\\u00f3lnikowa.</p><p>Pojawi\\u0142y si\\u0119 deklaracje o komisji do spraw pedofilii, ale zag\\u0142uszone przez konkurencyjne propozycje Prawa i Sprawiedliwo\\u015bci. TVP pokazywa\\u0142o co drugi dzie\\u0144 wyst\\u0105pienie Leszka Ja\\u017cd\\u017cewskiego, twierdz\\u0105c, \\u017ce to tajny plan Koalicji na zniszczenie Ko\\u015bcio\\u0142a.</p><p>Ale TVP twierdzi wiele rzeczy: \\u017ce Donald Tusk jest niemieckim agentem, \\u017ce strajk nauczycieli by\\u0142 puczem organizowanym przez totaln\\u0105 opozycj\\u0119, a przede wszystkim, \\u017ce przeci\\u0119tna polska rodzina straci przez Koalicj\\u0119 120 tysi\\u0119cy z\\u0142otych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazi\\u0107 si\\u0119 na nagonk\\u0119 w mediach publicznych, nie ma \\u017cadnego sensu. B\\u0119dzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo maj\\u0105 zwolennicy Koalicji m\\u00f3wi\\u0107 filmowcom, aktywistom, dziennikarzom \\u015bledczym, czym maj\\u0105 si\\u0119 zajmowa\\u0107, aby nie zaszkodzi\\u0107 przypadkiem wynikowi wyborczemu?</li></ul><p>Co wi\\u0119cej, elektorat Koalicji jako ca\\u0142o\\u015bci, jak i poszczeg\\u00f3lnych partii jest zdecydowanie bardziej liberalny obyczajowo ni\\u017c sami politycy i liderzy. OKO.press nie bada\\u0142o co prawda poparcia dla \\u201e\\u015bwi\\u0119tej waginy na Paradzie R\\u00f3wno\\u015bci\\u201d, ale dla \\u201eaborcji natychmiast na \\u017cyczenie\\u201d ju\\u017c tak.</p><h4><b>Kobieta powinna mie\\u0107 prawo do przerwania ci\\u0105\\u017cy do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygl\\u0105da poparcie dla zwi\\u0105zk\\u00f3w partnerskich w elektoracie Koalicji, kt\\u00f3ra na ich temat milczy?</p><h4><b>Przyzwolenie na jednop\\u0142ciowe zwi\\u0105zki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna Koalicja Europejska</p><p>Komentatorzy oczywi\\u015bcie nie stawiaj\\u0105 tezy, \\u017ce zniech\\u0119cony elektorat KE przep\\u0142yn\\u0105\\u0142 do PiS, bo obrazi\\u0142 si\\u0119 za to, \\u017ce w Gda\\u0144sku pokazano \\u201e\\u015bwi\\u0119t\\u0105 wagin\\u0119\\u201d. Musieliby zak\\u0142ada\\u0107, \\u017ce dla wyborc\\u00f3w bardziej liczy si\\u0119 ochrona uczu\\u0107 religijnych ni\\u017c obrona praworz\\u0105dno\\u015bci.</p><p>Efekt wyborczy mia\\u0142a przynie\\u015b\\u0107 wi\\u0119c mobilizacja. Innymi s\\u0142owy: oskar\\u017ca si\\u0119 osoby niezwi\\u0105zane z komitetem wyborczym KE o to, \\u017ce swoimi dzia\\u0142aniami zdenerwowa\\u0142y wyborc\\u00f3w prawicy.</p><p><b>Dlaczego mia\\u0142a to by\\u0107 Matka Boska w T\\u0119czowej aureoli, a nie s\\u0142owa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje si\\u0119 \\u201e\\u015bwi\\u0119tej waginie\\u201d dobry wynik wyborczy PiS, to czy ok\\u0142adanie kuk\\u0142y \\u017byda w Pruchniku uwa\\u017ca\\u0107 powinni\\u015bmy za zjawisko mobilizuj\\u0105ce zwolennik\\u00f3w KE?</p><h2><b>Co zawini\\u0142o?</b></h2><p>Zwolennicy Koalicji przypisuj\\u0105 zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href=\\"https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/\\">najnowszego sonda\\u017cu IPSOS</a> dla OKO.press*, cho\\u0107 elektorat KE rzeczywi\\u015bcie niesie niech\\u0119\\u0107 do PiS, to dla wyborc\\u00f3w prawicy g\\u0142osowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygl\\u0105da wykres motywacji elektoratu KE:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygl\\u0105da wykres motywacji elektoratu PiS:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwo\\u015b\\u0107</b></h4><p>Co istotne,</p><p><b>elektorat PiS spo\\u015br\\u00f3d pi\\u0119ciu analizowanych przez nas elektorat\\u00f3w, jako jedyny wskaza\\u0142 motywacj\\u0119 negatywn\\u0105 na ostatnim miejscu.</b></p><p>A z wynik\\u00f3w wybor\\u00f3w p\\u0142ynie jeden podstawowy wniosek: motywacja negatywna mobilizuje s\\u0142abiej ni\\u017c pozytywna.</p>", "body_en": "<p>Jako pierwszy has\\u0142o o zgubnym wp\\u0142ywie gda\\u0144skiego Marszu R\\u00f3wno\\u015bci rzuci\\u0142 na Twitterze Jaros\\u0142aw Gowin. Cho\\u0107 wicepremier wydarzeniu przypisywa\\u0142 sprawczo\\u015b\\u0107 nadprzyrodzon\\u0105 \\u2013 blu\\u017anierstwo mia\\u0142o skutkowa\\u0107 ukaraniem KE w wyborach \\u2013 w \\u015blad za nim rozpocz\\u0119\\u0142y si\\u0119 bardziej \\u015bwieckie interpretacje.</p><p>\\u201eMobilizacja \\u015brodowisk wiejskich, to mog\\u0142a by\\u0107 reakcja na pr\\u00f3b\\u0119 oderwania Ko\\u015bcio\\u0142a od polsko\\u015bci\\u201d \\u2013 komentowa\\u0142 w \\u201eKropce nad i\\u201d 26 maja 2019 prof. <b>Andrzej Zybertowicz</b>. \\u201eLudzie odr\\u00f3\\u017cniaj\\u0105 grzechy ksi\\u0119\\u017cy od fundament\\u00f3w wsp\\u00f3lnotowych\\u201d \\u2013 komentowa\\u0142 s\\u0142owa Moniki Olejnik o tym, \\u017ce w Radiu Maryja pracuje ksi\\u0105dz z Tylawy skazany za molestowanie.</p><p>To, w czym kibicuj\\u0105cy PiS upodabniaj\\u0105 si\\u0119 do zwolennik\\u00f3w Koalicji, to upatrywanie sukcesu\\u00a0 mobilizacyjnego w motywacji negatywnej, czyli reakcji na dzia\\u0142ania przeciwnika. O ile w przypadku KE rzeczywi\\u015bcie rekcja na dzia\\u0142ania PiS by\\u0142a g\\u0142\\u00f3wnym paliwem, o tyle twierdzenie, \\u017ce ten sam mechanizm przes\\u0105dzi\\u0142 o zwyci\\u0119stwie PiS jest wpuszczaniem w maliny.</p><h2><b>Publicy\\u015bci wt\\u00f3ruj\\u0105</b></h2><p>Tymczasem teza obozu Dobrej Zmiany o zgubnym dla Koalicji wzniecaniu \\u201ewojny religijnej\\u201d robi od niedzieli zawrotn\\u0105 karier\\u0119 w\\u015br\\u00f3d publicyst\\u00f3w.</p><p><b>Micha\\u0142 Szu\\u0142drzy\\u0144ski</b> z \\u201eRzeczpospolitej\\u201d\\u00a0<a href=\\"https://www.rp.pl/Komentarze/190529508-Szuldrzynski-Morawiecki-piatka-powodz-i-wojna-religijna--skad-wzielo-sie-zwyciestwo-PiS.html\\">wskazuje</a> ten w\\u0105tek kampanii zaraz po \\u201epi\\u0105tce PiS\\u201d i akcji przeciwpowodziowej. \\u201eZwyci\\u0119stwo PiS pokazuje te\\u017c jakim powa\\u017cny b\\u0142\\u0119dem by\\u0142o granie przez opozycj\\u0119 antyklerykaln\\u0105 kart\\u0105. Owszem, film Sekielskich obejrza\\u0142o 21 milion\\u00f3w Polak\\u00f3w, ale to nie oznacza, \\u017ce wyborcy chc\\u0105 wojny z Ko\\u015bcio\\u0142em\\u201d.</p><p>I dodaje na Twitterze: \\u201eJe\\u015bli kto\\u015b uzna\\u0142, \\u017ce popularno\\u015b\\u0107 filmu o pedofilii oznacza, \\u017ce Polacy chc\\u0105 wojny z Ko\\u015bcio\\u0142em, to chyba si\\u0119 pomyli\\u0142\\u201d.</p><p><b>Tomasz Lis</b>\\u00a0(\\u201eNewsweek\\u201d) w <a href=\\"https://twitter.com/KonradPiasecki/status/1132939710962241536\\">social mediach</a> ok\\u0142ada Roberta Biedronia oraz Leszka Ja\\u017cd\\u017cewskiego: \\u201eGeneralnie proponuj\\u0119 zacz\\u0105\\u0107 od szacunku dla wyborc\\u00f3w, ich wiary i przywi\\u0105zania do tradycji. Jak kto\\u015b chce tu robi\\u0107 rewolucj\\u0119, to ko\\u0144czy jako lider ugrupowania na 6%, albo autor wyst\\u0105pienia, kt\\u00f3re by\\u0142o najwi\\u0119kszym prezentem dla PiS \\u2013 u w tej kampanii\\u201d.</p><p><b>Konrad Piasecki</b> (TVN24): \\u201eCiekawe czy poczucie satysfakcji maj\\u0105 wszyscy ci, kt\\u00f3rzy wpychaj\\u0105 opozycj\\u0119 na \\u015bcian\\u0119 bezpardonowej walki z Ko\\u015bcio\\u0142em, natychmiastowej aborcji na \\u017cyczenie i ciesz\\u0105 si\\u0119 z \\u00bb\\u015bwi\\u0119tej waginy\\u00ab na Paradzie R\\u00f3wno\\u015bci\\u201d.</p><p>\\u201eA gdybym by\\u0142 m\\u0142otkowym, to co by\\u015b powiedzia\\u0142a? A gdyby przysz\\u0142o zrozumie\\u0107, \\u017ce retoryka supportu by\\u0142a paliwem do obrony \\u201enaszego proboszcza\\u201d przed lewactwem? \\u017be dzi\\u015b odwo\\u0142uj\\u0105 lider\\u00f3w opozycji malkontenci, kt\\u00f3rzy sami palcem nie kiwn\\u0119li? \\u017be kr\\u00f3tkie spodenki Wiosny da\\u0142y PiS wygran\\u0105?\\u201d \\u2013 <a href=\\"https://twitter.com/PSzubartowicz/status/1132989543626530816\\">retorycznie pyta</a> <b>Przemys\\u0142aw Szubartowicz</b> (\\u201eWiadomo Co\\u201d).</p><p>\\u201eWojna z Matk\\u0105 Bosk\\u0105 Cz\\u0119stochowsk\\u0105, szyderstwa z Naj\\u015bwi\\u0119tszego Sakramentu przynios\\u0142y Koalicji Europejskiej gorzk\\u0105 kl\\u0119sk\\u0119, by\\u0107 mo\\u017ce grzebi\\u0105c jakiekolwiek szanse opozycji na jesienne zwyci\\u0119stwo\\u201d \\u2013 to z kolei powyborcza analiza <b>Jacka Karnowskiego</b> (\\u201eSieci\\u201d, wPolityce.pl). Ale brzmi jak tweet proeuropejskich i prodemokratycznych komentator\\u00f3w.</p><h2><b>Nie odp\\u0142yw, a mobilizacja</b></h2><p>\\u201eKa\\u017cda r\\u0119ka podniesiona na Ko\\u015bci\\u00f3\\u0142 to r\\u0119ka podniesiona na Polsk\\u0119\\u201d \\u2013 m\\u00f3wi\\u0142 kilka tygodni temu <b>Jaros\\u0142aw Kaczy\\u0144ski</b>. Dzi\\u015b, po wyborach, cz\\u0119\\u015b\\u0107 publicyst\\u00f3w postanowi\\u0142a przyzna\\u0107 mu racj\\u0119. Uznali \\u015bledzenie pedofilskich skandali w Ko\\u015bciele oraz walk\\u0119 o prawa os\\u00f3b LGBT za walk\\u0119 z Ko\\u015bcio\\u0142em, przyjmuj\\u0105c w ca\\u0142ej rozci\\u0105g\\u0142o\\u015bci narracj\\u0119 forsowan\\u0105 przez PiS.</p><p>Zapominaj\\u0105c po drodze, \\u017ce Koalicja Europejska \\u017cadnej z tych walk nie prowadzi\\u0142a. Do szuflady schowa\\u0142a aborcj\\u0119 razem z Barbar\\u0105 Nowack\\u0105, o rozdziale Ko\\u015bcio\\u0142a od pa\\u0144stwa nie m\\u00f3wi\\u0142a w formie innej ni\\u017c og\\u00f3lnikowa.</p><p>Pojawi\\u0142y si\\u0119 deklaracje o komisji do spraw pedofilii, ale zag\\u0142uszone przez konkurencyjne propozycje Prawa i Sprawiedliwo\\u015bci. TVP pokazywa\\u0142o co drugi dzie\\u0144 wyst\\u0105pienie Leszka Ja\\u017cd\\u017cewskiego, twierdz\\u0105c, \\u017ce to tajny plan Koalicji na zniszczenie Ko\\u015bcio\\u0142a.</p><p>Ale TVP twierdzi wiele rzeczy: \\u017ce Donald Tusk jest niemieckim agentem, \\u017ce strajk nauczycieli by\\u0142 puczem organizowanym przez totaln\\u0105 opozycj\\u0119, a przede wszystkim, \\u017ce przeci\\u0119tna polska rodzina straci przez Koalicj\\u0119 120 tysi\\u0119cy z\\u0142otych.</p><ul><li>Po pierwsze: prowadzenie polityki tak, by nie narazi\\u0107 si\\u0119 na nagonk\\u0119 w mediach publicznych, nie ma \\u017cadnego sensu. B\\u0119dzie zawsze nieskuteczne.</li><li>Po drugie: jakie prawo maj\\u0105 zwolennicy Koalicji m\\u00f3wi\\u0107 filmowcom, aktywistom, dziennikarzom \\u015bledczym, czym maj\\u0105 si\\u0119 zajmowa\\u0107, aby nie zaszkodzi\\u0107 przypadkiem wynikowi wyborczemu?</li></ul><p>Co wi\\u0119cej, elektorat Koalicji jako ca\\u0142o\\u015bci, jak i poszczeg\\u00f3lnych partii jest zdecydowanie bardziej liberalny obyczajowo ni\\u017c sami politycy i liderzy. OKO.press nie bada\\u0142o co prawda poparcia dla \\u201e\\u015bwi\\u0119tej waginy na Paradzie R\\u00f3wno\\u015bci\\u201d, ale dla \\u201eaborcji natychmiast na \\u017cyczenie\\u201d ju\\u017c tak.</p><h4><b>Kobieta powinna mie\\u0107 prawo do przerwania ci\\u0105\\u017cy do 12 tygodnia jej trwania? Odpowiedzi w elektoratach</b></h4><p>Wyborcy Wiosny Biedronia Wyborcy SLD Wyborcy PO Wyborcy PSL Wyborcy Kukiz&#x27;15 Wyborcy KORWiN i Ruchu Narodowego Wyborcy PiS</p><p>A jak wygl\\u0105da poparcie dla zwi\\u0105zk\\u00f3w partnerskich w elektoracie Koalicji, kt\\u00f3ra na ich temat milczy?</p><h4><b>Przyzwolenie na jednop\\u0142ciowe zwi\\u0105zki partnerskie w elektoratach partyjnych i koalicjach</b></h4><p>Wyborcy PiS Kukiz &#x27;15 KORWIN + RN PSL SLD .N PO Wiosna Koalicja Europejska</p><p>Komentatorzy oczywi\\u015bcie nie stawiaj\\u0105 tezy, \\u017ce zniech\\u0119cony elektorat KE przep\\u0142yn\\u0105\\u0142 do PiS, bo obrazi\\u0142 si\\u0119 za to, \\u017ce w Gda\\u0144sku pokazano \\u201e\\u015bwi\\u0119t\\u0105 wagin\\u0119\\u201d. Musieliby zak\\u0142ada\\u0107, \\u017ce dla wyborc\\u00f3w bardziej liczy si\\u0119 ochrona uczu\\u0107 religijnych ni\\u017c obrona praworz\\u0105dno\\u015bci.</p><p>Efekt wyborczy mia\\u0142a przynie\\u015b\\u0107 wi\\u0119c mobilizacja. Innymi s\\u0142owy: oskar\\u017ca si\\u0119 osoby niezwi\\u0105zane z komitetem wyborczym KE o to, \\u017ce swoimi dzia\\u0142aniami zdenerwowa\\u0142y wyborc\\u00f3w prawicy.</p><p><b>Dlaczego mia\\u0142a to by\\u0107 Matka Boska w T\\u0119czowej aureoli, a nie s\\u0142owa Grzegorza Schetyny o powodzi?</b></p><p>I skoro przypisuje si\\u0119 \\u201e\\u015bwi\\u0119tej waginie\\u201d dobry wynik wyborczy PiS, to czy ok\\u0142adanie kuk\\u0142y \\u017byda w Pruchniku uwa\\u017ca\\u0107 powinni\\u015bmy za zjawisko mobilizuj\\u0105ce zwolennik\\u00f3w KE?</p><h2><b>Co zawini\\u0142o?</b></h2><p>Zwolennicy Koalicji przypisuj\\u0105 zwolennikom PiS te same motywacje wyborcze. Tymczasem, jak wynika z <a href=\\"https://oko.press/wyborcy-pis-wierza-w-dalsze-rzady-zwolennicy-ke-boja-sie-tego-co-grozi-polsce-motywy-wyborcy-sondaz/\\">najnowszego sonda\\u017cu IPSOS</a> dla OKO.press*, cho\\u0107 elektorat KE rzeczywi\\u015bcie niesie niech\\u0119\\u0107 do PiS, to dla wyborc\\u00f3w prawicy g\\u0142osowanie <i>przeciwko</i> nie jest wcale kluczowe.</p><p>Tak wygl\\u0105da wykres motywacji elektoratu KE:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Koalicja Europejska</b></h4><p>A tak wygl\\u0105da wykres motywacji elektoratu PiS:</p><h3><b>Czym si\\u0119 Pan(i) kierowa\\u0142(a) przy wyborze partii/komitetu wyborczego?</b></h3><h4><b>Prawo i Sprawiedliwo\\u015b\\u0107</b></h4><p>Co istotne,</p><p><b>elektorat PiS spo\\u015br\\u00f3d pi\\u0119ciu analizowanych przez nas elektorat\\u00f3w, jako jedyny wskaza\\u0142 motywacj\\u0119 negatywn\\u0105 na ostatnim miejscu.</b></p><p>A z wynik\\u00f3w wybor\\u00f3w p\\u0142ynie jeden podstawowy wniosek: motywacja negatywna mobilizuje s\\u0142abiej ni\\u017c pozytywna.</p>", "photo": 13, "publication_date": "2019-05-28", "marked": true}	\N	11	1
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
1	localhost	80	t	3	\N
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
1	wag1.jpeg	original_images/wag1_6UuQyKc.jpeg	266	190	2019-05-20 11:46:52.792554+02	\N	\N	\N	\N	1	5759	1	09024b24ab2161caf04a35dff0081c2006e76392
2	n.jpeg	original_images/n_4C00pQ4.jpeg	1920	1080	2019-05-20 11:47:32.657585+02	\N	\N	\N	\N	1	258542	1	239397684dd79a3f2270e47313524d00ad95aa6d
3	n2.jpg	original_images/n2_FmPIaVw.jpg	600	401	2019-05-20 11:47:44.844693+02	\N	\N	\N	\N	1	46251	1	6a7ce8c2c926a4d41906b1705d6f905994c97cbe
4	hammer1.jpeg	original_images/hammer1.jpeg	227	222	2019-05-20 11:48:17.262367+02	\N	\N	\N	\N	1	4473	1	b6b838adc3c17a4cf5f3cb87f2033dd4f98f1b33
5	hammer2.jpg	original_images/hammer2.jpg	1000	1000	2019-05-20 11:49:23.551105+02	\N	\N	\N	\N	1	26060	1	b073b14292449d4b5fb5737d7be666bd4f04c3b9
6	gazwyb.jpg	original_images/gazwyb.jpg	620	300	2019-05-28 10:30:00.695126+02	\N	\N	\N	\N	1	16569	1	727e567b1635b18b05ab6db426c580dd02d2218b
7	PAYU-LOGO_GRADIENT_RGB.jpg	original_images/PAYU-LOGO_GRADIENT_RGB.jpg	851	478	2019-05-28 10:30:19.963077+02	\N	\N	\N	\N	1	30277	1	749212d81c0444c246c0165e2aaf14a5d9622eb5
8	logo-uw-1.jpg	original_images/logo-uw-1.jpg	444	221	2019-05-28 10:30:36.912553+02	\N	\N	\N	\N	1	40814	1	92ceab19a627553aba0028e966104fa19c3b6aa1
9	krishna.jpg	original_images/.jpg	428	606	2019-05-28 11:19:11.13507+02	\N	\N	\N	\N	1	71233	1	b95777864454daac3da1888edb7cecbbec9f3cab
10	krishna2.png	original_images/krishna2.png	204	479	2019-05-28 11:59:44.312798+02	\N	\N	\N	\N	1	276717	1	e4c0cf0fa0d561b87fa0340982c8a42cf42fd640
11	krshnold.jpeg	original_images/krshnold.jpeg	266	190	2019-05-28 12:00:02.079531+02	\N	\N	\N	\N	1	10364	1	5af488e97c97c5b64ae549768578056b2746f016
12	quote.jpg	original_images/quote.jpg	640	640	2019-05-28 12:10:59.472437+02	\N	\N	\N	\N	1	116185	1	5ae1bce6af80b01ef7511d3241db81232714bc03
13	P1010247-1440x720.jpg	original_images/P1010247-1440x720.jpg	1440	720	2019-05-28 16:51:33.206302+02	\N	\N	\N	\N	1	207144	1	c58962a02b7bc0b059be9479df72afa889c9f256
14	komor.webp	original_images/komor2.jpeg	725	484	2019-05-29 09:32:17.33888+02	\N	\N	\N	\N	1	56388	1	2bc521aa79ac598fef4e0a01d09af8cdd503a461
15	krowa-2-1440x720.jpg	original_images/donkey.jpg	450	204	2019-05-29 09:34:56.248064+02	\N	\N	\N	\N	1	29064	1	0cf4ec74673b4294ee2f907bf1f5db88c44b10d0
16	kacz.jpeg	original_images/kacz.jpeg	266	189	2019-05-29 09:36:30.205012+02	\N	\N	\N	\N	1	7741	1	a900c82c92c9733b75481150a8a32a0186d73525
17	Edward_Abramowski_(1868-1918).jpg	original_images/Edward_Abramowski_1868-1918.jpg	253	289	2019-05-29 14:56:28.579632+02	\N	\N	\N	\N	1	11777	1	23074e9de7475086853ca5985860e56a7545772a
18	wag2.jpg	original_images/wag2_dpEV14N.jpg	220	217	2019-05-30 15:25:03.252838+02	\N	\N	\N	\N	1	8814	1	0ee33c753a4a75d06926fa3cb7c3e2617b3ad8d5
19	wag3.jpg	original_images/wag3_Cs0PXPE.jpg	900	600	2019-05-30 15:25:23.706259+02	\N	\N	\N	\N	1	55652	1	21eac1de8e4b3f94dd1a86033e4e3404d39a9d4e
20	case.jpeg	original_images/case.jpeg	212	238	2019-05-30 15:30:00.11683+02	\N	\N	\N	\N	1	6215	1	ddf3d8e7b58c4a53d62b392198c6e42ea5aa4fdd
21	case2.jpg	original_images/case2.jpg	1451	1600	2019-05-30 15:30:39.307328+02	\N	\N	\N	\N	1	187320	1	2f6b89ed6b60f1b5e74f6ea4582f914e951917c0
22	case3.jpg	original_images/case3.jpg	1500	973	2019-05-30 15:31:19.637762+02	\N	\N	\N	\N	1	156277	1	a1676f6a0c03c3ff4f041204cacf51214b1e0c87
23	cross.png	original_images/cross.png	512	512	2019-05-30 16:42:55.563473+02	\N	\N	\N	\N	1	4403	1	7639eb5b5bad54e309bdfa99c68431d1b2a7b1c6
24	220px-Theodore_Kaczynski_2.jpg	original_images/220px-Theodore_Kaczynski_2.jpg	220	220	2019-05-31 10:34:01.825559+02	\N	\N	\N	\N	1	14754	1	2ffc9fc053a0b74e652b4195dba28670f8ed4dc8
25	dokt.jpeg	original_images/dokt.jpeg	275	183	2019-05-31 14:39:55.921073+02	\N	\N	\N	\N	1	13955	1	48b59a9f15ca0fbd48f469cd787e3de4ae8813f4
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
1	images/wag1_6UuQyKc.max-165x165.jpg	165	117		max-165x165	1
2	images/n_4C00pQ4.max-165x165.jpg	165	92		max-165x165	2
3	images/n2_FmPIaVw.max-165x165.jpg	165	110		max-165x165	3
4	images/hammer1.max-165x165.jpg	165	161		max-165x165	4
5	images/hammer2.max-165x165.jpg	165	165		max-165x165	5
6	images/wag1_6UuQyKc.width-200.jpg	200	142		width-200	1
7	images/n_4C00pQ4.width-200.jpg	200	112		width-200	2
8	images/n2_FmPIaVw.width-200.jpg	200	133		width-200	3
9	images/hammer1.width-200.jpg	200	195		width-200	4
10	images/hammer2.width-200.jpg	200	200		width-200	5
11	images/hammer1.width-400.jpg	227	222		width-400	4
12	images/gazwyb.max-165x165.jpg	165	79		max-165x165	6
13	images/PAYU-LOGO_GRADIENT_RGB.max-165x165.jpg	165	92		max-165x165	7
14	images/logo-uw-1.max-165x165.jpg	165	82		max-165x165	8
15	images/logo-uw-1.width-200.jpg	200	99		width-200	8
16	images/gazwyb.width-200.jpg	200	96		width-200	6
17	images/PAYU-LOGO_GRADIENT_RGB.width-200.jpg	200	112		width-200	7
18	images/.jpg.max-165x165.jpg	116	165		max-165x165	9
19	images/krishna2.max-165x165.png	70	165		max-165x165	10
20	images/krshnold.max-165x165.jpg	165	117		max-165x165	11
21	images/quote.max-800x600.jpg	600	600		max-800x600	12
22	images/quote.width-800.jpg	640	640		width-800	12
23	images/quote.max-165x165.jpg	165	165		max-165x165	12
24	images/.jpg.width-200.jpg	200	283		width-200	9
25	images/krishna2.width-200.png	200	469		width-200	10
26	images/krshnold.width-200.jpg	200	142		width-200	11
27	images/P1010247-1440x720.max-165x165.jpg	165	82		max-165x165	13
28	images/P1010247-1440x720.width-400.jpg	400	200		width-400	13
29	images/P1010247-1440x720.width-500.jpg	500	250		width-500	13
30	images/komor2.max-165x165.jpg	165	110		max-165x165	14
31	images/donkey.max-165x165.jpg	165	74		max-165x165	15
32	images/kacz.max-165x165.jpg	165	117		max-165x165	16
33	images/komor2.width-500.jpg	500	333		width-500	14
34	images/donkey.width-500.jpg	450	204		width-500	15
35	images/kacz.width-500.jpg	266	189		width-500	16
36	images/kacz.width-400.jpg	266	189		width-400	16
37	images/P1010247-1440x720.width-200.jpg	200	100		width-200	13
38	images/komor2.width-400.jpg	400	267		width-400	14
39	images/krshnold.width-150.jpg	150	107		width-150	11
40	images/krshnold.width-400.jpg	266	190		width-400	11
41	images/Edward_Abramowski_1868-1918.max-165x165.jpg	144	165		max-165x165	17
42	images/Edward_Abramowski_1868-1918.width-400.jpg	253	289		width-400	17
43	images/wag2_dpEV14N.max-165x165.jpg	165	162		max-165x165	18
44	images/wag3_Cs0PXPE.max-165x165.jpg	165	109		max-165x165	19
45	images/case.max-165x165.jpg	146	165		max-165x165	20
46	images/case2.max-165x165.jpg	149	165		max-165x165	21
47	images/case3.max-165x165.jpg	165	107		max-165x165	22
48	images/wag2_dpEV14N.width-200.jpg	200	197		width-200	18
49	images/wag3_Cs0PXPE.width-200.jpg	200	133		width-200	19
50	images/cross.max-165x165.png	165	165		max-165x165	23
51	images/cross.width-200.png	200	200		width-200	23
52	images/Edward_Abramowski_1868-1918.width-150.jpg	150	171		width-150	17
53	images/220px-Theodore_Kaczynski_2.max-165x165.jpg	165	165		max-165x165	24
54	images/220px-Theodore_Kaczynski_2.width-150.jpg	150	150		width-150	24
55	images/220px-Theodore_Kaczynski_2.width-400.jpg	220	220		width-400	24
56	images/wag2_dpEV14N.max-800x600.jpg	220	217		max-800x600	18
57	images/wag2_dpEV14N.width-800.jpg	220	217		width-800	18
58	images/cross.width-500.png	500	500		width-500	23
59	images/cross.width-400.png	400	400		width-400	23
60	images/case.width-200.jpg	200	224		width-200	20
61	images/case2.width-200.jpg	200	220		width-200	21
62	images/case3.width-200.jpg	200	129		width-200	22
63	images/dokt.max-165x165.jpg	165	109		max-165x165	25
64	images/dokt.width-200.jpg	200	133		width-200	25
65	images/komor2.width-200.jpg	200	133		width-200	14
66	images/donkey.width-200.jpg	200	90		width-200	15
67	images/kacz.width-200.jpg	200	142		width-200	16
68	images/dokt.width-500.jpg	275	183		width-500	25
69	images/dokt.width-400.jpg	275	183		width-400	25
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 14, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 170, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: constance_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.constance_config_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 44, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 149, true);


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_cooperatorlogo_id_seq', 3, true);


--
-- Name: main_footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_footer_id_seq', 2, true);


--
-- Name: main_rodopassadvert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_rodopassadvert_id_seq', 3, true);


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_projectmetric_id_seq', 3, true);


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_teammemberspecializationtag_id_seq', 12, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 3, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 22, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 49, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 25, true);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 69, true);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: constance_config constance_config_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config
    ADD CONSTRAINT constance_config_key_key UNIQUE (key);


--
-- Name: constance_config constance_config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config
    ADD CONSTRAINT constance_config_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: main_cooperatorlogo main_cooperatorlogo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_pkey PRIMARY KEY (id);


--
-- Name: main_footer main_footer_page_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_page_id_key UNIQUE (page_id);


--
-- Name: main_footer main_footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_pkey PRIMARY KEY (id);


--
-- Name: main_homepage main_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_homepage
    ADD CONSTRAINT main_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_jobofferindexpage main_jobofferindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferindexpage
    ADD CONSTRAINT main_jobofferindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_jobofferpage main_jobofferpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferpage
    ADD CONSTRAINT main_jobofferpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_newsindexpage main_newsindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newsindexpage
    ADD CONSTRAINT main_newsindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_newspage main_newspage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_rodopassadvert main_rodopassadvert_page_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_rodopassadvert
    ADD CONSTRAINT main_rodopassadvert_page_id_key UNIQUE (page_id);


--
-- Name: main_rodopassadvert main_rodopassadvert_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_rodopassadvert
    ADD CONSTRAINT main_rodopassadvert_pkey PRIMARY KEY (id);


--
-- Name: projects_projectmetric projects_projectmetric_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric
    ADD CONSTRAINT projects_projectmetric_pkey PRIMARY KEY (id);


--
-- Name: projects_projectpage projects_projectpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_specializationindexpage projects_specializationindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationindexpage
    ADD CONSTRAINT projects_specializationindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_specializationpage projects_specializationpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationpage
    ADD CONSTRAINT projects_specializationpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_teamindexpage projects_teamindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teamindexpage
    ADD CONSTRAINT projects_teamindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_teammember projects_teammember_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammember
    ADD CONSTRAINT projects_teammember_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_teammemberspecializationtag projects_teammemberspecializationtag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag
    ADD CONSTRAINT projects_teammemberspecializationtag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: constance_config_key_baef3136_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX constance_config_key_baef3136_like ON public.constance_config USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: main_cooperatorlogo_image_id_16147108; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_cooperatorlogo_image_id_16147108 ON public.main_cooperatorlogo USING btree (image_id);


--
-- Name: main_cooperatorlogo_page_id_ea52fbe3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_cooperatorlogo_page_id_ea52fbe3 ON public.main_cooperatorlogo USING btree (page_id);


--
-- Name: main_newspage_photo_id_ff5a2d19; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_newspage_photo_id_ff5a2d19 ON public.main_newspage USING btree (photo_id);


--
-- Name: projects_projectmetric_project_id_b982bf7a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectmetric_project_id_b982bf7a ON public.projects_projectmetric USING btree (project_id);


--
-- Name: projects_projectpage_icon_id_1145692d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_icon_id_1145692d ON public.projects_projectpage USING btree (icon_id);


--
-- Name: projects_projectpage_image_id_d50212f0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_image_id_d50212f0 ON public.projects_projectpage USING btree (image_id);


--
-- Name: projects_teammember_photo_id_10ff7e07; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_teammember_photo_id_10ff7e07 ON public.projects_teammember USING btree (photo_id);


--
-- Name: projects_teammemberspecializationtag_content_object_id_023d4610; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_teammemberspecializationtag_content_object_id_023d4610 ON public.projects_teammemberspecializationtag USING btree (content_object_id);


--
-- Name: projects_teammemberspecializationtag_tag_id_73959981; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_teammemberspecializationtag_tag_id_73959981 ON public.projects_teammemberspecializationtag USING btree (tag_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_cooperatorlogo main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_cooperatorlogo main_cooperatorlogo_page_id_ea52fbe3_fk_main_home; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_page_id_ea52fbe3_fk_main_home FOREIGN KEY (page_id) REFERENCES public.main_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_footer main_footer_page_id_d41469c7_fk_main_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_page_id_d41469c7_fk_main_homepage_page_ptr_id FOREIGN KEY (page_id) REFERENCES public.main_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_homepage main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_homepage
    ADD CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferindexpage main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferindexpage
    ADD CONSTRAINT main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferpage main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferpage
    ADD CONSTRAINT main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newsindexpage main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newsindexpage
    ADD CONSTRAINT main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newspage main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_newspage main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id FOREIGN KEY (photo_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_rodopassadvert main_rodopassadvert_page_id_947351d7_fk_main_home; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_rodopassadvert
    ADD CONSTRAINT main_rodopassadvert_page_id_947351d7_fk_main_home FOREIGN KEY (page_id) REFERENCES public.main_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectmetric projects_projectmetr_project_id_b982bf7a_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric
    ADD CONSTRAINT projects_projectmetr_project_id_b982bf7a_fk_projects_ FOREIGN KEY (project_id) REFERENCES public.projects_projectpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id FOREIGN KEY (icon_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_image_id_d50212f0_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_image_id_d50212f0_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_specializationindexpage projects_specializat_page_ptr_id_a20c5746_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationindexpage
    ADD CONSTRAINT projects_specializat_page_ptr_id_a20c5746_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_specializationpage projects_specializat_page_ptr_id_fa24395a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationpage
    ADD CONSTRAINT projects_specializat_page_ptr_id_fa24395a_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teamindexpage projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teamindexpage
    ADD CONSTRAINT projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammember projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammember
    ADD CONSTRAINT projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammember projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammember
    ADD CONSTRAINT projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id FOREIGN KEY (photo_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammemberspecializationtag projects_teammembers_content_object_id_023d4610_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag
    ADD CONSTRAINT projects_teammembers_content_object_id_023d4610_fk_projects_ FOREIGN KEY (content_object_id) REFERENCES public.projects_teammember(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_teammemberspecializationtag projects_teammembers_tag_id_73959981_fk_taggit_ta; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag
    ADD CONSTRAINT projects_teammembers_tag_id_73959981_fk_taggit_ta FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

