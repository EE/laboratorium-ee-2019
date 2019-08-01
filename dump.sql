--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_phone_image_id_e78545c7_fk_wagtailim;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_page_ptr_id_c3c2d719_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_p_topicpage_id_fc1de001_fk_projects_;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_p_projectpage_id_16edc0fe_fk_projects_;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_background_image_id_c6783694_fk_wagtailim;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammembers_tag_id_73959981_fk_taggit_ta;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammembers_content_object_id_023d4610_fk_projects_;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_photo_id_10ff7e07_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_page_ptr_id_23b42f86_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.projects_teamindexpage DROP CONSTRAINT projects_teamindexpa_page_ptr_id_3e244fbd_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializat_page_ptr_id_fa24395a_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationindexpage DROP CONSTRAINT projects_specializat_page_ptr_id_a20c5746_fk_wagtailco;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializat_background_image_id_87b958ff_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_page_ptr_id_2eccd927_fk_wagtailco;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_image_id_d50212f0_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_icon_id_1145692d_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_background_image_id_0dfc95d3_fk_wagtailim;
ALTER TABLE ONLY public.projects_projectmetric DROP CONSTRAINT projects_projectmetr_project_id_b982bf7a_fk_projects_;
ALTER TABLE ONLY public.main_subpagemetric DROP CONSTRAINT main_subpagemetric_page_id_fae0c127_fk_main_subpage_page_ptr_id;
ALTER TABLE ONLY public.main_subpagemetric DROP CONSTRAINT main_subpagemetric_icon_id_e745bce1_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_subpage DROP CONSTRAINT main_subpage_page_ptr_id_b97f8f24_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_subpage DROP CONSTRAINT main_subpage_header_background_im_dddd1f16_fk_wagtailim;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_specialization_id_6d607455_fk_projects_;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_photo_id_ff5a2d19_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_page_ptr_id_b58fa7b7_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_newsindexpage DROP CONSTRAINT main_newsindexpage_page_ptr_id_addbf522_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_page_ptr_id_fff97024_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_icon_id_2c47f752_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_jobofferindexpage DROP CONSTRAINT main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco;
ALTER TABLE ONLY public.main_infopage DROP CONSTRAINT main_infopage_page_ptr_id_b85bdde1_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_homepage DROP CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_oldhomepage DROP CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id;
ALTER TABLE ONLY public.main_oldhomepage DROP CONSTRAINT main_homepage_join_us_background_i_7a97f261_fk_wagtailim;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_site_id_e3025847_fk_wagtailcore_site_id;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_page_id_ea52fbe3_fk_main_oldh;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id;
ALTER TABLE ONLY public.main_contactform DROP CONSTRAINT main_contactform_site_id_004d3ccf_fk_wagtailcore_site_id;
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
DROP INDEX public.projects_topicpage_projects_topicpage_id_fc1de001;
DROP INDEX public.projects_topicpage_projects_projectpage_id_16edc0fe;
DROP INDEX public.projects_topicpage_phone_image_id_e78545c7;
DROP INDEX public.projects_topicpage_background_image_id_c6783694;
DROP INDEX public.projects_teammemberspecializationtag_tag_id_73959981;
DROP INDEX public.projects_teammemberspecializationtag_content_object_id_023d4610;
DROP INDEX public.projects_teammember_photo_id_10ff7e07;
DROP INDEX public.projects_specializationpage_background_image_id_87b958ff;
DROP INDEX public.projects_projectpage_image_id_d50212f0;
DROP INDEX public.projects_projectpage_icon_id_1145692d;
DROP INDEX public.projects_projectpage_background_image_id_0dfc95d3;
DROP INDEX public.projects_projectmetric_project_id_b982bf7a;
DROP INDEX public.main_subpagemetric_page_id_fae0c127;
DROP INDEX public.main_subpagemetric_icon_id_e745bce1;
DROP INDEX public.main_subpage_header_background_image_id_dddd1f16;
DROP INDEX public.main_newspage_specialization_id_6d607455;
DROP INDEX public.main_newspage_photo_id_ff5a2d19;
DROP INDEX public.main_jobofferpage_icon_id_2c47f752;
DROP INDEX public.main_homepage_join_us_background_id_7a97f261;
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
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_projects_pkey;
ALTER TABLE ONLY public.projects_topicpage_projects DROP CONSTRAINT projects_topicpage_proje_topicpage_id_projectpage_2b5e6777_uniq;
ALTER TABLE ONLY public.projects_topicpage DROP CONSTRAINT projects_topicpage_pkey;
ALTER TABLE ONLY public.projects_teammemberspecializationtag DROP CONSTRAINT projects_teammemberspecializationtag_pkey;
ALTER TABLE ONLY public.projects_teammember DROP CONSTRAINT projects_teammember_pkey;
ALTER TABLE ONLY public.projects_teamindexpage DROP CONSTRAINT projects_teamindexpage_pkey;
ALTER TABLE ONLY public.projects_specializationpage DROP CONSTRAINT projects_specializationpage_pkey;
ALTER TABLE ONLY public.projects_specializationindexpage DROP CONSTRAINT projects_specializationindexpage_pkey;
ALTER TABLE ONLY public.projects_projectpage DROP CONSTRAINT projects_projectpage_pkey;
ALTER TABLE ONLY public.projects_projectmetric DROP CONSTRAINT projects_projectmetric_pkey;
ALTER TABLE ONLY public.main_subpagemetric DROP CONSTRAINT main_subpagemetric_pkey;
ALTER TABLE ONLY public.main_subpage DROP CONSTRAINT main_subpage_pkey;
ALTER TABLE ONLY public.main_newspage DROP CONSTRAINT main_newspage_pkey;
ALTER TABLE ONLY public.main_newsindexpage DROP CONSTRAINT main_newsindexpage_pkey;
ALTER TABLE ONLY public.main_jobofferpage DROP CONSTRAINT main_jobofferpage_pkey;
ALTER TABLE ONLY public.main_jobofferindexpage DROP CONSTRAINT main_jobofferindexpage_pkey;
ALTER TABLE ONLY public.main_infopage DROP CONSTRAINT main_infopage_pkey;
ALTER TABLE ONLY public.main_homepage DROP CONSTRAINT main_homepage_pkey1;
ALTER TABLE ONLY public.main_oldhomepage DROP CONSTRAINT main_homepage_pkey;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_site_id_key;
ALTER TABLE ONLY public.main_footer DROP CONSTRAINT main_footer_pkey;
ALTER TABLE ONLY public.main_cooperatorlogo DROP CONSTRAINT main_cooperatorlogo_pkey;
ALTER TABLE ONLY public.main_contactform DROP CONSTRAINT main_contactform_site_id_key;
ALTER TABLE ONLY public.main_contactform DROP CONSTRAINT main_contactform_pkey;
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
ALTER TABLE public.projects_topicpage_projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_teammemberspecializationtag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects_projectmetric ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_subpagemetric ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_footer ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_cooperatorlogo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.main_contactform ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE public.projects_topicpage_projects_id_seq;
DROP TABLE public.projects_topicpage_projects;
DROP TABLE public.projects_topicpage;
DROP SEQUENCE public.projects_teammemberspecializationtag_id_seq;
DROP TABLE public.projects_teammemberspecializationtag;
DROP TABLE public.projects_teammember;
DROP TABLE public.projects_teamindexpage;
DROP TABLE public.projects_specializationpage;
DROP TABLE public.projects_specializationindexpage;
DROP TABLE public.projects_projectpage;
DROP SEQUENCE public.projects_projectmetric_id_seq;
DROP TABLE public.projects_projectmetric;
DROP SEQUENCE public.main_subpagemetric_id_seq;
DROP TABLE public.main_subpagemetric;
DROP TABLE public.main_subpage;
DROP TABLE public.main_oldhomepage;
DROP TABLE public.main_newspage;
DROP TABLE public.main_newsindexpage;
DROP TABLE public.main_jobofferpage;
DROP TABLE public.main_jobofferindexpage;
DROP TABLE public.main_infopage;
DROP TABLE public.main_homepage;
DROP SEQUENCE public.main_footer_id_seq;
DROP TABLE public.main_footer;
DROP SEQUENCE public.main_cooperatorlogo_id_seq;
DROP TABLE public.main_cooperatorlogo;
DROP SEQUENCE public.main_contactform_id_seq;
DROP TABLE public.main_contactform;
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
-- Name: main_contactform; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_contactform (
    id integer NOT NULL,
    after_send_text text NOT NULL,
    after_send_text_pl text,
    after_send_text_en text,
    site_id integer,
    recruitment_terms_accepted_label text NOT NULL,
    recruitment_terms_accepted_label_en text,
    recruitment_terms_accepted_label_pl text,
    terms_accepted_label text NOT NULL,
    terms_accepted_label_en text,
    terms_accepted_label_pl text
);


--
-- Name: main_contactform_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_contactform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_contactform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_contactform_id_seq OWNED BY public.main_contactform.id;


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
    partners text NOT NULL,
    partners_en text,
    partners_pl text,
    site_id integer
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
    content text NOT NULL,
    content_pl text,
    content_en text
);


--
-- Name: main_infopage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_infopage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text,
    consent_required boolean NOT NULL
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
    body_en text,
    icon_id integer
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
    marked boolean NOT NULL,
    specialization_id integer,
    cta_question character varying(200) NOT NULL,
    cta_question_en character varying(200),
    cta_question_pl character varying(200)
);


--
-- Name: main_oldhomepage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_oldhomepage (
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
    specializations_headline_pl character varying(128),
    join_us_background_id integer,
    join_us_body text NOT NULL,
    join_us_body_en text,
    join_us_body_pl text,
    join_us_headline character varying(128) NOT NULL,
    join_us_headline_en character varying(128),
    join_us_headline_pl character varying(128)
);


--
-- Name: main_subpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_subpage (
    page_ptr_id integer NOT NULL,
    header_subtitle text NOT NULL,
    header_subtitle_pl text,
    header_subtitle_en text,
    header_external_link character varying(200) NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text,
    header_background_image_id integer
);


--
-- Name: main_subpagemetric; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_subpagemetric (
    id integer NOT NULL,
    sort_order integer,
    value character varying(31) NOT NULL,
    value_pl character varying(31),
    value_en character varying(31),
    property_name character varying(63) NOT NULL,
    property_name_pl character varying(63),
    property_name_en character varying(63),
    icon_id integer,
    page_id integer NOT NULL
);


--
-- Name: main_subpagemetric_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.main_subpagemetric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: main_subpagemetric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.main_subpagemetric_id_seq OWNED BY public.main_subpagemetric.id;


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
    challenge text NOT NULL,
    challenge_en text,
    challenge_pl text,
    process text,
    process_en text,
    process_pl text,
    quote text NOT NULL,
    quote_en text,
    quote_pl text,
    self_initiated boolean NOT NULL,
    image_id integer,
    icon_id integer,
    short_name character varying(32) NOT NULL,
    background_image_id integer,
    project_url character varying(200) NOT NULL,
    masonry_featured_x boolean NOT NULL,
    masonry_featured_y boolean NOT NULL,
    masonry_title_dark boolean NOT NULL,
    masonry_featured_mobile boolean NOT NULL,
    quote_author text NOT NULL
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
    long_name_en character varying(64),
    long_name_pl character varying(64),
    background_image_id integer,
    short_description text NOT NULL,
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
-- Name: projects_topicpage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_topicpage (
    page_ptr_id integer NOT NULL,
    marked boolean NOT NULL,
    content text NOT NULL,
    content_pl text,
    content_en text,
    background_image_id integer,
    phone_image_id integer
);


--
-- Name: projects_topicpage_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects_topicpage_projects (
    id integer NOT NULL,
    topicpage_id integer NOT NULL,
    projectpage_id integer NOT NULL
);


--
-- Name: projects_topicpage_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_topicpage_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_topicpage_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_topicpage_projects_id_seq OWNED BY public.projects_topicpage_projects.id;


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
-- Name: main_contactform id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform ALTER COLUMN id SET DEFAULT nextval('public.main_contactform_id_seq'::regclass);


--
-- Name: main_cooperatorlogo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo ALTER COLUMN id SET DEFAULT nextval('public.main_cooperatorlogo_id_seq'::regclass);


--
-- Name: main_footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer ALTER COLUMN id SET DEFAULT nextval('public.main_footer_id_seq'::regclass);


--
-- Name: main_subpagemetric id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric ALTER COLUMN id SET DEFAULT nextval('public.main_subpagemetric_id_seq'::regclass);


--
-- Name: projects_projectmetric id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric ALTER COLUMN id SET DEFAULT nextval('public.projects_projectmetric_id_seq'::regclass);


--
-- Name: projects_teammemberspecializationtag id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_teammemberspecializationtag ALTER COLUMN id SET DEFAULT nextval('public.projects_teammemberspecializationtag_id_seq'::regclass);


--
-- Name: projects_topicpage_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects ALTER COLUMN id SET DEFAULT nextval('public.projects_topicpage_projects_id_seq'::regclass);


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
171	Can add info page	45	add_infopage
172	Can change info page	45	change_infopage
173	Can delete info page	45	delete_infopage
174	Can view info page	45	view_infopage
175	Can add topic page	46	add_topicpage
176	Can change topic page	46	change_topicpage
177	Can delete topic page	46	delete_topicpage
178	Can view topic page	46	view_topicpage
179	Can add contact form	47	add_contactform
180	Can change contact form	47	change_contactform
181	Can delete contact form	47	delete_contactform
182	Can view contact form	47	view_contactform
183	Can add old home page	29	add_oldhomepage
184	Can change old home page	29	change_oldhomepage
185	Can delete old home page	29	delete_oldhomepage
186	Can view old home page	29	view_oldhomepage
187	Can add home page	48	add_homepage
188	Can change home page	48	change_homepage
189	Can delete home page	48	delete_homepage
190	Can view home page	48	view_homepage
191	Can add sub page	49	add_subpage
192	Can change sub page	49	change_subpage
193	Can delete sub page	49	delete_subpage
194	Can view sub page	49	view_subpage
195	Can add sub page metric	50	add_subpagemetric
196	Can change sub page metric	50	change_subpagemetric
197	Can delete sub page metric	50	delete_subpagemetric
198	Can view sub page metric	50	view_subpagemetric
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
39	pbkdf2_sha256$150000$BeJBe3BtYJcv$wK3gdNcCpEeqzFeJq4UvTDM0geROuyesgdngUnwpuHo=	\N	t	admin				t	t	2019-08-01 14:58:17.639444+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
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
45	main	infopage
46	projects	topicpage
47	main	contactform
29	main	oldhomepage
48	main	homepage
49	main	subpage
50	main	subpagemetric
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
148	main	0011_auto_20190603_1326	2019-06-04 09:14:56.961808+02
149	projects	0009_auto_20190603_1358	2019-06-04 09:14:57.238824+02
150	projects	0010_auto_20190612_1325	2019-06-12 14:33:43.395649+02
151	main	0012_newspage_specialization	2019-06-13 15:48:04.862773+02
152	projects	0011_projectpage_background_image	2019-06-14 10:24:58.566781+02
153	main	0013_auto_20190614_1211	2019-06-14 15:27:34.285105+02
154	projects	0012_auto_20190614_1440	2019-06-14 15:27:34.481147+02
155	main	0014_infopage_consent_required	2019-06-17 12:21:55.890651+02
156	projects	0013_auto_20190617_1117	2019-06-17 12:21:56.256852+02
157	main	0015_auto_20190617_1238	2019-06-17 13:57:22.974536+02
158	projects	0014_auto_20190617_1238	2019-06-17 13:57:23.415647+02
159	projects	0015_auto_20190618_1037	2019-06-18 11:07:59.151257+02
160	main	0016_auto_20190624_1012	2019-06-26 09:56:52.237203+02
161	projects	0016_auto_20190625_1423	2019-06-26 09:56:52.398419+02
162	main	0017_auto_20190627_1243	2019-07-03 18:14:10.220321+02
163	main	0018_contactform	2019-07-03 18:14:10.338326+02
164	main	0019_auto_20190702_1324	2019-07-03 18:14:10.565873+02
165	projects	0017_topicpage_phone_image	2019-07-03 18:14:10.728447+02
166	main	0020_auto_20190705_1018	2019-07-05 19:58:06.036616+02
167	projects	0018_projectpage_project_url	2019-07-05 19:58:06.113653+02
168	projects	0019_auto_20190705_1206	2019-07-05 19:58:06.38364+02
169	projects	0020_projectpage_masonry_featured_mobile	2019-07-05 19:58:06.434193+02
170	projects	0021_auto_20190705_1440	2019-07-05 19:58:06.620217+02
171	projects	0022_auto_20190705_1532	2019-07-05 19:58:06.894624+02
172	main	0021_auto_20190708_1302	2019-07-09 13:47:08.618575+02
173	projects	0023_auto_20190708_1030	2019-07-09 13:47:08.866421+02
174	projects	0024_auto_20190708_1302	2019-07-09 13:47:09.18877+02
175	projects	0025_auto_20190709_0905	2019-07-09 13:47:09.315286+02
176	projects	0026_auto_20190709_0932	2019-07-09 13:47:09.552066+02
177	main	0022_auto_20190709_1230	2019-07-10 14:21:48.693449+02
178	main	0023_homepage	2019-07-10 14:21:48.788612+02
179	main	0024_auto_20190710_1237	2019-07-10 14:21:48.929101+02
180	main	0025_subpage	2019-07-12 13:03:00.76154+02
181	main	0026_auto_20190711_1459	2019-07-12 13:03:00.787846+02
182	main	0026_auto_20190712_1058	2019-07-12 13:03:00.951459+02
183	main	0027_auto_20190712_1240	2019-07-12 13:03:01.145853+02
184	main	0025_subpage_squashed_0026_auto_20190711_1459	2019-07-12 13:03:01.155786+02
185	main	0028_auto_20190715_1120	2019-07-15 12:31:08.257608+02
186	main	0029_auto_20190715_1136	2019-07-15 12:31:08.421504+02
187	main	0030_subpagemetric	2019-07-16 13:53:23.337572+02
188	main	0031_auto_20190716_1238	2019-07-16 13:53:23.539806+02
189	main	0032_auto_20190718_1039	2019-07-18 13:28:29.743428+02
190	main	0033_auto_20190718_1206	2019-07-18 13:28:29.920173+02
191	main	0034_auto_20190718_1305	2019-07-18 13:28:30.101487+02
192	main	0035_auto_20190719_1052	2019-07-19 14:34:09.798573+02
193	main	0036_auto_20190729_1112	2019-08-01 14:52:19.054974+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: main_contactform; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_contactform (id, after_send_text, after_send_text_pl, after_send_text_en, site_id, recruitment_terms_accepted_label, recruitment_terms_accepted_label_en, recruitment_terms_accepted_label_pl, terms_accepted_label, terms_accepted_label_en, terms_accepted_label_pl) FROM stdin;
1	<p>Dziękujemy za kontakt. Odpowiemy najszybciej, jak to możliwe. Maksymalnie w przeciągu 48h.</p>	<p>Dziękujemy za kontakt. Odpowiemy najszybciej, jak to możliwe. Maksymalnie w przeciągu 48h.</p>	<p>Dziękujemy za kontakt. Odpowiemy najszybciej, jak to możliwe. Maksymalnie w przeciągu 48h.</p>	1	<p>Wyrażam zgodę na przetwarzanie danych osobowych przez Laboratorium EE sp. z o.o. sp. k. przez okres 1 roku, dla potrzeb realizacji procesu rekrutacji i ewentualnych przyszłych rekrutacji.</p>		<p>Wyrażam zgodę na przetwarzanie danych osobowych przez Laboratorium EE sp. z o.o. sp. k. przez okres 1 roku, dla potrzeb realizacji procesu rekrutacji i ewentualnych przyszłych rekrutacji.</p>	<p>Przeczytałam/przeczytałem i akceptuję <a id="42" linktype="page"><b>Zasady ochrony danych osobowych</b></a></p>		<p>Przeczytałam/przeczytałem i akceptuję <a id="42" linktype="page"><b>Zasady ochrony danych osobowych</b></a></p>
\.


--
-- Data for Name: main_cooperatorlogo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_cooperatorlogo (id, sort_order, image_id, page_id) FROM stdin;
4	0	41	3
10	1	47	3
5	2	42	3
9	3	46	3
8	4	45	3
7	5	44	3
12	6	51	3
6	7	43	3
\.


--
-- Data for Name: main_footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_footer (id, contact, contact_pl, contact_en, address, address_pl, address_en, how_we_work, how_we_work_pl, how_we_work_en, partners, partners_en, partners_pl, site_id) FROM stdin;
2	<p>tel. +48 734 482 835<br/>e-mail: kontakt@laboratorium.ee<br/></p>	<p>tel. +48 734 482 835<br/>e-mail: kontakt@laboratorium.ee<br/></p>		<p>Aleja 3 maja 2/49<br/>00-391 Warszawa<br/>NIP: 5252593479<br/>REGON: 147415997<br/>Wykorzystujemy pliki cookies w celu zapewnienia optymalnego działania strony internetowej oraz ułatwienia korzystania z naszego serwisu. Pozwala to m.in. dostosować wygląd strony internetowej do Waszych preferencji. Plikami cookies możesz zarządzać z poziomu wykorzystywanej przeglądarki internetowej.<br/>Szczegóły znajdziesz na podstronie:</p><p><a id="42" linktype="page">Zasady ochrony danych osobowych</a></p>	<p>Aleja 3 maja 2/49<br/>00-391 Warszawa<br/>NIP: 5252593479<br/>REGON: 147415997<br/>Wykorzystujemy pliki cookies w celu zapewnienia optymalnego działania strony internetowej oraz ułatwienia korzystania z naszego serwisu. Pozwala to m.in. dostosować wygląd strony internetowej do Waszych preferencji. Plikami cookies możesz zarządzać z poziomu wykorzystywanej przeglądarki internetowej.<br/>Szczegóły znajdziesz na podstronie:</p><p><a id="42" linktype="page">Zasady ochrony danych osobowych</a></p>		<p>Jesteśmy <b>Prywatnym Centrum Badawczo-Rozwojowym</b>. Tworzymy usługi i produkty, które odpowiadają na ważne tematy, takie jak: <b>walka ze smogiem</b>, <b>wsparcie seniorów</b>, <b>rewolucja cyfrowa</b>. Podstawą w naszej pracy jest zaufanie i podejmowanie rozsądnego ryzyka. Celem wszystkich naszych działań jest wywołanie pozytywnego wpływu na społeczeństwo.</p>	<p>Jesteśmy <b>Prywatnym Centrum Badawczo-Rozwojowym</b>. Tworzymy usługi i produkty, które odpowiadają na ważne tematy, takie jak: <b>walka ze smogiem</b>, <b>wsparcie seniorów</b>, <b>rewolucja cyfrowa</b>. Podstawą w naszej pracy jest zaufanie i podejmowanie rozsądnego ryzyka. Celem wszystkich naszych działań jest wywołanie pozytywnego wpływu na społeczeństwo.</p>		<p><a href="http://thisisthe.studio">thisisthe.studio</a><br/><a href="https://centrumcyfrowe.pl/">www.centrumcyfrowe.pl</a><br/><a href="https://www.adminotaur.pl/">www.adminotaur.pl</a></p>		<p><a href="http://thisisthe.studio">thisisthe.studio</a><br/><a href="https://centrumcyfrowe.pl/">www.centrumcyfrowe.pl</a><br/><a href="https://www.adminotaur.pl/">www.adminotaur.pl</a></p>	1
\.


--
-- Data for Name: main_homepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_homepage (page_ptr_id, content, content_pl, content_en) FROM stdin;
40	[{"type": "triptych", "value": {"headline": "Specjalizujemy si\\u0119 w", "tiles": [{"background_image": 178, "content": "<p><b>Jeste\\u015bmy zwolennikami data driven everything. W naszych rozwi\\u0105zaniach wykorzystujemy data science i machine learning.</b></p>", "page": 52, "external_url": ""}, {"background_image": 180, "content": "<p><b>Projektujemy produkty cyfrowe i us\\u0142ugi cyfrowe. Prototypujemy, dzi\\u0119ki czemu tanio i szybko uczymy si\\u0119 na b\\u0142\\u0119dach.</b></p>", "page": 73, "external_url": ""}, {"background_image": 179, "content": "<p><b>Jeste\\u015bmy ekspertami w Scrumie. Zwinne zarz\\u0105dzanie zapewnia szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia \\u015brodk\\u00f3w.</b></p>", "page": 72, "external_url": ""}]}, "id": "a6d2c01f-57b3-427c-93a6-d255cb6aa265"}, {"type": "hero_carousel", "value": {"headline": "Poznaj nas przez nasze historie", "tiles": [{"background_image": 55, "headline": "<p>Sprawd\\u017a jak <b>Data Science</b> mo\\u017ce rozwin\\u0105\\u0107 Tw\\u00f3j biznes.</p>", "page": 14, "secondary_page": null}, {"background_image": 133, "headline": "<p>Zoptymalizuj procesy dzi\\u0119ki<b> Lego Scrum Game</b></p>", "page": 31, "secondary_page": null}]}, "id": "9490147f-464a-46a2-9998-8e6aae5841dc"}, {"type": "hero_switch", "value": {"headline": "Dzia\\u0142amy w obszarach", "tiles": [{"background_image": 136, "title": "Ochrona klimatu", "page": 39, "side_image": 175}, {"background_image": 138, "title": "Seniorzy", "page": 32, "side_image": 176}, {"background_image": 139, "title": "Media", "page": 33, "side_image": 177}, {"background_image": 140, "title": "Prawo", "page": 34, "side_image": 122}]}, "id": "57fca60f-e6de-4927-95bb-7fa27d732285"}, {"type": "rnd", "value": {"background_image": 147, "headline": "Twoje prywatne centrum badawczo rozwojowe", "body": "Rozwi\\u0105zujemy problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom.  Tw\\u00f3rz z nami rozwi\\u0105zania, kt\\u00f3re b\\u0119d\\u0105 mia\\u0142y znacznie.", "tiles": [{"value": "B+R", "description": "Tworzymy szyte na miar\\u0119 rozwi\\u0105zania i prototypy w procesie badawczo - rozwojowym."}, {"value": "3 dni", "description": "Minimalny czas potrzebny na zaprojektowanie prototypu."}, {"value": "Najszybsze ROI na rynku", "description": "Dzi\\u0119ki naszym standardom pracy, procesom i deweloperom."}]}, "id": "3795628d-4141-4594-a674-4e31724457b7"}, {"type": "hero_join_us", "value": {"background_image": 132, "headline": "Do\\u0142\\u0105cz do nas", "body": "Nauczymy Ci\\u0119 my\\u015ble\\u0107 kodem i tworzy\\u0107 sercem podczas projektowania i rozwoju rozwi\\u0105za\\u0144 zmieniaj\\u0105cych \\u015bwiat.", "page": 74}, "id": "3a631dd9-c510-44c0-9361-79d4f6932a35"}, {"type": "triptych", "value": {"headline": "Nasze inicjatywy", "tiles": [{"background_image": 141, "content": "", "page": 32, "external_url": ""}, {"background_image": 142, "content": "", "page": 33, "external_url": ""}, {"background_image": 143, "content": "", "page": 34, "external_url": ""}]}, "id": "d8a14fab-409e-443d-ab20-1d22d39e1d52"}]	[{"type": "triptych", "value": {"headline": "Specjalizujemy si\\u0119 w", "tiles": [{"background_image": 178, "content": "<p><b>Jeste\\u015bmy zwolennikami data driven everything. W naszych rozwi\\u0105zaniach wykorzystujemy data science i machine learning.</b></p>", "page": 52, "external_url": ""}, {"background_image": 180, "content": "<p><b>Projektujemy produkty cyfrowe i us\\u0142ugi cyfrowe. Prototypujemy, dzi\\u0119ki czemu tanio i szybko uczymy si\\u0119 na b\\u0142\\u0119dach.</b></p>", "page": 73, "external_url": ""}, {"background_image": 179, "content": "<p><b>Jeste\\u015bmy ekspertami w Scrumie. Zwinne zarz\\u0105dzanie zapewnia szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia \\u015brodk\\u00f3w.</b></p>", "page": 72, "external_url": ""}]}, "id": "a6d2c01f-57b3-427c-93a6-d255cb6aa265"}, {"type": "hero_carousel", "value": {"headline": "Poznaj nas przez nasze historie", "tiles": [{"background_image": 55, "headline": "<p>Sprawd\\u017a jak <b>Data Science</b> mo\\u017ce rozwin\\u0105\\u0107 Tw\\u00f3j biznes.</p>", "page": 14, "secondary_page": null}, {"background_image": 133, "headline": "<p>Zoptymalizuj procesy dzi\\u0119ki<b> Lego Scrum Game</b></p>", "page": 31, "secondary_page": null}]}, "id": "9490147f-464a-46a2-9998-8e6aae5841dc"}, {"type": "hero_switch", "value": {"headline": "Dzia\\u0142amy w obszarach", "tiles": [{"background_image": 136, "title": "Ochrona klimatu", "page": 39, "side_image": 175}, {"background_image": 138, "title": "Seniorzy", "page": 32, "side_image": 176}, {"background_image": 139, "title": "Media", "page": 33, "side_image": 177}, {"background_image": 140, "title": "Prawo", "page": 34, "side_image": 122}]}, "id": "57fca60f-e6de-4927-95bb-7fa27d732285"}, {"type": "rnd", "value": {"background_image": 147, "headline": "Twoje prywatne centrum badawczo rozwojowe", "body": "Rozwi\\u0105zujemy problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom.  Tw\\u00f3rz z nami rozwi\\u0105zania, kt\\u00f3re b\\u0119d\\u0105 mia\\u0142y znacznie.", "tiles": [{"value": "B+R", "description": "Tworzymy szyte na miar\\u0119 rozwi\\u0105zania i prototypy w procesie badawczo - rozwojowym."}, {"value": "3 dni", "description": "Minimalny czas potrzebny na zaprojektowanie prototypu."}, {"value": "Najszybsze ROI na rynku", "description": "Dzi\\u0119ki naszym standardom pracy, procesom i deweloperom."}]}, "id": "3795628d-4141-4594-a674-4e31724457b7"}, {"type": "hero_join_us", "value": {"background_image": 132, "headline": "Do\\u0142\\u0105cz do nas", "body": "Nauczymy Ci\\u0119 my\\u015ble\\u0107 kodem i tworzy\\u0107 sercem podczas projektowania i rozwoju rozwi\\u0105za\\u0144 zmieniaj\\u0105cych \\u015bwiat.", "page": 74}, "id": "3a631dd9-c510-44c0-9361-79d4f6932a35"}, {"type": "triptych", "value": {"headline": "Nasze inicjatywy", "tiles": [{"background_image": 141, "content": "", "page": 32, "external_url": ""}, {"background_image": 142, "content": "", "page": 33, "external_url": ""}, {"background_image": 143, "content": "", "page": 34, "external_url": ""}]}, "id": "d8a14fab-409e-443d-ab20-1d22d39e1d52"}]	[]
\.


--
-- Data for Name: main_infopage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_infopage (page_ptr_id, content, content_pl, content_en, consent_required) FROM stdin;
\.


--
-- Data for Name: main_jobofferindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_jobofferindexpage (page_ptr_id, cooperation, cooperation_pl, cooperation_en, recruitment, recruitment_pl, recruitment_en) FROM stdin;
\.


--
-- Data for Name: main_jobofferpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_jobofferpage (page_ptr_id, salary, employment_form, body, body_pl, body_en, icon_id) FROM stdin;
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

COPY public.main_newspage (page_ptr_id, headline, headline_pl, headline_en, publication_date, body, body_pl, body_en, photo_id, marked, specialization_id, cta_question, cta_question_en, cta_question_pl) FROM stdin;
14	Sprawdź jak Data Science  może rozwinąć Twój biznes.	Sprawdź jak Data Science  może rozwinąć Twój biznes.	\N	2019-05-29	<p>Obecnie mamy do czynienia z podażą danych na niespotykaną wcześniej skalę. Jest to zarówno <b>zagrożenie</b>, jak i<b> szansa</b> dla uzyskiwanych wyników biznesowych na podstawie<b> kluczowych danych</b> zbieranych przez organizację. Dzięki właściwemu wykorzystywaniu danych w organizacji oraz implementacji dostosowanych rozwiązań wykorzystujących <b>Data Science</b> osiągniesz przewagę konkurencyjną poprzez automatyzację części prac, oraz ułatwiając podejmowanie decyzji Twoim pracownikom.</p><p>Dowiedz się, w jaki sposób wykorzystać Data Science w Twojej organizacji.</p><p></p><h2>Szkolenie z<b> Zarządzania Biznesem przez Dane</b> (DDB)</h2><p></p><p></p><p><b>Największymi barierami</b> występującymi wśród naszych klientów przed wykorzystywaniem danych do zarządzania organizacją oraz optymalizacją działań są:</p><ul><li>brak świadomości dotyczącej szans płynących z transformacji organizacji w Data Driven Business, czyli podejmowania decyzji biznesowych w ramach organizacji na podstawie wniosków płynących z danych,</li></ul><p></p><ul><li>brak odwagi do zdobycia nowych kompetencji w zakresie i sposobie wykorzystywania danych do osiągnięcia korzyści biznesowych.</li></ul><p></p><p>W związku z tym niezbędne działanie to <b>inwestycja w edukację</b>.</p><h4></h4><p></p><h4><b>Celem szkolenia jest przekazanie jego uczestnikom wiedzy w zakresie:</b></h4><ol><li>Pokazania dodanej wartości biznesowej związanej z transformacją w <b>Biznes Zarządzany przez Dane</b>.<br/></li><li>Omówienie możliwości związanych z automatyzacją procesów w oparciu o dane.<br/></li><li>Poznania zasad formułowania wniosków pochodzących z danych i wykorzystywania ich we właściwy sposób.<br/></li><li>Zdobycia wiedzy na temat rozpoczęcia zarządzania organizacją i zespołami w oparciu o dane.</li></ol><p></p><h4></h4><p></p><h4><b>Czas trwania:</b> od 6h*</h4><p>*czas trwania, zakres oraz szczegóły szkolenia ustalane indywidualnie na podstawie wywiadu z klientem.</p><h4></h4><p></p><h4>Dzięki naszym warsztatom zespoły i organizacje, które szkolimy wiedzą:</h4><ul><li>jak wykorzystywać dane w swoim zespole i organizacji.</li></ul><p></p><ul><li>jak poprawnie i rzetelnie: przetwarzać, wykorzystywać i gromadzić dane.</li></ul><p></p><ul><li>jak automatyzować procesy w oparciu o dane.</li></ul><p></p><ul><li>jak dokonać i wykorzystać transformację w <b>Biznes Zarządzany przez Dane</b> w celu wygenerowania dodatniej wartości biznesowej.</li></ul><h3></h3><p></p><h3>Zdobądź z nami wiedzę, która pozwoli Twojemu biznesowi na wykorzystanie najcenniejszego zasobu XXI wieku: danych.</h3><h3></h3><h3>Napisz na:</h3><p></p><h4><a href="mailto:kontakt@laboratorium.ee">kontakt@laboratorium.ee</a></h4><p></p><p></p><p></p><h2></h2><h2></h2><h2></h2><h2></h2><h2></h2><h2>Case study</h2><h4>Podczas jednodniowego szkolenia na Polsko-Niemieckich Dni Mediów nasz lider specjalizacji:<b> Innowacje Przez Dane</b> przeszkolił grupę dziennikarzy z zakresu implementacji <b>Data Driven Business</b> na grunt polskiego dziennikarstwa i wydawnictw.</h4><p></p><p>14 czerwca jako <b>Laboratorium EE, Centrum Badawczo-Rozwojowe</b> dzieliśmy się naszą wiedzą i doświadczeniem w zakresie danych i koncepcji <b>Data Driven Organisation</b>. Korzystając z naszego doświadczenia w zakresie zarządzania przez dane, przekazaliśmy wiedzę dotyczącą wykorzystywania danych na gruncie polskiego dziennikarstwa.</p><p></p><p>Pomogliśmy dziennikarzom zdobyć umiejętności związane z dziennikarstwem opartym na danych. Na podstawie realnych przykładów dokonaliśmy transferu wiedzy pozwalającego na stworzenie w redakcjach i wydawnictwach kultury <b>Dziennikarstwa Opartego na Danych</b>, co przekłada się na wzrost świadomości dotyczących szans, które daje dobre zarządzanie danymi w organizacji oraz zespołach.</p>	<p>Obecnie mamy do czynienia z podażą danych na niespotykaną wcześniej skalę. Jest to zarówno <b>zagrożenie</b>, jak i<b> szansa</b> dla uzyskiwanych wyników biznesowych na podstawie<b> kluczowych danych</b> zbieranych przez organizację. Dzięki właściwemu wykorzystywaniu danych w organizacji oraz implementacji dostosowanych rozwiązań wykorzystujących <b>Data Science</b> osiągniesz przewagę konkurencyjną poprzez automatyzację części prac, oraz ułatwiając podejmowanie decyzji Twoim pracownikom.</p><p>Dowiedz się, w jaki sposób wykorzystać Data Science w Twojej organizacji.</p><p></p><h2>Szkolenie z<b> Zarządzania Biznesem przez Dane</b> (DDB)</h2><p></p><p></p><p><b>Największymi barierami</b> występującymi wśród naszych klientów przed wykorzystywaniem danych do zarządzania organizacją oraz optymalizacją działań są:</p><ul><li>brak świadomości dotyczącej szans płynących z transformacji organizacji w Data Driven Business, czyli podejmowania decyzji biznesowych w ramach organizacji na podstawie wniosków płynących z danych,</li></ul><p></p><ul><li>brak odwagi do zdobycia nowych kompetencji w zakresie i sposobie wykorzystywania danych do osiągnięcia korzyści biznesowych.</li></ul><p></p><p>W związku z tym niezbędne działanie to <b>inwestycja w edukację</b>.</p><h4></h4><p></p><h4><b>Celem szkolenia jest przekazanie jego uczestnikom wiedzy w zakresie:</b></h4><ol><li>Pokazania dodanej wartości biznesowej związanej z transformacją w <b>Biznes Zarządzany przez Dane</b>.<br/></li><li>Omówienie możliwości związanych z automatyzacją procesów w oparciu o dane.<br/></li><li>Poznania zasad formułowania wniosków pochodzących z danych i wykorzystywania ich we właściwy sposób.<br/></li><li>Zdobycia wiedzy na temat rozpoczęcia zarządzania organizacją i zespołami w oparciu o dane.</li></ol><p></p><h4></h4><p></p><h4><b>Czas trwania:</b> od 6h*</h4><p>*czas trwania, zakres oraz szczegóły szkolenia ustalane indywidualnie na podstawie wywiadu z klientem.</p><h4></h4><p></p><h4>Dzięki naszym warsztatom zespoły i organizacje, które szkolimy wiedzą:</h4><ul><li>jak wykorzystywać dane w swoim zespole i organizacji.</li></ul><p></p><ul><li>jak poprawnie i rzetelnie: przetwarzać, wykorzystywać i gromadzić dane.</li></ul><p></p><ul><li>jak automatyzować procesy w oparciu o dane.</li></ul><p></p><ul><li>jak dokonać i wykorzystać transformację w <b>Biznes Zarządzany przez Dane</b> w celu wygenerowania dodatniej wartości biznesowej.</li></ul><h3></h3><p></p><h3>Zdobądź z nami wiedzę, która pozwoli Twojemu biznesowi na wykorzystanie najcenniejszego zasobu XXI wieku: danych.</h3><h3></h3><h3>Napisz na:</h3><p></p><h4><a href="mailto:kontakt@laboratorium.ee">kontakt@laboratorium.ee</a></h4><p></p><p></p><p></p><h2></h2><h2></h2><h2></h2><h2></h2><h2></h2><h2>Case study</h2><h4>Podczas jednodniowego szkolenia na Polsko-Niemieckich Dni Mediów nasz lider specjalizacji:<b> Innowacje Przez Dane</b> przeszkolił grupę dziennikarzy z zakresu implementacji <b>Data Driven Business</b> na grunt polskiego dziennikarstwa i wydawnictw.</h4><p></p><p>14 czerwca jako <b>Laboratorium EE, Centrum Badawczo-Rozwojowe</b> dzieliśmy się naszą wiedzą i doświadczeniem w zakresie danych i koncepcji <b>Data Driven Organisation</b>. Korzystając z naszego doświadczenia w zakresie zarządzania przez dane, przekazaliśmy wiedzę dotyczącą wykorzystywania danych na gruncie polskiego dziennikarstwa.</p><p></p><p>Pomogliśmy dziennikarzom zdobyć umiejętności związane z dziennikarstwem opartym na danych. Na podstawie realnych przykładów dokonaliśmy transferu wiedzy pozwalającego na stworzenie w redakcjach i wydawnictwach kultury <b>Dziennikarstwa Opartego na Danych</b>, co przekłada się na wzrost świadomości dotyczących szans, które daje dobre zarządzanie danymi w organizacji oraz zespołach.</p>		55	t	6	Sprawdź Data Driven Business	\N	Sprawdź Data Driven Business
31	Warsztaty kierowane do Instytucji Kultury i Kierowników Projektu, którzy chcą zwiększyć efektywność zarządzania projektami, usprawnić procesy decyzyjne oraz zwiększyć wartość biznesową produktu.	Warsztaty kierowane do Instytucji Kultury i Kierowników Projektu, którzy chcą zwiększyć efektywność zarządzania projektami, usprawnić procesy decyzyjne oraz zwiększyć wartość biznesową produktu.	\N	2019-07-03	<h3>Zakres:</h3><ul><li>wstęp do metodyk zwinnych: Scrum, Kanban, Lean Management,</li><li>iteracyjny model prowadzenia projektów vs. Waterfall,</li><li>budowanie zachowań empirycznego zarządzania,</li><li>wskazanie kluczowych interesariuszy oraz zarządzanie nimi,</li><li>wykorzystanie metryk biznesowych,</li><li>budowa rozwiązań na styku zwinności i technologii,</li><li>rola managera w zwinnej organizacji,</li><li>rola Product Ownera (Właścicela Produktu) w instytucji kultury,</li><li>Product Owner vs. Project Manager — podobieństwa i różnice,</li><li>Product Owner kontra Interesariusze,</li><li>Product Owner kontra Zespół Deweloperski,</li><li>Współpraca Product Ownera z Scrum Masterem,</li><li>Narzędzia Product Ownera do zwinnego zarządzania.</li></ul><h4>Dla kogo dedykowane jest szkolenie?<br/><br/>Jeśli:</h4><ul><li>chcesz nauczyć się zarządzać zmianą,</li><li>szukasz metod na usprawnienie procesu,</li><li>chcesz mieć stały dostęp i wiedzę, nad czym pracuje zespół deweloperski,</li><li>chcesz mieć wpływ na postęp prac i rozwój produktu,</li><li>chcesz dostosować produkt do zmieniających się warunków biznesowych,</li></ul><p><b>to</b> szkolenie jest dla Ciebie.</p>	<h3>Zakres:</h3><ul><li>wstęp do metodyk zwinnych: Scrum, Kanban, Lean Management,</li><li>iteracyjny model prowadzenia projektów vs. Waterfall,</li><li>budowanie zachowań empirycznego zarządzania,</li><li>wskazanie kluczowych interesariuszy oraz zarządzanie nimi,</li><li>wykorzystanie metryk biznesowych,</li><li>budowa rozwiązań na styku zwinności i technologii,</li><li>rola managera w zwinnej organizacji,</li><li>rola Product Ownera (Właścicela Produktu) w instytucji kultury,</li><li>Product Owner vs. Project Manager — podobieństwa i różnice,</li><li>Product Owner kontra Interesariusze,</li><li>Product Owner kontra Zespół Deweloperski,</li><li>Współpraca Product Ownera z Scrum Masterem,</li><li>Narzędzia Product Ownera do zwinnego zarządzania.</li></ul><h4>Dla kogo dedykowane jest szkolenie?<br/><br/>Jeśli:</h4><ul><li>chcesz nauczyć się zarządzać zmianą,</li><li>szukasz metod na usprawnienie procesu,</li><li>chcesz mieć stały dostęp i wiedzę, nad czym pracuje zespół deweloperski,</li><li>chcesz mieć wpływ na postęp prac i rozwój produktu,</li><li>chcesz dostosować produkt do zmieniających się warunków biznesowych,</li></ul><p><b>to</b> szkolenie jest dla Ciebie.</p>		133	f	27	Zamów szkolenie	\N	Zamów szkolenie
\.


--
-- Data for Name: main_oldhomepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_oldhomepage (page_ptr_id, header, header_en, header_pl, r_and_d_center_body, r_and_d_center_headline, specializations_headline, r_and_d_center_body_en, r_and_d_center_body_pl, r_and_d_center_headline_en, r_and_d_center_headline_pl, specializations_headline_en, specializations_headline_pl, join_us_background_id, join_us_body, join_us_body_en, join_us_body_pl, join_us_headline, join_us_headline_en, join_us_headline_pl) FROM stdin;
3	Poznaj nas przez nasze historie	\N	Poznaj nas przez nasze historie	Skupiamy sie na dokładnej analizie stawianych nam wyzwań.	Twoje prywatne centrum badawczo rozwojowe	Specjalizujemy się w	We focus on a thorough analysis of the challenges we are facing.	Skupiamy sie na dokładnej analizie stawianych nam wyzwań.	Your private R&D center	Twoje prywatne centrum badawczo rozwojowe	We specialize in	Specjalizujemy się w	132	Skupiamy się na dokładnej analizie stawianych przed nami wyzwań. Tworzymy rozwiązania szyte na miarę, innowacyjne, które stale udoskonalamy i rozbudowujemy.		Skupiamy się na dokładnej analizie stawianych przed nami wyzwań. Tworzymy rozwiązania szyte na miarę, innowacyjne, które stale udoskonalamy i rozbudowujemy.	Dołącz do naszego zespołu	\N	Dołącz do naszego zespołu
\.


--
-- Data for Name: main_subpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_subpage (page_ptr_id, header_subtitle, header_subtitle_pl, header_subtitle_en, header_external_link, content, content_pl, content_en, header_background_image_id) FROM stdin;
42					[{"type": "paragraph", "value": {"title": "", "body": "<p><b>Obowi\\u0105zek informacyjny</b></p><p></p><p>Administratorem Pa\\u0144stwa danych osobowych jest Laboratorium EE sp. z o.o., sp.k. z siedzib\\u0105 o adresie Aleja 3 Maja 2 49, 00-391 Warszawa. Mog\\u0105 Pa\\u0144stwo skontaktowa\\u0107 si\\u0119 z nami korespondencyjnie pod powy\\u017cszym adresem.</p><p>Podanie adresu poczty elektronicznej (e-mail) jest dobrowolne, ale konieczne aby\\u015bmy mogli odpowiedzie\\u0107 na zadane pytanie.</p><p></p><p>Pa\\u0144stwa dane osobowe wykorzystujemy w celach:</p><p>skontaktowania si\\u0119 z Pa\\u0144stwem (realizuj\\u0105c nasz prawnie usprawiedliwiony interes w postaci komunikacji z U\\u017cytkownikami serwisu internetowego);</p><p>wykazania, \\u017ce weszli\\u015bmy w posiadanie Pa\\u0144stwa adresu poczty elektronicznej (e-mail) zgodnie z prawem. Z tego powodu, zbieramy i przechowujemy informacje na temat tego kiedy (dat\\u0119 i godzin\\u0119), sk\\u0105d (adres IP urz\\u0105dzenia) i jaki adres poczty elektronicznej (e-mail) zosta\\u0142 nam udost\\u0119pniony (wype\\u0142niaj\\u0105c obowi\\u0105zki prawne);</p><p>Pa\\u0144stwa dane osobowe przetwarzali b\\u0119dziemy przez okres 1 roku, liczony od dnia, w kt\\u00f3rym nasz przedstawiciel skontaktuje si\\u0119 z Pa\\u0144stwem, a w przypadku danych przetwarzanych na podstawie zgody, do chwili jej wycofania, chyba, \\u017ce wyst\\u0105pi sp\\u00f3r na temat zgodno\\u015bci przetwarzania danych z prawem, w\\u00f3wczas Pa\\u0144stwa dane przetwarzali b\\u0119dziemy do czasu jego rozstrzygni\\u0119cia.</p><p>Przys\\u0142uguj\\u0105 Pa\\u0144stwu prawa: dost\\u0119pu do danych i ich sprostowania. Ponadto w sytuacjach okre\\u015blonych w prawie ochrony danych osobowych oraz w zakresie tam wskazanym, prawo do usuni\\u0119cia lub ograniczenia przetwarzania, prawo do przeniesienia danych osobowych i prawo do wniesienia sprzeciwu wobec przetwarzania, kt\\u00f3rego dokonujemy w celu realizacji naszych prawnie usprawiedliwionych interes\\u00f3w.</p><p>Dok\\u0142adamy wszelkich stara\\u0144, aby przetwarzanie Pa\\u0144stwa danych osobowych odbywa\\u0142o si\\u0119 w spos\\u00f3b zgodny z przepisami prawa. Je\\u017celi jednak uznaj\\u0105 Pa\\u0144stwo, i\\u017c dopu\\u015bcili\\u015bmy si\\u0119 naruszenia, maj\\u0105 Pa\\u0144stwo prawo wniesienia skargi do Prezesa Urz\\u0119du Ochrony Danych Osobowych.</p><p>Wi\\u0119cej informacji na temat przetwarzania danych osobowych znajd\\u0105 Pa\\u0144stwo w Polityce prywatno\\u015bci.</p><p></p><p><b>Polityka prywatno\\u015bci strony internetowej</b></p><p><a href=\\"https://laboratorium.ee/\\">https://laboratorium.ee/</a></p><p>Obowi\\u0105zuje od 17 czerwca 2019</p><p><b>I POSTANOWIENIA OG\\u00d3LNE</b></p><p>Administratorem danych osobowych zbieranych za po\\u015brednictwem strony internetowej https://laboratorium.ee/ jest Laboratorium EE Sp. z o.o., Sp. k., adres siedziby: Al. 3 maja 2/49, 00-391 Warszawa, wpisan\\u0105 do rejestru przedsi\\u0119biorc\\u00f3w pod numerem KRS: 0000523161, NIP: 5252593479, REGON: 147415997, posiadaj\\u0105c\\u0105 kapita\\u0142 zak\\u0142adowy w kwocie: 5000,00z\\u0142, adres poczty elektronicznej: kontakt@laboratorium.ee dalej \\u201eAdministrator\\u201d, b\\u0119d\\u0105ca jednocze\\u015bnie Us\\u0142ugodawc\\u0105. , miejsce wykonywania dzia\\u0142alno\\u015bci: Al. 3 maja 2/49, 00-391 Warszawa, adres do dor\\u0119cze\\u0144: Al. 3 maja 2/49, 00-391 Warszawa, NIP: 5252593479, REGON: 147415997, adres poczty elektronicznej (e-mail): kontakt@laboratorium.ee, zwany dalej &quot;Administratorem&quot;.</p><p>Dane osobowe zbierane przez Administratora za po\\u015brednictwem strony internetowej s\\u0105 przetwarzane zgodnie z Rozporz\\u0105dzeniem Parlamentu Europejskiego i Rady (UE) 2016/679 z dnia 27 kwietnia 2016 r. w sprawie ochrony os\\u00f3b fizycznych w zwi\\u0105zku z przetwarzaniem danych osobowych i w sprawie swobodnego przep\\u0142ywu takich danych oraz uchylenia dyrektywy 95/46/WE (og\\u00f3lne rozporz\\u0105dzenie o ochronie danych), zwane dalej RODO oraz ustaw\\u0105 o ochronie danych osobowych z dnia 10 maja 2018 r.</p><p><b>II RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</b></p><p>CEL PRZETWARZANIA I PODSTAWA PRAWNA. Administrator przetwarza dane osobowe za po\\u015brednictwem strony https://laboratorium.ee/ w przypadku:</p><p>skorzystania przez u\\u017cytkownika z formularza kontaktowego. Dane osobowe s\\u0105 przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.<br/>RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH. Administrator przetwarza nast\\u0119puj\\u0105ce kategorie danych osobowych u\\u017cytkownika:</p><p>adres e-mail,</p><p>OKRES ARCHIWIZACJI DANYCH OSOBOWYCH. Dane osobowe u\\u017cytkownik\\u00f3w przechowywane s\\u0105 przez Administratora:</p><p>w przypadku, gdy podstaw\\u0105 przetwarzania danych jest wykonanie umowy, tak d\\u0142ugo, jak jest to niezb\\u0119dne do wykonania umowy, a po tym czasie przez okres odpowiadaj\\u0105cy okresowi przedawnienia roszcze\\u0144. Je\\u017celi przepis szczeg\\u00f3lny nie stanowi inaczej, termin przedawnienia wynosi lat sze\\u015b\\u0107, a dla roszcze\\u0144 o \\u015bwiadczenia okresowe oraz roszcze\\u0144 zwi\\u0105zanych z prowadzeniem dzia\\u0142alno\\u015bci gospodarczej - trzy lata.</p><p>w przypadku, gdy podstaw\\u0105 przetwarzania danych jest zgoda, tak d\\u0142ugo, a\\u017c zgoda nie zostanie odwo\\u0142ana, a po odwo\\u0142aniu zgody przez okres czasu odpowiadaj\\u0105cy okresowi przedawnienia roszcze\\u0144 jakie mo\\u017ce podnosi\\u0107 Administrator i jakie mog\\u0105 by\\u0107 podnoszone wobec niego. Je\\u017celi przepis szczeg\\u00f3lny nie stanowi inaczej, termin przedawnienia wynosi lat sze\\u015b\\u0107, a dla roszcze\\u0144 o \\u015bwiadczenia okresowe oraz roszcze\\u0144 zwi\\u0105zanych z prowadzeniem dzia\\u0142alno\\u015bci gospodarczej - trzy lata.</p><p>Podczas korzystania ze strony internetowej mog\\u0105 by\\u0107 pobierane dodatkowe informacje, w szczeg\\u00f3lno\\u015bci: adres IP przypisany do komputera u\\u017cytkownika lub zewn\\u0119trzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przegl\\u0105darki, czas dost\\u0119pu, typ systemu operacyjnego.</p><p>Od u\\u017cytkownik\\u00f3w mog\\u0105 by\\u0107 tak\\u017ce gromadzone dane nawigacyjne, w tym informacje o linkach i odno\\u015bnikach, w kt\\u00f3re zdecyduj\\u0105 si\\u0119 klikn\\u0105\\u0107 lub innych czynno\\u015bciach, podejmowanych na stronie internetowej. Podstaw\\u0105 prawn\\u0105 tego rodzaju czynno\\u015bci jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegaj\\u0105cy na u\\u0142atwieniu korzystania z us\\u0142ug \\u015bwiadczonych drog\\u0105 elektroniczn\\u0105 oraz na poprawie funkcjonalno\\u015bci tych us\\u0142ug.</p><p>Podanie danych osobowych przez u\\u017cytkownika jest dobrowolne.</p><p>Dane osobowe b\\u0119d\\u0105 przetwarzane tak\\u017ce w spos\\u00f3b zautomatyzowany w formie profilowania, o ile u\\u017cytkownik wyrazi na to zgod\\u0119 na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencj\\u0105 profilowania b\\u0119dzie przypisanie danej osobie profilu w celu podejmowania dotycz\\u0105cych jej decyzji b\\u0105d\\u017a analizy lub przewidywania jej preferencji, zachowa\\u0144 i postaw.</p><p>Administrator dok\\u0142ada szczeg\\u00f3lnej staranno\\u015bci w celu ochrony interes\\u00f3w os\\u00f3b, kt\\u00f3rych dane dotycz\\u0105, a w szczeg\\u00f3lno\\u015bci zapewnia, \\u017ce zbierane przez niego dane s\\u0105:</p><p>przetwarzane zgodnie z prawem,</p><p>zbierane dla oznaczonych, zgodnych z prawem cel\\u00f3w i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</p><p>merytorycznie poprawne i adekwatne w stosunku do cel\\u00f3w, w jakich s\\u0105 przetwarzane oraz przechowywane w postaci umo\\u017cliwiaj\\u0105cej identyfikacj\\u0119 os\\u00f3b, kt\\u00f3rych dotycz\\u0105, nie d\\u0142u\\u017cej ni\\u017c jest to niezb\\u0119dne do osi\\u0105gni\\u0119cia celu przetwarzania.</p><p><b>III UDOST\\u0118PNIENIE DANYCH OSOBOWYCH</b></p><p>Dane osobowe u\\u017cytkownik\\u00f3w przekazywane s\\u0105 dostawcom us\\u0142ug, z kt\\u00f3rych korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy us\\u0142ug, kt\\u00f3rym przekazywane s\\u0105 dane osobowe, w zale\\u017cno\\u015bci od uzgodnie\\u0144 umownych i okoliczno\\u015bci, albo podlegaj\\u0105 poleceniom Administratora co do cel\\u00f3w i sposob\\u00f3w przetwarzania tych danych (podmioty przetwarzaj\\u0105ce) albo samodzielnie okre\\u015blaj\\u0105 cele i sposoby ich przetwarzania (administratorzy).</p><p>Dane osobowe u\\u017cytkownik\\u00f3w s\\u0105 przechowywane wy\\u0142\\u0105cznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</p><p><b>IV PRAWO KONTROLI, DOST\\u0118PU DO TRE\\u015aCI W\\u0141ASNYCH DANYCH ORAZ ICH POPRAWIANIA</b></p><p>Osoba, kt\\u00f3rej dane dotycz\\u0105, ma prawo dost\\u0119pu do tre\\u015bci swoich danych osobowych oraz prawo ich sprostowania, usuni\\u0119cia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofni\\u0119cia zgody w dowolnym momencie bez wp\\u0142ywu na zgodno\\u015b\\u0107 z prawem przetwarzania, kt\\u00f3rego dokonano na podstawie zgody przed jej cofni\\u0119ciem.</p><p>Podstawy prawne \\u017c\\u0105dania u\\u017cytkownika:</p><p>W celu realizacji uprawnie\\u0144, o kt\\u00f3rych mowa w pkt 2 mo\\u017cna wys\\u0142a\\u0107 stosown\\u0105 wiadomo\\u015b\\u0107 e-mail na adres: kontakt@laboratorium.ee.</p><p>W sytuacji wyst\\u0105pienia przez u\\u017cytkownika z uprawnieniem wynikaj\\u0105cym z powy\\u017cszych praw, Administrator spe\\u0142nia \\u017c\\u0105danie albo odmawia jego spe\\u0142nienia niezw\\u0142ocznie, nie p\\u00f3\\u017aniej jednak ni\\u017c w ci\\u0105gu miesi\\u0105ca po jego otrzymaniu. Je\\u017celi jednak - z uwagi na skomplikowany charakter \\u017c\\u0105dania lub liczb\\u0119 \\u017c\\u0105da\\u0144 \\u2013 Administrator nie b\\u0119dzie m\\u00f3g\\u0142 spe\\u0142ni\\u0107 \\u017c\\u0105dania w ci\\u0105gu miesi\\u0105ca, spe\\u0142ni je w ci\\u0105gu kolejnych dw\\u00f3ch miesi\\u0119cy informuj\\u0105c u\\u017cytkownika uprzednio w terminie miesi\\u0105ca od otrzymania \\u017c\\u0105dania - o zamierzonym przed\\u0142u\\u017ceniu terminu oraz jego przyczynach.</p><p>W przypadku stwierdzenia, \\u017ce przetwarzanie danych osobowych narusza przepisy RODO, osoba, kt\\u00f3rej dane dotycz\\u0105, ma prawo wnie\\u015b\\u0107 skarg\\u0119 do Prezesa Urz\\u0119du Ochrony Danych Osobowych.</p><p><b>V PLIKI &quot;COOKIES&quot;</b></p><p>Strona Administratora u\\u017cywa plik\\u00f3w \\u201ecookies\\u201d.</p><p>Instalacja plik\\u00f3w \\u201ecookies\\u201d jest konieczna do prawid\\u0142owego \\u015bwiadczenia us\\u0142ug na stronie internetowej. W plikach \\u201ecookies&quot; znajduj\\u0105 si\\u0119 informacje niezb\\u0119dne do prawid\\u0142owego funkcjonowania strony, a tak\\u017ce daj\\u0105 one tak\\u017ce mo\\u017cliwo\\u015b\\u0107 opracowywania og\\u00f3lnych statystyk odwiedzin strony internetowej.</p><p>W ramach strony stosowane s\\u0105 rodzaje plik\\u00f3w &quot;cookies&quot;: sesyjne i sta\\u0142e</p><p>Administrator wykorzystuje w\\u0142asne pliki cookies w celu lepszego poznania sposobu interakcji u\\u017cytkownika w zakresie zawarto\\u015bci strony. Pliki gromadz\\u0105 informacje o sposobie korzystania ze strony internetowej przez u\\u017cytkownika, typie strony, z jakiej u\\u017cytkownik zosta\\u0142 przekierowany oraz liczbie odwiedzin i czasie wizyty u\\u017cytkownika na stronie internetowej. Informacje te nie rejestruj\\u0105 konkretnych danych osobowych u\\u017cytkownika, lecz s\\u0142u\\u017c\\u0105 do opracowania statystyk korzystania ze strony.</p><p>U\\u017cytkownik ma prawo zadecydowania w zakresie dost\\u0119pu plik\\u00f3w \\u201ecookies\\u201d do swojego komputera poprzez ich uprzedni wyb\\u00f3r w oknie swojej przegl\\u0105darki. Szczeg\\u00f3\\u0142owe informacje o mo\\u017cliwo\\u015bci i sposobach obs\\u0142ugi plik\\u00f3w \\u201ecookies\\u201d dost\\u0119pne s\\u0105 w ustawieniach oprogramowania (przegl\\u0105darki internetowej).</p><p><b>VI REMARKETING</b></p><p>Serwisy internetowe korzystaj\\u0105 z remarketingu i trackingu Google AdWords, Google Analytics, HotJar. Facebook Conversion Tracking oraz Facebook Custom Audiences do reklamowania swoich produkt\\u00f3w online. Laboratorium EE zastrzega sobie prawo do wykorzystania wszystkich sposob\\u00f3w docierania do odbiorc\\u00f3w dost\\u0119pnych w Google AdWords, w tym: odbiorcy o podobnych zainteresowaniach, niestandardowi odbiorcy o podobnych zainteresowaniach, odbiorcy na rynku, podobni odbiorcy, cechy demograficzne, lokalizacja, remarketing (dowiedz si\\u0119 wi\\u0119cej o plikach cookie u\\u017cywanych przez Google).</p><p>Laboratorium EE i inni dostawcy, w tym Google, korzystaj\\u0105 zar\\u00f3wno z w\\u0142asnych plik\\u00f3w cookie, jak i plik\\u00f3w cookie firm zewn\\u0119trznych do informowania, optymalizacji oraz wy\\u015bwietlania reklam na podstawie historii odwiedzin u\\u017cytkownik\\u00f3w w witrynie. Google i inni dostawcy wy\\u015bwietlaj\\u0105 nasze reklamy w Internecie. Mo\\u017cesz zrezygnowa\\u0107 z us\\u0142ugi Google Analytics dla reklam displayowych i dostosowa\\u0107 reklamy w sieci reklamowej Google za pomoc\\u0105 Ustawie\\u0144 reklam. Mo\\u017cesz te\\u017c ca\\u0142kowicie zablokowa\\u0107 Google Analytics poprzez zainstalowanie dodatku do swojej przegl\\u0105darki. W przypadku Facebooka, je\\u017celi nie chcesz aby gromadzone by\\u0142y informacje o Twojej aktywno\\u015bci w witrynach lub aplikacjach poza Facebookiem i wykorzystywane do wy\\u015bwietlania Ci reklam, mo\\u017cesz wyrazi\\u0107 sprzeciw w Ustawieniach reklam. Laboratorium EE nie zbiera \\u017cadnych poufnych informacji o swoich go\\u015bciach.</p><p><b>VII ZMIANY POLITYKI PRYWATNO\\u015aCI</b></p><p>Laboratorium EE zastrzega sobie prawo do wprowadzania zmian w niniejszej Polityce Prywatno\\u015bci. Wraz z ka\\u017cd\\u0105 zmian\\u0105 nowa wersja Polityki Prywatno\\u015bci b\\u0119dzie si\\u0119 pojawia\\u0107 z now\\u0105 dat\\u0105.</p><p><b>VIII POSTANOWIENIA KO\\u0143COWE</b></p><p>Administrator stosuje \\u015brodki techniczne i organizacyjne zapewniaj\\u0105ce ochron\\u0119 przetwarzanych danych osobowych odpowiedni\\u0105 do zagro\\u017ce\\u0144 oraz kategorii danych obj\\u0119tych ochron\\u0105, a w szczeg\\u00f3lno\\u015bci zabezpiecza dane przed ich udost\\u0119pnieniem osobom nieupowa\\u017cnionym, zabraniem przez osob\\u0119 nieuprawnion\\u0105, przetwarzaniem z naruszeniem obowi\\u0105zuj\\u0105cych przepis\\u00f3w oraz zmian\\u0105, utrat\\u0105, uszkodzeniem lub zniszczeniem.</p><p>Administrator udost\\u0119pnia odpowiednie \\u015brodki techniczne zapobiegaj\\u0105ce pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesy\\u0142anych drog\\u0105 elektroniczn\\u0105.</p><p>W sprawach nieuregulowanych niniejsz\\u0105 Polityk\\u0105 prywatno\\u015bci stosuje si\\u0119 odpowiednio przepisy RODO oraz inne w\\u0142a\\u015bciwe przepisy prawa polskiego.</p>"}, "id": "38560425-1355-4663-b5db-d1a405c56a1d"}]	[{"type": "paragraph", "value": {"title": "", "body": "<p><b>Obowi\\u0105zek informacyjny</b></p><p></p><p>Administratorem Pa\\u0144stwa danych osobowych jest Laboratorium EE sp. z o.o., sp.k. z siedzib\\u0105 o adresie Aleja 3 Maja 2 49, 00-391 Warszawa. Mog\\u0105 Pa\\u0144stwo skontaktowa\\u0107 si\\u0119 z nami korespondencyjnie pod powy\\u017cszym adresem.</p><p>Podanie adresu poczty elektronicznej (e-mail) jest dobrowolne, ale konieczne aby\\u015bmy mogli odpowiedzie\\u0107 na zadane pytanie.</p><p></p><p>Pa\\u0144stwa dane osobowe wykorzystujemy w celach:</p><p>skontaktowania si\\u0119 z Pa\\u0144stwem (realizuj\\u0105c nasz prawnie usprawiedliwiony interes w postaci komunikacji z U\\u017cytkownikami serwisu internetowego);</p><p>wykazania, \\u017ce weszli\\u015bmy w posiadanie Pa\\u0144stwa adresu poczty elektronicznej (e-mail) zgodnie z prawem. Z tego powodu, zbieramy i przechowujemy informacje na temat tego kiedy (dat\\u0119 i godzin\\u0119), sk\\u0105d (adres IP urz\\u0105dzenia) i jaki adres poczty elektronicznej (e-mail) zosta\\u0142 nam udost\\u0119pniony (wype\\u0142niaj\\u0105c obowi\\u0105zki prawne);</p><p>Pa\\u0144stwa dane osobowe przetwarzali b\\u0119dziemy przez okres 1 roku, liczony od dnia, w kt\\u00f3rym nasz przedstawiciel skontaktuje si\\u0119 z Pa\\u0144stwem, a w przypadku danych przetwarzanych na podstawie zgody, do chwili jej wycofania, chyba, \\u017ce wyst\\u0105pi sp\\u00f3r na temat zgodno\\u015bci przetwarzania danych z prawem, w\\u00f3wczas Pa\\u0144stwa dane przetwarzali b\\u0119dziemy do czasu jego rozstrzygni\\u0119cia.</p><p>Przys\\u0142uguj\\u0105 Pa\\u0144stwu prawa: dost\\u0119pu do danych i ich sprostowania. Ponadto w sytuacjach okre\\u015blonych w prawie ochrony danych osobowych oraz w zakresie tam wskazanym, prawo do usuni\\u0119cia lub ograniczenia przetwarzania, prawo do przeniesienia danych osobowych i prawo do wniesienia sprzeciwu wobec przetwarzania, kt\\u00f3rego dokonujemy w celu realizacji naszych prawnie usprawiedliwionych interes\\u00f3w.</p><p>Dok\\u0142adamy wszelkich stara\\u0144, aby przetwarzanie Pa\\u0144stwa danych osobowych odbywa\\u0142o si\\u0119 w spos\\u00f3b zgodny z przepisami prawa. Je\\u017celi jednak uznaj\\u0105 Pa\\u0144stwo, i\\u017c dopu\\u015bcili\\u015bmy si\\u0119 naruszenia, maj\\u0105 Pa\\u0144stwo prawo wniesienia skargi do Prezesa Urz\\u0119du Ochrony Danych Osobowych.</p><p>Wi\\u0119cej informacji na temat przetwarzania danych osobowych znajd\\u0105 Pa\\u0144stwo w Polityce prywatno\\u015bci.</p><p></p><p><b>Polityka prywatno\\u015bci strony internetowej</b></p><p><a href=\\"https://laboratorium.ee/\\">https://laboratorium.ee/</a></p><p>Obowi\\u0105zuje od 17 czerwca 2019</p><p><b>I POSTANOWIENIA OG\\u00d3LNE</b></p><p>Administratorem danych osobowych zbieranych za po\\u015brednictwem strony internetowej https://laboratorium.ee/ jest Laboratorium EE Sp. z o.o., Sp. k., adres siedziby: Al. 3 maja 2/49, 00-391 Warszawa, wpisan\\u0105 do rejestru przedsi\\u0119biorc\\u00f3w pod numerem KRS: 0000523161, NIP: 5252593479, REGON: 147415997, posiadaj\\u0105c\\u0105 kapita\\u0142 zak\\u0142adowy w kwocie: 5000,00z\\u0142, adres poczty elektronicznej: kontakt@laboratorium.ee dalej \\u201eAdministrator\\u201d, b\\u0119d\\u0105ca jednocze\\u015bnie Us\\u0142ugodawc\\u0105. , miejsce wykonywania dzia\\u0142alno\\u015bci: Al. 3 maja 2/49, 00-391 Warszawa, adres do dor\\u0119cze\\u0144: Al. 3 maja 2/49, 00-391 Warszawa, NIP: 5252593479, REGON: 147415997, adres poczty elektronicznej (e-mail): kontakt@laboratorium.ee, zwany dalej &quot;Administratorem&quot;.</p><p>Dane osobowe zbierane przez Administratora za po\\u015brednictwem strony internetowej s\\u0105 przetwarzane zgodnie z Rozporz\\u0105dzeniem Parlamentu Europejskiego i Rady (UE) 2016/679 z dnia 27 kwietnia 2016 r. w sprawie ochrony os\\u00f3b fizycznych w zwi\\u0105zku z przetwarzaniem danych osobowych i w sprawie swobodnego przep\\u0142ywu takich danych oraz uchylenia dyrektywy 95/46/WE (og\\u00f3lne rozporz\\u0105dzenie o ochronie danych), zwane dalej RODO oraz ustaw\\u0105 o ochronie danych osobowych z dnia 10 maja 2018 r.</p><p><b>II RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH, CEL I ZAKRES ZBIERANIA DANYCH</b></p><p>CEL PRZETWARZANIA I PODSTAWA PRAWNA. Administrator przetwarza dane osobowe za po\\u015brednictwem strony https://laboratorium.ee/ w przypadku:</p><p>skorzystania przez u\\u017cytkownika z formularza kontaktowego. Dane osobowe s\\u0105 przetwarzane na podstawie art. 6 ust. 1 lit. f) RODO jako prawnie usprawiedliwiony interes Administratora.<br/>RODZAJ PRZETWARZANYCH DANYCH OSOBOWYCH. Administrator przetwarza nast\\u0119puj\\u0105ce kategorie danych osobowych u\\u017cytkownika:</p><p>adres e-mail,</p><p>OKRES ARCHIWIZACJI DANYCH OSOBOWYCH. Dane osobowe u\\u017cytkownik\\u00f3w przechowywane s\\u0105 przez Administratora:</p><p>w przypadku, gdy podstaw\\u0105 przetwarzania danych jest wykonanie umowy, tak d\\u0142ugo, jak jest to niezb\\u0119dne do wykonania umowy, a po tym czasie przez okres odpowiadaj\\u0105cy okresowi przedawnienia roszcze\\u0144. Je\\u017celi przepis szczeg\\u00f3lny nie stanowi inaczej, termin przedawnienia wynosi lat sze\\u015b\\u0107, a dla roszcze\\u0144 o \\u015bwiadczenia okresowe oraz roszcze\\u0144 zwi\\u0105zanych z prowadzeniem dzia\\u0142alno\\u015bci gospodarczej - trzy lata.</p><p>w przypadku, gdy podstaw\\u0105 przetwarzania danych jest zgoda, tak d\\u0142ugo, a\\u017c zgoda nie zostanie odwo\\u0142ana, a po odwo\\u0142aniu zgody przez okres czasu odpowiadaj\\u0105cy okresowi przedawnienia roszcze\\u0144 jakie mo\\u017ce podnosi\\u0107 Administrator i jakie mog\\u0105 by\\u0107 podnoszone wobec niego. Je\\u017celi przepis szczeg\\u00f3lny nie stanowi inaczej, termin przedawnienia wynosi lat sze\\u015b\\u0107, a dla roszcze\\u0144 o \\u015bwiadczenia okresowe oraz roszcze\\u0144 zwi\\u0105zanych z prowadzeniem dzia\\u0142alno\\u015bci gospodarczej - trzy lata.</p><p>Podczas korzystania ze strony internetowej mog\\u0105 by\\u0107 pobierane dodatkowe informacje, w szczeg\\u00f3lno\\u015bci: adres IP przypisany do komputera u\\u017cytkownika lub zewn\\u0119trzny adres IP dostawcy Internetu, nazwa domeny, rodzaj przegl\\u0105darki, czas dost\\u0119pu, typ systemu operacyjnego.</p><p>Od u\\u017cytkownik\\u00f3w mog\\u0105 by\\u0107 tak\\u017ce gromadzone dane nawigacyjne, w tym informacje o linkach i odno\\u015bnikach, w kt\\u00f3re zdecyduj\\u0105 si\\u0119 klikn\\u0105\\u0107 lub innych czynno\\u015bciach, podejmowanych na stronie internetowej. Podstaw\\u0105 prawn\\u0105 tego rodzaju czynno\\u015bci jest prawnie uzasadniony interes Administratora (art. 6 ust. 1 lit. f RODO), polegaj\\u0105cy na u\\u0142atwieniu korzystania z us\\u0142ug \\u015bwiadczonych drog\\u0105 elektroniczn\\u0105 oraz na poprawie funkcjonalno\\u015bci tych us\\u0142ug.</p><p>Podanie danych osobowych przez u\\u017cytkownika jest dobrowolne.</p><p>Dane osobowe b\\u0119d\\u0105 przetwarzane tak\\u017ce w spos\\u00f3b zautomatyzowany w formie profilowania, o ile u\\u017cytkownik wyrazi na to zgod\\u0119 na podstawie art. 6 ust. 1 lit. a) RODO. Konsekwencj\\u0105 profilowania b\\u0119dzie przypisanie danej osobie profilu w celu podejmowania dotycz\\u0105cych jej decyzji b\\u0105d\\u017a analizy lub przewidywania jej preferencji, zachowa\\u0144 i postaw.</p><p>Administrator dok\\u0142ada szczeg\\u00f3lnej staranno\\u015bci w celu ochrony interes\\u00f3w os\\u00f3b, kt\\u00f3rych dane dotycz\\u0105, a w szczeg\\u00f3lno\\u015bci zapewnia, \\u017ce zbierane przez niego dane s\\u0105:</p><p>przetwarzane zgodnie z prawem,</p><p>zbierane dla oznaczonych, zgodnych z prawem cel\\u00f3w i niepoddawane dalszemu przetwarzaniu niezgodnemu z tymi celami,</p><p>merytorycznie poprawne i adekwatne w stosunku do cel\\u00f3w, w jakich s\\u0105 przetwarzane oraz przechowywane w postaci umo\\u017cliwiaj\\u0105cej identyfikacj\\u0119 os\\u00f3b, kt\\u00f3rych dotycz\\u0105, nie d\\u0142u\\u017cej ni\\u017c jest to niezb\\u0119dne do osi\\u0105gni\\u0119cia celu przetwarzania.</p><p><b>III UDOST\\u0118PNIENIE DANYCH OSOBOWYCH</b></p><p>Dane osobowe u\\u017cytkownik\\u00f3w przekazywane s\\u0105 dostawcom us\\u0142ug, z kt\\u00f3rych korzysta Administrator przy prowadzeniu strony internetowej. Dostawcy us\\u0142ug, kt\\u00f3rym przekazywane s\\u0105 dane osobowe, w zale\\u017cno\\u015bci od uzgodnie\\u0144 umownych i okoliczno\\u015bci, albo podlegaj\\u0105 poleceniom Administratora co do cel\\u00f3w i sposob\\u00f3w przetwarzania tych danych (podmioty przetwarzaj\\u0105ce) albo samodzielnie okre\\u015blaj\\u0105 cele i sposoby ich przetwarzania (administratorzy).</p><p>Dane osobowe u\\u017cytkownik\\u00f3w s\\u0105 przechowywane wy\\u0142\\u0105cznie na terenie Europejskiego Obszaru Gospodarczego (EOG).</p><p><b>IV PRAWO KONTROLI, DOST\\u0118PU DO TRE\\u015aCI W\\u0141ASNYCH DANYCH ORAZ ICH POPRAWIANIA</b></p><p>Osoba, kt\\u00f3rej dane dotycz\\u0105, ma prawo dost\\u0119pu do tre\\u015bci swoich danych osobowych oraz prawo ich sprostowania, usuni\\u0119cia, ograniczenia przetwarzania, prawo do przenoszenia danych, prawo wniesienia sprzeciwu, prawo do cofni\\u0119cia zgody w dowolnym momencie bez wp\\u0142ywu na zgodno\\u015b\\u0107 z prawem przetwarzania, kt\\u00f3rego dokonano na podstawie zgody przed jej cofni\\u0119ciem.</p><p>Podstawy prawne \\u017c\\u0105dania u\\u017cytkownika:</p><p>W celu realizacji uprawnie\\u0144, o kt\\u00f3rych mowa w pkt 2 mo\\u017cna wys\\u0142a\\u0107 stosown\\u0105 wiadomo\\u015b\\u0107 e-mail na adres: kontakt@laboratorium.ee.</p><p>W sytuacji wyst\\u0105pienia przez u\\u017cytkownika z uprawnieniem wynikaj\\u0105cym z powy\\u017cszych praw, Administrator spe\\u0142nia \\u017c\\u0105danie albo odmawia jego spe\\u0142nienia niezw\\u0142ocznie, nie p\\u00f3\\u017aniej jednak ni\\u017c w ci\\u0105gu miesi\\u0105ca po jego otrzymaniu. Je\\u017celi jednak - z uwagi na skomplikowany charakter \\u017c\\u0105dania lub liczb\\u0119 \\u017c\\u0105da\\u0144 \\u2013 Administrator nie b\\u0119dzie m\\u00f3g\\u0142 spe\\u0142ni\\u0107 \\u017c\\u0105dania w ci\\u0105gu miesi\\u0105ca, spe\\u0142ni je w ci\\u0105gu kolejnych dw\\u00f3ch miesi\\u0119cy informuj\\u0105c u\\u017cytkownika uprzednio w terminie miesi\\u0105ca od otrzymania \\u017c\\u0105dania - o zamierzonym przed\\u0142u\\u017ceniu terminu oraz jego przyczynach.</p><p>W przypadku stwierdzenia, \\u017ce przetwarzanie danych osobowych narusza przepisy RODO, osoba, kt\\u00f3rej dane dotycz\\u0105, ma prawo wnie\\u015b\\u0107 skarg\\u0119 do Prezesa Urz\\u0119du Ochrony Danych Osobowych.</p><p><b>V PLIKI &quot;COOKIES&quot;</b></p><p>Strona Administratora u\\u017cywa plik\\u00f3w \\u201ecookies\\u201d.</p><p>Instalacja plik\\u00f3w \\u201ecookies\\u201d jest konieczna do prawid\\u0142owego \\u015bwiadczenia us\\u0142ug na stronie internetowej. W plikach \\u201ecookies&quot; znajduj\\u0105 si\\u0119 informacje niezb\\u0119dne do prawid\\u0142owego funkcjonowania strony, a tak\\u017ce daj\\u0105 one tak\\u017ce mo\\u017cliwo\\u015b\\u0107 opracowywania og\\u00f3lnych statystyk odwiedzin strony internetowej.</p><p>W ramach strony stosowane s\\u0105 rodzaje plik\\u00f3w &quot;cookies&quot;: sesyjne i sta\\u0142e</p><p>Administrator wykorzystuje w\\u0142asne pliki cookies w celu lepszego poznania sposobu interakcji u\\u017cytkownika w zakresie zawarto\\u015bci strony. Pliki gromadz\\u0105 informacje o sposobie korzystania ze strony internetowej przez u\\u017cytkownika, typie strony, z jakiej u\\u017cytkownik zosta\\u0142 przekierowany oraz liczbie odwiedzin i czasie wizyty u\\u017cytkownika na stronie internetowej. Informacje te nie rejestruj\\u0105 konkretnych danych osobowych u\\u017cytkownika, lecz s\\u0142u\\u017c\\u0105 do opracowania statystyk korzystania ze strony.</p><p>U\\u017cytkownik ma prawo zadecydowania w zakresie dost\\u0119pu plik\\u00f3w \\u201ecookies\\u201d do swojego komputera poprzez ich uprzedni wyb\\u00f3r w oknie swojej przegl\\u0105darki. Szczeg\\u00f3\\u0142owe informacje o mo\\u017cliwo\\u015bci i sposobach obs\\u0142ugi plik\\u00f3w \\u201ecookies\\u201d dost\\u0119pne s\\u0105 w ustawieniach oprogramowania (przegl\\u0105darki internetowej).</p><p><b>VI REMARKETING</b></p><p>Serwisy internetowe korzystaj\\u0105 z remarketingu i trackingu Google AdWords, Google Analytics, HotJar. Facebook Conversion Tracking oraz Facebook Custom Audiences do reklamowania swoich produkt\\u00f3w online. Laboratorium EE zastrzega sobie prawo do wykorzystania wszystkich sposob\\u00f3w docierania do odbiorc\\u00f3w dost\\u0119pnych w Google AdWords, w tym: odbiorcy o podobnych zainteresowaniach, niestandardowi odbiorcy o podobnych zainteresowaniach, odbiorcy na rynku, podobni odbiorcy, cechy demograficzne, lokalizacja, remarketing (dowiedz si\\u0119 wi\\u0119cej o plikach cookie u\\u017cywanych przez Google).</p><p>Laboratorium EE i inni dostawcy, w tym Google, korzystaj\\u0105 zar\\u00f3wno z w\\u0142asnych plik\\u00f3w cookie, jak i plik\\u00f3w cookie firm zewn\\u0119trznych do informowania, optymalizacji oraz wy\\u015bwietlania reklam na podstawie historii odwiedzin u\\u017cytkownik\\u00f3w w witrynie. Google i inni dostawcy wy\\u015bwietlaj\\u0105 nasze reklamy w Internecie. Mo\\u017cesz zrezygnowa\\u0107 z us\\u0142ugi Google Analytics dla reklam displayowych i dostosowa\\u0107 reklamy w sieci reklamowej Google za pomoc\\u0105 Ustawie\\u0144 reklam. Mo\\u017cesz te\\u017c ca\\u0142kowicie zablokowa\\u0107 Google Analytics poprzez zainstalowanie dodatku do swojej przegl\\u0105darki. W przypadku Facebooka, je\\u017celi nie chcesz aby gromadzone by\\u0142y informacje o Twojej aktywno\\u015bci w witrynach lub aplikacjach poza Facebookiem i wykorzystywane do wy\\u015bwietlania Ci reklam, mo\\u017cesz wyrazi\\u0107 sprzeciw w Ustawieniach reklam. Laboratorium EE nie zbiera \\u017cadnych poufnych informacji o swoich go\\u015bciach.</p><p><b>VII ZMIANY POLITYKI PRYWATNO\\u015aCI</b></p><p>Laboratorium EE zastrzega sobie prawo do wprowadzania zmian w niniejszej Polityce Prywatno\\u015bci. Wraz z ka\\u017cd\\u0105 zmian\\u0105 nowa wersja Polityki Prywatno\\u015bci b\\u0119dzie si\\u0119 pojawia\\u0107 z now\\u0105 dat\\u0105.</p><p><b>VIII POSTANOWIENIA KO\\u0143COWE</b></p><p>Administrator stosuje \\u015brodki techniczne i organizacyjne zapewniaj\\u0105ce ochron\\u0119 przetwarzanych danych osobowych odpowiedni\\u0105 do zagro\\u017ce\\u0144 oraz kategorii danych obj\\u0119tych ochron\\u0105, a w szczeg\\u00f3lno\\u015bci zabezpiecza dane przed ich udost\\u0119pnieniem osobom nieupowa\\u017cnionym, zabraniem przez osob\\u0119 nieuprawnion\\u0105, przetwarzaniem z naruszeniem obowi\\u0105zuj\\u0105cych przepis\\u00f3w oraz zmian\\u0105, utrat\\u0105, uszkodzeniem lub zniszczeniem.</p><p>Administrator udost\\u0119pnia odpowiednie \\u015brodki techniczne zapobiegaj\\u0105ce pozyskiwaniu i modyfikowaniu przez osoby nieuprawnione, danych osobowych przesy\\u0142anych drog\\u0105 elektroniczn\\u0105.</p><p>W sprawach nieuregulowanych niniejsz\\u0105 Polityk\\u0105 prywatno\\u015bci stosuje si\\u0119 odpowiednio przepisy RODO oraz inne w\\u0142a\\u015bciwe przepisy prawa polskiego.</p>"}, "id": "38560425-1355-4663-b5db-d1a405c56a1d"}]	[]	147
41	Wykorzystanie big data w aplikacji, w celu poprawy jakości powietrza.	Wykorzystanie big data w aplikacji, w celu poprawy jakości powietrza.			[{"type": "hero_static_right", "value": {"background_image": 147, "title": "", "headline": "Produkt", "body": "Ochrona klimatu to najwa\\u017cniejszy problem do rozwi\\u0105zania dla ludzko\\u015bci. W\\u0142a\\u015bnie dlatego stworzyli\\u015bmy pierwsz\\u0105 na \\u015bwiecie aplikacja przeznaczona dla uprawnionych os\\u00f3b zbieraj\\u0105cych dane i kontroluj\\u0105cych budynki mieszkalne na terenie gminy. ZONEapp umo\\u017cliwia przeprowadzenie kontroli na urz\\u0105dzeniach mobilnych oraz w trybie off-line", "page": null, "page_secodary": null, "external_url": "https://play.google.com/store/apps/details?id=ee.laboratorium.zone"}, "id": "aac4d55e-cdae-4788-a637-b6c7f4153075"}, {"type": "paragraph", "value": {"title": "Innowacyjno\\u015b\\u0107", "body": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}, "id": "daec9623-f964-4acd-b13f-d5db39773222"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Jak tworzyli\\u015bmy nasz rozwi\\u0105zanie?", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty wydobywcze</p>"}, {"icon": 96, "text": "<p>Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych</p>"}, {"icon": 94, "text": "<p>Testy z u\\u017cytkownikami</p>"}, {"icon": 90, "text": "<p>Zbieranie danych</p>"}]}, "id": "4c031de5-1f50-443a-8658-d28f172117ee"}, {"type": "contact_form", "value": {"body": "<p></p><h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2><h3>Stw\\u00f3rz rozwi\\u0105zanie, kt\\u00f3re b\\u0119dzie mia\\u0142o znacznie.</h3><p></p>", "form_heading": "Wypr\\u00f3buj nas"}, "id": "26bb2d16-356f-47fa-86db-de8853aa2a03"}]	[{"type": "hero_static_right", "value": {"background_image": 147, "title": "", "headline": "Produkt", "body": "Ochrona klimatu to najwa\\u017cniejszy problem do rozwi\\u0105zania dla ludzko\\u015bci. W\\u0142a\\u015bnie dlatego stworzyli\\u015bmy pierwsz\\u0105 na \\u015bwiecie aplikacja przeznaczona dla uprawnionych os\\u00f3b zbieraj\\u0105cych dane i kontroluj\\u0105cych budynki mieszkalne na terenie gminy. ZONEapp umo\\u017cliwia przeprowadzenie kontroli na urz\\u0105dzeniach mobilnych oraz w trybie off-line", "page": null, "page_secodary": null, "external_url": "https://play.google.com/store/apps/details?id=ee.laboratorium.zone"}, "id": "aac4d55e-cdae-4788-a637-b6c7f4153075"}, {"type": "paragraph", "value": {"title": "Innowacyjno\\u015b\\u0107", "body": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}, "id": "daec9623-f964-4acd-b13f-d5db39773222"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Jak tworzyli\\u015bmy nasz rozwi\\u0105zanie?", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty wydobywcze</p>"}, {"icon": 96, "text": "<p>Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych</p>"}, {"icon": 94, "text": "<p>Testy z u\\u017cytkownikami</p>"}, {"icon": 90, "text": "<p>Zbieranie danych</p>"}]}, "id": "4c031de5-1f50-443a-8658-d28f172117ee"}, {"type": "contact_form", "value": {"body": "<p></p><h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2><h3>Stw\\u00f3rz rozwi\\u0105zanie, kt\\u00f3re b\\u0119dzie mia\\u0142o znacznie.</h3><p></p>", "form_heading": "Wypr\\u00f3buj nas"}, "id": "26bb2d16-356f-47fa-86db-de8853aa2a03"}]	[{"type": "hero_static_right", "value": {"background_image": 115, "title": "", "headline": "Produkt", "body": "Ochrona klimatu to najwa\\u017cniejszy problem do rozwi\\u0105zania dla ludzko\\u015bci. W\\u0142a\\u015bnie dlatego stworzyli\\u015bmy pierwsz\\u0105 na \\u015bwiecie aplikacja przeznaczona dla uprawnionych os\\u00f3b zbieraj\\u0105cych dane i kontroluj\\u0105cych budynki mieszkalne na terenie gminy. ZONEapp umo\\u017cliwia przeprowadzenie kontroli na urz\\u0105dzeniach mobilnych oraz w trybie off-line", "page": null, "page_secodary": null, "external_url": ""}, "id": "aac4d55e-cdae-4788-a637-b6c7f4153075"}, {"type": "paragraph", "value": {"title": "Innowacyjno\\u015b\\u0107", "body": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}, "id": "daec9623-f964-4acd-b13f-d5db39773222"}, {"type": "hero_process", "value": {"background_image": 102, "title": "Jak tworzyli\\u015bmy nasz rozwi\\u0105zanie?", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty wydobywcze</p>"}, {"icon": 96, "text": "<p>Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych</p>"}, {"icon": 94, "text": "<p>Testy z u\\u017cytkownikami</p>"}, {"icon": 90, "text": "<p>Zbieranie danych</p>"}]}, "id": "4c031de5-1f50-443a-8658-d28f172117ee"}, {"type": "contact_form", "value": {"body": "<p></p><h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2><h3>Stw\\u00f3rz rozwi\\u0105zanie, kt\\u00f3re b\\u0119dzie mia\\u0142o znacznie.</h3><p></p>", "form_heading": "Wypr\\u00f3buj nas"}, "id": "26bb2d16-356f-47fa-86db-de8853aa2a03"}]	136
77	Wykorzystanie big data w aplikacji, w celu poprawy jakości powietrza.	Wykorzystanie big data w aplikacji, w celu poprawy jakości powietrza.		https://play.google.com/store/apps/details?id=ee.laboratorium.zone&hl=pl	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "Tech", "property_name": "iOS, Android"}, {"icon": null, "value": "Klient", "property_name": "Instytut \\u0141\\u0105czno\\u015bci, Ministerstwo Przedsi\\u0119biorczo\\u015bci i Technologii, gmina Skawina"}, {"icon": null, "value": "Kompetencje", "property_name": "UX design, Badania i Rozw\\u00f3j, Architektura IT"}]}, "id": "108d2bd6-6257-4b29-a4cb-df4d6e41e29a"}, {"type": "paragraph", "value": {"title": "Problem", "body": "<p>W Polsce ci\\u0119\\u017cko dzia\\u0142a\\u0107 w skoordynowany spos\\u00f3b, w celu poprawy jako\\u015bci powietrza w zwi\\u0105zku z brakiem kompletnych danych dotycz\\u0105cych ocieplenia budynk\\u00f3w oraz ich \\u017ar\\u00f3d\\u0142ach ogrzewania. W zwi\\u0105zku z tym stworzyli\\u015bmy ZONEapp.</p>"}, "id": "e0824925-c466-4b7b-afc3-3bcc651f09e2"}, {"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "30", "property_name": "rozproszonych baz danych"}, {"icon": null, "value": "6", "property_name": "interesariuszy"}, {"icon": null, "value": "9", "property_name": "gmin"}, {"icon": null, "value": "50", "property_name": "zinwentaryzowanych budynk\\u00f3w (pilota\\u017c)"}]}, "id": "6fc3b0d0-124f-45f1-acb9-6797bf6926ee"}, {"type": "hero_static_right", "value": {"background_image": 198, "title": "", "headline": "\\u200f\\u200f\\u200e", "body": "\\u200f\\u200f\\u200e", "page": null, "page_secodary": null, "external_url": ""}, "id": "36efdb79-697c-470c-b35a-b625561ce4c0"}, {"type": "paragraph", "value": {"title": "Rozwi\\u0105zanie", "body": "<p>Ochrona klimatu to najwa\\u017cniejszy problem do rozwi\\u0105zania dla ludzko\\u015bci. W\\u0142a\\u015bnie dlatego stworzyli\\u015bmy pierwsz\\u0105 na \\u015bwiecie aplikacja przeznaczona dla uprawnionych os\\u00f3b zbieraj\\u0105cych dane i kontroluj\\u0105cych budynki mieszkalne na terenie gminy. ZONEapp umo\\u017cliwia przeprowadzenie kontroli na urz\\u0105dzeniach mobilnych oraz w trybie off-line.</p>"}, "id": "f863601f-bcce-4aff-8a8f-7ad78e6d8b82"}, {"type": "quote", "value": {"body": "<p>Ewidencjonowa\\u0142bym</p>", "author": "<p>Kamil Radomski</p>"}, "id": "177c3c55-ac78-41dd-9932-63524e242220"}, {"type": "paragraph", "value": {"title": "Innowacyjno\\u015b\\u0107", "body": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}, "id": "07ac1cb4-8e9b-4de8-8848-3a000c28d3aa"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Jak tworzyli\\u015bmy produkt?", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty wydobywcze</p>"}, {"icon": 69, "text": "<p>Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych</p>"}, {"icon": 78, "text": "<p>Testy z u\\u017cytkownikami</p>"}, {"icon": 81, "text": "<p>Zbieranie danych</p>"}]}, "id": "be5028d6-82c8-4682-9df7-27aeed68bf27"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz zaprz\\u0105c big data do ochrony klimatu?</h2>", "form_heading": "Napisz, pomo\\u017cemy Ci zacz\\u0105\\u0107!"}, "id": "8962d213-d4ae-472a-b33c-7f3c330e3fe4"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "Tech", "property_name": "iOS, Android"}, {"icon": null, "value": "Klient", "property_name": "Instytut \\u0141\\u0105czno\\u015bci, Ministerstwo Przedsi\\u0119biorczo\\u015bci i Technologii, gmina Skawina"}, {"icon": null, "value": "Kompetencje", "property_name": "UX design, Badania i Rozw\\u00f3j, Architektura IT"}]}, "id": "108d2bd6-6257-4b29-a4cb-df4d6e41e29a"}, {"type": "paragraph", "value": {"title": "Problem", "body": "<p>W Polsce ci\\u0119\\u017cko dzia\\u0142a\\u0107 w skoordynowany spos\\u00f3b, w celu poprawy jako\\u015bci powietrza w zwi\\u0105zku z brakiem kompletnych danych dotycz\\u0105cych ocieplenia budynk\\u00f3w oraz ich \\u017ar\\u00f3d\\u0142ach ogrzewania. W zwi\\u0105zku z tym stworzyli\\u015bmy ZONEapp.</p>"}, "id": "e0824925-c466-4b7b-afc3-3bcc651f09e2"}, {"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "30", "property_name": "rozproszonych baz danych"}, {"icon": null, "value": "6", "property_name": "interesariuszy"}, {"icon": null, "value": "9", "property_name": "gmin"}, {"icon": null, "value": "50", "property_name": "zinwentaryzowanych budynk\\u00f3w (pilota\\u017c)"}]}, "id": "6fc3b0d0-124f-45f1-acb9-6797bf6926ee"}, {"type": "hero_static_right", "value": {"background_image": 198, "title": "", "headline": "\\u200f\\u200f\\u200e", "body": "\\u200f\\u200f\\u200e", "page": null, "page_secodary": null, "external_url": ""}, "id": "36efdb79-697c-470c-b35a-b625561ce4c0"}, {"type": "paragraph", "value": {"title": "Rozwi\\u0105zanie", "body": "<p>Ochrona klimatu to najwa\\u017cniejszy problem do rozwi\\u0105zania dla ludzko\\u015bci. W\\u0142a\\u015bnie dlatego stworzyli\\u015bmy pierwsz\\u0105 na \\u015bwiecie aplikacja przeznaczona dla uprawnionych os\\u00f3b zbieraj\\u0105cych dane i kontroluj\\u0105cych budynki mieszkalne na terenie gminy. ZONEapp umo\\u017cliwia przeprowadzenie kontroli na urz\\u0105dzeniach mobilnych oraz w trybie off-line.</p>"}, "id": "f863601f-bcce-4aff-8a8f-7ad78e6d8b82"}, {"type": "quote", "value": {"body": "<p>Ewidencjonowa\\u0142bym</p>", "author": "<p>Kamil Radomski</p>"}, "id": "177c3c55-ac78-41dd-9932-63524e242220"}, {"type": "paragraph", "value": {"title": "Innowacyjno\\u015b\\u0107", "body": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}, "id": "07ac1cb4-8e9b-4de8-8848-3a000c28d3aa"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Jak tworzyli\\u015bmy produkt?", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty wydobywcze</p>"}, {"icon": 69, "text": "<p>Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych</p>"}, {"icon": 78, "text": "<p>Testy z u\\u017cytkownikami</p>"}, {"icon": 81, "text": "<p>Zbieranie danych</p>"}]}, "id": "be5028d6-82c8-4682-9df7-27aeed68bf27"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz zaprz\\u0105c big data do ochrony klimatu?</h2>", "form_heading": "Napisz, pomo\\u017cemy Ci zacz\\u0105\\u0107!"}, "id": "8962d213-d4ae-472a-b33c-7f3c330e3fe4"}]	[]	136
80	Memo to trzymodułowa aplikacja wspierająca pamięć u seniorów.	Memo to trzymodułowa aplikacja wspierająca pamięć u seniorów.		https://www.projektmemo.pl/	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "3", "property_name": "miesi\\u0119czny okres badawczy"}]}, "id": "62e90fef-21bd-4c7d-bdf6-3a931bb72c05"}, {"type": "paragraph", "value": {"title": "", "body": "<p>Korzystanie z niego pomaga osobom starszym oswoi\\u0107 si\\u0119 z nowymi technologiami (i przez to po\\u015brednio zapobiega\\u0107 wykluczeniu cyfrowemu i kulturalnemu), ale tak\\u017ce, co bardzo wa\\u017cne \\u2013 stymulowa\\u0107 ich pami\\u0119\\u0107. Pami\\u0119ci jako takiej nie da si\\u0119 naprawi\\u0107, ale mo\\u017cna robi\\u0107 wiele, by jak najd\\u0142u\\u017cej utrzymywa\\u0107 j\\u0105 w dobrej kondycji i to w\\u0142a\\u015bnie by\\u0142o jednym z g\\u0142\\u00f3wnych zada\\u0144 naszego urz\\u0105dzenia. Wspiera ono tak\\u017ce nawi\\u0105zywanie i utrzymywanie relacji mi\\u0119dzypokoleniowych.</p>"}, "id": "3ad86b83-cb7a-42cd-9570-81f4d8169bf8"}, {"type": "hero_process", "value": {"background_image": 194, "title": "PROCESY", "headline": "", "body": "", "tiles": [{"icon": 93, "text": "<p>Research i zbieranie potrzeb</p>"}, {"icon": 81, "text": "<p>Prototypowanie i testy z u\\u017cytkownikami</p>"}, {"icon": 79, "text": "<p>Iteracyjny i r\\u00f3wnoleg\\u0142y rozw\\u00f3j 3 aplikacji</p>"}]}, "id": "e3df5942-4b5f-4ad3-b8f5-0310f4f58cd3"}, {"type": "quote", "value": {"body": "<p>Zamiast od razu przyst\\u0105pi\\u0107 do projektowania urz\\u0105dzenia postanowili\\u015bmy rozpocz\\u0105\\u0107 od dowiedzenia si\\u0119, czego seniorzy potrzebuj\\u0105, jakiego typu urz\\u0105dzenia maj\\u0105 obecnie do dyspozycji oraz z jakiego typu barierami stykaj\\u0105 si\\u0119 na co dzie\\u0144 (nie tylko je\\u015bli chodzi o nowe technologie).</p>", "author": "<p>Angelika Losko, UX Designer</p>"}, "id": "5b2bc2aa-72ef-4b48-8d75-5519146d13d5"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "3", "property_name": "miesi\\u0119czny okres badawczy"}]}, "id": "62e90fef-21bd-4c7d-bdf6-3a931bb72c05"}, {"type": "paragraph", "value": {"title": "", "body": "<p>Korzystanie z niego pomaga osobom starszym oswoi\\u0107 si\\u0119 z nowymi technologiami (i przez to po\\u015brednio zapobiega\\u0107 wykluczeniu cyfrowemu i kulturalnemu), ale tak\\u017ce, co bardzo wa\\u017cne \\u2013 stymulowa\\u0107 ich pami\\u0119\\u0107. Pami\\u0119ci jako takiej nie da si\\u0119 naprawi\\u0107, ale mo\\u017cna robi\\u0107 wiele, by jak najd\\u0142u\\u017cej utrzymywa\\u0107 j\\u0105 w dobrej kondycji i to w\\u0142a\\u015bnie by\\u0142o jednym z g\\u0142\\u00f3wnych zada\\u0144 naszego urz\\u0105dzenia. Wspiera ono tak\\u017ce nawi\\u0105zywanie i utrzymywanie relacji mi\\u0119dzypokoleniowych.</p>"}, "id": "3ad86b83-cb7a-42cd-9570-81f4d8169bf8"}, {"type": "hero_process", "value": {"background_image": 194, "title": "PROCESY", "headline": "", "body": "", "tiles": [{"icon": 93, "text": "<p>Research i zbieranie potrzeb</p>"}, {"icon": 81, "text": "<p>Prototypowanie i testy z u\\u017cytkownikami</p>"}, {"icon": 79, "text": "<p>Iteracyjny i r\\u00f3wnoleg\\u0142y rozw\\u00f3j 3 aplikacji</p>"}]}, "id": "e3df5942-4b5f-4ad3-b8f5-0310f4f58cd3"}, {"type": "quote", "value": {"body": "<p>Zamiast od razu przyst\\u0105pi\\u0107 do projektowania urz\\u0105dzenia postanowili\\u015bmy rozpocz\\u0105\\u0107 od dowiedzenia si\\u0119, czego seniorzy potrzebuj\\u0105, jakiego typu urz\\u0105dzenia maj\\u0105 obecnie do dyspozycji oraz z jakiego typu barierami stykaj\\u0105 si\\u0119 na co dzie\\u0144 (nie tylko je\\u015bli chodzi o nowe technologie).</p>", "author": "<p>Angelika Losko, UX Designer</p>"}, "id": "5b2bc2aa-72ef-4b48-8d75-5519146d13d5"}]	[]	141
52	Inwestując w rozwiązania oparte na data science i machine learning Twoja firma rozwija się podejmując rozsądne ryzyko.	Inwestując w rozwiązania oparte na data science i machine learning Twoja firma rozwija się podejmując rozsądne ryzyko.			[{"type": "level", "value": {"title": "", "tiles": [{"icon": 85, "value": "Inwentaryzacja danych", "property_name": ""}, {"icon": 86, "value": "Data Science", "property_name": ""}, {"icon": 87, "value": "Machine Learning", "property_name": ""}]}, "id": "0e244d86-e755-4b50-a2f7-5a9f93de01a1"}, {"type": "contact_us_button", "value": null, "id": "6049c765-cc0e-4bbe-a601-faefa381ef05"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. </p>"}, "id": "daeb008f-caf6-4924-b506-5e809f05546e"}, {"type": "tile_grid", "value": {"title": "Nasza oferta", "tiles": [{"image": 181, "title": "Analiza i consulting", "body": "<p>Analizujemy dane i dostarczamy rekomendacji. Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych.</p>"}, {"image": 182, "title": "Segmentacja i klasyfikacja", "body": "<p>Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w.</p>"}, {"image": 183, "title": "Predykcje i rekomendacje", "body": "<p>Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce.</p>"}, {"image": 184, "title": "Wykrywanie anomalii", "body": "<p>Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia.</p>"}]}, "id": "31ab6765-5874-4db4-8c47-f8bf6118ceb7"}, {"type": "contact_us_button", "value": null, "id": "00b48307-04f1-4272-ad06-0f5364887452"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.</p>"}, "id": "0adbe1b8-9e95-4a8d-bc25-3630a6da3ba1"}, {"type": "hero_process", "value": {"background_image": 185, "title": "Proces projektowy", "headline": "Narodowy Fundusz Ochrony \\u015arodowiska", "body": "", "tiles": [{"icon": 81, "text": "<p>Zebranie danych o projektach finansowanych przez NFO\\u015a</p>"}, {"icon": 82, "text": "<p>Analiza danych historycznych o projektach</p>"}, {"icon": 83, "text": "<p>Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142 \\u015brodk\\u00f3w</p>"}, {"icon": 77, "text": "<p>Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w</p>"}]}, "id": "46a589f6-e1b0-427a-97e0-41bd3fbe5e91"}, {"type": "masonry", "value": {"title": "Zrealizowane projekty", "tiles": [{"image": 141, "page": 32, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": true}, {"image": 136, "page": 41, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 163, "page": 43, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 165, "page": 47, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "96888909-7c9f-4233-bbfd-5a0a781a2ce0"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz rozwija\\u0107 biznes dzi\\u0119ki innowacjom opartym o dane?</h2>", "form_heading": ""}, "id": "047c2b51-491f-46e6-8d07-1ae2c136e970"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": 85, "value": "Inwentaryzacja danych", "property_name": ""}, {"icon": 86, "value": "Data Science", "property_name": ""}, {"icon": 87, "value": "Machine Learning", "property_name": ""}]}, "id": "0e244d86-e755-4b50-a2f7-5a9f93de01a1"}, {"type": "contact_us_button", "value": null, "id": "6049c765-cc0e-4bbe-a601-faefa381ef05"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. </p>"}, "id": "daeb008f-caf6-4924-b506-5e809f05546e"}, {"type": "tile_grid", "value": {"title": "Nasza oferta", "tiles": [{"image": 181, "title": "Analiza i consulting", "body": "<p>Analizujemy dane i dostarczamy rekomendacji. Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych.</p>"}, {"image": 182, "title": "Segmentacja i klasyfikacja", "body": "<p>Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w.</p>"}, {"image": 183, "title": "Predykcje i rekomendacje", "body": "<p>Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce.</p>"}, {"image": 184, "title": "Wykrywanie anomalii", "body": "<p>Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia.</p>"}]}, "id": "31ab6765-5874-4db4-8c47-f8bf6118ceb7"}, {"type": "contact_us_button", "value": null, "id": "00b48307-04f1-4272-ad06-0f5364887452"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.</p>"}, "id": "0adbe1b8-9e95-4a8d-bc25-3630a6da3ba1"}, {"type": "hero_process", "value": {"background_image": 185, "title": "Proces projektowy", "headline": "Narodowy Fundusz Ochrony \\u015arodowiska", "body": "", "tiles": [{"icon": 81, "text": "<p>Zebranie danych o projektach finansowanych przez NFO\\u015a</p>"}, {"icon": 82, "text": "<p>Analiza danych historycznych o projektach</p>"}, {"icon": 83, "text": "<p>Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142 \\u015brodk\\u00f3w</p>"}, {"icon": 77, "text": "<p>Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w</p>"}]}, "id": "46a589f6-e1b0-427a-97e0-41bd3fbe5e91"}, {"type": "masonry", "value": {"title": "Zrealizowane projekty", "tiles": [{"image": 141, "page": 32, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": true}, {"image": 136, "page": 41, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 163, "page": 43, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 165, "page": 47, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "96888909-7c9f-4233-bbfd-5a0a781a2ce0"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz rozwija\\u0107 biznes dzi\\u0119ki innowacjom opartym o dane?</h2>", "form_heading": ""}, "id": "047c2b51-491f-46e6-8d07-1ae2c136e970"}]	[{"type": "paragraph", "value": {"title": "Jak pracujemy", "body": "<p>Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych. Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI.</p>"}, "id": "daeb008f-caf6-4924-b506-5e809f05546e"}, {"type": "contact_us_button", "value": null, "id": "36a5ad36-0083-4f54-ac0d-df980d37a765"}, {"type": "tile_grid", "value": {"title": "Narz\\u0119dzia", "tiles": [{"image": 181, "title": "Analiza i consulting", "body": "<p>Analizujemy dane i dostarczamy rekomendacji. Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych.</p>"}, {"image": 182, "title": "Segmentacja i klasyfikacja", "body": "<p>Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w.</p>"}, {"image": 183, "title": "Predykcje i rekomendacje", "body": "<p>Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce.</p>"}, {"image": 184, "title": "Wykrywanie anomalii", "body": "<p>Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia.</p>"}]}, "id": "31ab6765-5874-4db4-8c47-f8bf6118ceb7"}, {"type": "hero_process", "value": {"background_image": 185, "title": "Studium przypadku", "headline": "Narodowy Fundusz Ochrony \\u015arodowiska", "body": "", "tiles": [{"icon": 81, "text": "<p>Zebranie danych o projektach finansowanych przez NFO\\u015a</p>"}, {"icon": 82, "text": "<p>Analiza danych historycznych o projektach</p>"}, {"icon": 83, "text": "<p>Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142 \\u015brodk\\u00f3w</p>"}, {"icon": 77, "text": "<p>Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w</p>"}]}, "id": "46a589f6-e1b0-427a-97e0-41bd3fbe5e91"}, {"type": "masonry", "value": {"title": "Zrealizowane projekty", "tiles": [{"image": 141, "page": 32, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": true}, {"image": 136, "page": 41, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 163, "page": 43, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 165, "page": 47, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "96888909-7c9f-4233-bbfd-5a0a781a2ce0"}]	147
75					[{"type": "masonry", "value": {"title": "Innowacje w oparciu o dane", "tiles": [{"image": 136, "page": 39, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "14ca25ac-4e24-4dd1-8970-5a9eb1374374"}, {"type": "masonry", "value": {"title": "Produkty i us\\u0142ugi cyfrowe", "tiles": [{"image": 180, "page": 33, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "9b722b68-3077-42d0-8c33-d113667bfc1d"}]	[{"type": "masonry", "value": {"title": "Innowacje w oparciu o dane", "tiles": [{"image": 136, "page": 39, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "14ca25ac-4e24-4dd1-8970-5a9eb1374374"}, {"type": "masonry", "value": {"title": "Produkty i us\\u0142ugi cyfrowe", "tiles": [{"image": 180, "page": 33, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}]}, "id": "9b722b68-3077-42d0-8c33-d113667bfc1d"}]	[]	186
74	Jeśli jesteś osobą, która nie boi się wyzwań, wiesz co to Scrum i masz potrzebę tworzenia produktów IT mających wpływ na społeczeństwo, wyślij nam swoje CV niezależnie od prowadzonych rekrutacji. Chętnie Cię poznamy.	Jeśli jesteś osobą, która nie boi się wyzwań, wiesz co to Scrum i masz potrzebę tworzenia produktów IT mających wpływ na społeczeństwo, wyślij nam swoje CV niezależnie od prowadzonych rekrutacji. Chętnie Cię poznamy.			[{"type": "hero_static_right", "value": {"background_image": 147, "title": "", "headline": "Brak otwartych rekrutacji", "body": "Nic straconego, wy\\u015blij nam swoje CV, a odezwiemy si\\u0119 wkr\\u00f3tce.", "page": null, "page_secodary": null, "external_url": ""}, "id": "b6fe2ff3-4ca9-43c4-b7e5-76f9fcb03ab6"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Chcemy \\u017ceby proces rekrutacji by\\u0142 kr\\u00f3tki i przyjemny. Dok\\u0142adamy wszelkich stara\\u0144, aby dzia\\u0142a\\u0107 szybko i efektywnie. Mimo, \\u017ce zastrzegamy sobie prawo do kontaktu z wybranymi kandydatami, dochodz\\u0105c do ostatniego etapu rekrutacji, masz gwarancj\\u0119 informacji zwrotnej.", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>W zale\\u017cno\\u015bci od stanowiska przeprowadzamy kr\\u00f3tk\\u0105 rozmow\\u0119 telefoniczn\\u0105, albo wysy\\u0142amy kilka pyta\\u0144 technicznych mailem.</p>"}, {"icon": 97, "text": "<p>Na drugi etap zapraszamy do naszego biura, gdzie mo\\u017cemy usi\\u0105\\u015b\\u0107 i porozmawia\\u0107. W trakcie rozmowy mo\\u017cesz otrzyma\\u0107 zadanie, sprawdzaj\\u0105ce Twoje umiej\\u0119tno\\u015bci.</p>"}, {"icon": 94, "text": "<p>Do 7 dni od zamkni\\u0119cia procesu rekrutacyjnego dostaniesz informacj\\u0119 o jego wynikach niezale\\u017cnie od jego powodzenia.</p>"}]}, "id": "3c2146a8-2e77-427a-b434-a3a9d4692633"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2>", "form_heading": "Daj si\\u0119 nam pozna\\u0107!"}, "id": "32b0f6af-a5b9-4c22-ba2c-a36e51691f83"}]	[{"type": "hero_static_right", "value": {"background_image": 147, "title": "", "headline": "Brak otwartych rekrutacji", "body": "Nic straconego, wy\\u015blij nam swoje CV, a odezwiemy si\\u0119 wkr\\u00f3tce.", "page": null, "page_secodary": null, "external_url": ""}, "id": "b6fe2ff3-4ca9-43c4-b7e5-76f9fcb03ab6"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Chcemy \\u017ceby proces rekrutacji by\\u0142 kr\\u00f3tki i przyjemny. Dok\\u0142adamy wszelkich stara\\u0144, aby dzia\\u0142a\\u0107 szybko i efektywnie. Mimo, \\u017ce zastrzegamy sobie prawo do kontaktu z wybranymi kandydatami, dochodz\\u0105c do ostatniego etapu rekrutacji, masz gwarancj\\u0119 informacji zwrotnej.", "headline": "", "body": "", "tiles": [{"icon": 98, "text": "<p>W zale\\u017cno\\u015bci od stanowiska przeprowadzamy kr\\u00f3tk\\u0105 rozmow\\u0119 telefoniczn\\u0105, albo wysy\\u0142amy kilka pyta\\u0144 technicznych mailem.</p>"}, {"icon": 97, "text": "<p>Na drugi etap zapraszamy do naszego biura, gdzie mo\\u017cemy usi\\u0105\\u015b\\u0107 i porozmawia\\u0107. W trakcie rozmowy mo\\u017cesz otrzyma\\u0107 zadanie, sprawdzaj\\u0105ce Twoje umiej\\u0119tno\\u015bci.</p>"}, {"icon": 94, "text": "<p>Do 7 dni od zamkni\\u0119cia procesu rekrutacyjnego dostaniesz informacj\\u0119 o jego wynikach niezale\\u017cnie od jego powodzenia.</p>"}]}, "id": "3c2146a8-2e77-427a-b434-a3a9d4692633"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2>", "form_heading": "Daj si\\u0119 nam pozna\\u0107!"}, "id": "32b0f6af-a5b9-4c22-ba2c-a36e51691f83"}]	[]	196
76					[{"type": "level", "value": {"title": "Laboratorium EE w liczbach", "tiles": [{"icon": 84, "value": "> 10 lat na rynku", "property_name": ""}, {"icon": 77, "value": "> 200 zrealizowanych projekt\\u00f3w", "property_name": ""}]}, "id": "d5b36ef3-2ad9-4ea3-83ba-bd18cec802e0"}, {"type": "paragraph", "value": {"title": "Organizacja, kt\\u00f3r\\u0105 tworz\\u0105 ludzie", "body": "<p><b>Nasz zesp\\u00f3\\u0142 pracuje na warszawskim Powi\\u015blu na ostatnim pi\\u0119trze kamienicy przy ul. 3 maja 2. To w\\u0142a\\u015bnie w tym miejscu w efekcie naszej wsp\\u00f3\\u0142pracy i \\u015bwiadomym oraz samodzielnym d\\u0105\\u017ceniu do spe\\u0142nienia wyznaczonych przez zesp\\u00f3\\u0142 cel\\u00f3w powstaj\\u0105 nasze produkty, pomys\\u0142y i rozwi\\u0105zania.</b></p><p><br/><br/>W Laboratorium EE pracuj\\u0105 najwybitniejsi specjali\\u015bci, kt\\u00f3rzy realizuj\\u0105 projekty b\\u0119d\\u0105ce dla nich wyzwaniem intelektualnym. Stawiamy na r\\u00f3\\u017cnorodno\\u015b\\u0107, poniewa\\u017c wierzymy, \\u017ce to w\\u0142a\\u015bnie mnogo\\u015b\\u0107 perspektyw na kt\\u00f3r\\u0105 sk\\u0142ada si\\u0119 zr\\u00f3\\u017cnicowane zaplecze \\u015bwiatopogl\\u0105dowe, zawodowe i kulturowe pozwalaj\\u0105 na stworzenie przez zesp\\u00f3\\u0142 najlepszych mo\\u017cliwych rozwi\\u0105za\\u0144.<br/><br/> Pracowali\\u015bmy m.in. dla takich klient\\u00f3w jak: Biblioteka Narodowa, Naczelna Akademicka Sie\\u0107 Komputerowa, Orange, Agora S.A, Bank Gospodarstwa Krajowego, Comarch, Ministerstwo Przedsi\\u0119biorczo\\u015bci i Technologii, PayU, Ministerstwo Cyfryzacji, Pracownia Bada\\u0144 i Innowacji Spo\\u0142ecznych \\u201cStocznia\\u201d. Wszystkie zrealizowane przez nas projekty cechowa\\u0142y si\\u0119 dok\\u0142adnie przeanalizowanym po\\u0142\\u0105czeniem potrzeb u\\u017cytkownika i realizowaniem cel\\u00f3w spo\\u0142ecznych lub biznesowych.<br/>Niekt\\u00f3re z naszych projekt\\u00f3w to:</p><p><a href=\\"https://www.projektmemo.pl/\\">Projekt Memo</a></p><p><a href=\\"https://polona.pl/\\">Polona</a></p><p><a href=\\"http://sonar.wyborcza.pl/sonar/0,0.html\\">SONAR</a></p><p><a href=\\"https://rodopass.pl/\\">RODOpass</a></p><p><a href=\\"http://www.demo.e-isbn.pl/\\">E-ISBN</a></p><p><a href=\\"http://www.demo.e-isbn.pl/\\">Kultura Dost\\u0119pna</a></p><p><a href=\\"https://zone.gov.pl/\\">ZONE</a></p>"}, "id": "37ddcc3b-6d14-4623-9636-740c5cd3687f"}, {"type": "paragraph", "value": {"title": "My\\u015blimy kodem, tworzymy sercem", "body": "<p><b>Misj\\u0105 Laboratorium EE jest zrzeszanie i zatrudnianie zespo\\u0142u najlepszych specjalist\\u00f3w, kt\\u00f3ry jest w stanie samodzielnie tworzy\\u0107 innowacyjne rozwi\\u0105zania w ramach naszych trzech specjalizacji:<br/></b></p><p>- Innowacje w oparciu o dane</p><p>- Produkty i us\\u0142ugi cyfrowe</p><p>- Optymalizacja proces\\u00f3w wytw\\u00f3rczych<br/></p><p>Celem naszej organizacji jest zmienianie \\u015bwiata przez nowe technologie. Dokonujemy implementacji innowacyjnych rozwi\\u0105za\\u0144 technologicznych b\\u0119d\\u0105cych efektem naszych prac badawczych i rozwojowych na p\\u0142aszczy\\u017anie spo\\u0142ecznej i biznesowej.<br/></p><p>Nasza firma jest sp\\u00f3\\u0142k\\u0105 posiadaj\\u0105c\\u0105 status Centrum Badawczo Rozwojowego. W sk\\u0142ad organizacji wchodzi kilka mniejszych sp\\u00f3\\u0142ek, kt\\u00f3re powsta\\u0142y na potrzeby wypuszczenia niekt\\u00f3rych z naszych produkt\\u00f3w i efekt\\u00f3w prac badawczo-rozwojowych. Jeste\\u015bmy zainteresowani wsp\\u00f3\\u0142prac\\u0105 ze wszystkimi dla kt\\u00f3rych wa\\u017cna jest zmiana i ulepszanie \\u015bwiata za pomoc\\u0105 nowych technologii cyfrowych.<br/></p><p>Od 2010 roku zbieramy i szukamy ambitnych i pe\\u0142nych pasji os\\u00f3b, kt\\u00f3re chc\\u0105 realizowa\\u0107 projekty maj\\u0105ce znaczenie. Centrum Badawczo Rozwojowe Laboratorium EE zrealizowa\\u0142o kilkadziesi\\u0105t najwi\\u0119kszych projekt\\u00f3w technologicznych posiadaj\\u0105cych wp\\u0142yw na \\u017cycie milion\\u00f3w mieszka\\u0144c\\u00f3w Polski. Obszary, w kt\\u00f3rych dzia\\u0142amy to:</p><p>- ochrona klimatu przy wsparciu nowych technologii,</p><p>- media za pomoc\\u0105 stworzonego przez nas serwisu: Sonar, kt\\u00f3ry u\\u0142atwia monitorowanie swojego \\u015bwiatopogl\\u0105du, pozwala na \\u015bledzenie polityk\\u00f3w i informacji, kt\\u00f3re s\\u0105 interesuj\\u0105ce dla u\\u017cytkownika.</p><p>- pomoc seniorom poprzez aplikacje mobilne wspieraj\\u0105cych kondycj\\u0119 pami\\u0119ci,</p><p>- przedsi\\u0119biorcy, kt\\u00f3rzy mog\\u0105 w oszcz\\u0119dny spos\\u00f3b zaimplementowa\\u0107 przepisy RODO.</p>"}, "id": "872796eb-723d-4415-8e35-c2e55ee07024"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2>", "form_heading": "Daj si\\u0119 nam pozna\\u0107!"}, "id": "ec9047db-da1f-49d0-9c69-ece916ffe763"}]	[{"type": "level", "value": {"title": "Laboratorium EE w liczbach", "tiles": [{"icon": 84, "value": "> 10 lat na rynku", "property_name": ""}, {"icon": 77, "value": "> 200 zrealizowanych projekt\\u00f3w", "property_name": ""}]}, "id": "d5b36ef3-2ad9-4ea3-83ba-bd18cec802e0"}, {"type": "paragraph", "value": {"title": "Organizacja, kt\\u00f3r\\u0105 tworz\\u0105 ludzie", "body": "<p><b>Nasz zesp\\u00f3\\u0142 pracuje na warszawskim Powi\\u015blu na ostatnim pi\\u0119trze kamienicy przy ul. 3 maja 2. To w\\u0142a\\u015bnie w tym miejscu w efekcie naszej wsp\\u00f3\\u0142pracy i \\u015bwiadomym oraz samodzielnym d\\u0105\\u017ceniu do spe\\u0142nienia wyznaczonych przez zesp\\u00f3\\u0142 cel\\u00f3w powstaj\\u0105 nasze produkty, pomys\\u0142y i rozwi\\u0105zania.</b></p><p><br/><br/>W Laboratorium EE pracuj\\u0105 najwybitniejsi specjali\\u015bci, kt\\u00f3rzy realizuj\\u0105 projekty b\\u0119d\\u0105ce dla nich wyzwaniem intelektualnym. Stawiamy na r\\u00f3\\u017cnorodno\\u015b\\u0107, poniewa\\u017c wierzymy, \\u017ce to w\\u0142a\\u015bnie mnogo\\u015b\\u0107 perspektyw na kt\\u00f3r\\u0105 sk\\u0142ada si\\u0119 zr\\u00f3\\u017cnicowane zaplecze \\u015bwiatopogl\\u0105dowe, zawodowe i kulturowe pozwalaj\\u0105 na stworzenie przez zesp\\u00f3\\u0142 najlepszych mo\\u017cliwych rozwi\\u0105za\\u0144.<br/><br/> Pracowali\\u015bmy m.in. dla takich klient\\u00f3w jak: Biblioteka Narodowa, Naczelna Akademicka Sie\\u0107 Komputerowa, Orange, Agora S.A, Bank Gospodarstwa Krajowego, Comarch, Ministerstwo Przedsi\\u0119biorczo\\u015bci i Technologii, PayU, Ministerstwo Cyfryzacji, Pracownia Bada\\u0144 i Innowacji Spo\\u0142ecznych \\u201cStocznia\\u201d. Wszystkie zrealizowane przez nas projekty cechowa\\u0142y si\\u0119 dok\\u0142adnie przeanalizowanym po\\u0142\\u0105czeniem potrzeb u\\u017cytkownika i realizowaniem cel\\u00f3w spo\\u0142ecznych lub biznesowych.<br/>Niekt\\u00f3re z naszych projekt\\u00f3w to:</p><p><a href=\\"https://www.projektmemo.pl/\\">Projekt Memo</a></p><p><a href=\\"https://polona.pl/\\">Polona</a></p><p><a href=\\"http://sonar.wyborcza.pl/sonar/0,0.html\\">SONAR</a></p><p><a href=\\"https://rodopass.pl/\\">RODOpass</a></p><p><a href=\\"http://www.demo.e-isbn.pl/\\">E-ISBN</a></p><p><a href=\\"http://www.demo.e-isbn.pl/\\">Kultura Dost\\u0119pna</a></p><p><a href=\\"https://zone.gov.pl/\\">ZONE</a></p>"}, "id": "37ddcc3b-6d14-4623-9636-740c5cd3687f"}, {"type": "paragraph", "value": {"title": "My\\u015blimy kodem, tworzymy sercem", "body": "<p><b>Misj\\u0105 Laboratorium EE jest zrzeszanie i zatrudnianie zespo\\u0142u najlepszych specjalist\\u00f3w, kt\\u00f3ry jest w stanie samodzielnie tworzy\\u0107 innowacyjne rozwi\\u0105zania w ramach naszych trzech specjalizacji:<br/></b></p><p>- Innowacje w oparciu o dane</p><p>- Produkty i us\\u0142ugi cyfrowe</p><p>- Optymalizacja proces\\u00f3w wytw\\u00f3rczych<br/></p><p>Celem naszej organizacji jest zmienianie \\u015bwiata przez nowe technologie. Dokonujemy implementacji innowacyjnych rozwi\\u0105za\\u0144 technologicznych b\\u0119d\\u0105cych efektem naszych prac badawczych i rozwojowych na p\\u0142aszczy\\u017anie spo\\u0142ecznej i biznesowej.<br/></p><p>Nasza firma jest sp\\u00f3\\u0142k\\u0105 posiadaj\\u0105c\\u0105 status Centrum Badawczo Rozwojowego. W sk\\u0142ad organizacji wchodzi kilka mniejszych sp\\u00f3\\u0142ek, kt\\u00f3re powsta\\u0142y na potrzeby wypuszczenia niekt\\u00f3rych z naszych produkt\\u00f3w i efekt\\u00f3w prac badawczo-rozwojowych. Jeste\\u015bmy zainteresowani wsp\\u00f3\\u0142prac\\u0105 ze wszystkimi dla kt\\u00f3rych wa\\u017cna jest zmiana i ulepszanie \\u015bwiata za pomoc\\u0105 nowych technologii cyfrowych.<br/></p><p>Od 2010 roku zbieramy i szukamy ambitnych i pe\\u0142nych pasji os\\u00f3b, kt\\u00f3re chc\\u0105 realizowa\\u0107 projekty maj\\u0105ce znaczenie. Centrum Badawczo Rozwojowe Laboratorium EE zrealizowa\\u0142o kilkadziesi\\u0105t najwi\\u0119kszych projekt\\u00f3w technologicznych posiadaj\\u0105cych wp\\u0142yw na \\u017cycie milion\\u00f3w mieszka\\u0144c\\u00f3w Polski. Obszary, w kt\\u00f3rych dzia\\u0142amy to:</p><p>- ochrona klimatu przy wsparciu nowych technologii,</p><p>- media za pomoc\\u0105 stworzonego przez nas serwisu: Sonar, kt\\u00f3ry u\\u0142atwia monitorowanie swojego \\u015bwiatopogl\\u0105du, pozwala na \\u015bledzenie polityk\\u00f3w i informacji, kt\\u00f3re s\\u0105 interesuj\\u0105ce dla u\\u017cytkownika.</p><p>- pomoc seniorom poprzez aplikacje mobilne wspieraj\\u0105cych kondycj\\u0119 pami\\u0119ci,</p><p>- przedsi\\u0119biorcy, kt\\u00f3rzy mog\\u0105 w oszcz\\u0119dny spos\\u00f3b zaimplementowa\\u0107 przepisy RODO.</p>"}, "id": "872796eb-723d-4415-8e35-c2e55ee07024"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz z nami rozwi\\u0105zywa\\u0107 problemy ludzko\\u015bci dzi\\u0119ki innowacyjnym technologiom?</h2>", "form_heading": "Daj si\\u0119 nam pozna\\u0107!"}, "id": "ec9047db-da1f-49d0-9c69-ece916ffe763"}]	[]	174
78	30 godzin pracy programistów do tego dane zbierane przez instytucje publiczne i efekt jest piorunujący.	30 godzin pracy programistów do tego dane zbierane przez instytucje publiczne i efekt jest piorunujący.		http://www.hackathon.gov.pl	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "Zakres prac", "property_name": "Opieka merytoryczna, dzia\\u0142ania"}, {"icon": null, "value": "Klient", "property_name": "Ministerstwo Cyfryzacji"}, {"icon": null, "value": "Czas", "property_name": "1,5 miesi\\u0105ca"}, {"icon": null, "value": "Rok", "property_name": "2016"}, {"icon": null, "value": "Kompetencje", "property_name": "Analiza danych"}]}, "id": "7695e21e-b466-4934-b7b3-b8e2eddb14c9"}, {"type": "paragraph", "value": {"title": "30 godzin pracy programist\\u00f3w", "body": "<p>do tego dane zbierane przez instytucje publiczne i efekt jest piorunuj\\u0105cy.</p>"}, "id": "c4270961-edc5-4bc5-aa9c-431e41b42907"}, {"type": "paragraph", "value": {"title": "90 os\\u00f3b w 17 zespo\\u0142ach tworzy\\u0142o przez weekend aplikacje  wykorzystuj\\u0105ce dane publiczne", "body": "<p></p><p>i walczy\\u0142o o nagrody o \\u0142\\u0105cznej puli ponad 50 tys. z\\u0142. Trzy zwyci\\u0119skie projekty zostan\\u0105 wdro\\u017cone. Prototypy aplikacji to nie jedyny efekt pierwszego w Polsce rz\\u0105dowego Hackathonu danych publicznych. Ministerstwo Cyfryzacji potraktowa\\u0142o bowiem wydarzenie r\\u00f3wnie\\u017c jako warsztat dla samej administracji. Praca programist\\u00f3w pozwoli\\u0142a na praktyczn\\u0105 weryfikacj\\u0119 jako\\u015bci i sposobu udost\\u0119pniania danych przez instytucje publiczne. Chodzi o to, by do\\u015bwiadczenia uczestnik\\u00f3w, trudno\\u015bci, na jakie si\\u0119 natkn\\u0119li przy korzystaniu z danych publicznych czy inne braki przeku\\u0107 w konkretne dzia\\u0142ania naprawcze Ministerstwa Cyfryzacji i innych resort\\u00f3w. Opr\\u00f3cz organizacji samego wydarzenia, nasz\\u0105 odpowiedzialno\\u015bci\\u0105 by\\u0142o</p>"}, "id": "a5837592-529c-490b-b7d4-d2b5ebcdcd33"}, {"type": "paragraph", "value": {"title": "Opracowanie w analiza API i baz danych", "body": "<p></p><p>kt\\u00f3re sw\\u0105 premier\\u0119 podczas Hackathonu, ich zaopiniowanie oraz przygotowanie opracowania dla uczestnik\\u00f3w, w jaki spos\\u00f3b powinni z nich korzysta\\u0107. Dodatkowo stworzyli\\u015bmy przyk\\u0142adowy spos\\u00f3b u\\u017cycia dost\\u0119p\\u00f3w, aby uczestnicy w praktyce mogli sprawdzi\\u0107 w jaki spos\\u00f3b mo\\u017cna ich u\\u017cy\\u0107 do pracy. Ca\\u0142y Hackathon \\u2013 od koncepcji, przez rekrutacj\\u0119 po jego przeprowadzenie \\u2013 znajdowa\\u0142 si\\u0119 pod nasz\\u0105 opiek\\u0105 i dzia\\u0142aniami komunikacyjnymi.</p>"}, "id": "1aba43f9-a6fc-4710-94a8-ab0af06b93ad"}, {"type": "paragraph", "value": {"title": "Odpowiadali\\u015bmy za opracowanie materia\\u0142\\u00f3w tekstowych i graficznych, kontakt z mediami, uczestnikami i ekspertami", "body": "<p></p><p>Stworzony i prowadzony przez nas profil Twitterowy (@hackathongovpl) by\\u0142 g\\u0142\\u00f3wnym \\u017ar\\u00f3d\\u0142em informacji dla medi\\u00f3w i administracji \\u2013 na bie\\u017c\\u0105co relacjonowali\\u015bmy ca\\u0142y przebieg wydarzenia, prezentacji, a tak\\u017ce przygotowywali\\u015bmy minireporta\\u017c przez Periscope, dzi\\u0119ki kt\\u00f3remu mo\\u017cna by\\u0142o poczu\\u0107 nocn\\u0105 atmosfer\\u0119 wydarzenia. Opr\\u00f3cz materia\\u0142\\u00f3w prasowych, notek oraz obs\\u0142ugi medi\\u00f3w, na bie\\u017c\\u0105co w mediach spo\\u0142eczno\\u015bciowych zamieszczali\\u015bmy zdj\\u0119cia, aby mo\\u017cna by\\u0142o poczu\\u0107 si\\u0119 jak w centrum wydarze\\u0144. Nasza praca to tak\\u017ce pierwsza kampania GIFowa w administracji publicznej \\u2013 na Facebooku oraz Twitterze GIFy przykuwa\\u0142y uwag\\u0119 odbiorc\\u00f3w. Ca\\u0142o\\u015b\\u0107 wydarzenia zwie\\u0144czy\\u0142 film, kt\\u00f3ry w pigu\\u0142ce pokazuje, co wydarzy\\u0142o si\\u0119 tego weekendu.</p>"}, "id": "db884eac-36f4-42ab-889f-bd7b792d430c"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "Zakres prac", "property_name": "Opieka merytoryczna, dzia\\u0142ania"}, {"icon": null, "value": "Klient", "property_name": "Ministerstwo Cyfryzacji"}, {"icon": null, "value": "Czas", "property_name": "1,5 miesi\\u0105ca"}, {"icon": null, "value": "Rok", "property_name": "2016"}, {"icon": null, "value": "Kompetencje", "property_name": "Analiza danych"}]}, "id": "7695e21e-b466-4934-b7b3-b8e2eddb14c9"}, {"type": "paragraph", "value": {"title": "30 godzin pracy programist\\u00f3w", "body": "<p>do tego dane zbierane przez instytucje publiczne i efekt jest piorunuj\\u0105cy.</p>"}, "id": "c4270961-edc5-4bc5-aa9c-431e41b42907"}, {"type": "paragraph", "value": {"title": "90 os\\u00f3b w 17 zespo\\u0142ach tworzy\\u0142o przez weekend aplikacje  wykorzystuj\\u0105ce dane publiczne", "body": "<p></p><p>i walczy\\u0142o o nagrody o \\u0142\\u0105cznej puli ponad 50 tys. z\\u0142. Trzy zwyci\\u0119skie projekty zostan\\u0105 wdro\\u017cone. Prototypy aplikacji to nie jedyny efekt pierwszego w Polsce rz\\u0105dowego Hackathonu danych publicznych. Ministerstwo Cyfryzacji potraktowa\\u0142o bowiem wydarzenie r\\u00f3wnie\\u017c jako warsztat dla samej administracji. Praca programist\\u00f3w pozwoli\\u0142a na praktyczn\\u0105 weryfikacj\\u0119 jako\\u015bci i sposobu udost\\u0119pniania danych przez instytucje publiczne. Chodzi o to, by do\\u015bwiadczenia uczestnik\\u00f3w, trudno\\u015bci, na jakie si\\u0119 natkn\\u0119li przy korzystaniu z danych publicznych czy inne braki przeku\\u0107 w konkretne dzia\\u0142ania naprawcze Ministerstwa Cyfryzacji i innych resort\\u00f3w. Opr\\u00f3cz organizacji samego wydarzenia, nasz\\u0105 odpowiedzialno\\u015bci\\u0105 by\\u0142o</p>"}, "id": "a5837592-529c-490b-b7d4-d2b5ebcdcd33"}, {"type": "paragraph", "value": {"title": "Opracowanie w analiza API i baz danych", "body": "<p></p><p>kt\\u00f3re sw\\u0105 premier\\u0119 podczas Hackathonu, ich zaopiniowanie oraz przygotowanie opracowania dla uczestnik\\u00f3w, w jaki spos\\u00f3b powinni z nich korzysta\\u0107. Dodatkowo stworzyli\\u015bmy przyk\\u0142adowy spos\\u00f3b u\\u017cycia dost\\u0119p\\u00f3w, aby uczestnicy w praktyce mogli sprawdzi\\u0107 w jaki spos\\u00f3b mo\\u017cna ich u\\u017cy\\u0107 do pracy. Ca\\u0142y Hackathon \\u2013 od koncepcji, przez rekrutacj\\u0119 po jego przeprowadzenie \\u2013 znajdowa\\u0142 si\\u0119 pod nasz\\u0105 opiek\\u0105 i dzia\\u0142aniami komunikacyjnymi.</p>"}, "id": "1aba43f9-a6fc-4710-94a8-ab0af06b93ad"}, {"type": "paragraph", "value": {"title": "Odpowiadali\\u015bmy za opracowanie materia\\u0142\\u00f3w tekstowych i graficznych, kontakt z mediami, uczestnikami i ekspertami", "body": "<p></p><p>Stworzony i prowadzony przez nas profil Twitterowy (@hackathongovpl) by\\u0142 g\\u0142\\u00f3wnym \\u017ar\\u00f3d\\u0142em informacji dla medi\\u00f3w i administracji \\u2013 na bie\\u017c\\u0105co relacjonowali\\u015bmy ca\\u0142y przebieg wydarzenia, prezentacji, a tak\\u017ce przygotowywali\\u015bmy minireporta\\u017c przez Periscope, dzi\\u0119ki kt\\u00f3remu mo\\u017cna by\\u0142o poczu\\u0107 nocn\\u0105 atmosfer\\u0119 wydarzenia. Opr\\u00f3cz materia\\u0142\\u00f3w prasowych, notek oraz obs\\u0142ugi medi\\u00f3w, na bie\\u017c\\u0105co w mediach spo\\u0142eczno\\u015bciowych zamieszczali\\u015bmy zdj\\u0119cia, aby mo\\u017cna by\\u0142o poczu\\u0107 si\\u0119 jak w centrum wydarze\\u0144. Nasza praca to tak\\u017ce pierwsza kampania GIFowa w administracji publicznej \\u2013 na Facebooku oraz Twitterze GIFy przykuwa\\u0142y uwag\\u0119 odbiorc\\u00f3w. Ca\\u0142o\\u015b\\u0107 wydarzenia zwie\\u0144czy\\u0142 film, kt\\u00f3ry w pigu\\u0142ce pokazuje, co wydarzy\\u0142o si\\u0119 tego weekendu.</p>"}, "id": "db884eac-36f4-42ab-889f-bd7b792d430c"}]	[]	148
73	Projektujemy produkty cyfrowe oraz usługi w oparciu o najlepszą wiedzę ekspercką i lata doświadczenia. Przykładamy ogromną wagę do poznawania potrzeb i celów naszych klientów. Zestawiamy je z wymaganiami docelowych użytkowników lub odbiorców usługi, aby tworzyć arngażujące doświadczenia. Budujemy prototypy produktów i badamy je z odbiorcami, aby weryfikować poczynione założenia.	Projektujemy produkty cyfrowe oraz usługi w oparciu o najlepszą wiedzę ekspercką i lata doświadczenia. Przykładamy ogromną wagę do poznawania potrzeb i celów naszych klientów. Zestawiamy je z wymaganiami docelowych użytkowników lub odbiorców usługi, aby tworzyć arngażujące doświadczenia. Budujemy prototypy produktów i badamy je z odbiorcami, aby weryfikować poczynione założenia.			[{"type": "level", "value": {"title": "", "tiles": [{"icon": 67, "value": "Koncepcje produkt\\u00f3w cyfrowych", "property_name": ""}, {"icon": 65, "value": "Interaktywne prototypy", "property_name": ""}, {"icon": 68, "value": "Aplikacje online i offine", "property_name": ""}]}, "id": "025d403f-e7f4-438d-a0ec-c02d673a41f1"}, {"type": "contact_us_button", "value": null, "id": "35138e6a-f3d0-4ba4-829e-1926da8691ca"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Projektujemy, prototypujemy i rozwijamy iteracyjnie produkty i us\\u0142ugi cyfrowe . Korzystamy z najnowszych technologii i wiedzy specjalistycznej oraz wk\\u0142adamy serce w design naszych rozwi\\u0105za\\u0144. Dzi\\u0119ki temu rozw\\u00f3j oprogramowania oraz proces projektowy przebiega sprawnie i ko\\u0144czy si\\u0119 sukcesem. Sukcesem rozumianym jako satysfakcja z osi\\u0105gni\\u0119tych korzy\\u015bci biznesowych oraz zadowoleniem u\\u017cytkownika lub klienta.</p>"}, "id": "4714a1df-895b-4dfe-93a2-f0513265f5b0"}, {"type": "tile_grid", "value": {"title": "Nasza oferta", "tiles": [{"image": 190, "title": "", "body": "<p>User Experience Design</p>"}, {"image": 191, "title": "", "body": "<p>Badania i obserwacje</p>"}, {"image": 192, "title": "", "body": "<p>Warsztaty wydobywcze</p>"}, {"image": 193, "title": "", "body": "<p>Design sprinty</p>"}]}, "id": "e8c6334c-5c9a-4027-a196-b2057c4623cd"}, {"type": "contact_us_button", "value": null, "id": "cc671d1c-d126-444a-9602-14883a8d90a4"}, {"type": "hero_process", "value": {"background_image": 194, "title": "Proces projektowy", "headline": "ZONEapp - aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty z konsorcjum interesariuszy</p>"}, {"icon": 69, "text": "<p>Prototyp aplikacji mobilnej</p>"}, {"icon": 66, "text": "<p>Testy z u\\u017cytkownikami</p>"}]}, "id": "b457b779-57b8-497b-a951-cd786a7da1aa"}, {"type": "masonry", "value": {"title": "Zrealizowane projekty", "tiles": [{"image": 142, "page": 33, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 143, "page": 34, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 58, "page": 56, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 159, "page": 57, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": true}]}, "id": "521dea7b-7a42-456a-ade1-89f78e61049d"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz stworzy\\u0107 profesjonalny produkt lub us\\u0142ug\\u0119?</h2>", "form_heading": ""}, "id": "cd7a4d5f-f449-40f6-a549-ca1ea3cfc3a2"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": 67, "value": "Koncepcje produkt\\u00f3w cyfrowych", "property_name": ""}, {"icon": 65, "value": "Interaktywne prototypy", "property_name": ""}, {"icon": 68, "value": "Aplikacje online i offine", "property_name": ""}]}, "id": "025d403f-e7f4-438d-a0ec-c02d673a41f1"}, {"type": "contact_us_button", "value": null, "id": "35138e6a-f3d0-4ba4-829e-1926da8691ca"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Projektujemy, prototypujemy i rozwijamy iteracyjnie produkty i us\\u0142ugi cyfrowe . Korzystamy z najnowszych technologii i wiedzy specjalistycznej oraz wk\\u0142adamy serce w design naszych rozwi\\u0105za\\u0144. Dzi\\u0119ki temu rozw\\u00f3j oprogramowania oraz proces projektowy przebiega sprawnie i ko\\u0144czy si\\u0119 sukcesem. Sukcesem rozumianym jako satysfakcja z osi\\u0105gni\\u0119tych korzy\\u015bci biznesowych oraz zadowoleniem u\\u017cytkownika lub klienta.</p>"}, "id": "4714a1df-895b-4dfe-93a2-f0513265f5b0"}, {"type": "tile_grid", "value": {"title": "Nasza oferta", "tiles": [{"image": 190, "title": "", "body": "<p>User Experience Design</p>"}, {"image": 191, "title": "", "body": "<p>Badania i obserwacje</p>"}, {"image": 192, "title": "", "body": "<p>Warsztaty wydobywcze</p>"}, {"image": 193, "title": "", "body": "<p>Design sprinty</p>"}]}, "id": "e8c6334c-5c9a-4027-a196-b2057c4623cd"}, {"type": "contact_us_button", "value": null, "id": "cc671d1c-d126-444a-9602-14883a8d90a4"}, {"type": "hero_process", "value": {"background_image": 194, "title": "Proces projektowy", "headline": "ZONEapp - aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "body": "", "tiles": [{"icon": 98, "text": "<p>Warsztaty z konsorcjum interesariuszy</p>"}, {"icon": 69, "text": "<p>Prototyp aplikacji mobilnej</p>"}, {"icon": 66, "text": "<p>Testy z u\\u017cytkownikami</p>"}]}, "id": "b457b779-57b8-497b-a951-cd786a7da1aa"}, {"type": "masonry", "value": {"title": "Zrealizowane projekty", "tiles": [{"image": 142, "page": 33, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 143, "page": 34, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 58, "page": 56, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": false}, {"image": 159, "page": 57, "featured_x": false, "featured_y": false, "featured_mobile": false, "title_dark": true}]}, "id": "521dea7b-7a42-456a-ade1-89f78e61049d"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz stworzy\\u0107 profesjonalny produkt lub us\\u0142ug\\u0119?</h2>", "form_heading": ""}, "id": "cd7a4d5f-f449-40f6-a549-ca1ea3cfc3a2"}]	[]	147
72	Wdrażamy podejście projektowe i zwinne metodyki zarządzania procesami.	Wdrażamy podejście projektowe i zwinne metodyki zarządzania procesami.			[{"type": "level", "value": {"title": "", "tiles": [{"icon": 80, "value": "Warsztaty", "property_name": ""}, {"icon": 78, "value": "Zarz\\u0105dzanie procesami", "property_name": ""}, {"icon": 94, "value": "Coaching i wsparcie zespo\\u0142\\u00f3w", "property_name": ""}]}, "id": "09b03845-7e22-4d26-bfc0-09638fb594d0"}, {"type": "contact_us_button", "value": null, "id": "cb09f766-2844-4ccf-ae29-c2544e6dc850"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Organizujemy warsztaty dla zespo\\u0142\\u00f3w przygotowuj\\u0105cych si\\u0119 do wdro\\u017cenia frameworku Scrum. Naszym klientom, kt\\u00f3rzy chc\\u0105 zacz\\u0105\\u0107 pracowa\\u0107 zwinnie, udost\\u0119pniamy naszych certyfikowanych Scrum Master\\u00f3w. Doradzamy organizacjom w zakresie transformacji Scruma oraz zapewniamy wsparcie powdro\\u017ceniowe na ka\\u017cdym szczeblu organizacji.</p>"}, "id": "14ac3762-a751-4a40-8b9a-36b5226cb8f5"}, {"type": "tile_grid", "value": {"title": "Nasza oferta", "tiles": [{"image": 186, "title": "Roadmapy projekt\\u00f3w", "body": "<p>Tworzymy plany okre\\u015blaj\\u0105ce kierunki rozwoju projekt\\u00f3w w \\u015brodowisku Agile zorientowane na realizacj\\u0119 cel\\u00f3w biznesowych.</p>"}, {"image": 187, "title": "Artefakty Scruma", "body": "<p>Zapewniamy wysok\\u0105 przejrzysto\\u015b\\u0107 i efektywno\\u015b\\u0107 element\\u00f3w reprezentuj\\u0105cych prac\\u0119 i warto\\u015bci, gwarantuj\\u0105c prawid\\u0142owe funkcjonowanie procesu.</p>"}, {"image": 188, "title": "Wydarzenia Scrumowe", "body": "<p>Optymalizujemy ilo\\u015b\\u0107 i czas spotka\\u0144 wprowadzaj\\u0105c wydarzenia posiadaj\\u0105ce okre\\u015blone cele oraz nastawione na osi\\u0105gni\\u0119cie konkretnych rezultat\\u00f3w zgodnie z metodyk\\u0105 Scrum.</p>"}, {"image": 189, "title": "Scrum Guide", "body": "<p>Wszystkie wprowadzane rozwi\\u0105zania s\\u0105 zgodne z najnowszym Scrum Guide co gwarantuj\\u0105 nasi certyfikowani Scrum Masterzy.</p>"}]}, "id": "82a21f40-8399-48e6-a446-f0e966e4d250"}, {"type": "contact_us_button", "value": null, "id": "d948e5d8-eb1e-4210-b6f3-ae52519a94d4"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Proces projektowy", "headline": "Comarch", "body": "", "tiles": [{"icon": 77, "text": "<p>Przygotowanie i wprowadzenie zespo\\u0142u w metodyki zwinne</p>"}, {"icon": 78, "text": "<p>Zarz\\u0105dzanie procesem i wdro\\u017cenie wydarze\\u0144</p>"}, {"icon": 79, "text": "<p>Aktywne wspieranie Scrum Master\\u00f3w przez Agile Coacha</p>"}, {"icon": 80, "text": "<p>Opracowanie warsztat\\u00f3w i narz\\u0119dzi usprawniaj\\u0105cych prac\\u0119 zespo\\u0142\\u00f3w</p>"}]}, "id": "473f2194-09e8-470e-a111-95030202d604"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz taniej pope\\u0142nia\\u0107 b\\u0142\\u0119dy i przy\\u015bpieszy\\u0107 zwrot inwestycji?</h2>", "form_heading": "Wypr\\u00f3buj zarz\\u0105dzanie zwinne!"}, "id": "e616bd1b-625b-4112-ad37-996d45e515fd"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": 80, "value": "Warsztaty", "property_name": ""}, {"icon": 78, "value": "Zarz\\u0105dzanie procesami", "property_name": ""}, {"icon": 94, "value": "Coaching i wsparcie zespo\\u0142\\u00f3w", "property_name": ""}]}, "id": "09b03845-7e22-4d26-bfc0-09638fb594d0"}, {"type": "contact_us_button", "value": null, "id": "cb09f766-2844-4ccf-ae29-c2544e6dc850"}, {"type": "paragraph", "value": {"title": "Pomagamy naszym klientom", "body": "<p>Organizujemy warsztaty dla zespo\\u0142\\u00f3w przygotowuj\\u0105cych si\\u0119 do wdro\\u017cenia frameworku Scrum. Naszym klientom, kt\\u00f3rzy chc\\u0105 zacz\\u0105\\u0107 pracowa\\u0107 zwinnie, udost\\u0119pniamy naszych certyfikowanych Scrum Master\\u00f3w. Doradzamy organizacjom w zakresie transformacji Scruma oraz zapewniamy wsparcie powdro\\u017ceniowe na ka\\u017cdym szczeblu organizacji.</p>"}, "id": "14ac3762-a751-4a40-8b9a-36b5226cb8f5"}, {"type": "tile_grid", "value": {"title": "Nasza oferta", "tiles": [{"image": 186, "title": "Roadmapy projekt\\u00f3w", "body": "<p>Tworzymy plany okre\\u015blaj\\u0105ce kierunki rozwoju projekt\\u00f3w w \\u015brodowisku Agile zorientowane na realizacj\\u0119 cel\\u00f3w biznesowych.</p>"}, {"image": 187, "title": "Artefakty Scruma", "body": "<p>Zapewniamy wysok\\u0105 przejrzysto\\u015b\\u0107 i efektywno\\u015b\\u0107 element\\u00f3w reprezentuj\\u0105cych prac\\u0119 i warto\\u015bci, gwarantuj\\u0105c prawid\\u0142owe funkcjonowanie procesu.</p>"}, {"image": 188, "title": "Wydarzenia Scrumowe", "body": "<p>Optymalizujemy ilo\\u015b\\u0107 i czas spotka\\u0144 wprowadzaj\\u0105c wydarzenia posiadaj\\u0105ce okre\\u015blone cele oraz nastawione na osi\\u0105gni\\u0119cie konkretnych rezultat\\u00f3w zgodnie z metodyk\\u0105 Scrum.</p>"}, {"image": 189, "title": "Scrum Guide", "body": "<p>Wszystkie wprowadzane rozwi\\u0105zania s\\u0105 zgodne z najnowszym Scrum Guide co gwarantuj\\u0105 nasi certyfikowani Scrum Masterzy.</p>"}]}, "id": "82a21f40-8399-48e6-a446-f0e966e4d250"}, {"type": "contact_us_button", "value": null, "id": "d948e5d8-eb1e-4210-b6f3-ae52519a94d4"}, {"type": "hero_process", "value": {"background_image": 147, "title": "Proces projektowy", "headline": "Comarch", "body": "", "tiles": [{"icon": 77, "text": "<p>Przygotowanie i wprowadzenie zespo\\u0142u w metodyki zwinne</p>"}, {"icon": 78, "text": "<p>Zarz\\u0105dzanie procesem i wdro\\u017cenie wydarze\\u0144</p>"}, {"icon": 79, "text": "<p>Aktywne wspieranie Scrum Master\\u00f3w przez Agile Coacha</p>"}, {"icon": 80, "text": "<p>Opracowanie warsztat\\u00f3w i narz\\u0119dzi usprawniaj\\u0105cych prac\\u0119 zespo\\u0142\\u00f3w</p>"}]}, "id": "473f2194-09e8-470e-a111-95030202d604"}, {"type": "contact_form", "value": {"body": "<h2>Chcesz taniej pope\\u0142nia\\u0107 b\\u0142\\u0119dy i przy\\u015bpieszy\\u0107 zwrot inwestycji?</h2>", "form_heading": "Wypr\\u00f3buj zarz\\u0105dzanie zwinne!"}, "id": "e616bd1b-625b-4112-ad37-996d45e515fd"}]	[]	147
79				http://www.polona.pl/	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "Klient", "property_name": "Biblioteka Narodowa"}, {"icon": null, "value": "Czas trwania", "property_name": "2014 \\u2013 2015"}, {"icon": null, "value": "Partnerzy", "property_name": "NASK, Huncwot"}, {"icon": null, "value": "Kompetencje", "property_name": "Aplikacje, Badania i Rozw\\u00f3j, Analiza danych, Doradztwo IT, UX"}]}, "id": "5e600c60-757d-4010-8461-143ac4a3af68"}, {"type": "paragraph", "value": {"title": "2 025 759", "body": "<p>\\u2013 tyle obiekt\\u00f3w znajduje si\\u0119 dzisiaj w cyfrowym archiwum Biblioteki Narodowej, w tym: ksi\\u0105\\u017cki, czasopisma, r\\u0119kopisy, mapy, fotografie, rysunki, poczt\\u00f3wki, druki r\\u00f3\\u017cnego rodzaju, a nawet nuty. Wsp\\u00f3lnie z Bibliotek\\u0105 Narodow\\u0105 i NASK stworzyli\\u015bmy wyj\\u0105tkowy w skali \\u015bwiatowej portal biblioteczny oparty na zasadach znanych z medi\\u00f3w spo\\u0142eczno\\u015bciowych. \\u0141atwy do wyszukiwania, jak Google, klarowny, jak Pinterest i umo\\u017cliwiaj\\u0105cy wymian\\u0119 ze znajomymi, jak Facebook \\u2013 tak naj\\u0142atwiej scharakteryzowa\\u0107 serwis \\u201ePolona\\u201d.  To, co do niedawna kurzy\\u0142o si\\u0119 w archiwach gmachu najwi\\u0119kszej w Polsce biblioteki, dzisiaj dost\\u0119pne jest w postaci elektronicznej (skan\\u00f3w) i w dodatku \\u0142atwe w obr\\u00f3bce. Dzi\\u0119ki zastosowaniu najnowszych technologii ka\\u017cdy mo\\u017ce wyszuka\\u0107 dowolne obrazy, pracowa\\u0107 na nich na w\\u0142asnym pulpicie wycinaj\\u0105c, kopiuj\\u0105c fragmenty i nanosz\\u0105c w\\u0142asne komentarze. W serwisie mo\\u017cna te\\u017c tworzy\\u0107 kolekcje i wymienia\\u0107 si\\u0119 znaleziskami.  Zaawansowana technologia opracowana przez nasz zesp\\u00f3\\u0142 s\\u0142u\\u017cy \\u0142atwej nawigacji i intuicyjnemu korzystaniu z zasob\\u00f3w biblioteki.</p>"}, "id": "4fab73f5-d441-4abd-a319-db9f59d51bee"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "Klient", "property_name": "Biblioteka Narodowa"}, {"icon": null, "value": "Czas trwania", "property_name": "2014 \\u2013 2015"}, {"icon": null, "value": "Partnerzy", "property_name": "NASK, Huncwot"}, {"icon": null, "value": "Kompetencje", "property_name": "Aplikacje, Badania i Rozw\\u00f3j, Analiza danych, Doradztwo IT, UX"}]}, "id": "5e600c60-757d-4010-8461-143ac4a3af68"}, {"type": "paragraph", "value": {"title": "2 025 759", "body": "<p>\\u2013 tyle obiekt\\u00f3w znajduje si\\u0119 dzisiaj w cyfrowym archiwum Biblioteki Narodowej, w tym: ksi\\u0105\\u017cki, czasopisma, r\\u0119kopisy, mapy, fotografie, rysunki, poczt\\u00f3wki, druki r\\u00f3\\u017cnego rodzaju, a nawet nuty. Wsp\\u00f3lnie z Bibliotek\\u0105 Narodow\\u0105 i NASK stworzyli\\u015bmy wyj\\u0105tkowy w skali \\u015bwiatowej portal biblioteczny oparty na zasadach znanych z medi\\u00f3w spo\\u0142eczno\\u015bciowych. \\u0141atwy do wyszukiwania, jak Google, klarowny, jak Pinterest i umo\\u017cliwiaj\\u0105cy wymian\\u0119 ze znajomymi, jak Facebook \\u2013 tak naj\\u0142atwiej scharakteryzowa\\u0107 serwis \\u201ePolona\\u201d.  To, co do niedawna kurzy\\u0142o si\\u0119 w archiwach gmachu najwi\\u0119kszej w Polsce biblioteki, dzisiaj dost\\u0119pne jest w postaci elektronicznej (skan\\u00f3w) i w dodatku \\u0142atwe w obr\\u00f3bce. Dzi\\u0119ki zastosowaniu najnowszych technologii ka\\u017cdy mo\\u017ce wyszuka\\u0107 dowolne obrazy, pracowa\\u0107 na nich na w\\u0142asnym pulpicie wycinaj\\u0105c, kopiuj\\u0105c fragmenty i nanosz\\u0105c w\\u0142asne komentarze. W serwisie mo\\u017cna te\\u017c tworzy\\u0107 kolekcje i wymienia\\u0107 si\\u0119 znaleziskami.  Zaawansowana technologia opracowana przez nasz zesp\\u00f3\\u0142 s\\u0142u\\u017cy \\u0142atwej nawigacji i intuicyjnemu korzystaniu z zasob\\u00f3w biblioteki.</p>"}, "id": "4fab73f5-d441-4abd-a319-db9f59d51bee"}]	[]	165
81	Czy zastanawialiście się kiedyś skąd pochodzą i na co są przeznaczane pieniądze pochodzące z budżetów regionalnych? „” to narzędzie, które w przejrzysty sposób pokazuje, jak wybrana gmina zarządza swoim budżetem.  Dzięki zastosowanej w aplikacji klasyfikacji wydatków i źródeł finansowania, użytkownik może dowiedzieć się np. jak dochody i wydatki danej gminy zmieniały się w czasie, jaką część przychodów stanowią podatki, jakie jest zadłużenie danego obszaru i na co wybrana gmina wydała najwięcej pieniędzy w danym okresie. Największym wyzwaniem było wymyślenie i przygotowanie technologii, która w intuicyjny dla użytkownika sposób przedstawi dane gmin pochodzące z Ministerstwa Finansów. Dlatego zaprojektowaliśmy warstwę z instrukcjami, z której użytkownik może skorzystać po wejściu na stronę naszakasa.org.pl. Kiedy nauczy się używać aplikacji, może w dowolnym momencie je ukryć.	Czy zastanawialiście się kiedyś skąd pochodzą i na co są przeznaczane pieniądze pochodzące z budżetów regionalnych? „” to narzędzie, które w przejrzysty sposób pokazuje, jak wybrana gmina zarządza swoim budżetem.  Dzięki zastosowanej w aplikacji klasyfikacji wydatków i źródeł finansowania, użytkownik może dowiedzieć się np. jak dochody i wydatki danej gminy zmieniały się w czasie, jaką część przychodów stanowią podatki, jakie jest zadłużenie danego obszaru i na co wybrana gmina wydała najwięcej pieniędzy w danym okresie. Największym wyzwaniem było wymyślenie i przygotowanie technologii, która w intuicyjny dla użytkownika sposób przedstawi dane gmin pochodzące z Ministerstwa Finansów. Dlatego zaprojektowaliśmy warstwę z instrukcjami, z której użytkownik może skorzystać po wejściu na stronę naszakasa.org.pl. Kiedy nauczy się używać aplikacji, może w dowolnym momencie je ukryć.			[]	[]	[]	149
82				http://www.kulturadostepna.pl	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "klient", "property_name": "NCK, Ministerstwo Kultury i Dziedzictwa Narodowego"}, {"icon": null, "value": "rok", "property_name": "2015"}, {"icon": null, "value": "kompetencje", "property_name": "Aplikacje Analiza danych User Experience"}]}, "id": "21e749a1-f4d8-4df6-b87b-261b0b33c6c6"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "klient", "property_name": "NCK, Ministerstwo Kultury i Dziedzictwa Narodowego"}, {"icon": null, "value": "rok", "property_name": "2015"}, {"icon": null, "value": "kompetencje", "property_name": "Aplikacje Analiza danych User Experience"}]}, "id": "a536b471-c5c4-466d-a147-8157183df69b"}]	[]	173
84					[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "KLIENT", "property_name": "Stowarzyszenie Klon/Jawor"}, {"icon": null, "value": "WSP\\u00d3\\u0141PRACA", "property_name": "Logotomia - grafika"}, {"icon": null, "value": "KOMPETENCJE", "property_name": "Aplikacje Analiza danych User Experience"}]}, "id": "58ddefe9-c741-4ad0-aa05-ece623c7d68d"}, {"type": "paragraph", "value": {"title": "W Polsce jest 16 wojew\\u00f3dztw, 344 powiat\\u00f3w i 2478 gmin.", "body": "<p>W Polsce jest 16 wojew\\u00f3dztw, 344 powiat\\u00f3w i 2478 gmin. Ka\\u017cda jednostka administracyjna gromadzi dane na temat mieszka\\u0144c\\u00f3w i swojego terytorium. Dotycz\\u0105 one rozmaitych kwestii: ile kobiet i m\\u0119\\u017cczyzn zamieszkuje dany obszar, jaka jest dzietno\\u015b\\u0107 w poszczeg\\u00f3lnych regionach, ile szk\\u00f3\\u0142 dzia\\u0142a na danym terenie, ale te\\u017c ile os\\u00f3b g\\u0142osowa\\u0142o w ostatnich wyborach czy ile kilometr\\u00f3w nowych dr\\u00f3g wybudowano w danym okresie.  Stowarzyszenie Klon / Jawor postanowi\\u0142a stworzy\\u0107 narz\\u0119dzie pozwalaj\\u0105ce na gromadzenie wszystkich dost\\u0119pnych publicznie danych, por\\u00f3wnywanie ich ze sob\\u0105 i wizualizowanie wynik\\u00f3w.  W efekcie powsta\\u0142 zar\\u00f3wno dla amator\\u00f3w, jak i profesjonalist\\u00f3w. Na mapie Polski mo\\u017cna zobaczy\\u0107 r\\u00f3\\u017cnego rodzaju dane statystyczne. Te same dane mo\\u017cna wygenerowa\\u0107 w postaci wykres\\u00f3w (rozk\\u0142ad, korelacja, dynamika i ranking), zestawia\\u0107 ze sob\\u0105, a tak\\u017ce prze\\u015bledzi\\u0107 interesuj\\u0105ce nas zjawiska w czasie.  Dzi\\u0119ki naszej pracy bardzo skomplikowany i precyzyjny mechanizm statystyczny zosta\\u0142 przedstawiony w postaci przyjaznych wizualizacji.</p>"}, "id": "3fb7115f-a2b3-4b69-ae5a-2a37aff230a9"}]	[{"type": "level", "value": {"title": "", "tiles": [{"icon": null, "value": "KLIENT", "property_name": "Stowarzyszenie Klon/Jawor"}, {"icon": null, "value": "WSP\\u00d3\\u0141PRACA", "property_name": "Logotomia - grafika"}, {"icon": null, "value": "KOMPETENCJE", "property_name": "Aplikacje Analiza danych User Experience"}]}, "id": "5511409a-21d4-4ea7-abe6-448ec0774218"}, {"type": "paragraph", "value": {"title": "W Polsce jest 16 wojew\\u00f3dztw, 344 powiat\\u00f3w i 2478 gmin.", "body": "<p>W Polsce jest 16 wojew\\u00f3dztw, 344 powiat\\u00f3w i 2478 gmin. Ka\\u017cda jednostka administracyjna gromadzi dane na temat mieszka\\u0144c\\u00f3w i swojego terytorium. Dotycz\\u0105 one rozmaitych kwestii: ile kobiet i m\\u0119\\u017cczyzn zamieszkuje dany obszar, jaka jest dzietno\\u015b\\u0107 w poszczeg\\u00f3lnych regionach, ile szk\\u00f3\\u0142 dzia\\u0142a na danym terenie, ale te\\u017c ile os\\u00f3b g\\u0142osowa\\u0142o w ostatnich wyborach czy ile kilometr\\u00f3w nowych dr\\u00f3g wybudowano w danym okresie.  Stowarzyszenie Klon / Jawor postanowi\\u0142a stworzy\\u0107 narz\\u0119dzie pozwalaj\\u0105ce na gromadzenie wszystkich dost\\u0119pnych publicznie danych, por\\u00f3wnywanie ich ze sob\\u0105 i wizualizowanie wynik\\u00f3w.  W efekcie powsta\\u0142 zar\\u00f3wno dla amator\\u00f3w, jak i profesjonalist\\u00f3w. Na mapie Polski mo\\u017cna zobaczy\\u0107 r\\u00f3\\u017cnego rodzaju dane statystyczne. Te same dane mo\\u017cna wygenerowa\\u0107 w postaci wykres\\u00f3w (rozk\\u0142ad, korelacja, dynamika i ranking), zestawia\\u0107 ze sob\\u0105, a tak\\u017ce prze\\u015bledzi\\u0107 interesuj\\u0105ce nas zjawiska w czasie.  Dzi\\u0119ki naszej pracy bardzo skomplikowany i precyzyjny mechanizm statystyczny zosta\\u0142 przedstawiony w postaci przyjaznych wizualizacji.</p>"}, "id": "61a219cf-d7b3-43da-8f0f-7df52efb15ca"}]	[]	155
\.


--
-- Data for Name: main_subpagemetric; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_subpagemetric (id, sort_order, value, value_pl, value_en, property_name, property_name_pl, property_name_en, icon_id, page_id) FROM stdin;
1	0	Tech	Tech	\N	iOS, Android	iOS, Android	\N	\N	41
3	1	Klient	Klient	\N	Instytut Łączności, MPiT, gmina Skawina	Instytut Łączności, MPiT, gmina Skawina	\N	\N	41
4	2	Kompetencje	Kompetencje	\N	UX design, Badania i Rozwój, Architektura IT	UX design, Badania i Rozwój, Architektura IT	\N	\N	41
\.


--
-- Data for Name: projects_projectmetric; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_projectmetric (id, sort_order, value, property_name, project_id) FROM stdin;
39	0	Klient	Banki Żywności, Uniwersyteckie Centrum Wolontariatu	54
9	0	Opieka merytoryczna, działania	zakres prac	43
40	1	ROK	2015	54
36	0	KLIENT	Stowarzyszenie Klon/Jawor	53
37	1	WSPÓŁPRACA	Logotomia - grafika	53
38	2	KOMPETENCJE	Aplikacje Analiza danych User Experience	53
41	2	KOMPETENCJE	Aplikacje Badania i rozwój Analiza danych UX	54
32	0	KLIENT	Fundacja Ius Medicinae	51
33	1	ZESPÓŁ	projektant danych, programista	51
34	2	ROK	2016	51
28	0	KLIENT	Projekt własny	50
29	1	ROK	2015	50
30	2	PARTNER	Fundacja Orange, Fundacja highlight/inaczej	50
31	3	KOMPETENCJE	Badania i rozwój Analiza danych	50
60	0	KLIENT	Dom Spotkań z Historią	61
61	1	KOMPETENCJE	User Experience	61
62	0	KLIENT	Dominikanie	62
49	0	KLIENT	Virgin Mobile	57
4	0	3	miesięczny okres badawczy	32
50	1	ROK	2016	57
51	2	KOMPETENCJE	Doradztwo IT User Experience	57
63	1	ZESPÓŁ	UX	62
64	2	KOMPETENCJE	User Experience	62
65	0	KLIENT	Biblioteka Narodowa	63
66	1	ROK	2012	63
67	2	WSPÓŁPRACA	podpunkt - grafika	63
68	3	KOMPETENCJE	Aplikacje User Experience	63
69	0	KLIENT	PayU	64
70	1	ZESPÓŁ	2 UXów, projektant, 4 badaczy	64
71	2	CZAS	1 miesiąc	64
72	3	ROK	2016	64
35	3	KOMPETENCJE	Aplikacje Analiza danych	51
5	0	11	miesięcy intensywnych prac merytorycznych	39
6	1	50	zinwentaryzowanych budynków podczas pilotażu	39
42	0	KLIENT	Biblioteka Narodowa, Instytut Książki	55
43	1	ROK	2014	55
44	2	WSPÓŁPRACA	Huncwot - grafika	55
45	3	KOMPETENCJE	Aplikacje Analiza danych Doradztwo IT UX	55
7	2	6	warsztatów wydobywczych	39
8	3	20 min	zbieranie danych on-line w krótkim czasie	39
15	0	klient	NCK, Ministerstwo Kultury i Dziedzictwa Narodowego	46
19	0	Klient	Biblioteka Narodowa	47
10	1	Ministerstwo Cyfryzacji	klient	43
11	2	strona	http://www.hackathon.gov.pl	43
12	3	1,5	miesiąca	43
20	1	Czas trwania	2014 – 2015	47
21	2	Partnerzy	NASK, Huncwot	47
22	3	Kompetencje	Aplikacje, Badania i Rozwój, Analiza danych, Doradztwo IT, UX	47
13	4	2016	rok	43
14	5	Analiza danych	kompetencje	43
46	0	KLIENT	Eurozine	56
47	1	ROK	2016-2017	56
48	2	KOMPETENCJE	Aplikacje User Experience	56
52	0	KLIENT	Narodowe Centrum Kultury	58
53	1	ROK	2015	58
54	2	PARTNER	s360	58
55	3	KOMPETENCJE	Aplikacje UX	58
56	0	KLIENT	Pomorski Park Naukowo-Technologiczny	60
57	1	ROK	2014	60
58	2	WSPÓŁPRACA	Super Super - grafika	60
59	3	KOMPETENCJE	User Experience	60
73	4	PARTNER	beginning | creative collaboration agency	64
74	5	KOMPETENCJE	Badania i rozwój Doradztwo IT User Experience	64
75	0	KLIENT	Fundacja Rozwoju Dzieci	65
76	1	ZESPÓŁ	UX, 2 programistów, graf	65
77	2	CZAS	4 miesiące	65
78	3	ROK	2016	65
79	4	KOMPETENCJE	User Experience	65
80	0	KLIENT	Stowarzyszenie Klon / Jawor	66
81	1	ROK	2015-2016	66
82	2	KOMPETENCJE	Badania i rozwój Doradztwo IT	66
83	0	KLIENT	Fundacja Res Publica	67
84	1	KOMPETENCJE	Aplikacje User Experience	67
85	0	KLIENT	Centrum Sztuki Współczesnej	68
86	1	ROK	2015	68
87	2	KOMPETENCJE	User Experience	68
88	0	KLIENT	Pracownia Badań i Innowacji Społecznych STOCZNIA	69
89	1	ROK	2012	69
90	2	KOMPETENCJE	Aplikacje User Experience	69
91	0	KLIENT	Stowarzyszenie Animacji Kultury Heksa	70
92	1	ROK	2014-2015	70
93	2	KOMPETENCJE	Aplikacje Badania i rozwój User Experience	70
94	0	KLIENT	Centrum Literatury Dziecięcej w Oświęcimiu	71
95	1	ROK	2015	71
96	2	KOMPETENCJE	User Experience	71
16	1	strona	http://www.kulturadostepna.pl	46
17	2	rok	2015	46
18	3	kompetencje	Aplikacje Analiza danych User Experience	46
23	0	KLIENT	Orange Polska	49
24	1	ZESPÓŁ	UX, badacz, projektant, specjalista ds. promocji	49
25	2	CZAS	7 miesięcy	49
26	3	ROK	2014	49
27	4	KOMPETENCJE	Badania i rozwój Analiza danych	49
\.


--
-- Data for Name: projects_projectpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_projectpage (page_ptr_id, subtitle, subtitle_en, subtitle_pl, challenge, challenge_en, challenge_pl, process, process_en, process_pl, quote, quote_en, quote_pl, self_initiated, image_id, icon_id, short_name, background_image_id, project_url, masonry_featured_x, masonry_featured_y, masonry_title_dark, masonry_featured_mobile, quote_author) FROM stdin;
33	Interaktywny magazyn cyfrowy zbierający informację o innowacyjnych: liderach, produktach i rozwiązaniach z Europy Środkowo-wschodniej.	\N	Interaktywny magazyn cyfrowy zbierający informację o innowacyjnych: liderach, produktach i rozwiązaniach z Europy Środkowo-wschodniej.	[{"type": "text", "value": "<p>Chcemy, aby ka\\u017cdy m\\u00f3g\\u0142 pozna\\u0107 wszystkie odcienie rewolucji technologicznej, kt\\u00f3ra ma miejsce w Europie \\u015arodkowej i Wschodniej.</p>", "id": "8a592292-21c5-4890-8062-0085ea2afc6f"}]	[]	[{"type": "text", "value": "<p>Chcemy, aby ka\\u017cdy m\\u00f3g\\u0142 pozna\\u0107 wszystkie odcienie rewolucji technologicznej, kt\\u00f3ra ma miejsce w Europie \\u015arodkowej i Wschodniej.</p>", "id": "8a592292-21c5-4890-8062-0085ea2afc6f"}]	[{"type": "tiles_list", "value": [], "id": "ebff1540-48ae-4426-9f9c-21bce7287079"}]	[]	[{"type": "tiles_list", "value": [], "id": "ebff1540-48ae-4426-9f9c-21bce7287079"}]	<p>Dare to dive deeper.</p>		<p>Dare to dive deeper.</p>	t	\N	\N		142		f	f	f	f	<p>Nestor Kaszycki, Editor-in chief</p>
34	RODOpass to pierwsze w Polsce narzędzie cyfrowe w pełni wspierające przedsiębiorców w obszarze RODO.	\N	RODOpass to pierwsze w Polsce narzędzie cyfrowe w pełni wspierające przedsiębiorców w obszarze RODO.	[{"type": "text", "value": "Celem RODOpass jest u\\u0142atwienie wdro\\u017cenia i zarz\\u0105dzenia RODO, adekwatnego do potrzeb ka\\u017cdej firmy. \\u0141\\u0105cz\\u0105c kompetencje techniczne i\\u00a0prawne przygotowali\\u015bmy proste rozwi\\u0105zania technologiczne dla ma\\u0142ych oraz\\u00a0\\u015brednich przedsi\\u0119biorc\\u00f3w, a\\u00a0dla du\\u017cych firm i\\u00a0przedsi\\u0119biorc\\u00f3w, wymagaj\\u0105cych indywidualnego podej\\u015bcia, proponujemy us\\u0142ug\\u0119 wynajmu zewn\\u0119trznego IODO.</p>", "id": "e68405e7-f562-42cf-ab6d-272fe8ed9d99"}]	[]	[{"type": "text", "value": "Celem RODOpass jest u\\u0142atwienie wdro\\u017cenia i zarz\\u0105dzenia RODO, adekwatnego do potrzeb ka\\u017cdej firmy. \\u0141\\u0105cz\\u0105c kompetencje techniczne i\\u00a0prawne przygotowali\\u015bmy proste rozwi\\u0105zania technologiczne dla ma\\u0142ych oraz\\u00a0\\u015brednich przedsi\\u0119biorc\\u00f3w, a\\u00a0dla du\\u017cych firm i\\u00a0przedsi\\u0119biorc\\u00f3w, wymagaj\\u0105cych indywidualnego podej\\u015bcia, proponujemy us\\u0142ug\\u0119 wynajmu zewn\\u0119trznego IODO.</p>", "id": "e68405e7-f562-42cf-ab6d-272fe8ed9d99"}]	[{"type": "tiles_list", "value": [], "id": "b8e1331b-ee20-443f-8203-1ffb4732eb36"}]	[]	[{"type": "tiles_list", "value": [], "id": "b8e1331b-ee20-443f-8203-1ffb4732eb36"}]	<p>To narzędzie pokazało nam jak bezboleśnie dostosować procedury do RODO w naszej organizacji. Wygenerowany raport krok po kroku opisuje działania, które musieliśmy podjąć w temacie bezpieczeństwa danych osobowych i ich przetwarzania.</p>		<p>To narzędzie pokazało nam jak bezboleśnie dostosować procedury do RODO w naszej organizacji. Wygenerowany raport krok po kroku opisuje działania, które musieliśmy podjąć w temacie bezpieczeństwa danych osobowych i ich przetwarzania.</p>	t	\N	\N		143		t	t	t	t	<p>Magdalena Szymalak, Wiceprezeska stowarzyszenia Voces Gaudii</p>
49		\N	\N	[{"type": "text", "value": "Jak aktywizowa\\u0107 i edukowa\\u0107 senior\\u00f3w, kt\\u00f3rzy korzystaj\\u0105 z internetu? \\u2013 takie pytanie zadawali\\u015bmy sobie podczas realizowania projektu badawczo-rozwojowego \\u201eW sile wieku\\u201d realizowanego we wsp\\u00f3\\u0142pracy z Orange Polska. G\\u0142\\u00f3wnym celem by\\u0142o stworzenie modelu edukacji cyfrowej os\\u00f3b w wieku 65+.  \\u017beby sprawdzi\\u0107 co skutecznie zach\\u0119ca starszych do korzystania z sieci, przeprowadzali\\u015bmy badania jako\\u015bciowe, zorganizowali\\u015bmy warsztaty z seniorami i rozmawiali\\u015bmy z pracownikami firmy Orange o ich w\\u0142asnych do\\u015bwiadczeniach w kontakcie z osobami w starszym wieku. Przeanalizowali\\u015bmy te\\u017c dost\\u0119pne publikacje, w tym dokumenty firmy Orange, co pozwoli\\u0142o nam na wykorzystanie wiedzy z wcze\\u015bniejszych dzia\\u0142a\\u0144.  Po przeprowadzeniu bada\\u0144 i warsztat\\u00f3w oraz analizie wynik\\u00f3w, stworzyli\\u015bmy prototyp narz\\u0119dzia do edukacji cyfrowej, kt\\u00f3re u\\u0142atwia osobom starszym poruszanie si\\u0119 po sieci. Dzi\\u0119ki niemu mog\\u0105 w \\u0142atwiejszy spos\\u00f3b nabiera\\u0107 cyfrowych kompetencji i uczy\\u0107 si\\u0119 samodzielnego korzystania z nowych technologii. Opr\\u00f3cz prototypu efektem naszych dzia\\u0142a\\u0144 by\\u0142o stworzenie kompleksowej, bie\\u017c\\u0105cej i uporz\\u0105dkowanej bazy wiedzy dotycz\\u0105cej senior\\u00f3w w kontek\\u015bcie technologii wed\\u0142ug materia\\u0142\\u00f3w Orange Polska oraz zewn\\u0119trznych opracowa\\u0144, jak r\\u00f3wnie\\u017c opracowanie rekomendacji dotycz\\u0105cych komunikacji z osobami starszymi.", "id": "899e8c0d-821a-40af-9c37-85c72bfbb437"}]	[]	[{"type": "text", "value": "Jak aktywizowa\\u0107 i edukowa\\u0107 senior\\u00f3w, kt\\u00f3rzy korzystaj\\u0105 z internetu? \\u2013 takie pytanie zadawali\\u015bmy sobie podczas realizowania projektu badawczo-rozwojowego \\u201eW sile wieku\\u201d realizowanego we wsp\\u00f3\\u0142pracy z Orange Polska. G\\u0142\\u00f3wnym celem by\\u0142o stworzenie modelu edukacji cyfrowej os\\u00f3b w wieku 65+.  \\u017beby sprawdzi\\u0107 co skutecznie zach\\u0119ca starszych do korzystania z sieci, przeprowadzali\\u015bmy badania jako\\u015bciowe, zorganizowali\\u015bmy warsztaty z seniorami i rozmawiali\\u015bmy z pracownikami firmy Orange o ich w\\u0142asnych do\\u015bwiadczeniach w kontakcie z osobami w starszym wieku. Przeanalizowali\\u015bmy te\\u017c dost\\u0119pne publikacje, w tym dokumenty firmy Orange, co pozwoli\\u0142o nam na wykorzystanie wiedzy z wcze\\u015bniejszych dzia\\u0142a\\u0144.  Po przeprowadzeniu bada\\u0144 i warsztat\\u00f3w oraz analizie wynik\\u00f3w, stworzyli\\u015bmy prototyp narz\\u0119dzia do edukacji cyfrowej, kt\\u00f3re u\\u0142atwia osobom starszym poruszanie si\\u0119 po sieci. Dzi\\u0119ki niemu mog\\u0105 w \\u0142atwiejszy spos\\u00f3b nabiera\\u0107 cyfrowych kompetencji i uczy\\u0107 si\\u0119 samodzielnego korzystania z nowych technologii. Opr\\u00f3cz prototypu efektem naszych dzia\\u0142a\\u0144 by\\u0142o stworzenie kompleksowej, bie\\u017c\\u0105cej i uporz\\u0105dkowanej bazy wiedzy dotycz\\u0105cej senior\\u00f3w w kontek\\u015bcie technologii wed\\u0142ug materia\\u0142\\u00f3w Orange Polska oraz zewn\\u0119trznych opracowa\\u0144, jak r\\u00f3wnie\\u017c opracowanie rekomendacji dotycz\\u0105cych komunikacji z osobami starszymi.", "id": "899e8c0d-821a-40af-9c37-85c72bfbb437"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 152}], "id": "0cec7862-8d57-425b-8719-80419192c1d9"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 152}], "id": "0cec7862-8d57-425b-8719-80419192c1d9"}]	<p>-</p>		<p>-</p>	f	\N	152		\N		f	f	f	f	<p>-</p>
54		\N	\N	[{"type": "text", "value": "Czasami pomoc nie dociera tam, gdzie jest najbardziej potrzebna, mimo \\u017ce nie brakuje ch\\u0119tnych r\\u0105k do jej udzielania. W jaki spos\\u00f3b u\\u0142atwi\\u0107 niesienie pomocy tym, kt\\u00f3rzy chc\\u0105 to robi\\u0107?  Razem z Federacj\\u0105 Polskich Bank\\u00f3w \\u017bywno\\u015bci i Uniwersytetem Warszawskim stworzyli\\u015bmy aplikacj\\u0119 cyfrow\\u0105, kt\\u00f3ra pozwala na koordynacj\\u0119 i raportowanie zbi\\u00f3rek \\u017cywno\\u015bci w bankach \\u017cywno\\u015bci w ca\\u0142ej Polsce. Ta sama aplikacja umo\\u017cliwia jednocze\\u015bnie zarz\\u0105dzanie wolontariuszami oferuj\\u0105cymi swoj\\u0105 pomoc. System rejestruje u\\u017cytkownik\\u00f3w-wolontariuszy i w zale\\u017cno\\u015bci od potrzeb konkretnej instytucji zapisuje po\\u017c\\u0105dane kryteria, kwalifikacje, obszary dzia\\u0142ania i dost\\u0119pno\\u015b\\u0107. Jednocze\\u015bnie umo\\u017cliwia organizatorom akcji wolontarystycznych sprawne wyszukiwanie i rekrutowanie ch\\u0119tnych do pomocy os\\u00f3b.  Efektem naszych wielomiesi\\u0119cznych bada\\u0144, prac z zakresu UX i projektowania graficznego s\\u0105 gotowe komponenty przeznaczone dla instytucji szukaj\\u0105cych wolontariuszy. Ka\\u017cda organizacja mo\\u017ce je dowolnie wykorzystywa\\u0107.", "id": "8b5bec7d-d757-400a-a887-3451e0474fb9"}]	[]	[{"type": "text", "value": "Czasami pomoc nie dociera tam, gdzie jest najbardziej potrzebna, mimo \\u017ce nie brakuje ch\\u0119tnych r\\u0105k do jej udzielania. W jaki spos\\u00f3b u\\u0142atwi\\u0107 niesienie pomocy tym, kt\\u00f3rzy chc\\u0105 to robi\\u0107?  Razem z Federacj\\u0105 Polskich Bank\\u00f3w \\u017bywno\\u015bci i Uniwersytetem Warszawskim stworzyli\\u015bmy aplikacj\\u0119 cyfrow\\u0105, kt\\u00f3ra pozwala na koordynacj\\u0119 i raportowanie zbi\\u00f3rek \\u017cywno\\u015bci w bankach \\u017cywno\\u015bci w ca\\u0142ej Polsce. Ta sama aplikacja umo\\u017cliwia jednocze\\u015bnie zarz\\u0105dzanie wolontariuszami oferuj\\u0105cymi swoj\\u0105 pomoc. System rejestruje u\\u017cytkownik\\u00f3w-wolontariuszy i w zale\\u017cno\\u015bci od potrzeb konkretnej instytucji zapisuje po\\u017c\\u0105dane kryteria, kwalifikacje, obszary dzia\\u0142ania i dost\\u0119pno\\u015b\\u0107. Jednocze\\u015bnie umo\\u017cliwia organizatorom akcji wolontarystycznych sprawne wyszukiwanie i rekrutowanie ch\\u0119tnych do pomocy os\\u00f3b.  Efektem naszych wielomiesi\\u0119cznych bada\\u0144, prac z zakresu UX i projektowania graficznego s\\u0105 gotowe komponenty przeznaczone dla instytucji szukaj\\u0105cych wolontariuszy. Ka\\u017cda organizacja mo\\u017ce je dowolnie wykorzystywa\\u0107.", "id": "8b5bec7d-d757-400a-a887-3451e0474fb9"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 156}], "id": "e581d445-7b73-4f05-8bed-1c5dda026b7f"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 156}], "id": "e581d445-7b73-4f05-8bed-1c5dda026b7f"}]	<p>-</p>		<p>-</p>	f	\N	156		\N		f	f	t	f	<p>-</p>
57		\N	\N	[{"type": "text", "value": "STRONA VIRGIN MOBILE Tysi\\u0105ce rozm\\u00f3w z osobami z Centrum Mi\\u0142ej Obs\\u0142ugi Klienta CMOK, setki godzin sp\\u0119dzonych na analizowaniu, jak u\\u017cytkownik porusza si\\u0119 po stronie i kilka miesi\\u0119cy wywiad\\u00f3w z pracownikami infolinii na temat najcz\\u0119\\u015bciej s\\u0142yszanych przez nich pyta\\u0144. A wszystko po to, \\u017ceby by\\u0142o pro\\u015bciej.  Wywiady, rozmowy i badania poprzedzi\\u0142y projekt strony. Na podstawie zidentyfikowanych problem\\u00f3w, zaprojektowali\\u015bmy stron\\u0119 tak, by droga u\\u017cytkownika od zdefiniowania problemu, z jakim zg\\u0142asza si\\u0119 do operatora, do rozwi\\u0105zania sprawy by\\u0142a mo\\u017cliwie kr\\u00f3tka i prosta. Dzi\\u0119ki naszym rozwi\\u0105zaniom, osoby korzystaj\\u0105ce z serwisu nie gubi\\u0105 si\\u0119 w nat\\u0142oku kategorii i szybko uzyskuj\\u0105 pomoc.", "id": "ecd1424e-e346-4277-830c-c25795ca204b"}]	[]	[{"type": "text", "value": "STRONA VIRGIN MOBILE Tysi\\u0105ce rozm\\u00f3w z osobami z Centrum Mi\\u0142ej Obs\\u0142ugi Klienta CMOK, setki godzin sp\\u0119dzonych na analizowaniu, jak u\\u017cytkownik porusza si\\u0119 po stronie i kilka miesi\\u0119cy wywiad\\u00f3w z pracownikami infolinii na temat najcz\\u0119\\u015bciej s\\u0142yszanych przez nich pyta\\u0144. A wszystko po to, \\u017ceby by\\u0142o pro\\u015bciej.  Wywiady, rozmowy i badania poprzedzi\\u0142y projekt strony. Na podstawie zidentyfikowanych problem\\u00f3w, zaprojektowali\\u015bmy stron\\u0119 tak, by droga u\\u017cytkownika od zdefiniowania problemu, z jakim zg\\u0142asza si\\u0119 do operatora, do rozwi\\u0105zania sprawy by\\u0142a mo\\u017cliwie kr\\u00f3tka i prosta. Dzi\\u0119ki naszym rozwi\\u0105zaniom, osoby korzystaj\\u0105ce z serwisu nie gubi\\u0105 si\\u0119 w nat\\u0142oku kategorii i szybko uzyskuj\\u0105 pomoc.", "id": "ecd1424e-e346-4277-830c-c25795ca204b"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 159}], "id": "dee2b481-ebac-4b95-ac48-d85d152e542e"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 159}], "id": "dee2b481-ebac-4b95-ac48-d85d152e542e"}]	<p>-</p>		<p>-</p>	f	\N	159		\N		t	t	t	t	<p>-</p>
45		\N	\N	[{"type": "text", "value": "Sonar to serwis, kt\\u00f3rego celem jest przybli\\u017cenie polityki ludziom i pokazanie, jak wp\\u0142ywa na ich \\u017cycie. To tak\\u017ce innowacyjny serwis internetowy \\u0142\\u0105cz\\u0105cy newsy z funkcjonalno\\u015bciami anga\\u017cuj\\u0105cymi czytelnika w zupe\\u0142nie nowy spos\\u00f3b. Sonar pokazuje jak media mog\\u0105 odpowiada\\u0107 na trendy takie, jak dziennikarstwo oparte na danych, tre\\u015bci tworzone przez u\\u017cytkownik\\u00f3w i budowanie spo\\u0142eczno\\u015bci, big data i personalizacja oraz interaktywno\\u015b\\u0107 i korzystanie z danych publicznych.  To przyk\\u0142ad data-driven publishing, czyli serwisu wydawanego w oparciu o dane.    Projekt prowadzony w partnerstwie z wyborcza.pl oznacza, \\u017ce byli\\u015bmy obecni na ka\\u017cdym jego etapie \\u2013 od pomys\\u0142u, przez projektowanie, UX, kodowanie oraz analiz\\u0119 danych oraz opracowanie strategii biznesowej i marketingowej. Na ka\\u017cdym z nich pracowali\\u015bmy wsp\\u00f3lnie z zespo\\u0142em Gazety Wyborczej \\u2013 razem projektuj\\u0105c serwis, ale te\\u017c anga\\u017cuj\\u0105c zesp\\u00f3\\u0142 programist\\u00f3w z wyborcza.pl. Dzi\\u0119ki temu powsta\\u0142 serwis nowoczesny, ale i w pe\\u0142ni zintegrowany z systemami IT oraz marketingowymi Agory.     Z CZEGO SK\\u0141ADA SI\\u0118 SONAR? Dynamiczny newsfeed Newsfeed \\u0142\\u0105cz\\u0105cy artyku\\u0142y przygotowane przez dziennikarzy Sonara oraz data-driven publishing  Profile polityk\\u00f3w Rozbudowane profile z biografi\\u0105 polityka, jego aktywno\\u015bci\\u0105 w parlamencie, social media i popularno\\u015bci\\u0105  Tematy Tre\\u015bci z Gazety Wyborczej podzielone wg meta-tag\\u00f3w na tematy i notyfikacje o nowych artyku\\u0142ach dotycz\\u0105cych tego, co interesuje czytelnika  Tw\\u00f3j polityczny profil Pokazanie zgodno\\u015bci pogl\\u0105d\\u00f3w z partiami \\u2013 na podstawie odpowiedzi udzielonych w sondach  Personalizacja Dobieranie tre\\u015bci interesuj\\u0105cych dla czytelnika, bez efektu ba\\u0144ki informacyjnej  Elementy spo\\u0142eczno\\u015bciowe Udost\\u0119pnienie swojego profilu i znajdowanie czytelnik\\u00f3w o podobnych zainteresowaniach politycznych  Wizualizacje Interaktywne narz\\u0119dzia do wizualizacji danych  SONAR TO M.IN.: #projektowanie  \\u2013 Google Design Sprinty \\u2013 podczas prac nad rozwojem kolejnych funkcji strony wykorzystywali\\u015bmy metod\\u0119 Google Design Sprint. Kilkudniowe, bardzo intensywne warsztaty z tw\\u00f3rcami serwisu i u\\u017cytkownikami, kt\\u00f3re pozwalaj\\u0105 szybko stworzy\\u0107 makiety serwisu odpowiadaj\\u0105ce potrzebom tw\\u00f3rc\\u00f3w i docelowych odbiorc\\u00f3w  #zarz\\u0105dzanie  \\u2013 Scrum w praktyce \\u2013 iteracyjno\\u015b\\u0107, praca w sprintach (cotygodniowych blokach) pozwoli\\u0142a na regularne zmiany i poprawki w serwisie. Tak\\u017ce dzi\\u0119ki zwinno\\u015bci pierwsz\\u0105 wersj\\u0119 serwisu (wy\\u0142\\u0105cznie w formie mobile i bez docelowej grafiki) opublikowali\\u015bmy 6 miesi\\u0119cy przed oficjaln\\u0105 premier\\u0105  #technologie  \\u2013 Unikalny dost\\u0119p do API Google Trends pokazuj\\u0105cy popularno\\u015b\\u0107 polityk\\u00f3w. Jego wyj\\u0105tkowo\\u015b\\u0107 polega na dost\\u0119pie do API oraz uzupe\\u0142nieniu zapyta\\u0144 o modu\\u0142 \\u201cweryfikacyjny\\u201d tj. dodaj\\u0105cy do zapytania s\\u0142owa referencyjne, dzi\\u0119ki czemu dane s\\u0105 mo\\u017cliwe do por\\u00f3wnania  \\u2013 Integracja danych ze \\u017cr\\u00f3de\\u0142 zewn\\u0119trznych i wewn\\u0119trznych wyborcza.pl \\u2013 Sonar to dane m.in. ze stron Sejmu, Senatu, MamPrawoWiedziec.pl, Facebooka, Twittera, Krajowego Rejestru Sp\\u00f3\\u0142ek i archiwum wyborcza.pl. Pozyskujemy je (i pilnujemy aktualno\\u015bci) poprzez boty i wykorzystanie API, kt\\u00f3rych status, spos\\u00f3b dzia\\u0142ania na bie\\u017c\\u0105co mo\\u017cna podgl\\u0105da\\u0107 i testowa\\u0107 w wewn\\u0119trznym systemie  \\u2013 Automatyczny eksport pobranych danych dla administrator\\u00f3w i redaktor\\u00f3w w formacie CSV  \\u2013 Aplikacja PoDane \\u2013 narz\\u0119dzie dla redaktor\\u00f3w \\u2013 DataStorage \\u2013 wewn\\u0119trzna baza z danymi, kt\\u00f3re redaktorzy wyborcza.pl mog\\u0105 wykorzysta\\u0107 w codziennej pracy nad artyku\\u0142ami  \\u2013 System personalizacji \\u2013 na podstawie obserwowanych temat\\u00f3w, odpowiedzi w quizach i sondach umieszczonych w serwisie i innych stronach Wyborczej, system \\u201cpodpowiada\\u201d u\\u017cytkownikowi interesuj\\u0105ce dla niego tre\\u015bci, a tak\\u017ce pozwala na analiz\\u0119 w\\u0142asnych odpowiedzi i preferencji politycznych.  \\u2013 Frontend i backend serwisu komunikuje si\\u0119 jedynie poprzez API, co pozwala na dowolne prace zwi\\u0105zane z layoutem serwisu bez wp\\u0142ywu na zawarte w nim tre\\u015bci lub odwrotnie \\u2013 prace nad backendem bez zmiany wygl\\u0105du strony.        Projekt powsta\\u0142 w ramach funduszu Google Digital News Initiative, kt\\u00f3ry zosta\\u0142 stworzony po to, \\u017ceby wspiera\\u0107 media i nowoczesne dziennikarstwo.", "id": "4cb300e9-8a50-44ed-ad51-94542fd7e7a7"}]	[]	[{"type": "text", "value": "Sonar to serwis, kt\\u00f3rego celem jest przybli\\u017cenie polityki ludziom i pokazanie, jak wp\\u0142ywa na ich \\u017cycie. To tak\\u017ce innowacyjny serwis internetowy \\u0142\\u0105cz\\u0105cy newsy z funkcjonalno\\u015bciami anga\\u017cuj\\u0105cymi czytelnika w zupe\\u0142nie nowy spos\\u00f3b. Sonar pokazuje jak media mog\\u0105 odpowiada\\u0107 na trendy takie, jak dziennikarstwo oparte na danych, tre\\u015bci tworzone przez u\\u017cytkownik\\u00f3w i budowanie spo\\u0142eczno\\u015bci, big data i personalizacja oraz interaktywno\\u015b\\u0107 i korzystanie z danych publicznych.  To przyk\\u0142ad data-driven publishing, czyli serwisu wydawanego w oparciu o dane.    Projekt prowadzony w partnerstwie z wyborcza.pl oznacza, \\u017ce byli\\u015bmy obecni na ka\\u017cdym jego etapie \\u2013 od pomys\\u0142u, przez projektowanie, UX, kodowanie oraz analiz\\u0119 danych oraz opracowanie strategii biznesowej i marketingowej. Na ka\\u017cdym z nich pracowali\\u015bmy wsp\\u00f3lnie z zespo\\u0142em Gazety Wyborczej \\u2013 razem projektuj\\u0105c serwis, ale te\\u017c anga\\u017cuj\\u0105c zesp\\u00f3\\u0142 programist\\u00f3w z wyborcza.pl. Dzi\\u0119ki temu powsta\\u0142 serwis nowoczesny, ale i w pe\\u0142ni zintegrowany z systemami IT oraz marketingowymi Agory.     Z CZEGO SK\\u0141ADA SI\\u0118 SONAR? Dynamiczny newsfeed Newsfeed \\u0142\\u0105cz\\u0105cy artyku\\u0142y przygotowane przez dziennikarzy Sonara oraz data-driven publishing  Profile polityk\\u00f3w Rozbudowane profile z biografi\\u0105 polityka, jego aktywno\\u015bci\\u0105 w parlamencie, social media i popularno\\u015bci\\u0105  Tematy Tre\\u015bci z Gazety Wyborczej podzielone wg meta-tag\\u00f3w na tematy i notyfikacje o nowych artyku\\u0142ach dotycz\\u0105cych tego, co interesuje czytelnika  Tw\\u00f3j polityczny profil Pokazanie zgodno\\u015bci pogl\\u0105d\\u00f3w z partiami \\u2013 na podstawie odpowiedzi udzielonych w sondach  Personalizacja Dobieranie tre\\u015bci interesuj\\u0105cych dla czytelnika, bez efektu ba\\u0144ki informacyjnej  Elementy spo\\u0142eczno\\u015bciowe Udost\\u0119pnienie swojego profilu i znajdowanie czytelnik\\u00f3w o podobnych zainteresowaniach politycznych  Wizualizacje Interaktywne narz\\u0119dzia do wizualizacji danych  SONAR TO M.IN.: #projektowanie  \\u2013 Google Design Sprinty \\u2013 podczas prac nad rozwojem kolejnych funkcji strony wykorzystywali\\u015bmy metod\\u0119 Google Design Sprint. Kilkudniowe, bardzo intensywne warsztaty z tw\\u00f3rcami serwisu i u\\u017cytkownikami, kt\\u00f3re pozwalaj\\u0105 szybko stworzy\\u0107 makiety serwisu odpowiadaj\\u0105ce potrzebom tw\\u00f3rc\\u00f3w i docelowych odbiorc\\u00f3w  #zarz\\u0105dzanie  \\u2013 Scrum w praktyce \\u2013 iteracyjno\\u015b\\u0107, praca w sprintach (cotygodniowych blokach) pozwoli\\u0142a na regularne zmiany i poprawki w serwisie. Tak\\u017ce dzi\\u0119ki zwinno\\u015bci pierwsz\\u0105 wersj\\u0119 serwisu (wy\\u0142\\u0105cznie w formie mobile i bez docelowej grafiki) opublikowali\\u015bmy 6 miesi\\u0119cy przed oficjaln\\u0105 premier\\u0105  #technologie  \\u2013 Unikalny dost\\u0119p do API Google Trends pokazuj\\u0105cy popularno\\u015b\\u0107 polityk\\u00f3w. Jego wyj\\u0105tkowo\\u015b\\u0107 polega na dost\\u0119pie do API oraz uzupe\\u0142nieniu zapyta\\u0144 o modu\\u0142 \\u201cweryfikacyjny\\u201d tj. dodaj\\u0105cy do zapytania s\\u0142owa referencyjne, dzi\\u0119ki czemu dane s\\u0105 mo\\u017cliwe do por\\u00f3wnania  \\u2013 Integracja danych ze \\u017cr\\u00f3de\\u0142 zewn\\u0119trznych i wewn\\u0119trznych wyborcza.pl \\u2013 Sonar to dane m.in. ze stron Sejmu, Senatu, MamPrawoWiedziec.pl, Facebooka, Twittera, Krajowego Rejestru Sp\\u00f3\\u0142ek i archiwum wyborcza.pl. Pozyskujemy je (i pilnujemy aktualno\\u015bci) poprzez boty i wykorzystanie API, kt\\u00f3rych status, spos\\u00f3b dzia\\u0142ania na bie\\u017c\\u0105co mo\\u017cna podgl\\u0105da\\u0107 i testowa\\u0107 w wewn\\u0119trznym systemie  \\u2013 Automatyczny eksport pobranych danych dla administrator\\u00f3w i redaktor\\u00f3w w formacie CSV  \\u2013 Aplikacja PoDane \\u2013 narz\\u0119dzie dla redaktor\\u00f3w \\u2013 DataStorage \\u2013 wewn\\u0119trzna baza z danymi, kt\\u00f3re redaktorzy wyborcza.pl mog\\u0105 wykorzysta\\u0107 w codziennej pracy nad artyku\\u0142ami  \\u2013 System personalizacji \\u2013 na podstawie obserwowanych temat\\u00f3w, odpowiedzi w quizach i sondach umieszczonych w serwisie i innych stronach Wyborczej, system \\u201cpodpowiada\\u201d u\\u017cytkownikowi interesuj\\u0105ce dla niego tre\\u015bci, a tak\\u017ce pozwala na analiz\\u0119 w\\u0142asnych odpowiedzi i preferencji politycznych.  \\u2013 Frontend i backend serwisu komunikuje si\\u0119 jedynie poprzez API, co pozwala na dowolne prace zwi\\u0105zane z layoutem serwisu bez wp\\u0142ywu na zawarte w nim tre\\u015bci lub odwrotnie \\u2013 prace nad backendem bez zmiany wygl\\u0105du strony.        Projekt powsta\\u0142 w ramach funduszu Google Digital News Initiative, kt\\u00f3ry zosta\\u0142 stworzony po to, \\u017ceby wspiera\\u0107 media i nowoczesne dziennikarstwo.", "id": "4cb300e9-8a50-44ed-ad51-94542fd7e7a7"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 150}], "id": "9bd80f62-b552-462a-83e7-b3617427261a"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 150}], "id": "9bd80f62-b552-462a-83e7-b3617427261a"}]	<p>-</p>		<p>-</p>	f	\N	\N		150		f	f	f	f	<p>-</p>
50		\N	\N	[{"type": "text", "value": "Podczas tworzenia i administrowania serwisem Pracowni Orange zebrali\\u015bmy du\\u017co informacji o tym, jak dzia\\u0142aj\\u0105 systemy grywalizacji spo\\u0142ecznej w r\\u00f3\\u017cnych miejscach na \\u015bwiecie. Spotkali\\u015bmy si\\u0119 z wieloma osobami, kt\\u00f3re dzia\\u0142a\\u0142y w tym obszarze i wys\\u0142uchali\\u015bmy licznych relacji uczestnik\\u00f3w. Zgromadzon\\u0105 w ten spos\\u00f3b wiedz\\u0105 postanowili\\u015bmy si\\u0119 podzieli\\u0107 w domenie publicznej.  Dlatego powsta\\u0142 poradnik (dost\\u0119pny tak\\u017ce w wersji drukowanej) wprowadzaj\\u0105cy do zagadnie\\u0144 zwi\\u0105zanych z budow\\u0105 system\\u00f3w grywalizacyjnych. Po pierwsze, zebrali\\u015bmy w nim i opisali\\u015bmy przyk\\u0142ady rozwi\\u0105za\\u0144 grywalizacyjnych z ca\\u0142ego \\u015bwiata. Po drugie, w wersji online przewidzieli\\u015bmy mo\\u017cliwo\\u015b\\u0107 dodania w\\u0142asnego pomys\\u0142u. Po trzecie, stworzyli\\u015bmy i udost\\u0119pnili\\u015bmy arkusz pomagaj\\u0105cy w samodzielnym projektowaniu w\\u0142asnego rozwi\\u0105zania.  Poprzez stron\\u0119 grywalizujemy.pl i sam\\u0105 publikacj\\u0119 chcemy dzieli\\u0107 si\\u0119 w\\u0142asn\\u0105 wiedz\\u0105 i do\\u015bwiadczeniem, wspiera\\u0107 wszystkich ch\\u0119tnych do rozwijania spo\\u0142ecznej grywalizacji, ale jeste\\u015bmy te\\u017c ciekawi nowych pomys\\u0142\\u00f3w i do\\u015bwiadcze\\u0144 innych dzia\\u0142aj\\u0105cych w tej dziedzinie.", "id": "d8b96173-c467-42b3-be61-7e616631c8dc"}]	[]	[{"type": "text", "value": "Podczas tworzenia i administrowania serwisem Pracowni Orange zebrali\\u015bmy du\\u017co informacji o tym, jak dzia\\u0142aj\\u0105 systemy grywalizacji spo\\u0142ecznej w r\\u00f3\\u017cnych miejscach na \\u015bwiecie. Spotkali\\u015bmy si\\u0119 z wieloma osobami, kt\\u00f3re dzia\\u0142a\\u0142y w tym obszarze i wys\\u0142uchali\\u015bmy licznych relacji uczestnik\\u00f3w. Zgromadzon\\u0105 w ten spos\\u00f3b wiedz\\u0105 postanowili\\u015bmy si\\u0119 podzieli\\u0107 w domenie publicznej.  Dlatego powsta\\u0142 poradnik (dost\\u0119pny tak\\u017ce w wersji drukowanej) wprowadzaj\\u0105cy do zagadnie\\u0144 zwi\\u0105zanych z budow\\u0105 system\\u00f3w grywalizacyjnych. Po pierwsze, zebrali\\u015bmy w nim i opisali\\u015bmy przyk\\u0142ady rozwi\\u0105za\\u0144 grywalizacyjnych z ca\\u0142ego \\u015bwiata. Po drugie, w wersji online przewidzieli\\u015bmy mo\\u017cliwo\\u015b\\u0107 dodania w\\u0142asnego pomys\\u0142u. Po trzecie, stworzyli\\u015bmy i udost\\u0119pnili\\u015bmy arkusz pomagaj\\u0105cy w samodzielnym projektowaniu w\\u0142asnego rozwi\\u0105zania.  Poprzez stron\\u0119 grywalizujemy.pl i sam\\u0105 publikacj\\u0119 chcemy dzieli\\u0107 si\\u0119 w\\u0142asn\\u0105 wiedz\\u0105 i do\\u015bwiadczeniem, wspiera\\u0107 wszystkich ch\\u0119tnych do rozwijania spo\\u0142ecznej grywalizacji, ale jeste\\u015bmy te\\u017c ciekawi nowych pomys\\u0142\\u00f3w i do\\u015bwiadcze\\u0144 innych dzia\\u0142aj\\u0105cych w tej dziedzinie.", "id": "d8b96173-c467-42b3-be61-7e616631c8dc"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 153}], "id": "b2b90632-6cf8-4257-b67d-7575d5a87bed"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 153}], "id": "b2b90632-6cf8-4257-b67d-7575d5a87bed"}]	<p>-</p>		<p>-</p>	f	\N	153		\N	http://www.grywalizujemy.pl/	f	f	t	f	<p>-</p>
43	30 godzin pracy programistów do tego dane zbierane przez instytucje publiczne i efekt jest piorunujący.	\N	30 godzin pracy programistów do tego dane zbierane przez instytucje publiczne i efekt jest piorunujący.	[{"type": "text", "value": "30 godzin pracy programist\\u00f3w do tego dane zbierane przez instytucje publiczne i efekt jest piorunuj\\u0105cy.", "id": "45c8c5be-e18d-4bbd-bc2c-88b8cf39446a"}, {"type": "text", "value": "90 OS\\u00d3B W 17 ZESPO\\u0141ACH TWORZY\\u0141O PRZEZ WEEKEND APLIKACJE WYKORZYSTUJ\\u0104CE DANE PUBLICZNE", "id": "6fd29fd5-0525-4fbd-8f16-77f05e344f61"}, {"type": "text", "value": "i walczy\\u0142o o nagrody o \\u0142\\u0105cznej puli ponad 50 tys. z\\u0142. Trzy zwyci\\u0119skie projekty zostan\\u0105 wdro\\u017cone.  Prototypy aplikacji to nie jedyny efekt pierwszego w Polsce rz\\u0105dowego Hackathonu danych publicznych. Ministerstwo Cyfryzacji potraktowa\\u0142o bowiem wydarzenie r\\u00f3wnie\\u017c jako warsztat dla samej administracji. Praca programist\\u00f3w pozwoli\\u0142a na praktyczn\\u0105 weryfikacj\\u0119 jako\\u015bci i sposobu udost\\u0119pniania danych przez instytucje publiczne. Chodzi o to, by do\\u015bwiadczenia uczestnik\\u00f3w, trudno\\u015bci, na jakie si\\u0119 natkn\\u0119li przy korzystaniu z danych publicznych czy inne braki przeku\\u0107 w konkretne dzia\\u0142ania naprawcze Ministerstwa Cyfryzacji i innych resort\\u00f3w.  Opr\\u00f3cz organizacji samego wydarzenia, nasz\\u0105 odpowiedzialno\\u015bci\\u0105 by\\u0142o", "id": "db34f455-3860-4c9a-8c57-d123d186684c"}, {"type": "text", "value": "OPRACOWANIE I ANALIZA API BAZ DANYCH,", "id": "9be16bb7-b716-43e8-a8b1-4a71c1988d4c"}, {"type": "text", "value": "kt\\u00f3re sw\\u0105 premier\\u0119 podczas Hackathonu, ich zaopiniowanie oraz przygotowanie opracowania dla uczestnik\\u00f3w, w jaki spos\\u00f3b powinni z nich korzysta\\u0107. Dodatkowo stworzyli\\u015bmy przyk\\u0142adowy spos\\u00f3b u\\u017cycia dost\\u0119p\\u00f3w, aby uczestnicy w praktyce mogli sprawdzi\\u0107 w jaki spos\\u00f3b mo\\u017cna ich u\\u017cy\\u0107 do pracy.  Ca\\u0142y Hackathon \\u2013 od koncepcji, przez rekrutacj\\u0119 po jego przeprowadzenie \\u2013 znajdowa\\u0142 si\\u0119 pod nasz\\u0105 opiek\\u0105 i dzia\\u0142aniami komunikacyjnymi.", "id": "8304d39d-3c30-4bc0-a1a8-43fe99bb8323"}, {"type": "text", "value": "ODPOWIADALI\\u015aMY ZA OPRACOWANIE MATERIA\\u0141\\u00d3W TEKSTOWYCH I GRAFICZNYCH, KONTAKTU Z MEDIAMI, UCZESTNIKAMI I EKSPERTAMI.", "id": "d7f6977e-8b73-44ca-898f-4e3456515a5e"}, {"type": "text", "value": "Stworzony i prowadzony przez nas profil Twitterowy (@hackathongovpl) by\\u0142 g\\u0142\\u00f3wnym \\u017ar\\u00f3d\\u0142em informacji dla medi\\u00f3w i administracji \\u2013 na bie\\u017c\\u0105co relacjonowali\\u015bmy ca\\u0142y przebieg wydarzenia, prezentacji, a tak\\u017ce przygotowywali\\u015bmy minireporta\\u017c przez Periscope, dzi\\u0119ki kt\\u00f3remu mo\\u017cna by\\u0142o poczu\\u0107 nocn\\u0105 atmosfer\\u0119 wydarzenia. Opr\\u00f3cz materia\\u0142\\u00f3w prasowych, notek oraz obs\\u0142ugi medi\\u00f3w, na bie\\u017c\\u0105co w mediach spo\\u0142eczno\\u015bciowych zamieszczali\\u015bmy zdj\\u0119cia, aby mo\\u017cna by\\u0142o poczu\\u0107 si\\u0119 jak w centrum wydarze\\u0144. Nasza praca to tak\\u017ce pierwsza kampania GIFowa w administracji publicznej \\u2013 na Facebooku oraz Twitterze GIFy przykuwa\\u0142y uwag\\u0119 odbiorc\\u00f3w. Ca\\u0142o\\u015b\\u0107 wydarzenia zwie\\u0144czy\\u0142 film, kt\\u00f3ry w pigu\\u0142ce pokazuje, co wydarzy\\u0142o si\\u0119 tego weekendu.", "id": "6240faf6-a7b0-4cc5-b03f-0c8b3da9a9cf"}]	[]	[{"type": "text", "value": "30 godzin pracy programist\\u00f3w do tego dane zbierane przez instytucje publiczne i efekt jest piorunuj\\u0105cy.", "id": "45c8c5be-e18d-4bbd-bc2c-88b8cf39446a"}, {"type": "text", "value": "90 OS\\u00d3B W 17 ZESPO\\u0141ACH TWORZY\\u0141O PRZEZ WEEKEND APLIKACJE WYKORZYSTUJ\\u0104CE DANE PUBLICZNE", "id": "6fd29fd5-0525-4fbd-8f16-77f05e344f61"}, {"type": "text", "value": "i walczy\\u0142o o nagrody o \\u0142\\u0105cznej puli ponad 50 tys. z\\u0142. Trzy zwyci\\u0119skie projekty zostan\\u0105 wdro\\u017cone.  Prototypy aplikacji to nie jedyny efekt pierwszego w Polsce rz\\u0105dowego Hackathonu danych publicznych. Ministerstwo Cyfryzacji potraktowa\\u0142o bowiem wydarzenie r\\u00f3wnie\\u017c jako warsztat dla samej administracji. Praca programist\\u00f3w pozwoli\\u0142a na praktyczn\\u0105 weryfikacj\\u0119 jako\\u015bci i sposobu udost\\u0119pniania danych przez instytucje publiczne. Chodzi o to, by do\\u015bwiadczenia uczestnik\\u00f3w, trudno\\u015bci, na jakie si\\u0119 natkn\\u0119li przy korzystaniu z danych publicznych czy inne braki przeku\\u0107 w konkretne dzia\\u0142ania naprawcze Ministerstwa Cyfryzacji i innych resort\\u00f3w.  Opr\\u00f3cz organizacji samego wydarzenia, nasz\\u0105 odpowiedzialno\\u015bci\\u0105 by\\u0142o", "id": "db34f455-3860-4c9a-8c57-d123d186684c"}, {"type": "text", "value": "OPRACOWANIE I ANALIZA API BAZ DANYCH,", "id": "9be16bb7-b716-43e8-a8b1-4a71c1988d4c"}, {"type": "text", "value": "kt\\u00f3re sw\\u0105 premier\\u0119 podczas Hackathonu, ich zaopiniowanie oraz przygotowanie opracowania dla uczestnik\\u00f3w, w jaki spos\\u00f3b powinni z nich korzysta\\u0107. Dodatkowo stworzyli\\u015bmy przyk\\u0142adowy spos\\u00f3b u\\u017cycia dost\\u0119p\\u00f3w, aby uczestnicy w praktyce mogli sprawdzi\\u0107 w jaki spos\\u00f3b mo\\u017cna ich u\\u017cy\\u0107 do pracy.  Ca\\u0142y Hackathon \\u2013 od koncepcji, przez rekrutacj\\u0119 po jego przeprowadzenie \\u2013 znajdowa\\u0142 si\\u0119 pod nasz\\u0105 opiek\\u0105 i dzia\\u0142aniami komunikacyjnymi.", "id": "8304d39d-3c30-4bc0-a1a8-43fe99bb8323"}, {"type": "text", "value": "ODPOWIADALI\\u015aMY ZA OPRACOWANIE MATERIA\\u0141\\u00d3W TEKSTOWYCH I GRAFICZNYCH, KONTAKTU Z MEDIAMI, UCZESTNIKAMI I EKSPERTAMI.", "id": "d7f6977e-8b73-44ca-898f-4e3456515a5e"}, {"type": "text", "value": "Stworzony i prowadzony przez nas profil Twitterowy (@hackathongovpl) by\\u0142 g\\u0142\\u00f3wnym \\u017ar\\u00f3d\\u0142em informacji dla medi\\u00f3w i administracji \\u2013 na bie\\u017c\\u0105co relacjonowali\\u015bmy ca\\u0142y przebieg wydarzenia, prezentacji, a tak\\u017ce przygotowywali\\u015bmy minireporta\\u017c przez Periscope, dzi\\u0119ki kt\\u00f3remu mo\\u017cna by\\u0142o poczu\\u0107 nocn\\u0105 atmosfer\\u0119 wydarzenia. Opr\\u00f3cz materia\\u0142\\u00f3w prasowych, notek oraz obs\\u0142ugi medi\\u00f3w, na bie\\u017c\\u0105co w mediach spo\\u0142eczno\\u015bciowych zamieszczali\\u015bmy zdj\\u0119cia, aby mo\\u017cna by\\u0142o poczu\\u0107 si\\u0119 jak w centrum wydarze\\u0144. Nasza praca to tak\\u017ce pierwsza kampania GIFowa w administracji publicznej \\u2013 na Facebooku oraz Twitterze GIFy przykuwa\\u0142y uwag\\u0119 odbiorc\\u00f3w. Ca\\u0142o\\u015b\\u0107 wydarzenia zwie\\u0144czy\\u0142 film, kt\\u00f3ry w pigu\\u0142ce pokazuje, co wydarzy\\u0142o si\\u0119 tego weekendu.", "id": "6240faf6-a7b0-4cc5-b03f-0c8b3da9a9cf"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 148}], "id": "c3371536-d365-4425-9d4d-d1b0c0568ae8"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 148}], "id": "c3371536-d365-4425-9d4d-d1b0c0568ae8"}]	<p>‏‏‎</p>		<p>‏‏‎</p>	f	\N	\N		148		f	f	f	f	<p>‏‏‎</p>
55		\N	\N	[{"type": "text", "value": "E-ISBN to rozbudowana aplikacja webowa dla wydawc\\u00f3w, kt\\u00f3rej funkcjonalno\\u015b\\u0107 zaprojektowali\\u015bmy w 2013 roku. Jej g\\u0142\\u00f3wnym celem by\\u0142o uproszczenie procedury przyznawania numer\\u00f3w ISBN, czyli Jednorazowych Znormalizowanych Numer\\u00f3w Ksi\\u0105\\u017cki. Cho\\u0107 posiadanie takie numeru nie jest obowi\\u0105zkowo, w praktyce jednak u\\u0142atwia wsp\\u00f3\\u0142prac\\u0119 z dystrybutorami publikacji.  Chc\\u0105c upro\\u015bci\\u0107 ca\\u0142y proces zaprojektowali\\u015bmy platform\\u0119, w kt\\u00f3rej wydawcy mog\\u0105 zarz\\u0105dza\\u0107 wydanymi przez siebie pozycjami, automatycznie powi\\u0119ksza\\u0107 potrzebn\\u0105 pul\\u0119 numer\\u00f3w ISBN i przyspiesza\\u0107 prac\\u0119 graficzn\\u0105 (kod kreskowy i kod QR w postaci graficznej). Dodatkowo, aplikacja umo\\u017cliwia gromadzenia metadanych o publikacjach wydawanych w Polsce i po\\u0142\\u0105czenie swojej bazy danych z serwisem. Mog\\u0105 z niej korzysta\\u0107 zar\\u00f3wno do\\u015bwiadczenie wydawcy jak i osoby dopiero rozpoczynaj\\u0105ce dzia\\u0142anie na rynku ksi\\u0105\\u017cki. Z my\\u015bl\\u0105 o r\\u00f3\\u017cnej wielko\\u015bci wydawnictwach opracowano te\\u017c trzy wielko\\u015bci puli numer\\u00f3w ISBN (10, 100, 1000).  W ramach prac nad serwisem byli\\u015bmy odpowiedzialni za stworzenie koncepcji, specyfikacji funkcjonalnej oraz prototyp\\u00f3w aplikacji. Nast\\u0119pnie sprawowali\\u015bmy te\\u017c nadz\\u00f3r UX nad pracami graficznymi oraz wdro\\u017ceniowymi projektu.", "id": "4e99834d-eaa8-44a8-90bb-031290d1c477"}]	[]	[{"type": "text", "value": "E-ISBN to rozbudowana aplikacja webowa dla wydawc\\u00f3w, kt\\u00f3rej funkcjonalno\\u015b\\u0107 zaprojektowali\\u015bmy w 2013 roku. Jej g\\u0142\\u00f3wnym celem by\\u0142o uproszczenie procedury przyznawania numer\\u00f3w ISBN, czyli Jednorazowych Znormalizowanych Numer\\u00f3w Ksi\\u0105\\u017cki. Cho\\u0107 posiadanie takie numeru nie jest obowi\\u0105zkowo, w praktyce jednak u\\u0142atwia wsp\\u00f3\\u0142prac\\u0119 z dystrybutorami publikacji.  Chc\\u0105c upro\\u015bci\\u0107 ca\\u0142y proces zaprojektowali\\u015bmy platform\\u0119, w kt\\u00f3rej wydawcy mog\\u0105 zarz\\u0105dza\\u0107 wydanymi przez siebie pozycjami, automatycznie powi\\u0119ksza\\u0107 potrzebn\\u0105 pul\\u0119 numer\\u00f3w ISBN i przyspiesza\\u0107 prac\\u0119 graficzn\\u0105 (kod kreskowy i kod QR w postaci graficznej). Dodatkowo, aplikacja umo\\u017cliwia gromadzenia metadanych o publikacjach wydawanych w Polsce i po\\u0142\\u0105czenie swojej bazy danych z serwisem. Mog\\u0105 z niej korzysta\\u0107 zar\\u00f3wno do\\u015bwiadczenie wydawcy jak i osoby dopiero rozpoczynaj\\u0105ce dzia\\u0142anie na rynku ksi\\u0105\\u017cki. Z my\\u015bl\\u0105 o r\\u00f3\\u017cnej wielko\\u015bci wydawnictwach opracowano te\\u017c trzy wielko\\u015bci puli numer\\u00f3w ISBN (10, 100, 1000).  W ramach prac nad serwisem byli\\u015bmy odpowiedzialni za stworzenie koncepcji, specyfikacji funkcjonalnej oraz prototyp\\u00f3w aplikacji. Nast\\u0119pnie sprawowali\\u015bmy te\\u017c nadz\\u00f3r UX nad pracami graficznymi oraz wdro\\u017ceniowymi projektu.", "id": "4e99834d-eaa8-44a8-90bb-031290d1c477"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 157}], "id": "d99e7d2b-4bd5-497b-a645-da2e07a18938"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 157}], "id": "d99e7d2b-4bd5-497b-a645-da2e07a18938"}]	<p>-</p>		<p>-</p>	f	\N	157		\N	http://www.demo.e-isbn.pl/	f	f	t	f	<p>-</p>
56		\N	\N	[{"type": "text", "value": "D\\u0141U\\u017bSZE CZYTANIE Z PRZYJEMNO\\u015aCI\\u0104 Zdarza si\\u0119, \\u017ce w\\u0142a\\u015bciciele stron internetowych opieraj\\u0105cych si\\u0119 na d\\u0142ugich, z\\u0142o\\u017conych tekstach nie dbaj\\u0105 o warstw\\u0119 wizualn\\u0105 swoich serwis\\u00f3w. W teorii to przecie\\u017c bez znaczenia \\u2013 ich atutem maj\\u0105 by\\u0107 przecie\\u017c tre\\u015bci, a nie to, \\u017ce strona jest \\u0142adna. Jednak \\u0142atwo\\u015b\\u0107 u\\u017cytkowania i przejrzysto\\u015b\\u0107 serwisu nie jest ju\\u017c jedynie fanaberi\\u0105 projektant\\u00f3w graficznych, a staje si\\u0119 konieczno\\u015bci\\u0105. Dlatego strona agregatora tre\\u015bci Eurozine, dzia\\u0142aj\\u0105ca w niezmienionej formie od prawie dw\\u00f3ch dekad, musia\\u0142a zosta\\u0107 zaprojektowana od nowa. Eurozine to serwis, kt\\u00f3ry gromadzi tre\\u015bci tworzone przez redaktor\\u00f3w magazyn\\u00f3w spo\\u0142eczno-politycznych z kilkudziesi\\u0119ciu kraj\\u00f3w.  Stworzyli\\u015bmy stron\\u0119 z uwzgl\\u0119dnieniem kluczowych funkcjonalno\\u015bci, np. pe\\u0142n\\u0105 responsywno\\u015bci\\u0105 czy mo\\u017cliwo\\u015bci\\u0105 tagowania tre\\u015bci i porz\\u0105dkowania jej wed\\u0142ug wielu kryteri\\u00f3w. Nowa wersja strony zosta\\u0142a udost\\u0119pniona u\\u017cytkownikom na pocz\\u0105tku lutego 2017 r., jednak praca nad projektem wci\\u0105\\u017c trwa. Dlaczego? Chcemy upewni\\u0107 si\\u0119, \\u017ce jej wszystkie funkcjonalno\\u015bci s\\u0105 w pe\\u0142ni zrozumia\\u0142e dla tych, kt\\u00f3rzy u\\u017cywaj\\u0105 strony na co dzie\\u0144.", "id": "392452f9-5a67-4b27-b461-720f823dff07"}]	[]	[{"type": "text", "value": "D\\u0141U\\u017bSZE CZYTANIE Z PRZYJEMNO\\u015aCI\\u0104 Zdarza si\\u0119, \\u017ce w\\u0142a\\u015bciciele stron internetowych opieraj\\u0105cych si\\u0119 na d\\u0142ugich, z\\u0142o\\u017conych tekstach nie dbaj\\u0105 o warstw\\u0119 wizualn\\u0105 swoich serwis\\u00f3w. W teorii to przecie\\u017c bez znaczenia \\u2013 ich atutem maj\\u0105 by\\u0107 przecie\\u017c tre\\u015bci, a nie to, \\u017ce strona jest \\u0142adna. Jednak \\u0142atwo\\u015b\\u0107 u\\u017cytkowania i przejrzysto\\u015b\\u0107 serwisu nie jest ju\\u017c jedynie fanaberi\\u0105 projektant\\u00f3w graficznych, a staje si\\u0119 konieczno\\u015bci\\u0105. Dlatego strona agregatora tre\\u015bci Eurozine, dzia\\u0142aj\\u0105ca w niezmienionej formie od prawie dw\\u00f3ch dekad, musia\\u0142a zosta\\u0107 zaprojektowana od nowa. Eurozine to serwis, kt\\u00f3ry gromadzi tre\\u015bci tworzone przez redaktor\\u00f3w magazyn\\u00f3w spo\\u0142eczno-politycznych z kilkudziesi\\u0119ciu kraj\\u00f3w.  Stworzyli\\u015bmy stron\\u0119 z uwzgl\\u0119dnieniem kluczowych funkcjonalno\\u015bci, np. pe\\u0142n\\u0105 responsywno\\u015bci\\u0105 czy mo\\u017cliwo\\u015bci\\u0105 tagowania tre\\u015bci i porz\\u0105dkowania jej wed\\u0142ug wielu kryteri\\u00f3w. Nowa wersja strony zosta\\u0142a udost\\u0119pniona u\\u017cytkownikom na pocz\\u0105tku lutego 2017 r., jednak praca nad projektem wci\\u0105\\u017c trwa. Dlaczego? Chcemy upewni\\u0107 si\\u0119, \\u017ce jej wszystkie funkcjonalno\\u015bci s\\u0105 w pe\\u0142ni zrozumia\\u0142e dla tych, kt\\u00f3rzy u\\u017cywaj\\u0105 strony na co dzie\\u0144.", "id": "392452f9-5a67-4b27-b461-720f823dff07"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 158}], "id": "afc09f68-59f2-4729-9ab0-a8219a648292"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 158}], "id": "afc09f68-59f2-4729-9ab0-a8219a648292"}]	<p>-</p>		<p>-</p>	f	\N	158		\N	http://www.eurozine.com/	t	t	t	t	<p>-</p>
53		\N	\N	[{"type": "text", "value": "W Polsce jest 16 wojew\\u00f3dztw, 344 powiat\\u00f3w i 2478 gmin. Ka\\u017cda jednostka administracyjna gromadzi dane na temat mieszka\\u0144c\\u00f3w i swojego terytorium. Dotycz\\u0105 one rozmaitych kwestii: ile kobiet i m\\u0119\\u017cczyzn zamieszkuje dany obszar, jaka jest dzietno\\u015b\\u0107 w poszczeg\\u00f3lnych regionach, ile szk\\u00f3\\u0142 dzia\\u0142a na danym terenie, ale te\\u017c ile os\\u00f3b g\\u0142osowa\\u0142o w ostatnich wyborach czy ile kilometr\\u00f3w nowych dr\\u00f3g wybudowano w danym okresie.  Stowarzyszenie Klon / Jawor postanowi\\u0142a stworzy\\u0107 narz\\u0119dzie pozwalaj\\u0105ce na gromadzenie wszystkich dost\\u0119pnych publicznie danych, por\\u00f3wnywanie ich ze sob\\u0105 i wizualizowanie wynik\\u00f3w.  W efekcie powsta\\u0142 zar\\u00f3wno dla amator\\u00f3w, jak i profesjonalist\\u00f3w. Na mapie Polski mo\\u017cna zobaczy\\u0107 r\\u00f3\\u017cnego rodzaju dane statystyczne. Te same dane mo\\u017cna wygenerowa\\u0107 w postaci wykres\\u00f3w (rozk\\u0142ad, korelacja, dynamika i ranking), zestawia\\u0107 ze sob\\u0105, a tak\\u017ce prze\\u015bledzi\\u0107 interesuj\\u0105ce nas zjawiska w czasie.  Dzi\\u0119ki naszej pracy bardzo skomplikowany i precyzyjny mechanizm statystyczny zosta\\u0142 przedstawiony w postaci przyjaznych wizualizacji.", "id": "4b9fdc50-1cb1-4665-85db-40c9e4f39948"}]	[]	[{"type": "text", "value": "W Polsce jest 16 wojew\\u00f3dztw, 344 powiat\\u00f3w i 2478 gmin. Ka\\u017cda jednostka administracyjna gromadzi dane na temat mieszka\\u0144c\\u00f3w i swojego terytorium. Dotycz\\u0105 one rozmaitych kwestii: ile kobiet i m\\u0119\\u017cczyzn zamieszkuje dany obszar, jaka jest dzietno\\u015b\\u0107 w poszczeg\\u00f3lnych regionach, ile szk\\u00f3\\u0142 dzia\\u0142a na danym terenie, ale te\\u017c ile os\\u00f3b g\\u0142osowa\\u0142o w ostatnich wyborach czy ile kilometr\\u00f3w nowych dr\\u00f3g wybudowano w danym okresie.  Stowarzyszenie Klon / Jawor postanowi\\u0142a stworzy\\u0107 narz\\u0119dzie pozwalaj\\u0105ce na gromadzenie wszystkich dost\\u0119pnych publicznie danych, por\\u00f3wnywanie ich ze sob\\u0105 i wizualizowanie wynik\\u00f3w.  W efekcie powsta\\u0142 zar\\u00f3wno dla amator\\u00f3w, jak i profesjonalist\\u00f3w. Na mapie Polski mo\\u017cna zobaczy\\u0107 r\\u00f3\\u017cnego rodzaju dane statystyczne. Te same dane mo\\u017cna wygenerowa\\u0107 w postaci wykres\\u00f3w (rozk\\u0142ad, korelacja, dynamika i ranking), zestawia\\u0107 ze sob\\u0105, a tak\\u017ce prze\\u015bledzi\\u0107 interesuj\\u0105ce nas zjawiska w czasie.  Dzi\\u0119ki naszej pracy bardzo skomplikowany i precyzyjny mechanizm statystyczny zosta\\u0142 przedstawiony w postaci przyjaznych wizualizacji.", "id": "4b9fdc50-1cb1-4665-85db-40c9e4f39948"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 155}], "id": "f237d7d1-eab0-4061-9073-92ee1f185aea"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 155}], "id": "f237d7d1-eab0-4061-9073-92ee1f185aea"}]	<p>-</p>		<p>-</p>	f	\N	155		\N		f	f	t	f	<p>-</p>
44		\N	\N	[{"type": "text", "value": "Czy zastanawiali\\u015bcie si\\u0119 kiedy\\u015b sk\\u0105d pochodz\\u0105 i na co s\\u0105 przeznaczane pieni\\u0105dze pochodz\\u0105ce z bud\\u017cet\\u00f3w regionalnych? \\u201e\\u201d to narz\\u0119dzie, kt\\u00f3re w przejrzysty spos\\u00f3b pokazuje, jak wybrana gmina zarz\\u0105dza swoim bud\\u017cetem.  Dzi\\u0119ki zastosowanej w aplikacji klasyfikacji wydatk\\u00f3w i \\u017ar\\u00f3de\\u0142 finansowania, u\\u017cytkownik mo\\u017ce dowiedzie\\u0107 si\\u0119 np. jak dochody i wydatki danej gminy zmienia\\u0142y si\\u0119 w czasie, jak\\u0105 cz\\u0119\\u015b\\u0107 przychod\\u00f3w stanowi\\u0105 podatki, jakie jest zad\\u0142u\\u017cenie danego obszaru i na co wybrana gmina wyda\\u0142a najwi\\u0119cej pieni\\u0119dzy w danym okresie. Najwi\\u0119kszym wyzwaniem by\\u0142o wymy\\u015blenie i przygotowanie technologii, kt\\u00f3ra w intuicyjny dla u\\u017cytkownika spos\\u00f3b przedstawi dane gmin pochodz\\u0105ce z Ministerstwa Finans\\u00f3w. Dlatego zaprojektowali\\u015bmy warstw\\u0119 z instrukcjami, z kt\\u00f3rej u\\u017cytkownik mo\\u017ce skorzysta\\u0107 po wej\\u015bciu na stron\\u0119 naszakasa.org.pl. Kiedy nauczy si\\u0119 u\\u017cywa\\u0107 aplikacji, mo\\u017ce w dowolnym momencie je ukry\\u0107.", "id": "1476d909-008b-49c6-b669-7891461f0b0b"}]	[]	[{"type": "text", "value": "Czy zastanawiali\\u015bcie si\\u0119 kiedy\\u015b sk\\u0105d pochodz\\u0105 i na co s\\u0105 przeznaczane pieni\\u0105dze pochodz\\u0105ce z bud\\u017cet\\u00f3w regionalnych? \\u201e\\u201d to narz\\u0119dzie, kt\\u00f3re w przejrzysty spos\\u00f3b pokazuje, jak wybrana gmina zarz\\u0105dza swoim bud\\u017cetem.  Dzi\\u0119ki zastosowanej w aplikacji klasyfikacji wydatk\\u00f3w i \\u017ar\\u00f3de\\u0142 finansowania, u\\u017cytkownik mo\\u017ce dowiedzie\\u0107 si\\u0119 np. jak dochody i wydatki danej gminy zmienia\\u0142y si\\u0119 w czasie, jak\\u0105 cz\\u0119\\u015b\\u0107 przychod\\u00f3w stanowi\\u0105 podatki, jakie jest zad\\u0142u\\u017cenie danego obszaru i na co wybrana gmina wyda\\u0142a najwi\\u0119cej pieni\\u0119dzy w danym okresie. Najwi\\u0119kszym wyzwaniem by\\u0142o wymy\\u015blenie i przygotowanie technologii, kt\\u00f3ra w intuicyjny dla u\\u017cytkownika spos\\u00f3b przedstawi dane gmin pochodz\\u0105ce z Ministerstwa Finans\\u00f3w. Dlatego zaprojektowali\\u015bmy warstw\\u0119 z instrukcjami, z kt\\u00f3rej u\\u017cytkownik mo\\u017ce skorzysta\\u0107 po wej\\u015bciu na stron\\u0119 naszakasa.org.pl. Kiedy nauczy si\\u0119 u\\u017cywa\\u0107 aplikacji, mo\\u017ce w dowolnym momencie je ukry\\u0107.", "id": "1476d909-008b-49c6-b669-7891461f0b0b"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 149}], "id": "c43009c4-8ce8-49c7-9da2-625e280c51c1"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 149}], "id": "c43009c4-8ce8-49c7-9da2-625e280c51c1"}]	<p>-</p>		<p>-</p>	f	\N	\N		149		f	f	t	f	<p>-</p>
47		\N	\N	[{"type": "text", "value": "2 025 759 \\u2013 tyle obiekt\\u00f3w znajduje si\\u0119 dzisiaj w cyfrowym archiwum Biblioteki Narodowej, w tym: ksi\\u0105\\u017cki, czasopisma, r\\u0119kopisy, mapy, fotografie, rysunki, poczt\\u00f3wki, druki r\\u00f3\\u017cnego rodzaju, a nawet nuty. Wsp\\u00f3lnie z Bibliotek\\u0105 Narodow\\u0105 i NASK stworzyli\\u015bmy wyj\\u0105tkowy w skali \\u015bwiatowej portal biblioteczny oparty na zasadach znanych z medi\\u00f3w spo\\u0142eczno\\u015bciowych. \\u0141atwy do wyszukiwania, jak Google, klarowny, jak Pinterest i umo\\u017cliwiaj\\u0105cy wymian\\u0119 ze znajomymi, jak Facebook \\u2013 tak naj\\u0142atwiej scharakteryzowa\\u0107 serwis \\u201ePolona\\u201d.  To, co do niedawna kurzy\\u0142o si\\u0119 w archiwach gmachu najwi\\u0119kszej w Polsce biblioteki, dzisiaj dost\\u0119pne jest w postaci elektronicznej (skan\\u00f3w) i w dodatku \\u0142atwe w obr\\u00f3bce. Dzi\\u0119ki zastosowaniu najnowszych technologii ka\\u017cdy mo\\u017ce wyszuka\\u0107 dowolne obrazy, pracowa\\u0107 na nich na w\\u0142asnym pulpicie wycinaj\\u0105c, kopiuj\\u0105c fragmenty i nanosz\\u0105c w\\u0142asne komentarze. W serwisie mo\\u017cna te\\u017c tworzy\\u0107 kolekcje i wymienia\\u0107 si\\u0119 znaleziskami.  Zaawansowana technologia opracowana przez nasz zesp\\u00f3\\u0142 s\\u0142u\\u017cy \\u0142atwej nawigacji i intuicyjnemu korzystaniu z zasob\\u00f3w biblioteki.", "id": "bc40263e-b702-4cba-bffb-ab724da264ff"}]	[]	[{"type": "text", "value": "2 025 759 \\u2013 tyle obiekt\\u00f3w znajduje si\\u0119 dzisiaj w cyfrowym archiwum Biblioteki Narodowej, w tym: ksi\\u0105\\u017cki, czasopisma, r\\u0119kopisy, mapy, fotografie, rysunki, poczt\\u00f3wki, druki r\\u00f3\\u017cnego rodzaju, a nawet nuty. Wsp\\u00f3lnie z Bibliotek\\u0105 Narodow\\u0105 i NASK stworzyli\\u015bmy wyj\\u0105tkowy w skali \\u015bwiatowej portal biblioteczny oparty na zasadach znanych z medi\\u00f3w spo\\u0142eczno\\u015bciowych. \\u0141atwy do wyszukiwania, jak Google, klarowny, jak Pinterest i umo\\u017cliwiaj\\u0105cy wymian\\u0119 ze znajomymi, jak Facebook \\u2013 tak naj\\u0142atwiej scharakteryzowa\\u0107 serwis \\u201ePolona\\u201d.  To, co do niedawna kurzy\\u0142o si\\u0119 w archiwach gmachu najwi\\u0119kszej w Polsce biblioteki, dzisiaj dost\\u0119pne jest w postaci elektronicznej (skan\\u00f3w) i w dodatku \\u0142atwe w obr\\u00f3bce. Dzi\\u0119ki zastosowaniu najnowszych technologii ka\\u017cdy mo\\u017ce wyszuka\\u0107 dowolne obrazy, pracowa\\u0107 na nich na w\\u0142asnym pulpicie wycinaj\\u0105c, kopiuj\\u0105c fragmenty i nanosz\\u0105c w\\u0142asne komentarze. W serwisie mo\\u017cna te\\u017c tworzy\\u0107 kolekcje i wymienia\\u0107 si\\u0119 znaleziskami.  Zaawansowana technologia opracowana przez nasz zesp\\u00f3\\u0142 s\\u0142u\\u017cy \\u0142atwej nawigacji i intuicyjnemu korzystaniu z zasob\\u00f3w biblioteki.", "id": "bc40263e-b702-4cba-bffb-ab724da264ff"}]	[{"type": "tiles_list", "value": [{"heading": "Research i zbieranie potrzeb", "image": 93}, {"heading": "Prototypowanie i testy z u\\u017cytkownikami", "image": 81}, {"heading": "Rozw\\u00f3j iteracyjny rozwi\\u0105zania", "image": 79}], "id": "f305640f-ce21-4ff7-a0cb-27deed362d9f"}]	[]	[{"type": "tiles_list", "value": [{"heading": "Research i zbieranie potrzeb", "image": 93}, {"heading": "Prototypowanie i testy z u\\u017cytkownikami", "image": 81}, {"heading": "Rozw\\u00f3j iteracyjny rozwi\\u0105zania", "image": 79}], "id": "f305640f-ce21-4ff7-a0cb-27deed362d9f"}]	<p>‏‏‎</p>		<p>‏‏‎</p>	f	\N	\N		165	http://www.polona.pl/	f	f	f	f	<p>‏‏‎</p>
58		\N	\N	[{"type": "text", "value": "Narodowe Centrum Kultury to instytucja realizuj\\u0105ca wiele rodzaj\\u00f3w dzia\\u0142a\\u0144 i prowadz\\u0105ca r\\u00f3\\u017cne programy kulturalne. Do niedawna ka\\u017cdy mia\\u0142 swoj\\u0105 w\\u0142asn\\u0105 identyfikacj\\u0119 wizualn\\u0105 i stron\\u0119 www, co powodowa\\u0142o, \\u017ce trudno by\\u0142o znale\\u017a\\u0107 to, co nas interesuje w g\\u0105szczu informacji. Dodatkowym utrudnieniem by\\u0142o to, \\u017ce dzia\\u0142alno\\u015b\\u0107 NCK skierowana jest do r\\u00f3\\u017cnych odbiorc\\u00f3w: innych instytucji kultury (w tym organizacji pozarz\\u0105dowych), animator\\u00f3w kultury, ale tak\\u017ce zwyk\\u0142ych ludzi zainteresowanych kultur\\u0105.  Prace nad przeprojektowaniem portalu zacz\\u0119\\u0142y si\\u0119 od uporz\\u0105dkowania informacji i przemy\\u015blenia struktury serwisu z perspektywy do\\u015bwiadcze\\u0144 u\\u017cytkownik\\u00f3w.  W efekcie powsta\\u0142a przejrzysta strona g\\u0142\\u00f3wna, odsy\\u0142aj\\u0105ca do kolejnych serwis\\u00f3w i podstron utrzymanych w tej samej stylistyce i logice nawigacji. Dzi\\u0119ki temu osoby korzystaj\\u0105ce ze strony nie gubi\\u0105 si\\u0119 i \\u0142atwo odszukuj\\u0105 po\\u017c\\u0105dane informacje, a NCK ma mo\\u017cliwo\\u015b\\u0107 umieszczania wielu rozmaitych tre\\u015bci przeznaczonych dla r\\u00f3\\u017cnych grup odbiorc\\u00f3w. Strona jest w pe\\u0142ni responsywna \\u2013 przystosowana do korzystania na urz\\u0105dzeniach mobilnych.", "id": "7cb4efad-3859-41c8-915e-97c68ac9d3c9"}]	[]	[{"type": "text", "value": "Narodowe Centrum Kultury to instytucja realizuj\\u0105ca wiele rodzaj\\u00f3w dzia\\u0142a\\u0144 i prowadz\\u0105ca r\\u00f3\\u017cne programy kulturalne. Do niedawna ka\\u017cdy mia\\u0142 swoj\\u0105 w\\u0142asn\\u0105 identyfikacj\\u0119 wizualn\\u0105 i stron\\u0119 www, co powodowa\\u0142o, \\u017ce trudno by\\u0142o znale\\u017a\\u0107 to, co nas interesuje w g\\u0105szczu informacji. Dodatkowym utrudnieniem by\\u0142o to, \\u017ce dzia\\u0142alno\\u015b\\u0107 NCK skierowana jest do r\\u00f3\\u017cnych odbiorc\\u00f3w: innych instytucji kultury (w tym organizacji pozarz\\u0105dowych), animator\\u00f3w kultury, ale tak\\u017ce zwyk\\u0142ych ludzi zainteresowanych kultur\\u0105.  Prace nad przeprojektowaniem portalu zacz\\u0119\\u0142y si\\u0119 od uporz\\u0105dkowania informacji i przemy\\u015blenia struktury serwisu z perspektywy do\\u015bwiadcze\\u0144 u\\u017cytkownik\\u00f3w.  W efekcie powsta\\u0142a przejrzysta strona g\\u0142\\u00f3wna, odsy\\u0142aj\\u0105ca do kolejnych serwis\\u00f3w i podstron utrzymanych w tej samej stylistyce i logice nawigacji. Dzi\\u0119ki temu osoby korzystaj\\u0105ce ze strony nie gubi\\u0105 si\\u0119 i \\u0142atwo odszukuj\\u0105 po\\u017c\\u0105dane informacje, a NCK ma mo\\u017cliwo\\u015b\\u0107 umieszczania wielu rozmaitych tre\\u015bci przeznaczonych dla r\\u00f3\\u017cnych grup odbiorc\\u00f3w. Strona jest w pe\\u0142ni responsywna \\u2013 przystosowana do korzystania na urz\\u0105dzeniach mobilnych.", "id": "7cb4efad-3859-41c8-915e-97c68ac9d3c9"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 160}], "id": "4227cb96-6d62-4870-a493-4990e0cf5007"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 160}], "id": "4227cb96-6d62-4870-a493-4990e0cf5007"}]	<p>-</p>		<p>-</p>	f	\N	160		\N		t	t	t	t	<p>-</p>
59		\N	\N	[{"type": "text", "value": "Fundacja Orange zwr\\u00f3ci\\u0142a si\\u0119 do nas z pro\\u015bb\\u0105 o pomoc w stworzeniu serwisu opartego o grywalizacj\\u0119 dla programu \\u201ePracownie Orange\\u201d. Grywalizacja polega na wykorzystaniu mechanizm\\u00f3w znanych z gier komputerowych, planszowych czy RPG i zastosowaniu ich do zmiany spo\\u0142ecznych zachowa\\u0144.  W ramach programu Pracownie Orange w wielu gminach w Polsce powsta\\u0142y pracownie wyposa\\u017cone w komputery i dost\\u0119p do internetu. Jednak w programie chodzi\\u0142o tak\\u017ce o to, \\u017ceby pracownie nie dzia\\u0142a\\u0142y w oderwaniu od siebie, ani \\u017ceby nie poprzesta\\u0142y jedynie na korzystaniu z internetu.  Naszym celem by\\u0142o stworzenie dobrze dzia\\u0142aj\\u0105cej strony internetowej projektu i ca\\u0142ego systemu rywalizacji zach\\u0119caj\\u0105cego do wymiany pomys\\u0142\\u00f3w i zaanga\\u017cowania w realne dzia\\u0142ania. Dzi\\u0119ki naszej platformie pracownie rozsiane po ca\\u0142ym kraju maj\\u0105 ze sob\\u0105 \\u0142atwy kontakt, wymieniaj\\u0105 si\\u0119 pomys\\u0142ami i inspiracjami. Strona umo\\u017cliwia u\\u017cytkownikom: \\u2013 dodawanie artyku\\u0142\\u00f3w, \\u2013 dodawanie relacji z wydarze\\u0144 (wraz ze zdj\\u0119ciami), \\u2013 dodawanie inspiracji. Z wielu funkcji, jak np. bazy inspiracji, mo\\u017cna korzysta\\u0107 bez zalogowania.", "id": "1a8a4ec2-f6ce-4e2c-b344-1575ee37c53f"}]	[]	[{"type": "text", "value": "Fundacja Orange zwr\\u00f3ci\\u0142a si\\u0119 do nas z pro\\u015bb\\u0105 o pomoc w stworzeniu serwisu opartego o grywalizacj\\u0119 dla programu \\u201ePracownie Orange\\u201d. Grywalizacja polega na wykorzystaniu mechanizm\\u00f3w znanych z gier komputerowych, planszowych czy RPG i zastosowaniu ich do zmiany spo\\u0142ecznych zachowa\\u0144.  W ramach programu Pracownie Orange w wielu gminach w Polsce powsta\\u0142y pracownie wyposa\\u017cone w komputery i dost\\u0119p do internetu. Jednak w programie chodzi\\u0142o tak\\u017ce o to, \\u017ceby pracownie nie dzia\\u0142a\\u0142y w oderwaniu od siebie, ani \\u017ceby nie poprzesta\\u0142y jedynie na korzystaniu z internetu.  Naszym celem by\\u0142o stworzenie dobrze dzia\\u0142aj\\u0105cej strony internetowej projektu i ca\\u0142ego systemu rywalizacji zach\\u0119caj\\u0105cego do wymiany pomys\\u0142\\u00f3w i zaanga\\u017cowania w realne dzia\\u0142ania. Dzi\\u0119ki naszej platformie pracownie rozsiane po ca\\u0142ym kraju maj\\u0105 ze sob\\u0105 \\u0142atwy kontakt, wymieniaj\\u0105 si\\u0119 pomys\\u0142ami i inspiracjami. Strona umo\\u017cliwia u\\u017cytkownikom: \\u2013 dodawanie artyku\\u0142\\u00f3w, \\u2013 dodawanie relacji z wydarze\\u0144 (wraz ze zdj\\u0119ciami), \\u2013 dodawanie inspiracji. Z wielu funkcji, jak np. bazy inspiracji, mo\\u017cna korzysta\\u0107 bez zalogowania.", "id": "1a8a4ec2-f6ce-4e2c-b344-1575ee37c53f"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 161}], "id": "3154668b-81af-431e-b3bb-4f4dd1e4fbd7"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 161}], "id": "3154668b-81af-431e-b3bb-4f4dd1e4fbd7"}]	<p>-</p>		<p>-</p>	f	\N	161		\N		t	t	t	t	<p>-</p>
60		\N	\N	[{"type": "text", "value": "\\u017beby strona internetowa odpowiada\\u0142a potrzebom u\\u017cytkownik\\u00f3w, trzeba zacz\\u0105\\u0107 projekt od zbadania ich oczekiwa\\u0144. Dlatego jednym z g\\u0142\\u00f3wnych etap\\u00f3w by\\u0142o zbadanie, jakie rozwi\\u0105zania spodobaj\\u0105 si\\u0119 potencjalnym odbiorcom. Kto b\\u0119dzie u\\u017cywa\\u0142 strony? Czym ta osoba zajmuje si\\u0119 na co dzie\\u0144? W jakim jest wieku? Odpowiedzi na te pytania pozwoli\\u0142y na stworzenie uniwersalnego profilu u\\u017cytkownika strony PPNT.  G\\u0142\\u00f3wnym wyzwaniem podczas procesu projektowego by\\u0142o odwzorowanie idei instytucji w internecie. Konieczne by\\u0142o znalezienie r\\u00f3wnowagi pomi\\u0119dzy obszern\\u0105 tre\\u015bci\\u0105 na poszczeg\\u00f3lnych podstronach, a zachowaniem czytelno\\u015bci ca\\u0142ego serwisu. Uda\\u0142o si\\u0119 m.in. dzi\\u0119ki zastosowaniu nowoczesnego prototypowania UX (User Experience), kt\\u00f3re pozwoli\\u0142o na optymalne rozmieszczenie poszczeg\\u00f3lnych dzia\\u0142\\u00f3w, tekst\\u00f3w i grafik na stronie.", "id": "e716c84c-b12a-4321-b3e9-b33dbe2cde26"}]	[]	[{"type": "text", "value": "\\u017beby strona internetowa odpowiada\\u0142a potrzebom u\\u017cytkownik\\u00f3w, trzeba zacz\\u0105\\u0107 projekt od zbadania ich oczekiwa\\u0144. Dlatego jednym z g\\u0142\\u00f3wnych etap\\u00f3w by\\u0142o zbadanie, jakie rozwi\\u0105zania spodobaj\\u0105 si\\u0119 potencjalnym odbiorcom. Kto b\\u0119dzie u\\u017cywa\\u0142 strony? Czym ta osoba zajmuje si\\u0119 na co dzie\\u0144? W jakim jest wieku? Odpowiedzi na te pytania pozwoli\\u0142y na stworzenie uniwersalnego profilu u\\u017cytkownika strony PPNT.  G\\u0142\\u00f3wnym wyzwaniem podczas procesu projektowego by\\u0142o odwzorowanie idei instytucji w internecie. Konieczne by\\u0142o znalezienie r\\u00f3wnowagi pomi\\u0119dzy obszern\\u0105 tre\\u015bci\\u0105 na poszczeg\\u00f3lnych podstronach, a zachowaniem czytelno\\u015bci ca\\u0142ego serwisu. Uda\\u0142o si\\u0119 m.in. dzi\\u0119ki zastosowaniu nowoczesnego prototypowania UX (User Experience), kt\\u00f3re pozwoli\\u0142o na optymalne rozmieszczenie poszczeg\\u00f3lnych dzia\\u0142\\u00f3w, tekst\\u00f3w i grafik na stronie.", "id": "e716c84c-b12a-4321-b3e9-b33dbe2cde26"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 162}], "id": "382a441b-537d-47c6-82e0-5df6da64aaeb"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 162}], "id": "382a441b-537d-47c6-82e0-5df6da64aaeb"}]	<p>-</p>		<p>-</p>	f	\N	162		\N	http://www.ppnt.pl/	t	t	t	t	<p>-</p>
61		\N	\N	[{"type": "text", "value": "Dom Spotka\\u0144 z Histori\\u0105, samorz\\u0105dowa instytucja kultury miasta sto\\u0142ecznego Warszawy, zg\\u0142osi\\u0142a si\\u0119 do nas z pro\\u015bb\\u0105 o wsparcie w zaprojektowaniu w\\u0142asnej strony internetowej.  Dzi\\u0119ki intuicyjnej nawigacji i przejrzystemu interfejsowi, ka\\u017cda osoba odwiedzaj\\u0105ca stron\\u0119 mo\\u017ce szybko dowiedzie\\u0107 si\\u0119, jak dzia\\u0142a Dom Spotka\\u0144 z Histori\\u0105 i jakie projekty realizuje. U\\u017cytkownik dotrze te\\u017c bez problemu do informacji zar\\u00f3wno na temat aktualnych wystaw jak i tych, kt\\u00f3re ju\\u017c si\\u0119 odby\\u0142y.  Strona dsh.waw.pl zosta\\u0142a stworzona z my\\u015bl\\u0105 o wszystkich u\\u017cytkownikach, tak\\u017ce tych z niepe\\u0142nosprawno\\u015bciami. Projekt przeszed\\u0142 kompletny audyt pod k\\u0105tem WCAG 2.0 (Web Content Accessibility Guidelines), czyli wytycznych dotycz\\u0105cych u\\u0142atwie\\u0144 w dost\\u0119pie do tre\\u015bci internetowych.", "id": "daa32d82-0170-430c-8a6d-d40792509198"}]	[]	[{"type": "text", "value": "Dom Spotka\\u0144 z Histori\\u0105, samorz\\u0105dowa instytucja kultury miasta sto\\u0142ecznego Warszawy, zg\\u0142osi\\u0142a si\\u0119 do nas z pro\\u015bb\\u0105 o wsparcie w zaprojektowaniu w\\u0142asnej strony internetowej.  Dzi\\u0119ki intuicyjnej nawigacji i przejrzystemu interfejsowi, ka\\u017cda osoba odwiedzaj\\u0105ca stron\\u0119 mo\\u017ce szybko dowiedzie\\u0107 si\\u0119, jak dzia\\u0142a Dom Spotka\\u0144 z Histori\\u0105 i jakie projekty realizuje. U\\u017cytkownik dotrze te\\u017c bez problemu do informacji zar\\u00f3wno na temat aktualnych wystaw jak i tych, kt\\u00f3re ju\\u017c si\\u0119 odby\\u0142y.  Strona dsh.waw.pl zosta\\u0142a stworzona z my\\u015bl\\u0105 o wszystkich u\\u017cytkownikach, tak\\u017ce tych z niepe\\u0142nosprawno\\u015bciami. Projekt przeszed\\u0142 kompletny audyt pod k\\u0105tem WCAG 2.0 (Web Content Accessibility Guidelines), czyli wytycznych dotycz\\u0105cych u\\u0142atwie\\u0144 w dost\\u0119pie do tre\\u015bci internetowych.", "id": "daa32d82-0170-430c-8a6d-d40792509198"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 163}], "id": "64b91ca0-6091-4949-9620-6f28cb0798a7"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 163}], "id": "64b91ca0-6091-4949-9620-6f28cb0798a7"}]	<p>-</p>		<p>-</p>	f	\N	163		\N		t	t	t	t	<p>-</p>
62		\N	\N	[{"type": "text", "value": "Strona internetowa klasztoru Dominikan\\u00f3w pami\\u0119ta pocz\\u0105tki polskiego internetu \\u2013 jej pierwsza ods\\u0142ona powsta\\u0142a ju\\u017c w 1998 r. Jednak od tego czasu wiele si\\u0119 zmieni\\u0142o w \\u015bwiecie online, wi\\u0119c przyszed\\u0142 czas na zmodernizowanie serwisu.  W efekcie procesu prowadzonego w \\u015bcis\\u0142ej wsp\\u00f3\\u0142pracy z klientem, kt\\u00f3rym byli ojcowie Dominikanie, powsta\\u0142a nowoczesna, interaktywna strona klasztoru. \\u00d3wczesny redaktor naczelny strony www, Dominikanin, pracowa\\u0142 jako cz\\u0142onek zespo\\u0142u razem z programistami i projektantami UX z Laboratorium EE. Dzi\\u0119ki temu uczy\\u0142 si\\u0119 podstaw projektowania z perspektywy odbiorcy.  Nowy serwis informacyjny klasztoru Dominikan\\u00f3w przeznaczony jest dla ca\\u0142ej spo\\u0142eczno\\u015bci dominika\\u0144skiej \\u2013 zar\\u00f3wno ojc\\u00f3w, zakonnik\\u00f3w, jak i wiernych. Opr\\u00f3cz zagadnie\\u0144 codziennych i aktualno\\u015bci, mo\\u017cna tam znale\\u017a\\u0107 refleksje na g\\u0142\\u0119bsze pytania dotycz\\u0105ce \\u017cycia, duchowo\\u015bci i religijno\\u015bci.", "id": "4f20b3c5-62b5-44b1-b7b7-bc1a0f1d9ef1"}]	[]	[{"type": "text", "value": "Strona internetowa klasztoru Dominikan\\u00f3w pami\\u0119ta pocz\\u0105tki polskiego internetu \\u2013 jej pierwsza ods\\u0142ona powsta\\u0142a ju\\u017c w 1998 r. Jednak od tego czasu wiele si\\u0119 zmieni\\u0142o w \\u015bwiecie online, wi\\u0119c przyszed\\u0142 czas na zmodernizowanie serwisu.  W efekcie procesu prowadzonego w \\u015bcis\\u0142ej wsp\\u00f3\\u0142pracy z klientem, kt\\u00f3rym byli ojcowie Dominikanie, powsta\\u0142a nowoczesna, interaktywna strona klasztoru. \\u00d3wczesny redaktor naczelny strony www, Dominikanin, pracowa\\u0142 jako cz\\u0142onek zespo\\u0142u razem z programistami i projektantami UX z Laboratorium EE. Dzi\\u0119ki temu uczy\\u0142 si\\u0119 podstaw projektowania z perspektywy odbiorcy.  Nowy serwis informacyjny klasztoru Dominikan\\u00f3w przeznaczony jest dla ca\\u0142ej spo\\u0142eczno\\u015bci dominika\\u0144skiej \\u2013 zar\\u00f3wno ojc\\u00f3w, zakonnik\\u00f3w, jak i wiernych. Opr\\u00f3cz zagadnie\\u0144 codziennych i aktualno\\u015bci, mo\\u017cna tam znale\\u017a\\u0107 refleksje na g\\u0142\\u0119bsze pytania dotycz\\u0105ce \\u017cycia, duchowo\\u015bci i religijno\\u015bci.", "id": "4f20b3c5-62b5-44b1-b7b7-bc1a0f1d9ef1"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 164}], "id": "a93a5f18-4204-4f22-a1a7-9253572e648a"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 164}], "id": "a93a5f18-4204-4f22-a1a7-9253572e648a"}]	<p>-</p>		<p>-</p>	f	\N	164		\N	http://www.dominikanie.pl/	t	t	t	t	<p>-</p>
63		\N	\N	[{"type": "text", "value": "W ramach inauguracji wsp\\u00f3\\u0142pracy Biblioteki Narodowej i Biblioth\\u00e8que nationale de France powsta\\u0142a wirtualna wystawa rycin Jana Piotra Norblina. Francuski rysownik, tworz\\u0105cy w Polsce w XVII w. pozostawi\\u0142 bogate archiwum w obu krajach.  Dzi\\u0119ki umieszczeniu wystawy w internecie, mo\\u017cna j\\u0105 odwiedza\\u0107 z ka\\u017cdego miejsca na \\u015bwiecie. Z my\\u015bl\\u0105 o zwiedzaj\\u0105cych powsta\\u0142y realistyczne wizualizacje tr\\u00f3jwymiarowych sal oddaj\\u0105ce wra\\u017cenie obecno\\u015bci na prawdziwej wystawie. Dodatkow\\u0105 atrakcj\\u0105 dla u\\u017cytkownik\\u00f3w jest ni\\u0107 czasu, na kt\\u00f3rej umieszczone s\\u0105 prace w porz\\u0105dku chronologicznym.  Z kolei na potrzeby kurator\\u00f3w powsta\\u0142 \\u0142atwy w samodzielnej obs\\u0142udze system tworzenia wystaw. Autorzy wystaw mogli samodzielnie tworzy\\u0107 kolejne cz\\u0119\\u015bci u\\u017cywaj\\u0105c cyfrowych wzor\\u00f3w. Proste modu\\u0142y pozwala\\u0142y na stworzenie kolejno: sal, \\u015bcian oraz umieszczenie zdigitalizowanej ryciny i jej opisu. W efekcie odwiedzaj\\u0105cy \\u0142atwo orientuj\\u0105 si\\u0119 w wirtualnej przestrzeni, a dodatkowo mog\\u0105 przybli\\u017ca\\u0107 i wycina\\u0107 wybrane fragmenty prac.", "id": "d88a9ba9-4b2e-4956-ba3d-94f2e1940e5e"}]	[]	[{"type": "text", "value": "W ramach inauguracji wsp\\u00f3\\u0142pracy Biblioteki Narodowej i Biblioth\\u00e8que nationale de France powsta\\u0142a wirtualna wystawa rycin Jana Piotra Norblina. Francuski rysownik, tworz\\u0105cy w Polsce w XVII w. pozostawi\\u0142 bogate archiwum w obu krajach.  Dzi\\u0119ki umieszczeniu wystawy w internecie, mo\\u017cna j\\u0105 odwiedza\\u0107 z ka\\u017cdego miejsca na \\u015bwiecie. Z my\\u015bl\\u0105 o zwiedzaj\\u0105cych powsta\\u0142y realistyczne wizualizacje tr\\u00f3jwymiarowych sal oddaj\\u0105ce wra\\u017cenie obecno\\u015bci na prawdziwej wystawie. Dodatkow\\u0105 atrakcj\\u0105 dla u\\u017cytkownik\\u00f3w jest ni\\u0107 czasu, na kt\\u00f3rej umieszczone s\\u0105 prace w porz\\u0105dku chronologicznym.  Z kolei na potrzeby kurator\\u00f3w powsta\\u0142 \\u0142atwy w samodzielnej obs\\u0142udze system tworzenia wystaw. Autorzy wystaw mogli samodzielnie tworzy\\u0107 kolejne cz\\u0119\\u015bci u\\u017cywaj\\u0105c cyfrowych wzor\\u00f3w. Proste modu\\u0142y pozwala\\u0142y na stworzenie kolejno: sal, \\u015bcian oraz umieszczenie zdigitalizowanej ryciny i jej opisu. W efekcie odwiedzaj\\u0105cy \\u0142atwo orientuj\\u0105 si\\u0119 w wirtualnej przestrzeni, a dodatkowo mog\\u0105 przybli\\u017ca\\u0107 i wycina\\u0107 wybrane fragmenty prac.", "id": "d88a9ba9-4b2e-4956-ba3d-94f2e1940e5e"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 165}], "id": "b5ce16a8-134e-49c7-bc99-7124cbc6b213"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 165}], "id": "b5ce16a8-134e-49c7-bc99-7124cbc6b213"}]	<p>-</p>		<p>-</p>	f	\N	165		\N	http://norblin.bn.org.pl/	t	t	t	t	<p>-</p>
64		\N	\N	[{"type": "text", "value": "Znanego operatora p\\u0142atno\\u015bci online, PayU, wsparli\\u015bmy w procesie tworzenia nowych produkt\\u00f3w i us\\u0142ug. W konsorcjum z firm\\u0105 beginning | creative collaboration agency, zaprojektowali\\u015bmy i przeprowadzili\\u015bmy proces tworzenia nowych produkt\\u00f3w i usprawnienia dotychczasowych us\\u0142ug wed\\u0142ug wskazanych przez Klienta potrzeb.  Proces, kt\\u00f3ry przeprowadzili\\u015bmy, sk\\u0142ada\\u0142 si\\u0119 z kilku etap\\u00f3w: \\u2013 wst\\u0119pny desk research (zapoznanie si\\u0119 z dotychczasowymi materia\\u0142ami i produktami, benchmarkami rynkowymi i innymi informacjami wa\\u017cnymi w kontek\\u015bcie p\\u0142atno\\u015bci online); \\u2013 stworzenie prototypu \\u015bcie\\u017cki zakupowej u\\u017cytkownika; \\u2013 testy z u\\u017cytkownikami; \\u2013 badania jako\\u015bciowe (fokusy); \\u2013 wdro\\u017cenie poprawek i stworzenie drugiej serii prototyp\\u00f3w; \\u2013 badania ilo\\u015bciowe (\\u015bcie\\u017cka zakupowa i klikalne makiety); \\u2013 wdro\\u017cenie poprawek i stworzenie finalnego prototypu.  W efekcie naszej pracy, opr\\u00f3cz wspomnianego modelu procesu dochodzenia do nowych rozwi\\u0105za\\u0144, powsta\\u0142 projekt pi\\u0119ciu zupe\\u0142nie nowych produkt\\u00f3w w portfolio Klienta.", "id": "f6e7c749-691a-486c-a81c-000a654bfac6"}]	[]	[{"type": "text", "value": "Znanego operatora p\\u0142atno\\u015bci online, PayU, wsparli\\u015bmy w procesie tworzenia nowych produkt\\u00f3w i us\\u0142ug. W konsorcjum z firm\\u0105 beginning | creative collaboration agency, zaprojektowali\\u015bmy i przeprowadzili\\u015bmy proces tworzenia nowych produkt\\u00f3w i usprawnienia dotychczasowych us\\u0142ug wed\\u0142ug wskazanych przez Klienta potrzeb.  Proces, kt\\u00f3ry przeprowadzili\\u015bmy, sk\\u0142ada\\u0142 si\\u0119 z kilku etap\\u00f3w: \\u2013 wst\\u0119pny desk research (zapoznanie si\\u0119 z dotychczasowymi materia\\u0142ami i produktami, benchmarkami rynkowymi i innymi informacjami wa\\u017cnymi w kontek\\u015bcie p\\u0142atno\\u015bci online); \\u2013 stworzenie prototypu \\u015bcie\\u017cki zakupowej u\\u017cytkownika; \\u2013 testy z u\\u017cytkownikami; \\u2013 badania jako\\u015bciowe (fokusy); \\u2013 wdro\\u017cenie poprawek i stworzenie drugiej serii prototyp\\u00f3w; \\u2013 badania ilo\\u015bciowe (\\u015bcie\\u017cka zakupowa i klikalne makiety); \\u2013 wdro\\u017cenie poprawek i stworzenie finalnego prototypu.  W efekcie naszej pracy, opr\\u00f3cz wspomnianego modelu procesu dochodzenia do nowych rozwi\\u0105za\\u0144, powsta\\u0142 projekt pi\\u0119ciu zupe\\u0142nie nowych produkt\\u00f3w w portfolio Klienta.", "id": "f6e7c749-691a-486c-a81c-000a654bfac6"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 166}], "id": "f7537b53-4fc2-4724-81a1-72d78dbdb3bc"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 166}], "id": "f7537b53-4fc2-4724-81a1-72d78dbdb3bc"}]	<p>-</p>		<p>-</p>	f	\N	166		\N		t	t	t	t	<p>-</p>
65		\N	\N	[{"type": "text", "value": "Wiele organizacji, instytucji czy projekt\\u00f3w spo\\u0142ecznych zwraca si\\u0119 do nas z pro\\u015bb\\u0105 o wsparcie w budowie w\\u0142asnej strony czy serwisu internetowego. Nasze rozwi\\u0105zania cechuje klarowno\\u015b\\u0107 i intuicyjna nawigacja. Dzi\\u0119ki prostym rozwi\\u0105zaniom strony s\\u0105 \\u0142atwe w obs\\u0142udze przez w\\u0142a\\u015bcicieli, administrator\\u00f3w czy redaktor\\u00f3w i jednocze\\u015bnie ch\\u0119tnie odwiedzane i czytane przez go\\u015bci zainteresowanych publikowanymi materia\\u0142ami.  Dla Fundacji Rozwoju Dzieci stworzyli\\u015bmy stron\\u0119 opart\\u0105 na zasadzie klock\\u00f3w i puzzli. Kolorowe klikalne kafelki nawi\\u0105zuj\\u0105 do logo Fundacji. Dzi\\u0119ki wyra\\u017anemu podzia\\u0142owi, \\u0142atwo trafi\\u0107 do poszukiwanych tre\\u015bci: film\\u00f3w, aktualno\\u015bci czy informacji o fundacji. Dodatkowo guzik has\\u0142em \\u201eWp\\u0142a\\u0107\\u201d stanowi wyra\\u017ane Call to action zach\\u0119caj\\u0105c do przekazania dotacji.", "id": "80fc8e94-8ebc-4afa-a0a4-676435eac02a"}]	[]	[{"type": "text", "value": "Wiele organizacji, instytucji czy projekt\\u00f3w spo\\u0142ecznych zwraca si\\u0119 do nas z pro\\u015bb\\u0105 o wsparcie w budowie w\\u0142asnej strony czy serwisu internetowego. Nasze rozwi\\u0105zania cechuje klarowno\\u015b\\u0107 i intuicyjna nawigacja. Dzi\\u0119ki prostym rozwi\\u0105zaniom strony s\\u0105 \\u0142atwe w obs\\u0142udze przez w\\u0142a\\u015bcicieli, administrator\\u00f3w czy redaktor\\u00f3w i jednocze\\u015bnie ch\\u0119tnie odwiedzane i czytane przez go\\u015bci zainteresowanych publikowanymi materia\\u0142ami.  Dla Fundacji Rozwoju Dzieci stworzyli\\u015bmy stron\\u0119 opart\\u0105 na zasadzie klock\\u00f3w i puzzli. Kolorowe klikalne kafelki nawi\\u0105zuj\\u0105 do logo Fundacji. Dzi\\u0119ki wyra\\u017anemu podzia\\u0142owi, \\u0142atwo trafi\\u0107 do poszukiwanych tre\\u015bci: film\\u00f3w, aktualno\\u015bci czy informacji o fundacji. Dodatkowo guzik has\\u0142em \\u201eWp\\u0142a\\u0107\\u201d stanowi wyra\\u017ane Call to action zach\\u0119caj\\u0105c do przekazania dotacji.", "id": "80fc8e94-8ebc-4afa-a0a4-676435eac02a"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 167}], "id": "768cd7a4-7756-45df-8a26-b4db6e4cf940"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 167}], "id": "768cd7a4-7756-45df-8a26-b4db6e4cf940"}]	<p>-</p>		<p>-</p>	f	\N	167		\N	http://www.frd.org.pl/	t	t	t	t	<p>-</p>
66		\N	\N	[{"type": "text", "value": "Najwi\\u0119kszy portal informacyjny i baza wiedzy o polskich organizacjach pozarz\\u0105dowych \\u2013 ngo.pl \\u2013 zwr\\u00f3ci\\u0142a si\\u0119 do nas z pro\\u015bb\\u0105 o rekomendacje dotycz\\u0105ce rozwi\\u0105za\\u0144 technologicznych dla organizacji.  Przeprowadzili\\u015bmy kilkumiesi\\u0119czny projekt wychodz\\u0105cy od audytu dotychczasowych technologii. Obj\\u0119li\\u015bmy badaniami r\\u00f3\\u017cne rozwi\\u0105zania dotychczas wykorzystywane przez portal oraz ich spos\\u00f3b dzia\\u0142ania, w\\u0142a\\u015bciwo\\u015bci i funkcjonalno\\u015bci.  W efekcie powsta\\u0142 zbi\\u00f3r rekomendacji podpowiadaj\\u0105cych, jak osi\\u0105ga\\u0107 zaplanowane cele przy wykorzystaniu odpowiednich technologii i rozwi\\u0105za\\u0144 IT.", "id": "240b7e7b-863f-42a1-ab25-644a26d0d07b"}]	[]	[{"type": "text", "value": "Najwi\\u0119kszy portal informacyjny i baza wiedzy o polskich organizacjach pozarz\\u0105dowych \\u2013 ngo.pl \\u2013 zwr\\u00f3ci\\u0142a si\\u0119 do nas z pro\\u015bb\\u0105 o rekomendacje dotycz\\u0105ce rozwi\\u0105za\\u0144 technologicznych dla organizacji.  Przeprowadzili\\u015bmy kilkumiesi\\u0119czny projekt wychodz\\u0105cy od audytu dotychczasowych technologii. Obj\\u0119li\\u015bmy badaniami r\\u00f3\\u017cne rozwi\\u0105zania dotychczas wykorzystywane przez portal oraz ich spos\\u00f3b dzia\\u0142ania, w\\u0142a\\u015bciwo\\u015bci i funkcjonalno\\u015bci.  W efekcie powsta\\u0142 zbi\\u00f3r rekomendacji podpowiadaj\\u0105cych, jak osi\\u0105ga\\u0107 zaplanowane cele przy wykorzystaniu odpowiednich technologii i rozwi\\u0105za\\u0144 IT.", "id": "240b7e7b-863f-42a1-ab25-644a26d0d07b"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 168}], "id": "29520db9-097c-4859-9a44-e07d1d06cca9"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 168}], "id": "29520db9-097c-4859-9a44-e07d1d06cca9"}]	<p>-</p>		<p>-</p>	f	\N	168		\N		t	t	t	t	<p>-</p>
67		\N	\N	[{"type": "text", "value": "New Europe 100 to strona stworzona przez nas w 2015 roku, na kt\\u00f3rej mo\\u017cna obejrze\\u0107 profile 200 innowator\\u00f3w spo\\u0142ecznych z naszej cz\\u0119\\u015bci Europy. Od dw\\u00f3ch lat Fundacja Res Publica wraz z Googlem, Funduszem Wyszehradzkim oraz Financial Times publikuje list\\u0119 100 os\\u00f3b rocznie, kt\\u00f3re tworz\\u0105 innowacyjne produkty technologiczne, spo\\u0142eczne i dzi\\u0119ki temu wp\\u0142ywaj\\u0105 na popraw\\u0119 rzeczywisto\\u015bci.  Naszym zadaniem by\\u0142o stworzenie czytelnej, przejrzystej strony u\\u0142atwiaj\\u0105cej poznanie wszystkich nominowanych oraz u\\u0142atwienie procedury nominowania.", "id": "d63af260-c971-4da8-af57-461f5e861d84"}]	[]	[{"type": "text", "value": "New Europe 100 to strona stworzona przez nas w 2015 roku, na kt\\u00f3rej mo\\u017cna obejrze\\u0107 profile 200 innowator\\u00f3w spo\\u0142ecznych z naszej cz\\u0119\\u015bci Europy. Od dw\\u00f3ch lat Fundacja Res Publica wraz z Googlem, Funduszem Wyszehradzkim oraz Financial Times publikuje list\\u0119 100 os\\u00f3b rocznie, kt\\u00f3re tworz\\u0105 innowacyjne produkty technologiczne, spo\\u0142eczne i dzi\\u0119ki temu wp\\u0142ywaj\\u0105 na popraw\\u0119 rzeczywisto\\u015bci.  Naszym zadaniem by\\u0142o stworzenie czytelnej, przejrzystej strony u\\u0142atwiaj\\u0105cej poznanie wszystkich nominowanych oraz u\\u0142atwienie procedury nominowania.", "id": "d63af260-c971-4da8-af57-461f5e861d84"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 169}], "id": "b46c27d5-6d89-4437-a346-43e45bdf952b"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 169}], "id": "b46c27d5-6d89-4437-a346-43e45bdf952b"}]	<p>-</p>		<p>-</p>	f	\N	169		\N		t	t	t	t	<p>-</p>
68		\N	\N	[{"type": "text", "value": "Wiele organizacji, instytucji czy projekt\\u00f3w spo\\u0142ecznych zwraca si\\u0119 do nas z pro\\u015bb\\u0105 o wsparcie w budowie w\\u0142asnej strony czy serwisu internetowego. Nasze rozwi\\u0105zania cechuje klarowno\\u015b\\u0107 i intuicyjna nawigacja. Dzi\\u0119ki prostym rozwi\\u0105zaniom strony s\\u0105 \\u0142atwe w obs\\u0142udze przez w\\u0142a\\u015bcicieli, administrator\\u00f3w czy redaktor\\u00f3w i jednocze\\u015bnie ch\\u0119tnie odwiedzane i czytane przez go\\u015bci zainteresowanych publikowanymi materia\\u0142ami.  Archipelag Jazd\\u00f3w to projekt artystyczno-spo\\u0142eczny zainicjowany przez Centrum Sztuki Wsp\\u00f3\\u0142czesnej w 2015 r. Celem by\\u0142o zmapowanie niezwyk\\u0142ej oazy, jak\\u0105 jest Jazd\\u00f3w \\u2013 fragment zieleni w centrum Warszawy.  Strona, kt\\u00f3r\\u0105 stworzyli\\u015bmy nawi\\u0105zuje do mapy i pozwala prze\\u015bledzi\\u0107 wa\\u017cne dla projektu miejsca, jednocze\\u015bnie informuje o idei samego dzia\\u0142ania oraz poszczeg\\u00f3lnych wydarzeniach.", "id": "8b0c57f1-2c28-4f73-92fb-2670c0fa2dfc"}]	[]	[{"type": "text", "value": "Wiele organizacji, instytucji czy projekt\\u00f3w spo\\u0142ecznych zwraca si\\u0119 do nas z pro\\u015bb\\u0105 o wsparcie w budowie w\\u0142asnej strony czy serwisu internetowego. Nasze rozwi\\u0105zania cechuje klarowno\\u015b\\u0107 i intuicyjna nawigacja. Dzi\\u0119ki prostym rozwi\\u0105zaniom strony s\\u0105 \\u0142atwe w obs\\u0142udze przez w\\u0142a\\u015bcicieli, administrator\\u00f3w czy redaktor\\u00f3w i jednocze\\u015bnie ch\\u0119tnie odwiedzane i czytane przez go\\u015bci zainteresowanych publikowanymi materia\\u0142ami.  Archipelag Jazd\\u00f3w to projekt artystyczno-spo\\u0142eczny zainicjowany przez Centrum Sztuki Wsp\\u00f3\\u0142czesnej w 2015 r. Celem by\\u0142o zmapowanie niezwyk\\u0142ej oazy, jak\\u0105 jest Jazd\\u00f3w \\u2013 fragment zieleni w centrum Warszawy.  Strona, kt\\u00f3r\\u0105 stworzyli\\u015bmy nawi\\u0105zuje do mapy i pozwala prze\\u015bledzi\\u0107 wa\\u017cne dla projektu miejsca, jednocze\\u015bnie informuje o idei samego dzia\\u0142ania oraz poszczeg\\u00f3lnych wydarzeniach.", "id": "8b0c57f1-2c28-4f73-92fb-2670c0fa2dfc"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 170}], "id": "1bff8f99-f98d-4814-847f-de7e56bbcb50"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 170}], "id": "1bff8f99-f98d-4814-847f-de7e56bbcb50"}]	<p>-</p>		<p>-</p>	f	\N	170		\N		t	t	t	t	<p>-</p>
69		\N	\N	[{"type": "text", "value": "Naprawmy.to by\\u0142 pierwszym polskim serwisem wykorzystuj\\u0105cym niezwykle popularny obecnie model w\\u0142\\u0105czania mieszka\\u0144c\\u00f3w w tworzenie przestrzeni polskich miast. Powsta\\u0142 on w 2012 roku, zanim upowszechniono w naszym kraju g\\u0142osowanie w bud\\u017cetach partycypacyjnych i pojawi\\u0142y si\\u0119 inne narz\\u0119dzia IT wspieraj\\u0105ce aktywizacj\\u0119 mieszka\\u0144c\\u00f3w.  G\\u0142\\u00f3wnym za\\u0142o\\u017ceniem serwisu, kt\\u00f3ry bazuje na angielskim portalu Fix My Street, jest zg\\u0142aszanie usterek w przestrzeni publicznej. Mieszka\\u0144cy mog\\u0105 bezp\\u0142atnie umieszcza\\u0107 na mapie swoich miejscowo\\u015bci informacje o kwestiach wymagaj\\u0105cych interwencji w\\u0142adz samorz\\u0105dowych. Usterki s\\u0105 pogrupowane w 5 kategoriach (infrastruktury, bezpiecze\\u0144stwa, budynk\\u00f3w, przyrody i zbiorczej kategorii \\u201einne\\u201d). Dzi\\u0119ki przyjaznemu interfejsowi u\\u017cytkownicy mog\\u0105 \\u015bledzi\\u0107 post\\u0119py w naprawie zg\\u0142oszonych przez siebie usterek i awarii. Na pocz\\u0105tku 2016 roku dzi\\u0119ki serwisowi uda\\u0142o si\\u0119 rozwi\\u0105za\\u0107 ponad 15 000 zg\\u0142oszonych usterek. Obecnie dzia\\u0142a on w 10 miastach.", "id": "286364ac-512f-4b5b-8bdd-3db24b0f3f4f"}]	[]	[{"type": "text", "value": "Naprawmy.to by\\u0142 pierwszym polskim serwisem wykorzystuj\\u0105cym niezwykle popularny obecnie model w\\u0142\\u0105czania mieszka\\u0144c\\u00f3w w tworzenie przestrzeni polskich miast. Powsta\\u0142 on w 2012 roku, zanim upowszechniono w naszym kraju g\\u0142osowanie w bud\\u017cetach partycypacyjnych i pojawi\\u0142y si\\u0119 inne narz\\u0119dzia IT wspieraj\\u0105ce aktywizacj\\u0119 mieszka\\u0144c\\u00f3w.  G\\u0142\\u00f3wnym za\\u0142o\\u017ceniem serwisu, kt\\u00f3ry bazuje na angielskim portalu Fix My Street, jest zg\\u0142aszanie usterek w przestrzeni publicznej. Mieszka\\u0144cy mog\\u0105 bezp\\u0142atnie umieszcza\\u0107 na mapie swoich miejscowo\\u015bci informacje o kwestiach wymagaj\\u0105cych interwencji w\\u0142adz samorz\\u0105dowych. Usterki s\\u0105 pogrupowane w 5 kategoriach (infrastruktury, bezpiecze\\u0144stwa, budynk\\u00f3w, przyrody i zbiorczej kategorii \\u201einne\\u201d). Dzi\\u0119ki przyjaznemu interfejsowi u\\u017cytkownicy mog\\u0105 \\u015bledzi\\u0107 post\\u0119py w naprawie zg\\u0142oszonych przez siebie usterek i awarii. Na pocz\\u0105tku 2016 roku dzi\\u0119ki serwisowi uda\\u0142o si\\u0119 rozwi\\u0105za\\u0107 ponad 15 000 zg\\u0142oszonych usterek. Obecnie dzia\\u0142a on w 10 miastach.", "id": "286364ac-512f-4b5b-8bdd-3db24b0f3f4f"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 157}], "id": "f9a84a75-911c-4c4c-b7f1-8966653e3719"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 157}], "id": "f9a84a75-911c-4c4c-b7f1-8966653e3719"}]	<p>-</p>		<p>-</p>	f	\N	157		\N	http://www.naprawmyto.pl/	t	t	t	t	<p>-</p>
70		\N	\N	[{"type": "text", "value": "GiK stworzyli\\u015bmy w 2014 roku realizuj\\u0105c projekt gier opowiadaj\\u0105cych o historii czterech miejscowo\\u015bci: Radzynia Podlaskiego, Niedrzwicy Du\\u017cej, Zakrz\\u00f3wka i Jab\\u0142onnej. Celem projektu \\u201eCyfrowa kraina\\u201d by\\u0142o opowiedzenie o historii lokalnej przy pomocy narz\\u0119dzi cyfrowych anga\\u017cuj\\u0105cych najm\\u0142odszych mieszka\\u0144c\\u00f3w.  Przygotowuj\\u0105c scenariusze gier przeprowadzili\\u015bmy warsztaty z nastolatkami z danych miejscowo\\u015bci, kt\\u00f3rzy aktywnie dzia\\u0142aj\\u0105 w Pracowniach Orange. Koduj\\u0105c gry zdecydowali\\u015bmy si\\u0119 na zaprojektowanie ca\\u0142ego mechanizmu edytora, dzi\\u0119ki czemu u\\u017cytkownicy mog\\u0105 nie tylko gra\\u0107, ale tak\\u017ce tworzy\\u0107 nowe, w\\u0142asne gry w oparciu o przygotowan\\u0105 przez nas grafik\\u0119 (28 postaci, 400 klatek animacji, 60 budynk\\u00f3w).  GiK to narz\\u0119dzie umo\\u017cliwiaj\\u0105ce przej\\u015bcie ze \\u015bwiata graczy w \\u015bwiat projektant\\u00f3w gier. Edytor powsta\\u0142 w technologii HMTL5, co umo\\u017cliwi korzystanie z niego we wszystkich popularnych przegl\\u0105darkach. Nasze narz\\u0119dzie zbudowali\\u015bmy na bazie otwartego oprogramowania \\u2013 silnika Melon JS. Edytor przetestowali\\u015bmy te\\u017c z najm\\u0142odszymi u\\u017cytkownikami przygotowuj\\u0105c specjalnie dla nich warsztaty animacyjne.", "id": "5bb659d7-de41-4a29-b45f-3b7ea440e5de"}]	[]	[{"type": "text", "value": "GiK stworzyli\\u015bmy w 2014 roku realizuj\\u0105c projekt gier opowiadaj\\u0105cych o historii czterech miejscowo\\u015bci: Radzynia Podlaskiego, Niedrzwicy Du\\u017cej, Zakrz\\u00f3wka i Jab\\u0142onnej. Celem projektu \\u201eCyfrowa kraina\\u201d by\\u0142o opowiedzenie o historii lokalnej przy pomocy narz\\u0119dzi cyfrowych anga\\u017cuj\\u0105cych najm\\u0142odszych mieszka\\u0144c\\u00f3w.  Przygotowuj\\u0105c scenariusze gier przeprowadzili\\u015bmy warsztaty z nastolatkami z danych miejscowo\\u015bci, kt\\u00f3rzy aktywnie dzia\\u0142aj\\u0105 w Pracowniach Orange. Koduj\\u0105c gry zdecydowali\\u015bmy si\\u0119 na zaprojektowanie ca\\u0142ego mechanizmu edytora, dzi\\u0119ki czemu u\\u017cytkownicy mog\\u0105 nie tylko gra\\u0107, ale tak\\u017ce tworzy\\u0107 nowe, w\\u0142asne gry w oparciu o przygotowan\\u0105 przez nas grafik\\u0119 (28 postaci, 400 klatek animacji, 60 budynk\\u00f3w).  GiK to narz\\u0119dzie umo\\u017cliwiaj\\u0105ce przej\\u015bcie ze \\u015bwiata graczy w \\u015bwiat projektant\\u00f3w gier. Edytor powsta\\u0142 w technologii HMTL5, co umo\\u017cliwi korzystanie z niego we wszystkich popularnych przegl\\u0105darkach. Nasze narz\\u0119dzie zbudowali\\u015bmy na bazie otwartego oprogramowania \\u2013 silnika Melon JS. Edytor przetestowali\\u015bmy te\\u017c z najm\\u0142odszymi u\\u017cytkownikami przygotowuj\\u0105c specjalnie dla nich warsztaty animacyjne.", "id": "5bb659d7-de41-4a29-b45f-3b7ea440e5de"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 171}], "id": "53fbf437-3b34-448d-8f6d-d5d28ed15a47"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 171}], "id": "53fbf437-3b34-448d-8f6d-d5d28ed15a47"}]	<p>-</p>		<p>-</p>	f	\N	171		\N	http://gik.laboratorium.ee/	t	t	t	t	<p>-</p>
71		\N	\N	[{"type": "text", "value": "Trzy animacje poklatkowe z elementami motion design stworzyli\\u015bmy w 2015 roku na zlecenie Miejskiej Biblioteki Publicznej w O\\u015bwi\\u0119cimiu. Kr\\u00f3tkie animacje zach\\u0119ca\\u0142y najm\\u0142odszych czytelnik\\u00f3w do wykorzystywania form komiksu, infografiki i animacji poklatkowej w opowiadaniu o literaturze. Dzia\\u0142ania te by\\u0142y powi\\u0105zane z kampani\\u0105 zach\\u0119caj\\u0105c\\u0105 do startowania w 22. edycji konkursu na Og\\u00f3lnopolsk\\u0105 Nagrod\\u0119 Literack\\u0105 im. K. Makuszy\\u0144skiego \\u2013 Kozio\\u0142ka.  Na przygotowanie jednej animacji trzeba by\\u0142o po\\u015bwi\\u0119ci\\u0107 oko\\u0142o 80 godzin. Tworzenie animacji zak\\u0142ada\\u0142o prac\\u0119 na przygotowanym przez klienta briefie, na podstawie kt\\u00f3rego opracowali\\u015bmy scenariusze, zaproponowali\\u015bmy szkice 6 postaci i stworzyli\\u015bmy storyboardy. Wszystkie pomys\\u0142y i poprawki w fazie testowej zosta\\u0142y wdro\\u017cone w formie uproszczonych animacji \\u2013 animatics, kt\\u00f3re mia\\u0142y s\\u0142ab\\u0105 rozdzielczo\\u015b\\u0107 i zak\\u0142ada\\u0142y szkicowo\\u015b\\u0107, ale u\\u0142atwia\\u0142y podj\\u0119cie ostatecznych decyzji.  W kwietniu 2016 roku animacje otrzyma\\u0142y wyr\\u00f3\\u017cnienie w mi\\u0119dzynarodowym konkursie MEDEA Awards 2016 \\u2013 nagrod\\u0119, kt\\u00f3ra przyznawana jest za innowacyjno\\u015b\\u0107 w promocji edukacji przez multimedia.", "id": "280f2c2f-2bb4-4657-a1da-6190e624a1eb"}]	[]	[{"type": "text", "value": "Trzy animacje poklatkowe z elementami motion design stworzyli\\u015bmy w 2015 roku na zlecenie Miejskiej Biblioteki Publicznej w O\\u015bwi\\u0119cimiu. Kr\\u00f3tkie animacje zach\\u0119ca\\u0142y najm\\u0142odszych czytelnik\\u00f3w do wykorzystywania form komiksu, infografiki i animacji poklatkowej w opowiadaniu o literaturze. Dzia\\u0142ania te by\\u0142y powi\\u0105zane z kampani\\u0105 zach\\u0119caj\\u0105c\\u0105 do startowania w 22. edycji konkursu na Og\\u00f3lnopolsk\\u0105 Nagrod\\u0119 Literack\\u0105 im. K. Makuszy\\u0144skiego \\u2013 Kozio\\u0142ka.  Na przygotowanie jednej animacji trzeba by\\u0142o po\\u015bwi\\u0119ci\\u0107 oko\\u0142o 80 godzin. Tworzenie animacji zak\\u0142ada\\u0142o prac\\u0119 na przygotowanym przez klienta briefie, na podstawie kt\\u00f3rego opracowali\\u015bmy scenariusze, zaproponowali\\u015bmy szkice 6 postaci i stworzyli\\u015bmy storyboardy. Wszystkie pomys\\u0142y i poprawki w fazie testowej zosta\\u0142y wdro\\u017cone w formie uproszczonych animacji \\u2013 animatics, kt\\u00f3re mia\\u0142y s\\u0142ab\\u0105 rozdzielczo\\u015b\\u0107 i zak\\u0142ada\\u0142y szkicowo\\u015b\\u0107, ale u\\u0142atwia\\u0142y podj\\u0119cie ostatecznych decyzji.  W kwietniu 2016 roku animacje otrzyma\\u0142y wyr\\u00f3\\u017cnienie w mi\\u0119dzynarodowym konkursie MEDEA Awards 2016 \\u2013 nagrod\\u0119, kt\\u00f3ra przyznawana jest za innowacyjno\\u015b\\u0107 w promocji edukacji przez multimedia.", "id": "280f2c2f-2bb4-4657-a1da-6190e624a1eb"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 172}], "id": "1d049412-2aff-4b20-904f-14eac1c0596f"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 172}], "id": "1d049412-2aff-4b20-904f-14eac1c0596f"}]	<p>-</p>		<p>-</p>	f	\N	172		\N	https://www.youtube.com/watch?v=WxIOKNDvIn0	t	t	t	t	<p>-</p>
51		\N	\N	[{"type": "text", "value": "Problem bezdomno\\u015bci dotyka w Warszawie prawie trzech tysi\\u0119cy os\\u00f3b. Przyczyny zjawiska mog\\u0105 by\\u0107 bardzo r\\u00f3\\u017cne r\\u00f3\\u017cne: niekt\\u00f3rzy trafili na ulic\\u0119 z powodu na problem\\u00f3w rodzinnych, inni przez d\\u0142ugi lub d\\u0142ugotrwa\\u0142e bezrobocie. Bezdomno\\u015b\\u0107 ma wiele wymiar\\u00f3w, a historia ka\\u017cdego cz\\u0142owieka jest inna.  \\u017beby to zobrazowa\\u0107, stworzyli\\u015bmy interaktywne wizualizacje w ramach projektu \\u201eNajpierw mieszkanie\\u201d, kt\\u00f3rego operatorem jest fundacja \\u201eIus Medicinae\\u201d. Nasze wizualizacje opieraj\\u0105 si\\u0119 na siedemnastu przyk\\u0142adach. Ka\\u017cdy dotyczy konkretnej osoby, kt\\u00f3ra na potrzeby projektu otrzyma\\u0142a fikcyjne imi\\u0119. Na stronie wy\\u015bwietlaj\\u0105 si\\u0119 kafelki opisuj\\u0105ce kr\\u00f3tko podstawowe fakty dotycz\\u0105ce bohater\\u00f3w. Mo\\u017cna zobaczy\\u0107, czy na przestrzeni lat dany bohater przestrzega\\u0142 prawa, mia\\u0142 gdzie mieszka\\u0107 albo czy otrzymywa\\u0142 pomoc spo\\u0142eczn\\u0105. Dowiadujemy si\\u0119 jaki ma stan cywilny i czy ma dzieci. Kr\\u00f3tki tekst opisuje histori\\u0119 danej osoby i od kiedy mo\\u017cna uzna\\u0107, \\u017ce jest bezdomna. Dzi\\u0119ki temu problem bezdomno\\u015bci obrazowany jest osobistymi historiami.", "id": "d3171216-0ac8-4060-9cb9-51588df78d8f"}]	[]	[{"type": "text", "value": "Problem bezdomno\\u015bci dotyka w Warszawie prawie trzech tysi\\u0119cy os\\u00f3b. Przyczyny zjawiska mog\\u0105 by\\u0107 bardzo r\\u00f3\\u017cne r\\u00f3\\u017cne: niekt\\u00f3rzy trafili na ulic\\u0119 z powodu na problem\\u00f3w rodzinnych, inni przez d\\u0142ugi lub d\\u0142ugotrwa\\u0142e bezrobocie. Bezdomno\\u015b\\u0107 ma wiele wymiar\\u00f3w, a historia ka\\u017cdego cz\\u0142owieka jest inna.  \\u017beby to zobrazowa\\u0107, stworzyli\\u015bmy interaktywne wizualizacje w ramach projektu \\u201eNajpierw mieszkanie\\u201d, kt\\u00f3rego operatorem jest fundacja \\u201eIus Medicinae\\u201d. Nasze wizualizacje opieraj\\u0105 si\\u0119 na siedemnastu przyk\\u0142adach. Ka\\u017cdy dotyczy konkretnej osoby, kt\\u00f3ra na potrzeby projektu otrzyma\\u0142a fikcyjne imi\\u0119. Na stronie wy\\u015bwietlaj\\u0105 si\\u0119 kafelki opisuj\\u0105ce kr\\u00f3tko podstawowe fakty dotycz\\u0105ce bohater\\u00f3w. Mo\\u017cna zobaczy\\u0107, czy na przestrzeni lat dany bohater przestrzega\\u0142 prawa, mia\\u0142 gdzie mieszka\\u0107 albo czy otrzymywa\\u0142 pomoc spo\\u0142eczn\\u0105. Dowiadujemy si\\u0119 jaki ma stan cywilny i czy ma dzieci. Kr\\u00f3tki tekst opisuje histori\\u0119 danej osoby i od kiedy mo\\u017cna uzna\\u0107, \\u017ce jest bezdomna. Dzi\\u0119ki temu problem bezdomno\\u015bci obrazowany jest osobistymi historiami.", "id": "d3171216-0ac8-4060-9cb9-51588df78d8f"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 154}], "id": "e57dffa3-53e9-4874-acca-9f0753eb92b4"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 154}], "id": "e57dffa3-53e9-4874-acca-9f0753eb92b4"}]	<p>-</p>		<p>-</p>	f	\N	154		\N	http://www.czynajpierwmieszkanie.pl/bezdomnosc/wizualizacja	f	f	t	f	<p>-</p>
39	Aplikacja przeznaczona dla pracowników gmin oraz osób uprawnionych do ewidencji i kontroli budynków mieszkalnych.	\N	Aplikacja przeznaczona dla pracowników gmin oraz osób uprawnionych do ewidencji i kontroli budynków mieszkalnych.	[{"type": "text", "value": "Poprawa jako\\u015bci powietrza w ca\\u0142ej Polsce poprzez stworzenie aplikacji, kt\\u00f3rej celem jest zbieranie danych ewidencyjnych budynk\\u00f3w mieszkalnych.", "id": "cbdf4088-cca3-49e5-8759-14164695eae4"}, {"type": "tiles_list", "value": [{"heading": "Innowacyjno\\u015b\\u0107", "description": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}], "id": "d8440d64-2ad7-457d-8b5b-e9c9ce5a013a"}]	[]	[{"type": "text", "value": "Poprawa jako\\u015bci powietrza w ca\\u0142ej Polsce poprzez stworzenie aplikacji, kt\\u00f3rej celem jest zbieranie danych ewidencyjnych budynk\\u00f3w mieszkalnych.", "id": "cbdf4088-cca3-49e5-8759-14164695eae4"}, {"type": "tiles_list", "value": [{"heading": "Innowacyjno\\u015b\\u0107", "description": "<p>Podczas warsztat\\u00f3w wydobywczych przeanalizowali\\u015bmy dok\\u0142adnie potrzeby naszych klient\\u00f3w, bior\\u0105c pod uwag\\u0119 cel i perspektyw\\u0119 kluczowych interesariuszy. Nast\\u0119pnie opracowali\\u015bmy prototyp, kt\\u00f3ry poddali\\u015bmy testom z u\\u017cytkownikami. Po zastosowaniu uwag i ulepszeniu prototypu przyst\\u0105pili\\u015bmy do iteracyjnego rozwoju produkt. Dzi\\u0119ki temu stworzyli\\u015bmy aplikacj\\u0119 zbieraj\\u0105c\\u0105 dane dzi\\u0119ki, kt\\u00f3rym mo\\u017cliwe jest opracowanie strategii poprawy jako\\u015bci powietrza dla ca\\u0142ego kraju.</p>"}], "id": "d8440d64-2ad7-457d-8b5b-e9c9ce5a013a"}]	[{"type": "tiles_list", "value": [{"heading": "Warsztaty wydobywcze", "image": 80}, {"heading": "Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych", "image": 97}, {"heading": "Testy z u\\u017cytkownikami", "image": 98}, {"heading": "Zbieranie danych", "image": 85}], "id": "a65f42f3-2520-4ad5-9d1e-6ffab509a3e6"}]	[]	[{"type": "tiles_list", "value": [{"heading": "Warsztaty wydobywcze", "image": 80}, {"heading": "Prototyp formularza z pierwsz\\u0105 baz\\u0105 danych", "image": 97}, {"heading": "Testy z u\\u017cytkownikami", "image": 98}, {"heading": "Zbieranie danych", "image": 85}], "id": "a65f42f3-2520-4ad5-9d1e-6ffab509a3e6"}]	<p>“Czyste powietrze<br/> to wyzwanie cywilizacyjne, miara tego, czy Polska jest naprawdę dojrzałym krajem”</p>		<p>“Czyste powietrze<br/> to wyzwanie cywilizacyjne, miara tego, czy Polska jest naprawdę dojrzałym krajem”</p>	f	\N	137		136	https://play.google.com/store/apps/details?id=ee.laboratorium.zone	f	f	f	f	<p>Premier Mateusz Morawiecki</p>
46		\N	\N	[{"type": "text", "value": "KULTURA DOST\\u0118PNA DLA KA\\u017bDEGO Serwis , kt\\u00f3ry stworzyli\\u015bmy w 2015 roku, powsta\\u0142 po to, aby u\\u0142atwi\\u0107 Polakom dotarcie do taniej oferty kulturalnej wysokiej jako\\u015bci. Naszym zadaniem by\\u0142o upowszechnienie wiedzy o niskobud\\u017cetowych, czyli kosztuj\\u0105cych mniej ni\\u017c 20 z\\u0142otych, wydarzeniach kulturalnych, kt\\u00f3re odbywaj\\u0105 si\\u0119 w ca\\u0142ej Polsce.  Aby u\\u0142atwi\\u0107 przeszukiwanie program\\u00f3w instytucji kultury z ca\\u0142ego kraju, w portalu kulturadostepna.pl zastosowali\\u015bmy rozbudowany silnik wyszukiwania Elasticsearch. To rozwi\\u0105zanie idealnie nadaje si\\u0119 do pracy z ogromnymi bazami danych i wyszukiwania pe\\u0142notekstowego.  W serwisie zastosowali\\u015bmy r\\u00f3wnie\\u017c rozwi\\u0105zania geolokalizacyjne, co pozwoli\\u0142o na prezentowanie u\\u017cytkownikom sposob\\u00f3w na sp\\u0119dzenie wolnego czasu w miejscu ich zamieszkania czy podczas wyjazd\\u00f3w do innego miasta. Dzi\\u0119ki po\\u0142\\u0105czeniu baz danych instytucji z ca\\u0142ego kraju uda\\u0142o nam si\\u0119 stworzy\\u0107 kompletn\\u0105 platform\\u0119. W serwisie zastosowali\\u015bmy r\\u00f3wnie\\u017c opcj\\u0119 sugerowania wydarze\\u0144, a z my\\u015bl\\u0105 o organizatorach imprez wprowadzili\\u015bmy generator plakat\\u00f3w oraz generator ulotek.", "id": "5855a56f-62f6-49d4-9081-4ea257c9e1e2"}]	[]	[{"type": "text", "value": "KULTURA DOST\\u0118PNA DLA KA\\u017bDEGO Serwis , kt\\u00f3ry stworzyli\\u015bmy w 2015 roku, powsta\\u0142 po to, aby u\\u0142atwi\\u0107 Polakom dotarcie do taniej oferty kulturalnej wysokiej jako\\u015bci. Naszym zadaniem by\\u0142o upowszechnienie wiedzy o niskobud\\u017cetowych, czyli kosztuj\\u0105cych mniej ni\\u017c 20 z\\u0142otych, wydarzeniach kulturalnych, kt\\u00f3re odbywaj\\u0105 si\\u0119 w ca\\u0142ej Polsce.  Aby u\\u0142atwi\\u0107 przeszukiwanie program\\u00f3w instytucji kultury z ca\\u0142ego kraju, w portalu kulturadostepna.pl zastosowali\\u015bmy rozbudowany silnik wyszukiwania Elasticsearch. To rozwi\\u0105zanie idealnie nadaje si\\u0119 do pracy z ogromnymi bazami danych i wyszukiwania pe\\u0142notekstowego.  W serwisie zastosowali\\u015bmy r\\u00f3wnie\\u017c rozwi\\u0105zania geolokalizacyjne, co pozwoli\\u0142o na prezentowanie u\\u017cytkownikom sposob\\u00f3w na sp\\u0119dzenie wolnego czasu w miejscu ich zamieszkania czy podczas wyjazd\\u00f3w do innego miasta. Dzi\\u0119ki po\\u0142\\u0105czeniu baz danych instytucji z ca\\u0142ego kraju uda\\u0142o nam si\\u0119 stworzy\\u0107 kompletn\\u0105 platform\\u0119. W serwisie zastosowali\\u015bmy r\\u00f3wnie\\u017c opcj\\u0119 sugerowania wydarze\\u0144, a z my\\u015bl\\u0105 o organizatorach imprez wprowadzili\\u015bmy generator plakat\\u00f3w oraz generator ulotek.", "id": "5855a56f-62f6-49d4-9081-4ea257c9e1e2"}]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 146}], "id": "a9be490b-0a92-4c6d-96e9-e9747f9aefd2"}]	[]	[{"type": "tiles_list", "value": [{"heading": "-", "image": 146}], "id": "a9be490b-0a92-4c6d-96e9-e9747f9aefd2"}]	<p>-</p>		<p>-</p>	f	\N	\N		173		f	f	t	f	<p>-</p>
32	Memo to trzymodułowa aplikacja wspierająca pamięć u seniorów.	\N	Memo to trzymodułowa aplikacja wspierająca pamięć u seniorów.	[{"type": "text", "value": "Korzystanie z niego pomaga osobom starszym oswoi\\u0107 si\\u0119 z nowymi technologiami (i przez to po\\u015brednio zapobiega\\u0107 wykluczeniu cyfrowemu i kulturalnemu), ale tak\\u017ce, co bardzo wa\\u017cne \\u2013 stymulowa\\u0107 ich pami\\u0119\\u0107. Pami\\u0119ci jako takiej nie da si\\u0119 naprawi\\u0107, ale mo\\u017cna robi\\u0107 wiele, by jak najd\\u0142u\\u017cej utrzymywa\\u0107 j\\u0105 w dobrej kondycji i to w\\u0142a\\u015bnie by\\u0142o jednym z g\\u0142\\u00f3wnych zada\\u0144 naszego urz\\u0105dzenia. Wspiera ono tak\\u017ce nawi\\u0105zywanie i utrzymywanie relacji mi\\u0119dzypokoleniowych.", "id": "2b6f6e6e-ff89-496a-9868-a16a93053f1b"}]	[]	[{"type": "text", "value": "Korzystanie z niego pomaga osobom starszym oswoi\\u0107 si\\u0119 z nowymi technologiami (i przez to po\\u015brednio zapobiega\\u0107 wykluczeniu cyfrowemu i kulturalnemu), ale tak\\u017ce, co bardzo wa\\u017cne \\u2013 stymulowa\\u0107 ich pami\\u0119\\u0107. Pami\\u0119ci jako takiej nie da si\\u0119 naprawi\\u0107, ale mo\\u017cna robi\\u0107 wiele, by jak najd\\u0142u\\u017cej utrzymywa\\u0107 j\\u0105 w dobrej kondycji i to w\\u0142a\\u015bnie by\\u0142o jednym z g\\u0142\\u00f3wnych zada\\u0144 naszego urz\\u0105dzenia. Wspiera ono tak\\u017ce nawi\\u0105zywanie i utrzymywanie relacji mi\\u0119dzypokoleniowych.", "id": "2b6f6e6e-ff89-496a-9868-a16a93053f1b"}]	[{"type": "tiles_list", "value": [{"heading": "Research i zbieranie potrzeb", "image": 93}, {"heading": "Prototypowanie i testy z u\\u017cytkownikami", "image": 81}, {"heading": "Iteracyjny i r\\u00f3wnoleg\\u0142y rozw\\u00f3j 3 aplikacji", "image": 79}], "id": "c166c937-c6c0-4ee2-bf79-fd60acb9cfec"}]	[]	[{"type": "tiles_list", "value": [{"heading": "Research i zbieranie potrzeb", "image": 93}, {"heading": "Prototypowanie i testy z u\\u017cytkownikami", "image": 81}, {"heading": "Iteracyjny i r\\u00f3wnoleg\\u0142y rozw\\u00f3j 3 aplikacji", "image": 79}], "id": "c166c937-c6c0-4ee2-bf79-fd60acb9cfec"}]	<p>Zamiast od razu przystąpić do projektowania urządzenia postanowiliśmy rozpocząć od dowiedzenia się, czego seniorzy potrzebują, jakiego typu urządzenia mają obecnie do dyspozycji oraz z jakiego typu barierami stykają się na co dzień (nie tylko jeśli chodzi o nowe technologie).</p>		<p>Zamiast od razu przystąpić do projektowania urządzenia postanowiliśmy rozpocząć od dowiedzenia się, czego seniorzy potrzebują, jakiego typu urządzenia mają obecnie do dyspozycji oraz z jakiego typu barierami stykają się na co dzień (nie tylko jeśli chodzi o nowe technologie).</p>	t	\N	118		141	https://www.projektmemo.pl/	f	f	t	f	<p>Angelika Losko, UX Designer</p>
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

COPY public.projects_specializationpage (page_ptr_id, how_we_work, how_we_work_en, how_we_work_pl, case_study, case_study_en, case_study_pl, tools, tools_en, tools_pl, long_name_en, long_name_pl, background_image_id, short_description, short_description_en, short_description_pl) FROM stdin;
19	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiedz\\u0119 eksperck\\u0105 i lata do\\u015bwiadczenia. Przyk\\u0142adamy ogromn\\u0105 wag\\u0119 do poznawania potrzeb i cel\\u00f3w naszych klient\\u00f3w. Zestawiamy je z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 arnga\\u017cuj\\u0105ce do\\u015bwiadczenia. Budujemy prototypy produkt\\u00f3w i badamy je z odbiorcami, aby vveryfikowa\\u0107 poczynione za\\u0142o\\u017cenia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "Koncepcje produkt\\u00f3w cyfrowych", "image": 67}, {"heading": "Interaktywne prototypy", "image": 65}, {"heading": "Us\\u0142ugi online i offine", "image": 68}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiedz\\u0119 eksperck\\u0105 i lata do\\u015bwiadczenia. Przyk\\u0142adamy ogromn\\u0105 wag\\u0119 do poznawania potrzeb i cel\\u00f3w naszych klient\\u00f3w. Zestawiamy je z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 arnga\\u017cuj\\u0105ce do\\u015bwiadczenia. Budujemy prototypy produkt\\u00f3w i badamy je z odbiorcami, aby vveryfikowa\\u0107 poczynione za\\u0142o\\u017cenia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "Koncepcje produkt\\u00f3w cyfrowych", "image": 36}, {"heading": "Interaktywne prototypy", "image": 36}, {"heading": "Us\\u0142ugi online i offine", "image": 36}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "text", "value": "\\ufeffProjektujemy produkty cyfrowe oraz us\\u0142ugi w oparciu o najlepsz\\u0105 wiedz\\u0119 eksperck\\u0105 i lata do\\u015bwiadczenia. Przyk\\u0142adamy ogromn\\u0105 wag\\u0119 do poznawania potrzeb i cel\\u00f3w naszych klient\\u00f3w. Zestawiamy je z wymaganiami docelowych u\\u017cytkownik\\u00f3w lub odbiorc\\u00f3w us\\u0142ugi, aby tworzy\\u0107 arnga\\u017cuj\\u0105ce do\\u015bwiadczenia. Budujemy prototypy produkt\\u00f3w i badamy je z odbiorcami, aby vveryfikowa\\u0107 poczynione za\\u0142o\\u017cenia.", "id": "88820fa9-e7a9-4dbe-975d-c3f9ed4c92f6"}, {"type": "tiles_list", "value": [{"heading": "Koncepcje produkt\\u00f3w cyfrowych", "image": 67}, {"heading": "Interaktywne prototypy", "image": 65}, {"heading": "Us\\u0142ugi online i offine", "image": 68}], "id": "e6d11e8f-d4cd-4c99-bb19-92fe98a5e25f"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "4693ba0a-f83b-4ffb-aa08-03db23925b11"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty z konsorcjum interesariuszy", "image": 64}, {"heading": "Prototyp aplikacji mobilnej", "image": 65}, {"heading": "Testy z u\\u017cytkownikami", "image": 66}], "id": "0c462b08-ecbd-4c98-b74a-68a4192626f5"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "fd68934e-e555-4c83-93c3-8e53f2cd76fa"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty z konsorcjum interesariuszy", "image": 36}, {"heading": "Prototyp aplikacji mobilnej", "image": 36}, {"heading": "Testy z u\\u017cytkownikami", "image": 36}], "id": "288eb908-dc43-4d70-ae6b-7580730d1f44"}]	[{"type": "heading", "value": "Aplikacja wspieraj\\u0105ca program termomodernizacji budynk\\u00f3w", "id": "4693ba0a-f83b-4ffb-aa08-03db23925b11"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty z konsorcjum interesariuszy", "image": 64}, {"heading": "Prototyp aplikacji mobilnej", "image": 65}, {"heading": "Testy z u\\u017cytkownikami", "image": 66}], "id": "0c462b08-ecbd-4c98-b74a-68a4192626f5"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 145, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX."}, {"heading": "Badania i obserwacje", "image": 145, "description": "Budujemy prototypy naszych produkt\\u00f3w i badamy je z u\\u017cytkownikami, lub prowadzimy zdalne obesrwacje."}, {"heading": "Warsztaty wydobywcze", "image": 144, "description": "Moderujemy warsztaty maj\\u0105ce na celu poznanie potrzeb naszych klient\\u00f3w."}, {"heading": "Design sprinty", "image": 144, "description": "Organizujemy design sprinty, aby w bliskiej wsp\\u00f3\\u0142pracy z naszymi klientami szybko tworzy\\u0107 prze\\u0142omowe rozwi\\u0105zania."}], "id": "145268e9-8cbf-4d22-add9-26fb3172971e"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 70, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX"}, {"heading": "Badania i obserwacje", "image": 71, "description": "Budujemy prototypy naszych produkt\\u00f3w i badamy je z u\\u017cytkownikami, lub prowadzimy zdalne obesrwacje."}, {"heading": "Warsztaty wydobywcze", "image": 72, "description": "Moderujemy warsztaty maj\\u0105ce na celu poznanie potrzeb naszych klient\\u00f3w."}, {"heading": "Design sprinty", "image": 73, "description": "Organizujemy design sprinty, aby w bliskiej wsp\\u00f3\\u0142pracy z naszymi klientami szybko tworzy\\u0107 prze\\u0142omowe rozwi\\u0105zania."}], "id": "6e310976-6f94-4982-b164-6a27aea808aa"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "User Experience Design", "image": 145, "description": "Projektowanie w oparciu o szerok\\u0105 wiedz\\u0119 i do\\u015bwiadczenia z zakresu UX."}, {"heading": "Badania i obserwacje", "image": 145, "description": "Budujemy prototypy naszych produkt\\u00f3w i badamy je z u\\u017cytkownikami, lub prowadzimy zdalne obesrwacje."}, {"heading": "Warsztaty wydobywcze", "image": 144, "description": "Moderujemy warsztaty maj\\u0105ce na celu poznanie potrzeb naszych klient\\u00f3w."}, {"heading": "Design sprinty", "image": 144, "description": "Organizujemy design sprinty, aby w bliskiej wsp\\u00f3\\u0142pracy z naszymi klientami szybko tworzy\\u0107 prze\\u0142omowe rozwi\\u0105zania."}], "id": "145268e9-8cbf-4d22-add9-26fb3172971e"}]	Creating digital services and products	Tworzenie usług i produktów cyfrowych	180	<h3><b>Projektujemy produkty cyfrowe i usługi w oparciu o najlepszą wiedzę ekspercką i lata doświadczenia. Zestawiamy potrzeby biznesowe z wymaganiami docelowych użytkowników lub odbiorców usługi, aby tworzyć angażujące doświadczenia.</b></h3>		<h3><b>Projektujemy produkty cyfrowe i usługi w oparciu o najlepszą wiedzę ekspercką i lata doświadczenia. Zestawiamy potrzeby biznesowe z wymaganiami docelowych użytkowników lub odbiorców usługi, aby tworzyć angażujące doświadczenia.</b></h3>
27	[{"type": "text", "value": "Organizujemy warsztaty dla zespo\\u0142\\u00f3w przygotowuj\\u0105cych si\\u0119 do wdro\\u017cenia frameworku Scrum.  Naszym klientom, kt\\u00f3rzy chc\\u0105 zacz\\u0105\\u0107 pracowa\\u0107 zwinnie, udost\\u0119pniamy naszych certyfikowanych Scrum Master\\u00f3w. Doradzamy organizacjom w zakresie transformacji Scruma oraz zapewniamy wsparcie powdro\\u017ceniowe na ka\\u017cdym szczeblu organizacji.", "id": "6b010336-9413-468e-8a90-099612000b57"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty", "image": 74}, {"heading": "Zarz\\u0105dzanie procesami", "image": 76}, {"heading": "Coaching i wsparcie zespo\\u0142\\u00f3w zwinnych", "image": 75}], "id": "a39b959d-df56-4439-a053-169f737ec474"}]	[]	[{"type": "text", "value": "Organizujemy warsztaty dla zespo\\u0142\\u00f3w przygotowuj\\u0105cych si\\u0119 do wdro\\u017cenia frameworku Scrum.  Naszym klientom, kt\\u00f3rzy chc\\u0105 zacz\\u0105\\u0107 pracowa\\u0107 zwinnie, udost\\u0119pniamy naszych certyfikowanych Scrum Master\\u00f3w. Doradzamy organizacjom w zakresie transformacji Scruma oraz zapewniamy wsparcie powdro\\u017ceniowe na ka\\u017cdym szczeblu organizacji.", "id": "6b010336-9413-468e-8a90-099612000b57"}, {"type": "tiles_list", "value": [{"heading": "Warsztaty", "image": 74}, {"heading": "Zarz\\u0105dzanie procesami", "image": 76}, {"heading": "Coaching i wsparcie zespo\\u0142\\u00f3w zwinnych", "image": 75}], "id": "a39b959d-df56-4439-a053-169f737ec474"}]	[{"type": "heading", "value": "Comarch", "id": "7f8937ed-3505-4db4-b367-beb3e84812dc"}, {"type": "tiles_list", "value": [{"heading": "Przygotowanie i wprowadzenie zespo\\u0142u w metodyki zwinne", "image": 77}, {"heading": "Zarz\\u0105dzanie procesem i wdro\\u017cenie wydarze\\u0144", "image": 78}, {"heading": "Aktywne wspieranie Scrum Master\\u00f3w przez Agile Coacha", "image": 79}, {"heading": "Opracowanie warsztat\\u00f3w i narz\\u0119dzi usprawniaj\\u0105cych prac\\u0119 zespo\\u0142\\u00f3w", "image": 80}], "id": "7ddcad79-3ee3-421d-bc66-97d6a0572d49"}]	[]	[{"type": "heading", "value": "Comarch", "id": "7f8937ed-3505-4db4-b367-beb3e84812dc"}, {"type": "tiles_list", "value": [{"heading": "Przygotowanie i wprowadzenie zespo\\u0142u w metodyki zwinne", "image": 77}, {"heading": "Zarz\\u0105dzanie procesem i wdro\\u017cenie wydarze\\u0144", "image": 78}, {"heading": "Aktywne wspieranie Scrum Master\\u00f3w przez Agile Coacha", "image": 79}, {"heading": "Opracowanie warsztat\\u00f3w i narz\\u0119dzi usprawniaj\\u0105cych prac\\u0119 zespo\\u0142\\u00f3w", "image": 80}], "id": "7ddcad79-3ee3-421d-bc66-97d6a0572d49"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Roadmapy projekt\\u00f3w", "image": 144, "description": "Tworzymy plany okre\\u015blaj\\u0105ce kierunki rozwoju projekt\\u00f3w w \\u015brodowisku Agile zorientowane na realizacj\\u0119 cel\\u00f3w biznesowych."}, {"heading": "Artefakty Scruma", "image": 144, "description": "Zapewniamy wysok\\u0105 przejrzysto\\u015b\\u0107\\u00a0i efektywno\\u015b\\u0107 element\\u00f3w reprezentuj\\u0105cych prac\\u0119 i warto\\u015bci, gwarantuj\\u0105c prawid\\u0142owe funkcjonowanie procesu."}, {"heading": "Wydarzenia Scrumowe", "image": 145, "description": "Optymalizujemy ilo\\u015b\\u0107 i czas spotka\\u0144 wprowadzaj\\u0105c wydarzenia posiadaj\\u0105ce okre\\u015blone cele oraz nastawione na osi\\u0105gni\\u0119cie konkretnych rezultat\\u00f3w zgodnie z metodyk\\u0105 Scrum."}, {"heading": "Scrum Guide", "image": 145, "description": "Wszystkie wprowadzane rozwi\\u0105zania s\\u0105 zgodne z najnowszym Scrum Guide co gwarantuj\\u0105 nasi certyfikowani Scrum Masterzy."}], "id": "cb8855a8-bd8f-4738-839c-42cc26d466a5"}]	[{"type": "tiles_with_description_list", "value": [], "id": "bf68332f-9ddb-42e8-b7f9-55d73e014325"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Roadmapy projekt\\u00f3w", "image": 144, "description": "Tworzymy plany okre\\u015blaj\\u0105ce kierunki rozwoju projekt\\u00f3w w \\u015brodowisku Agile zorientowane na realizacj\\u0119 cel\\u00f3w biznesowych."}, {"heading": "Artefakty Scruma", "image": 144, "description": "Zapewniamy wysok\\u0105 przejrzysto\\u015b\\u0107\\u00a0i efektywno\\u015b\\u0107 element\\u00f3w reprezentuj\\u0105cych prac\\u0119 i warto\\u015bci, gwarantuj\\u0105c prawid\\u0142owe funkcjonowanie procesu."}, {"heading": "Wydarzenia Scrumowe", "image": 145, "description": "Optymalizujemy ilo\\u015b\\u0107 i czas spotka\\u0144 wprowadzaj\\u0105c wydarzenia posiadaj\\u0105ce okre\\u015blone cele oraz nastawione na osi\\u0105gni\\u0119cie konkretnych rezultat\\u00f3w zgodnie z metodyk\\u0105 Scrum."}, {"heading": "Scrum Guide", "image": 145, "description": "Wszystkie wprowadzane rozwi\\u0105zania s\\u0105 zgodne z najnowszym Scrum Guide co gwarantuj\\u0105 nasi certyfikowani Scrum Masterzy."}], "id": "cb8855a8-bd8f-4738-839c-42cc26d466a5"}]	\N	\N	179	<p>Wdrażamy podejście projektowe i zwinne metodyki zarządzania projektami w procesie wytwarzania oraz utrzymywania produktów. Takie podejście pozwala na szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia środków.</p>		<p>Wdrażamy podejście projektowe i zwinne metodyki zarządzania projektami w procesie wytwarzania oraz utrzymywania produktów. Takie podejście pozwala na szybszy zwrot inwestycji oraz zmniejsza ryzyko utopienia środków.</p>
6	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych  Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 85}, {"heading": "Data Science", "image": 86}, {"heading": "Machine Learning", "image": 87}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych. Doradzamy jak wykorzystywa\\u0107 dane w prosceach bizensowych i systmahc klasyfikacji, predykacji i wykrywaniu nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 34}, {"heading": "Data Science", "image": 34}, {"heading": "Machine Learning", "image": 34}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "text", "value": "Analizujemy dane, tworzymy wizualizacje, pomagamy podejmowa\\u0107 decyzje oparte na danych  Doradzamy jak wykorzysta\\u0107 dane w procesach biznesowych w systemach klasyfikacji, predykcji i wykrywania nadu\\u017cy\\u0107. Tworzymy aplikacje oparte na danych i korzystaj\\u0105ce z Machine Learning i algorytm\\u00f3w AI. Pomagamy w tym naszym klientom.", "id": "ae7400f3-3504-423a-a07c-c4998c647d1f"}, {"type": "tiles_list", "value": [{"heading": "Inwentaryzacja danych", "image": 85}, {"heading": "Data Science", "image": 86}, {"heading": "Machine Learning", "image": 87}], "id": "410f07de-4c07-4572-a7d0-96ab7cbb7cc6"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 81}, {"heading": "Analiza danych historycznych o projektach", "image": 82}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 83}, {"heading": "Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w", "image": 84}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 20}, {"heading": "Analiza danych historycznych o projektach", "image": 21}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 22}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "heading", "value": "Narodowy Fundusz Ochrony \\u015arodowiska", "id": "de75bd20-0128-4f19-ae13-cd4e7ea4487b"}, {"type": "tiles_list", "value": [{"heading": "Zebranie danych o projektach finansowanych przez NFO\\u015a", "image": 81}, {"heading": "Analiza danych historycznych o projektach", "image": 82}, {"heading": "Tworzenie algorytmu optymalizuj\\u0105cego podzia\\u0142\\u00a0\\u015brodk\\u00f3w", "image": 83}, {"heading": "Przewidywanie szansy na realizacj\\u0119 projekt\\u00f3w", "image": 84}], "id": "1aea76ac-262c-4b6e-9715-bb3df6326214"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 144, "description": "Analizujemy dane i dostarczamy rekomendacji.  Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych."}, {"heading": "Segmentacja i klasyfikacja", "image": 144, "description": "Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w."}, {"heading": "Predykcje i rekomendacje", "image": 145, "description": "Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce."}, {"heading": "Wykrywanie anomalii", "image": 145, "description": "Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	[{"type": "tiles_with_description_list", "value": [], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	[{"type": "tiles_with_description_list", "value": [{"heading": "Analiza i consulting", "image": 144, "description": "Analizujemy dane i dostarczamy rekomendacji.  Doradzamy jak Twoja organizacja mo\\u017ce wykorzysta\\u0107 potencja\\u0142 danych."}, {"heading": "Segmentacja i klasyfikacja", "image": 144, "description": "Pomagamy zidentyfikowa\\u0107 najbardziej warto\\u015bciowych klient\\u00f3w."}, {"heading": "Predykcje i rekomendacje", "image": 145, "description": "Budujemy systemy przewiduj\\u0105ce zachowania klient\\u00f3w oraz systemy rekomenduj\\u0105ce."}, {"heading": "Wykrywanie anomalii", "image": 145, "description": "Pomagamy odnale\\u017a\\u0107 nietypowe przypadki, anomalie i nadu\\u017cycia."}], "id": "71b480ee-1caa-414c-88e7-0516fb459619"}]	Processes automation based on data	Automatyzacja procesów w oparciu o dane	178	<h3><b>Inwestując w rozwiązania oparte na data science i machine learning Twoja firma rozwija się podejmując rozsądne ryzyko.</b></h3>		<h3><b>Inwestując w rozwiązania oparte na data science i machine learning Twoja firma rozwija się podejmując rozsądne ryzyko.</b></h3>
\.


--
-- Data for Name: projects_teamindexpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teamindexpage (page_ptr_id, who_we_are, who_we_are_pl, who_we_are_en, our_values, our_values_pl, our_values_en) FROM stdin;
\.


--
-- Data for Name: projects_teammember; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teammember (page_ptr_id, name, photo_id, long_description, long_description_en, long_description_pl, short_description, short_description_en, short_description_pl) FROM stdin;
\.


--
-- Data for Name: projects_teammemberspecializationtag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_teammemberspecializationtag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Data for Name: projects_topicpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_topicpage (page_ptr_id, marked, content, content_pl, content_en, background_image_id, phone_image_id) FROM stdin;
35	t	<p>ZONEapp</p>	<p>ZONEapp</p>		136	115
36	t	<p>Memo</p>	<p>Memo</p>		138	118
37	t	<p>Sonar</p>	<p>Sonar</p>		139	120
38	t	<p>RODOpass</p>	<p>RODOpass</p>		140	122
\.


--
-- Data for Name: projects_topicpage_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects_topicpage_projects (id, topicpage_id, projectpage_id) FROM stdin;
1	35	32
2	35	34
3	36	32
4	37	33
5	38	34
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	UX	ux
2	BackEnd	backend
3	SCRUM	scrum
4	dziennikarstwo	dziennikarstwo
5	driven	driven
6	journalism	journalism
7	data	data
8	ludzie	ludzie
9	dziwni	dziwni
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	27	4	4
2	27	4	5
3	27	4	6
4	27	4	7
5	28	4	8
6	28	4	9
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
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root		\N		\N	/	/	root	root	Root	Root
75	000100030008	3	0	Zrealizowane projekty	zrealizowane-projekty	t	f	/strona-główna/zrealizowane-projekty/	Nasze portfolio projektów	f	Poznaj nas przez nasze projekty realizowane w ramach naszych specjalizacji: Innowacje w oparciu o dane, produkty i usługi cyfrowe, optymalizacja procesów wytwórczych.	\N	\N	f	49	\N	f	2019-07-23 16:43:33.642266+02	2019-07-22 11:42:32.976517+02	\N	2019-07-23 16:43:33.711962+02	Zrealizowane projekty	Nasze portfolio projektów	\N	Poznaj nas przez nasze projekty realizowane w ramach naszych specjalizacji: Innowacje w oparciu o dane, produkty i usługi cyfrowe, optymalizacja procesów wytwórczych.		/strona-główna/zrealizowane-projekty/	/strona-główna/zrealizowane-projekty/	zrealizowane-projekty	\N	Zrealizowane projekty	\N
59	000100030001000300020006	6	0	SERWIS GRYWALIZACYJNY PRACOWNI ORANGE	serwis-grywalizacyjny-pracowni-orange	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/serwis-grywalizacyjny-pracowni-orange/		f		\N	\N	f	30	\N	f	2019-07-17 15:23:29.32447+02	2019-07-17 15:23:29.397308+02	\N	2019-07-17 15:23:29.397308+02	SERWIS GRYWALIZACYJNY PRACOWNI ORANGE	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/serwis-grywalizacyjny-pracowni-orange/	/strona-główna/ee/specializations/digital-products-and-services/serwis-grywalizacyjny-pracowni-orange/	serwis-grywalizacyjny-pracowni-orange	\N	SERWIS GRYWALIZACYJNY PRACOWNI ORANGE	\N
37	0001000300010009	4	0	Media	media	t	f	/strona-główna/ee/media/		f		\N	\N	f	46	\N	f	2019-07-12 12:56:40.237305+02	2019-07-08 10:31:32.45748+02	\N	2019-07-12 12:56:40.494797+02	Media	\N	\N			/strona-główna/ee/media/	/strona-główna/ee/media/	media	\N	Media	\N
81	0001000300050005	4	0	Aplikacja: Nasza Kasa	aplikacja-nasza-kasa	f	t	/strona-główna/innowacje-w-oparciu-o-dane/aplikacja-nasza-kasa/		f		\N	\N	f	49	\N	f	2019-07-24 15:58:15.697389+02	\N	\N	\N	Aplikacja: Nasza Kasa	\N	\N			/strona-główna/innowacje-w-oparciu-o-dane/aplikacja-nasza-kasa/	/strona-główna/innowacje-w-oparciu-o-dane/aplikacja-nasza-kasa/	aplikacja-nasza-kasa	\N	Aplikacja: Nasza Kasa	\N
82	0001000300050006	4	0	KULTURA DOSTĘPNA DLA KAŻDEGO	kultura-dostępna-dla-każdego	f	t	/strona-główna/innowacje-w-oparciu-o-dane/kultura-dostępna-dla-każdego/		f		\N	\N	f	49	\N	f	2019-07-24 16:24:30.180246+02	\N	\N	\N	KULTURA DOSTĘPNA DLA KAŻDEGO	\N	\N			/strona-główna/innowacje-w-oparciu-o-dane/kultura-dostępna-dla-każdego/	/strona-główna/innowacje-w-oparciu-o-dane/kultura-dostępna-dla-każdego/	kultura-dostępna-dla-każdego	\N	KULTURA DOSTĘPNA DLA KAŻDEGO	\N
35	0001000300010007	4	0	Ochrona klimatu	smog	t	f	/strona-główna/ee/smog/		f		\N	\N	f	46	\N	f	2019-07-12 12:52:07.822322+02	2019-07-05 13:01:41.696433+02	\N	2019-07-12 12:52:07.906241+02	Ochrona klimatu	\N	\N			/strona-główna/ee/smog/	/strona-główna/ee/smog/	smog	\N	Ochrona klimatu	\N
84	0001000300050007	4	0	PORTAL „MOJA POLIS”	portal-moja-polis	f	t	/strona-główna/innowacje-w-oparciu-o-dane/portal-moja-polis/		f		\N	\N	f	49	\N	f	2019-07-24 16:55:50.565678+02	\N	\N	\N	PORTAL „MOJA POLIS”	\N	\N			/strona-główna/innowacje-w-oparciu-o-dane/portal-moja-polis/	/strona-główna/innowacje-w-oparciu-o-dane/portal-moja-polis/	portal-moja-polis	\N	PORTAL „MOJA POLIS”	\N
38	000100030001000A	4	0	Prawo	prawo	t	f	/strona-główna/ee/prawo/		f		\N	\N	f	46	\N	f	2019-07-12 12:57:36.905204+02	2019-07-08 10:33:56.617276+02	\N	2019-07-12 12:57:37.014022+02	Prawo	\N	\N			/strona-główna/ee/prawo/	/strona-główna/ee/prawo/	prawo	\N	Prawo	\N
55	00010003000100030001000D	6	0	E-USŁUGA DLA BRANŻY WYDAWNICZEJ	e-usługa-dla-branży-wydawniczej	t	f	/strona-główna/ee/specializacje/stare-innowacje/e-usługa-dla-branży-wydawniczej/		f		\N	\N	f	30	\N	f	2019-07-18 10:24:01.009+02	2019-07-17 15:01:23.228668+02	\N	2019-07-18 10:24:01.092057+02	E-USŁUGA DLA BRANŻY WYDAWNICZEJ	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/e-usługa-dla-branży-wydawniczej/	/strona-główna/ee/specializations/stare-innowacje/e-usługa-dla-branży-wydawniczej/	e-usługa-dla-branży-wydawniczej	\N	E-USŁUGA DLA BRANŻY WYDAWNICZEJ	\N
79	0001000300050003	4	0	POLONA	polona	t	f	/strona-główna/innowacje-w-oparciu-o-dane/polona/		f		\N	\N	f	49	\N	f	2019-07-24 14:25:06.130651+02	2019-07-24 14:25:06.201437+02	\N	2019-07-24 14:25:06.201437+02	POLONA	\N	\N			/strona-główna/innowacje-w-oparciu-o-dane/polona/	/strona-główna/innowacje-w-oparciu-o-dane/polona/	polona	\N	POLONA	\N
73	000100030006	3	0	Produkty i usługi cyfrowe	produkty-i-usługi-cyfrowe	t	f	/strona-główna/produkty-i-usługi-cyfrowe/	Produkty i usługi cyfrowe	f	Projektujemy, prototypujemy i tworzymy produkty i usługi cyfrowe. Dzięki naszej wiedzy i wartościom tworzymy angażujące rozwiązania dopasowane do potrzeb użytkownika.	\N	\N	f	49	\N	f	2019-07-24 14:28:29.224358+02	2019-07-19 15:43:28.572908+02	\N	2019-07-24 14:28:29.284589+02	Produkty i usługi cyfrowe	Produkty i usługi cyfrowe	\N	Projektujemy, prototypujemy i tworzymy produkty i usługi cyfrowe. Dzięki naszej wiedzy i wartościom tworzymy angażujące rozwiązania dopasowane do potrzeb użytkownika.		/strona-główna/produkty-i-usługi-cyfrowe/	/strona-główna/produkty-i-usługi-cyfrowe/	produkty-i-usługi-cyfrowe	\N	Produkty i usługi cyfrowe	\N
63	00010003000100030002000A	6	0	DIGITALIZACJA HISTORYCZNYCH RYSUNKÓW	digitalizacja-historycznych-rysunków	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/digitalizacja-historycznych-rysunków/		f		\N	\N	f	30	\N	f	2019-07-17 15:38:47.844334+02	2019-07-17 15:38:47.912998+02	\N	2019-07-17 15:38:47.912998+02	DIGITALIZACJA HISTORYCZNYCH RYSUNKÓW	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/digitalizacja-historycznych-rysunków/	/strona-główna/ee/specializations/digital-products-and-services/digitalizacja-historycznych-rysunków/	digitalizacja-historycznych-rysunków	\N	DIGITALIZACJA HISTORYCZNYCH RYSUNKÓW	\N
67	00010003000100030002000E	6	0	WYSZUKIWARKA INNOWATORÓW Z EUROPY ŚRODKOWO-WSCHODNIEJ	wyszukiwarka-innowatorów-z-europy-środkowo-wschodniej	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/wyszukiwarka-innowatorów-z-europy-środkowo-wschodniej/		f		\N	\N	f	30	\N	f	2019-07-17 15:49:41.118261+02	2019-07-17 15:49:41.176789+02	\N	2019-07-17 15:49:41.176789+02	WYSZUKIWARKA INNOWATORÓW Z EUROPY ŚRODKOWO-WSCHODNIEJ	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/wyszukiwarka-innowatorów-z-europy-środkowo-wschodniej/	/strona-główna/ee/specializations/digital-products-and-services/wyszukiwarka-innowatorów-z-europy-środkowo-wschodniej/	wyszukiwarka-innowatorów-z-europy-środkowo-wschodniej	\N	WYSZUKIWARKA INNOWATORÓW Z EUROPY ŚRODKOWO-WSCHODNIEJ	\N
77	0001000300050001	4	0	ZONEapp	zoneapp	t	f	/strona-główna/innowacje-w-oparciu-o-dane/zoneapp/	ZONEapp | big data w aplikacji mobilnej, w celu poprawy jakości powietrza.	f	ZONEapp, big data, data science, mobile app, mobile, save climate, air pollution, smog, emisja, niska emisja,	\N	\N	f	49	\N	f	2019-07-23 15:19:27.615381+02	2019-07-23 15:01:10.173436+02	\N	2019-07-23 15:19:27.668071+02	ZONEapp	ZONEapp | big data w aplikacji mobilnej, w celu poprawy jakości powietrza.	\N	ZONEapp, big data, data science, mobile app, mobile, save climate, air pollution, smog, emisja, niska emisja,		/strona-główna/innowacje-w-oparciu-o-dane/zoneapp/	/strona-główna/innowacje-w-oparciu-o-dane/zoneapp/	zoneapp	\N	ZONEapp	\N
71	00010003000100030002000I	6	0	ANIMACJE DLA CENTRUM LITERATURY DZIECIĘCEJ W OŚWIĘCIMIU	animacje-dla-centrum-literatury-dziecięcej-w-oświęcimiu	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/animacje-dla-centrum-literatury-dziecięcej-w-oświęcimiu/		f		\N	\N	f	30	\N	f	2019-07-17 15:57:55.503721+02	2019-07-17 15:57:55.600453+02	\N	2019-07-17 15:57:55.600453+02	ANIMACJE DLA CENTRUM LITERATURY DZIECIĘCEJ W OŚWIĘCIMIU	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/animacje-dla-centrum-literatury-dziecięcej-w-oświęcimiu/	/strona-główna/ee/specializations/digital-products-and-services/animacje-dla-centrum-literatury-dziecięcej-w-oświęcimiu/	animacje-dla-centrum-literatury-dziecięcej-w-oświęcimiu	\N	ANIMACJE DLA CENTRUM LITERATURY DZIECIĘCEJ W OŚWIĘCIMIU	\N
74	000100030007	3	0	Dołącz do nas	dołącz-do-nas	t	f	/strona-główna/dołącz-do-nas/	Dołącz do nas | Chętnie Cię poznamy!	t	Chcesz z nami rozwiązywać problemy ludzkości dzięki innowacyjnym technologiom? Chcesz pracować przy projektach stanowiących wyzwanie intelektualne? Aplikuj!	\N	\N	f	49	\N	f	2019-07-23 16:41:28.346532+02	2019-07-19 16:24:37.326504+02	\N	2019-07-23 16:41:28.440953+02	Dołącz do nas	Dołącz do nas | Chętnie Cię poznamy!	\N	Chcesz z nami rozwiązywać problemy ludzkości dzięki innowacyjnym technologiom? Chcesz pracować przy projektach stanowiących wyzwanie intelektualne? Aplikuj!		/strona-główna/dołącz-do-nas/	/strona-główna/dołącz-do-nas/	dołącz-do-nas	\N	Dołącz do nas	\N
76	000100030009	3	0	O nas	o-nas	t	f	/strona-główna/o-nas/	O nas	t	Dowiedz się co czyni Laboratorium EE najlepszym miejscem pracy. Poznaj nasze wartości, to co nas napędza i jest bliskie naszym sercom.	\N	\N	f	49	\N	f	2019-07-23 16:45:16.903633+02	2019-07-22 12:15:29.420695+02	\N	2019-07-23 16:45:17.027058+02	O nas	O nas	\N	Dowiedz się co czyni Laboratorium EE najlepszym miejscem pracy. Poznaj nasze wartości, to co nas napędza i jest bliskie naszym sercom.		/strona-główna/o-nas/	/strona-główna/about-us/	o-nas	about-us	O nas	\N
56	000100030001000300020003	6	0	Eurozine	eurozine	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/eurozine/		f		\N	\N	f	30	\N	f	2019-07-17 15:13:13.642855+02	2019-07-17 15:13:13.735872+02	\N	2019-07-17 15:13:13.735872+02	Eurozine	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/eurozine/	/strona-główna/ee/specializations/digital-products-and-services/eurozine/	eurozine	\N	Eurozine	\N
34	000100030001000300020002	6	0	RODOpass	rodopass	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/rodopass/		f		\N	\N	f	30	\N	f	2019-07-12 13:15:10.419287+02	2019-07-04 11:04:18.802114+02	\N	2019-07-12 13:15:10.465017+02	RODOpass	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/rodopass/	/strona-główna/ee/specializations/digital-products-and-services/rodopass/	rodopass	\N	RODOpass	\N
64	00010003000100030002000B	6	0	PRODUKTY I USŁUGI CYFROWE DLA PAYU	produkty-i-usługi-cyfrowe-dla-payu	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/produkty-i-usługi-cyfrowe-dla-payu/		f		\N	\N	f	30	\N	f	2019-07-17 15:43:01.506348+02	2019-07-17 15:43:01.582696+02	\N	2019-07-17 15:43:01.582696+02	PRODUKTY I USŁUGI CYFROWE DLA PAYU	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/produkty-i-usługi-cyfrowe-dla-payu/	/strona-główna/ee/specializations/digital-products-and-services/produkty-i-usługi-cyfrowe-dla-payu/	produkty-i-usługi-cyfrowe-dla-payu	\N	PRODUKTY I USŁUGI CYFROWE DLA PAYU	\N
44	000100030001000300010004	6	0	Aplikacja: Nasza Kasa	aplikacja-nasza-kasa	t	f	/strona-główna/ee/specializacje/stare-innowacje/aplikacja-nasza-kasa/		f		\N	\N	f	30	\N	f	2019-07-18 10:49:10.265613+02	2019-07-17 14:10:16.75581+02	\N	2019-07-18 10:49:10.361861+02	Aplikacja: Nasza Kasa	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/aplikacja-nasza-kasa/	/strona-główna/ee/specializations/stare-innowacje/aplikacja-nasza-kasa/	aplikacja-nasza-kasa	\N	Aplikacja: Nasza Kasa	\N
68	00010003000100030002000F	6	0	STRONA ARCHIPELAGU JAZDÓW	strona-archipelagu-jazdów	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-archipelagu-jazdów/		f		\N	\N	f	30	\N	f	2019-07-17 15:51:28.276121+02	2019-07-17 15:51:28.347828+02	\N	2019-07-17 15:51:28.347828+02	STRONA ARCHIPELAGU JAZDÓW	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-archipelagu-jazdów/	/strona-główna/ee/specializations/digital-products-and-services/strona-archipelagu-jazdów/	strona-archipelagu-jazdów	\N	STRONA ARCHIPELAGU JAZDÓW	\N
60	000100030001000300020007	6	0	STRONA POMORSKIEGO PARKU NAUKOWO-TECHNOLOGICZNEGO	strona-pomorskiego-parku-naukowo-technologicznego	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-pomorskiego-parku-naukowo-technologicznego/		f		\N	\N	f	30	\N	f	2019-07-17 15:27:14.186684+02	2019-07-17 15:27:14.293466+02	\N	2019-07-17 15:27:14.293466+02	STRONA POMORSKIEGO PARKU NAUKOWO-TECHNOLOGICZNEGO	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-pomorskiego-parku-naukowo-technologicznego/	/strona-główna/ee/specializations/digital-products-and-services/strona-pomorskiego-parku-naukowo-technologicznego/	strona-pomorskiego-parku-naukowo-technologicznego	\N	STRONA POMORSKIEGO PARKU NAUKOWO-TECHNOLOGICZNEGO	\N
52	000100030005	3	7	Innowacje w oparciu o dane	innowacje-w-oparciu-o-dane	t	f	/strona-główna/innowacje-w-oparciu-o-dane/	Data Science i Machine Learning w służbie ludzkości	f	Wykorzystujemy Dane Science i Machine Learning do generowania wartości biznesowej w organizacjach i automatyzacji pracy.	\N	\N	f	49	\N	f	2019-07-24 11:50:59.052164+02	2019-07-17 14:53:13.004649+02	\N	2019-07-24 11:50:59.159634+02	Innowacje w oparciu o dane	Data Science i Machine Learning w służbie ludzkości	\N	Wykorzystujemy Dane Science i Machine Learning do generowania wartości biznesowej w organizacjach i automatyzacji pracy.		/strona-główna/innowacje-w-oparciu-o-dane/	/strona-główna/innowacje-w-oparciu-o-dane/	innowacje-w-oparciu-o-dane	\N	Innowacje w oparciu o dane	\N
80	0001000300050004	4	0	Memo	memo	t	f	/strona-główna/innowacje-w-oparciu-o-dane/memo/		f		\N	\N	f	49	\N	f	2019-07-24 15:27:27.315193+02	2019-07-24 14:59:32.193341+02	\N	2019-07-24 15:27:27.383086+02	Memo	\N	\N			/strona-główna/innowacje-w-oparciu-o-dane/memo/	/strona-główna/innowacje-w-oparciu-o-dane/memo/	memo	\N	Memo	\N
78	0001000300050002	4	0	Hackathon Danych Publicznych	hackathon-danych-publicznych	t	t	/strona-główna/innowacje-w-oparciu-o-dane/hackathon-danych-publicznych/		f		\N	\N	f	49	\N	f	2019-07-24 15:45:58.303487+02	2019-07-23 16:20:13.799849+02	\N	2019-07-23 16:29:21.512236+02	Hackathon Danych Publicznych	\N	\N			/strona-główna/innowacje-w-oparciu-o-dane/hackathon-danych-publicznych/	/strona-główna/innowacje-w-oparciu-o-dane/hackathon-danych-publicznych/	hackathon-danych-publicznych	\N	Hackathon Danych Publicznych	\N
5	0001000300010003	4	3	Specjalizacje	specializacje	t	f	/strona-główna/ee/specializacje/		f		\N	\N	f	32	\N	f	2019-07-22 20:19:42.096167+02	2019-05-20 11:45:32.933843+02	\N	2019-07-22 20:19:42.139734+02	Specjalizacje	\N	\N			/strona-główna/ee/specializacje/	/strona-główna/ee/specializations/	specializacje	specializations	Specjalizacje	specializations
33	000100030001000300020001	6	0	Dare Magazine	dare-magazine	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/dare-magazine/		f		\N	\N	f	30	\N	f	2019-07-12 13:09:54.858628+02	2019-07-04 09:28:19.486759+02	\N	2019-07-12 13:09:54.918056+02	Dare Magazine	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/dare-magazine/	/strona-główna/ee/specializations/digital-products-and-services/dare-magazine/	dare-magazine	\N	Dare Magazine	\N
14	00010003000100010004	5	0	Szkolenie z Data Driven Business	szkolenie-z-data-driven-business	t	f	/strona-główna/ee/aktualności/szkolenie-z-data-driven-business/	Szkolenie z Data Driven Business	f	Rozwiń swoją organizację w oparciu o dane. Wykorzystaj do tego celu rozwiązania oparte o Machine Learning i Data Science.	\N	\N	f	34	\N	f	2019-07-23 17:13:21.636117+02	2019-05-29 09:36:38.220127+02	\N	2019-07-23 17:13:21.765663+02	Szkolenie z Data Driven Business	Szkolenie z Data Driven Business	\N	Rozwiń swoją organizację w oparciu o dane. Wykorzystaj do tego celu rozwiązania oparte o Machine Learning i Data Science.		/strona-główna/ee/aktualności/szkolenie-z-data-driven-business/	/strona-główna/ee/news/szkolenie-z-data-driven-business/	szkolenie-z-data-driven-business	\N	Szkolenie z Data Driven Business	\N
31	00010003000100010005	5	0	Realizuj przyrosty i dostarczaj wartość biznesową w Sprintach	realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach	t	f	/strona-główna/ee/aktualności/realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach/	Zwiększ efektywność zarządzania projektami, usprawnij procesy decyzyjne dzięki Scrumowi.	f	Pomożemy Ci wdrożyć Scrum, w Twoim projekcie i organizacji. Pozwól pracować swoim zespołom komfortowo i efektywnie.	\N	\N	f	34	\N	f	2019-07-23 17:22:57.940132+02	2019-07-08 10:43:26.673992+02	\N	2019-07-23 17:22:58.002675+02	Realizuj przyrosty i dostarczaj wartość biznesową w Sprintach	Zwiększ efektywność zarządzania projektami, usprawnij procesy decyzyjne dzięki Scrumowi.	\N	Pomożemy Ci wdrożyć Scrum, w Twoim projekcie i organizacji. Pozwól pracować swoim zespołom komfortowo i efektywnie.		/strona-główna/ee/aktualności/realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach/	/strona-główna/ee/news/realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach/	realizuj-przyrosty-i-dostarczaj-wartość-biznesową-w-sprintach	\N	Realizuj przyrosty i dostarczaj wartość biznesową w Sprintach	\N
36	0001000300010008	4	0	Seniorzy	seniorzy	t	f	/strona-główna/ee/seniorzy/		f		\N	\N	f	46	\N	f	2019-07-12 12:54:13.810322+02	2019-07-08 10:27:52.495894+02	\N	2019-07-12 12:54:13.879503+02	Seniorzy	\N	\N			/strona-główna/ee/seniorzy/	/strona-główna/ee/seniorzy/	seniorzy	\N	Seniorzy	\N
10	0001000300010001	4	2	Aktualności	aktualności	t	f	/strona-główna/ee/aktualności/		f		\N	\N	f	37	\N	f	2019-06-19 12:12:24.095023+02	2019-05-28 16:08:25.294766+02	\N	2019-06-19 12:12:24.143837+02	Aktualności	\N	\N			/strona-główna/ee/aktualności/	/strona-główna/ee/news/	aktualności	news	Aktualności	news
19	00010003000100030002	5	18	Produkty i usługi cyfrowe	produkty-i-usługi-cyfrowe	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/		f		\N	\N	f	31	\N	f	2019-07-22 09:36:41.949987+02	2019-05-30 16:48:33.39818+02	\N	2019-07-22 09:36:42.054224+02	Produkty i usługi cyfrowe	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/	/strona-główna/ee/specializations/digital-products-and-services/	produkty-i-usługi-cyfrowe	digital-products-and-services	Produkty i usługi cyfrowe	\N
72	000100030004	3	0	Optymalizacja procesów wytwórczych	optymalizacja-procesów-wytwórczych	t	f	/strona-główna/optymalizacja-procesów-wytwórczych/	Optymalizacja procesów wytwórczych	f	Wdrażamy zarządzanie zwinne w organizacjach, w celu wzrostu efektywności, zminimalizowania strat i przyśpieszenia zwrotu z inwestycji.	\N	\N	f	49	\N	f	2019-07-23 17:54:35.487436+02	2019-07-18 13:04:04.045537+02	\N	2019-07-23 17:54:35.562196+02	Optymalizacja procesów wytwórczych	Optymalizacja procesów wytwórczych	\N	Wdrażamy zarządzanie zwinne w organizacjach, w celu wzrostu efektywności, zminimalizowania strat i przyśpieszenia zwrotu z inwestycji.		/strona-główna/optymalizacja-procesów-wytwórczych/	/strona-główna/optymalizacja-procesów-wytwórczych/	optymalizacja-procesów-wytwórczych	\N	Optymalizacja procesów wytwórczych	\N
27	00010003000100030004	5	0	Optymalizacja procesów wytwórczych	optymalizacja-procesów-wytwórczych	t	f	/strona-główna/ee/specializacje/optymalizacja-procesów-wytwórczych/		f		\N	\N	f	31	\N	f	2019-07-22 09:36:34.433195+02	2019-06-16 18:04:18.247453+02	\N	2019-07-22 09:36:34.855747+02	Optymalizacja procesów wytwórczych	\N	\N			/strona-główna/ee/specializacje/optymalizacja-procesów-wytwórczych/	/strona-główna/ee/specializations/optymalizacja-procesów-wytwórczych/	optymalizacja-procesów-wytwórczych	\N	Optymalizacja procesów wytwórczych	\N
6	00010003000100030001	5	13	Innowacje w oparciu o dane	stare-innowacje	t	f	/strona-główna/ee/specializacje/stare-innowacje/		f		\N	\N	f	31	\N	f	2019-07-22 09:36:49.237355+02	2019-05-20 11:49:51.892698+02	\N	2019-07-22 09:36:49.744813+02	Innowacje w oparciu o dane	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/	/strona-główna/ee/specializations/stare-innowacje/	stare-innowacje	\N	Innowacje w oparciu o dane	\N
57	000100030001000300020004	6	0	Strona Virgin Mobile	strona-virgin-mobile	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-virgin-mobile/		f		\N	\N	f	30	\N	f	2019-07-22 21:35:16.056356+02	2019-07-17 15:15:38.480691+02	\N	2019-07-22 21:35:16.123151+02	Strona Virgin Mobile	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-virgin-mobile/	/strona-główna/ee/specializations/digital-products-and-services/strona-virgin-mobile/	strona-virgin-mobile	\N	Strona Virgin Mobile	\N
41	000100030001000B	4	0	ZONEapp	zoneapp-wykorzystanie-big-data-w-aplikacji-w-celu-poprawy-jakości-powietrza	t	f	/strona-główna/ee/zoneapp-wykorzystanie-big-data-w-aplikacji-w-celu-poprawy-jakości-powietrza/		f		\N	\N	f	49	\N	f	2019-07-18 11:04:15.633519+02	2019-07-17 10:47:08.836224+02	\N	2019-07-18 11:04:15.735891+02	ZONEapp	\N	\N			/strona-główna/ee/zoneapp-wykorzystanie-big-data-w-aplikacji-w-celu-poprawy-jakości-powietrza/	/strona-główna/ee/zoneapp-wykorzystanie-big-data-w-aplikacji-w-celu-poprawy-jakości-powietrza/	zoneapp-wykorzystanie-big-data-w-aplikacji-w-celu-poprawy-jakości-powietrza	\N	ZONEapp	\N
65	00010003000100030002000C	6	0	STRONA FUNDACJI ROZWOJU DZIECI	strona-fundacji-rozwoju-dzieci	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-fundacji-rozwoju-dzieci/		f		\N	\N	f	30	\N	f	2019-07-17 15:45:59.742642+02	2019-07-17 15:45:59.88228+02	\N	2019-07-17 15:45:59.88228+02	STRONA FUNDACJI ROZWOJU DZIECI	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-fundacji-rozwoju-dzieci/	/strona-główna/ee/specializations/digital-products-and-services/strona-fundacji-rozwoju-dzieci/	strona-fundacji-rozwoju-dzieci	\N	STRONA FUNDACJI ROZWOJU DZIECI	\N
61	000100030001000300020008	6	0	STRONA DOMU SPOTKAŃ Z HISTORIĄ	strona-domu-spotkań-z-historią	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-domu-spotkań-z-historią/		f		\N	\N	f	30	\N	f	2019-07-17 15:30:48.522061+02	2019-07-17 15:30:48.604138+02	\N	2019-07-17 15:30:48.604138+02	STRONA DOMU SPOTKAŃ Z HISTORIĄ	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/strona-domu-spotkań-z-historią/	/strona-główna/ee/specializations/digital-products-and-services/strona-domu-spotkań-z-historią/	strona-domu-spotkań-z-historią	\N	STRONA DOMU SPOTKAŃ Z HISTORIĄ	\N
69	00010003000100030002000G	6	0	SERWIS DLA SPOŁECZNOŚCI LOKALNYCH NAPRAWMYTO.PL	serwis-dla-społeczności-lokalnych-naprawmytopl	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/serwis-dla-społeczności-lokalnych-naprawmytopl/		f		\N	\N	f	30	\N	f	2019-07-17 15:53:54.086209+02	2019-07-17 15:53:54.167588+02	\N	2019-07-17 15:53:54.167588+02	SERWIS DLA SPOŁECZNOŚCI LOKALNYCH NAPRAWMYTO.PL	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/serwis-dla-społeczności-lokalnych-naprawmytopl/	/strona-główna/ee/specializations/digital-products-and-services/serwis-dla-społeczności-lokalnych-naprawmytopl/	serwis-dla-społeczności-lokalnych-naprawmytopl	\N	SERWIS DLA SPOŁECZNOŚCI LOKALNYCH NAPRAWMYTO.PL	\N
62	000100030001000300020009	6	0	INTERAKTYWNE ŻYCIE RELIGIJNE	interaktywne-życie-religijne	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/interaktywne-życie-religijne/		f		\N	\N	f	30	\N	f	2019-07-17 15:36:45.944484+02	2019-07-17 15:36:46.030756+02	\N	2019-07-17 15:36:46.030756+02	INTERAKTYWNE ŻYCIE RELIGIJNE	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/interaktywne-życie-religijne/	/strona-główna/ee/specializations/digital-products-and-services/interaktywne-życie-religijne/	interaktywne-życie-religijne	\N	INTERAKTYWNE ŻYCIE RELIGIJNE	\N
42	000100030002	3	0	Zasady ochrony danych osobowych	obowiązek-informacyjny-i-polityka-prywatności	t	f	/strona-główna/obowiązek-informacyjny-i-polityka-prywatności/	Zasady ochrony danych osobowych	f	Obowiązek informacyjny i polityka prywatności.	\N	\N	f	49	\N	f	2019-07-23 16:23:13.222946+02	2019-07-17 12:22:12.430415+02	\N	2019-07-23 16:23:13.309257+02	Zasady ochrony danych osobowych	Zasady ochrony danych osobowych	\N	Obowiązek informacyjny i polityka prywatności.		/strona-główna/obowiązek-informacyjny-i-polityka-prywatności/	/strona-główna/obowiązek-informacyjny-i-polityka-prywatności/	obowiązek-informacyjny-i-polityka-prywatności	\N	Zasady ochrony danych osobowych	\N
66	00010003000100030002000D	6	0	SPECYFIKACJA TECHNOLOGICZNA DLA NGO.PL	specyfikacja-technologiczna-dla-ngopl	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/specyfikacja-technologiczna-dla-ngopl/		f		\N	\N	f	30	\N	f	2019-07-17 15:47:53.479273+02	2019-07-17 15:47:53.572136+02	\N	2019-07-17 15:47:53.572136+02	SPECYFIKACJA TECHNOLOGICZNA DLA NGO.PL	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/specyfikacja-technologiczna-dla-ngopl/	/strona-główna/ee/specializations/digital-products-and-services/specyfikacja-technologiczna-dla-ngopl/	specyfikacja-technologiczna-dla-ngopl	\N	SPECYFIKACJA TECHNOLOGICZNA DLA NGO.PL	\N
58	000100030001000300020005	6	0	APLIKACJA SIECIOWA	aplikacja-sieciowa	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/aplikacja-sieciowa/		f		\N	\N	f	30	\N	f	2019-07-17 15:19:41.640511+02	2019-07-17 15:19:41.72428+02	\N	2019-07-17 15:19:41.72428+02	APLIKACJA SIECIOWA	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/aplikacja-sieciowa/	/strona-główna/ee/specializations/digital-products-and-services/aplikacja-sieciowa/	aplikacja-sieciowa	\N	APLIKACJA SIECIOWA	\N
70	00010003000100030002000H	6	0	GRAJ I KODUJ!	graj-i-koduj	t	f	/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/graj-i-koduj/		f		\N	\N	f	30	\N	f	2019-07-17 15:56:22.978127+02	2019-07-17 15:56:23.049306+02	\N	2019-07-17 15:56:23.049306+02	GRAJ I KODUJ!	\N	\N			/strona-główna/ee/specializacje/produkty-i-usługi-cyfrowe/graj-i-koduj/	/strona-główna/ee/specializations/digital-products-and-services/graj-i-koduj/	graj-i-koduj	\N	GRAJ I KODUJ!	\N
54	00010003000100030001000C	6	0	APLIKACJA CYFROWA GOODOO	aplikacja-cyfrowa-goodoo	t	f	/strona-główna/ee/specializacje/stare-innowacje/aplikacja-cyfrowa-goodoo/		f		\N	\N	f	30	\N	f	2019-07-18 10:23:53.97703+02	2019-07-17 14:58:51.778167+02	\N	2019-07-18 10:23:54.143304+02	APLIKACJA CYFROWA GOODOO	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/aplikacja-cyfrowa-goodoo/	/strona-główna/ee/specializations/stare-innowacje/aplikacja-cyfrowa-goodoo/	aplikacja-cyfrowa-goodoo	\N	APLIKACJA CYFROWA GOODOO	\N
50	000100030001000300010009	6	0	PUBLIKACJA „GRYWALIZACJA. ZRÓB TO SAM!”	publikacja-grywalizacja-zrób-to-sam	t	f	/strona-główna/ee/specializacje/stare-innowacje/publikacja-grywalizacja-zrób-to-sam/		f		\N	\N	f	30	\N	f	2019-07-18 10:23:33.927996+02	2019-07-17 14:41:44.722694+02	\N	2019-07-18 10:23:34.019695+02	PUBLIKACJA „GRYWALIZACJA. ZRÓB TO SAM!”	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/publikacja-grywalizacja-zrób-to-sam/	/strona-główna/ee/specializations/stare-innowacje/publikacja-grywalizacja-zrób-to-sam/	publikacja-grywalizacja-zrób-to-sam	\N	PUBLIKACJA „GRYWALIZACJA. ZRÓB TO SAM!”	\N
40	00010003	2	8	Laboratorium EE	strona-główna	t	f	/strona-główna/	Laboratorium EE | Prywatne Centrum Badawczo - Rozwojowe	f	Tworzymy usługi i produkty, które skutecznie i przełomowo rozwiązują prawdziwe problemy. Pracujemy z tymi, którzy potrzebują nowych i skutecznych rozwiązań.	\N	\N	f	48	\N	f	2019-07-22 21:29:47.772578+02	2019-07-15 13:09:08.983012+02	\N	2019-07-22 21:29:47.813756+02	Laboratorium EE	Laboratorium EE | Prywatne Centrum Badawczo - Rozwojowe	Laboratorium EE|Private Research and Development center	Tworzymy usługi i produkty, które skutecznie i przełomowo rozwiązują prawdziwe problemy. Pracujemy z tymi, którzy potrzebują nowych i skutecznych rozwiązań.	We save your money on IT. We create services and products that effectively and breakthrough solve real problems. We work with those who need new and effective solutions.	/strona-główna/	/strona-główna/	strona-główna	\N	Laboratorium EE	\N
3	000100030001	3	7	Laboratorium EE	ee	t	f	/strona-główna/ee/	Twoje prywatne centrum badawczo rozwojowe	f	W Laboratorium EE tworzymy:\r\nInnowacje w oparciu o dane\r\nProdukty cyfrowe\r\nUsługi cyfrowe\r\nOptymalizację procesów wytwórczych\r\n\r\nKorzystamy z technologii:\r\nMachine Learning\r\nData Science\r\nInwentaryzacja danych\r\nArtificial Intelligence \r\nFlutter\r\nWagtail \r\nPython\r\nDjango \r\nDjango Admin\r\nWarsztaty\r\nInteraktywne prototypy\r\nScrum\r\nAgile\r\nZarządzanie procesami\r\nCoaching i wsparcie zespołów zwinnych	\N	\N	f	29	\N	f	2019-07-18 09:55:43.755566+02	2019-05-20 11:40:14.829548+02	\N	2019-07-18 09:55:43.893576+02	Laboratorium EE	Twoje prywatne centrum badawczo rozwojowe	Your private research and development center	W Laboratorium EE tworzymy:\r\nInnowacje w oparciu o dane\r\nProdukty cyfrowe\r\nUsługi cyfrowe\r\nOptymalizację procesów wytwórczych\r\n\r\nKorzystamy z technologii:\r\nMachine Learning\r\nData Science\r\nInwentaryzacja danych\r\nArtificial Intelligence \r\nFlutter\r\nWagtail \r\nPython\r\nDjango \r\nDjango Admin\r\nWarsztaty\r\nInteraktywne prototypy\r\nScrum\r\nAgile\r\nZarządzanie procesami\r\nCoaching i wsparcie zespołów zwinnych	In the EE Laboratory, we create:\r\nInnovations based on data\r\nDigital products\r\nDigital services\r\nOptimization of manufacturing processes\r\n\r\nWe use technology:\r\nMachine Learning\r\nData Science\r\nInventory of data\r\nArtificial Intelligence \r\nFlutter\r\nWagtail \r\nPython\r\nDjango \r\nDjango Admin\r\nWorkshops\r\nInteractive prototypes\r\nScrum\r\nAgile\r\nProcess management\r\nCoaching and support for agile teams	/strona-główna/ee/	/strona-główna/ee/	ee	ee	Laboratorium EE	Laboratorium EE
43	000100030001000300010003	6	0	Hackathon Danych Publicznych	hackathon-danych-publicznych	t	f	/strona-główna/ee/specializacje/stare-innowacje/hackathon-danych-publicznych/		f		\N	\N	f	30	\N	f	2019-07-22 15:33:44.764828+02	2019-07-17 14:01:00.974789+02	\N	2019-07-22 15:33:44.874019+02	Hackathon Danych Publicznych	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/hackathon-danych-publicznych/	/strona-główna/ee/specializations/stare-innowacje/hackathon-danych-publicznych/	hackathon-danych-publicznych	\N	Hackathon Danych Publicznych	\N
51	00010003000100030001000A	6	0	PROGRAM „NAJPIERW MIESZKANIE”	program-najpierw-mieszkanie	t	f	/strona-główna/ee/specializacje/stare-innowacje/program-najpierw-mieszkanie/		f		\N	\N	f	30	\N	f	2019-07-18 10:23:40.504364+02	2019-07-17 14:51:08.539065+02	\N	2019-07-18 10:23:40.601061+02	PROGRAM „NAJPIERW MIESZKANIE”	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/program-najpierw-mieszkanie/	/strona-główna/ee/specializations/stare-innowacje/program-najpierw-mieszkanie/	program-najpierw-mieszkanie	\N	PROGRAM „NAJPIERW MIESZKANIE”	\N
46	000100030001000300010006	6	0	KULTURA DOSTĘPNA DLA KAŻDEGO	kultura-dostępna-dla-każdego	t	f	/strona-główna/ee/specializacje/stare-innowacje/kultura-dostępna-dla-każdego/		f		\N	\N	f	30	\N	f	2019-07-18 10:48:13.178404+02	2019-07-17 14:31:38.276831+02	\N	2019-07-18 10:48:13.407196+02	KULTURA DOSTĘPNA DLA KAŻDEGO	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/kultura-dostępna-dla-każdego/	/strona-główna/ee/specializations/stare-innowacje/kultura-dostępna-dla-każdego/	kultura-dostępna-dla-każdego	\N	KULTURA DOSTĘPNA DLA KAŻDEGO	\N
39	000100030001000300010002	6	0	ZONEapp | Czyste Powietrze	zoneapp-czyste-powietrze	t	f	/strona-główna/ee/specializacje/stare-innowacje/zoneapp-czyste-powietrze/		f		\N	\N	f	30	\N	f	2019-07-18 10:39:46.148075+02	2019-07-15 10:59:09.189441+02	\N	2019-07-18 10:39:46.227118+02	ZONEapp | Czyste Powietrze	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/zoneapp-czyste-powietrze/	/strona-główna/ee/specializations/stare-innowacje/zoneapp-czyste-powietrze/	zoneapp-czyste-powietrze	\N	ZONEapp | Czyste Powietrze	\N
49	000100030001000300010008	6	0	PROJEKT BADAWCZY „W SILE WIEKU”	projekt-badawczy-w-sile-wieku	t	f	/strona-główna/ee/specializacje/stare-innowacje/projekt-badawczy-w-sile-wieku/		f		\N	\N	f	30	\N	f	2019-07-18 10:22:33.019951+02	2019-07-17 14:38:20.232412+02	\N	2019-07-18 10:22:33.111795+02	PROJEKT BADAWCZY „W SILE WIEKU”	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/projekt-badawczy-w-sile-wieku/	/strona-główna/ee/specializations/stare-innowacje/projekt-badawczy-w-sile-wieku/	projekt-badawczy-w-sile-wieku	\N	PROJEKT BADAWCZY „W SILE WIEKU”	\N
53	00010003000100030001000B	6	0	PORTAL „MOJA POLIS”	portal-moja-polis	t	f	/strona-główna/ee/specializacje/stare-innowacje/portal-moja-polis/		f		\N	\N	f	30	\N	f	2019-07-18 10:23:47.89023+02	2019-07-17 14:56:47.434389+02	\N	2019-07-18 10:23:48.007291+02	PORTAL „MOJA POLIS”	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/portal-moja-polis/	/strona-główna/ee/specializations/stare-innowacje/portal-moja-polis/	portal-moja-polis	\N	PORTAL „MOJA POLIS”	\N
45	000100030001000300010005	6	0	DZIENNIKARSTWO WSPIERANE PRZEZ TECHNOLOGIE	dziennikarstwo-wspierane-przez-technologie	t	f	/strona-główna/ee/specializacje/stare-innowacje/dziennikarstwo-wspierane-przez-technologie/		f		\N	\N	f	30	\N	f	2019-07-18 10:45:46.205899+02	2019-07-17 14:12:23.582729+02	\N	2019-07-18 10:45:46.292014+02	DZIENNIKARSTWO WSPIERANE PRZEZ TECHNOLOGIE	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/dziennikarstwo-wspierane-przez-technologie/	/strona-główna/ee/specializations/stare-innowacje/dziennikarstwo-wspierane-przez-technologie/	dziennikarstwo-wspierane-przez-technologie	\N	DZIENNIKARSTWO WSPIERANE PRZEZ TECHNOLOGIE	\N
32	000100030001000300010001	6	0	Memo	memo	t	f	/strona-główna/ee/specializacje/stare-innowacje/memo/		f		\N	\N	f	30	\N	f	2019-07-22 09:50:21.754979+02	2019-07-04 09:17:27.50311+02	\N	2019-07-22 09:50:21.828902+02	Memo	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/memo/	/strona-główna/ee/specializations/stare-innowacje/memo/	memo	\N	Memo	\N
47	000100030001000300010007	6	0	POLONA	serwis-polona	t	f	/strona-główna/ee/specializacje/stare-innowacje/serwis-polona/		f		\N	\N	f	30	\N	f	2019-07-22 13:05:13.368765+02	2019-07-17 14:34:33.513921+02	\N	2019-07-22 13:05:13.523291+02	POLONA	\N	\N			/strona-główna/ee/specializacje/stare-innowacje/serwis-polona/	/strona-główna/ee/specializations/stare-innowacje/serwis-polona/	serwis-polona	\N	POLONA	\N
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
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
1	laboratorium.ee	443	t	40	Laboratorium EE
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
1	doc	documents/stilfras2019_L1_texter.pdf	2019-07-22 12:06:57.992609+02	\N	1	322180	15fe7ef9693e58c2df0c0e10f9df36a2828434f3
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
1	https://www.youtube.com/watch?v=Bey4XXJAqS8	\N	video	<iframe width="480" height="270" src="https://www.youtube.com/embed/Bey4XXJAqS8?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	4K VIDEO ultrahd hdr sony 4K VIDEOS demo test nature relaxation movie for 4k oled tv	4K Eye	YouTube	https://i.ytimg.com/vi/Bey4XXJAqS8/hqdefault.jpg	480	270	2019-06-10 11:43:02.590785+02
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
39	456.jpg	original_images/456.jpg	6800	4093	2019-06-17 15:33:13.373048+02	\N	\N	\N	\N	\N	844897	1	9637e472cc3254f11738c86d3d84ffddb89818b1
2	n.jpeg	original_images/n_4C00pQ4.jpeg	1920	1080	2019-05-20 11:47:32.657585+02	\N	\N	\N	\N	\N	258542	1	239397684dd79a3f2270e47313524d00ad95aa6d
3	n2.jpg	original_images/n2_FmPIaVw.jpg	600	401	2019-05-20 11:47:44.844693+02	\N	\N	\N	\N	\N	46251	1	6a7ce8c2c926a4d41906b1705d6f905994c97cbe
4	hammer1.jpeg	original_images/hammer1.jpeg	227	222	2019-05-20 11:48:17.262367+02	\N	\N	\N	\N	\N	4473	1	b6b838adc3c17a4cf5f3cb87f2033dd4f98f1b33
6	gazwyb.jpg	original_images/gazwyb.jpg	620	300	2019-05-28 10:30:00.695126+02	\N	\N	\N	\N	\N	16569	1	727e567b1635b18b05ab6db426c580dd02d2218b
7	PAYU-LOGO_GRADIENT_RGB.jpg	original_images/PAYU-LOGO_GRADIENT_RGB.jpg	851	478	2019-05-28 10:30:19.963077+02	\N	\N	\N	\N	\N	30277	1	749212d81c0444c246c0165e2aaf14a5d9622eb5
9	krishna.jpg	original_images/.jpg	428	606	2019-05-28 11:19:11.13507+02	\N	\N	\N	\N	\N	71233	1	b95777864454daac3da1888edb7cecbbec9f3cab
10	krishna2.png	original_images/krishna2.png	204	479	2019-05-28 11:59:44.312798+02	\N	\N	\N	\N	\N	276717	1	e4c0cf0fa0d561b87fa0340982c8a42cf42fd640
11	krshnold.jpeg	original_images/krshnold.jpeg	266	190	2019-05-28 12:00:02.079531+02	\N	\N	\N	\N	\N	10364	1	5af488e97c97c5b64ae549768578056b2746f016
12	quote.jpg	original_images/quote.jpg	640	640	2019-05-28 12:10:59.472437+02	\N	\N	\N	\N	\N	116185	1	5ae1bce6af80b01ef7511d3241db81232714bc03
13	P1010247-1440x720.jpg	original_images/P1010247-1440x720.jpg	1440	720	2019-05-28 16:51:33.206302+02	\N	\N	\N	\N	\N	207144	1	c58962a02b7bc0b059be9479df72afa889c9f256
14	komor.webp	original_images/komor2.jpeg	725	484	2019-05-29 09:32:17.33888+02	\N	\N	\N	\N	\N	56388	1	2bc521aa79ac598fef4e0a01d09af8cdd503a461
15	krowa-2-1440x720.jpg	original_images/donkey.jpg	450	204	2019-05-29 09:34:56.248064+02	\N	\N	\N	\N	\N	29064	1	0cf4ec74673b4294ee2f907bf1f5db88c44b10d0
16	kacz.jpeg	original_images/kacz.jpeg	266	189	2019-05-29 09:36:30.205012+02	\N	\N	\N	\N	\N	7741	1	a900c82c92c9733b75481150a8a32a0186d73525
17	Edward_Abramowski_(1868-1918).jpg	original_images/Edward_Abramowski_1868-1918.jpg	253	289	2019-05-29 14:56:28.579632+02	\N	\N	\N	\N	\N	11777	1	23074e9de7475086853ca5985860e56a7545772a
18	wag2.jpg	original_images/wag2_dpEV14N.jpg	220	217	2019-05-30 15:25:03.252838+02	\N	\N	\N	\N	\N	8814	1	0ee33c753a4a75d06926fa3cb7c3e2617b3ad8d5
19	wag3.jpg	original_images/wag3_Cs0PXPE.jpg	900	600	2019-05-30 15:25:23.706259+02	\N	\N	\N	\N	\N	55652	1	21eac1de8e4b3f94dd1a86033e4e3404d39a9d4e
20	case.jpeg	original_images/case.jpeg	212	238	2019-05-30 15:30:00.11683+02	\N	\N	\N	\N	\N	6215	1	ddf3d8e7b58c4a53d62b392198c6e42ea5aa4fdd
21	case2.jpg	original_images/case2.jpg	1451	1600	2019-05-30 15:30:39.307328+02	\N	\N	\N	\N	\N	187320	1	2f6b89ed6b60f1b5e74f6ea4582f914e951917c0
22	case3.jpg	original_images/case3.jpg	1500	973	2019-05-30 15:31:19.637762+02	\N	\N	\N	\N	\N	156277	1	a1676f6a0c03c3ff4f041204cacf51214b1e0c87
23	cross.png	original_images/cross.png	512	512	2019-05-30 16:42:55.563473+02	\N	\N	\N	\N	\N	4403	1	7639eb5b5bad54e309bdfa99c68431d1b2a7b1c6
24	220px-Theodore_Kaczynski_2.jpg	original_images/220px-Theodore_Kaczynski_2.jpg	220	220	2019-05-31 10:34:01.825559+02	\N	\N	\N	\N	\N	14754	1	2ffc9fc053a0b74e652b4195dba28670f8ed4dc8
25	dokt.jpeg	original_images/dokt.jpeg	275	183	2019-05-31 14:39:55.921073+02	\N	\N	\N	\N	\N	13955	1	48b59a9f15ca0fbd48f469cd787e3de4ae8813f4
26	wielblady	original_images/adult-animal-arabian-1718259.jpg	5403	3602	2019-06-10 11:44:28.383788+02	\N	\N	\N	\N	\N	2626484	1	d264917dcd22d153dbc21ff7334ee7fe7b25feaa
27	Firefox_Screenshot_2019-06-14T14-07-25.179Z.png	original_images/Firefox_Screenshot_2019-06-14T14-07-25.179Z.png	767	295	2019-06-14 16:09:13.201795+02	\N	\N	\N	\N	\N	137226	1	ec369abb054707797018f88fef8370f3119353fe
28	hero.jpg	original_images/hero.jpg	1920	890	2019-06-14 16:14:15.622808+02	\N	\N	\N	\N	\N	678647	1	16e8237005c5ca0f9d96ebd4743c401c0864d77d
29	code-coding-connection-943096.jpg	original_images/code-coding-connection-943096.jpg	6000	4000	2019-06-14 16:42:38.582692+02	\N	\N	\N	\N	\N	3366448	1	354a047c0acde7b92e8113d1f7e9a2d8b2451d52
30	144a930f-733c-45aa-8c72-09694490aa0c.jpg	original_images/144a930f-733c-45aa-8c72-09694490aa0c.jpg	2244	2244	2019-06-14 16:51:39.31891+02	\N	\N	\N	\N	\N	1661346	1	25f785f7972994c1aa3911db3203a414180e7cfc
31	vintage-robot-with-lots-of-black-negative-space.jpg	original_images/vintage-robot-with-lots-of-black-negative-space.jpg	4460	2973	2019-06-14 17:00:14.241858+02	\N	\N	\N	\N	\N	480968	1	26aa04c4face26758c788301eb9a11fa975e22a5
32	access-close-up-code-1089438.jpg	original_images/access-close-up-code-1089438.jpg	5760	3840	2019-06-16 18:02:10.346737+02	\N	\N	\N	\N	\N	5118188	1	3d1361ed842362392014a80d8ba5f1885eb5a413
33	ashwin-vaswani-1077871-unsplash.jpg	original_images/ashwin-vaswani-1077871-unsplash.jpg	4748	3165	2019-06-16 22:59:15.051469+02	\N	\N	\N	\N	\N	2955665	1	65233afbd8a3fd86111889241c77929cb602fce3
35	andrew-neel-143525-unsplash.jpg	original_images/andrew-neel-143525-unsplash.jpg	5472	3648	2019-06-16 23:02:15.701179+02	\N	\N	\N	\N	\N	3316849	1	30ed33c29e634400163e44d6e71b932adaca28ef
36	mike-yukhtenko-111373-unsplash.jpg	original_images/mike-yukhtenko-111373-unsplash.jpg	6000	4000	2019-06-16 23:03:48.00227+02	\N	\N	\N	\N	\N	3073514	1	a86543508ef1b9acaa12bddf0afdd6b64927fa61
34	adrien-olichon-762119-unsplash.jpg	original_images/adrien-olichon-762119-unsplash.jpg	6000	4000	2019-06-16 23:01:26.911964+02	\N	\N	\N	\N	\N	2724041	1	cbd3af63b05047dbe06bb3f1ba68a77702718517
37	333.jpg	original_images/333.jpg	6800	4093	2019-06-17 15:26:59.189936+02	\N	\N	\N	\N	\N	960277	1	b44b05e9c6fffea33912bdeac30ba3d267ca354a
38	123.jpg	original_images/123.jpg	6800	4093	2019-06-17 15:29:49.48072+02	\N	\N	\N	\N	\N	866471	1	23ab9e9c1a70b4442ef8627f7ad47b80ae19fc07
40	789.jpg	original_images/789.jpg	6800	4093	2019-06-17 15:38:27.194831+02	\N	\N	\N	\N	\N	681804	1	2f5560f6ee47d64eab1fd6b865105c71781bf554
41	agora.jpg	original_images/agora.jpg	418	79	2019-06-17 15:48:13.144342+02	\N	\N	\N	\N	\N	11251	1	ac3227304b1085ee8a7bfca588bbb942e4ef2d56
42	bn.jpg	original_images/bn.jpg	416	130	2019-06-17 15:48:22.547511+02	\N	\N	\N	\N	\N	15663	1	c2854df15a56fb805053934d53865a3bab12d1c0
43	il.jpg	original_images/il.jpg	418	134	2019-06-17 15:48:32.85388+02	\N	\N	\N	\N	\N	19425	1	1d84a010a02737c865fb64e1df8159ae9b35f324
44	jj.jpg	original_images/jj.jpg	341	307	2019-06-17 15:48:43.574355+02	\N	\N	\N	\N	\N	19274	1	87ec7c398ee9cb5f8098487a3743ae4b9e988503
45	logo-inea.jpg	original_images/logo-inea.jpg	400	142	2019-06-17 15:48:51.628489+02	\N	\N	\N	\N	\N	9380	1	220d922e14ee85c5f187b266251316fca170c497
46	mjn.jpg	original_images/mjn.jpg	291	250	2019-06-17 15:49:11.152885+02	\N	\N	\N	\N	\N	26030	1	6c90d3647e3be99b88c633ed305bbd9a938f4b96
47	mpit.jpg	original_images/mpit.jpg	349	239	2019-06-17 15:49:19.766857+02	\N	\N	\N	\N	\N	27749	1	27217b5ec84034917da7f7aa2157da5e58c7ce49
48	268682.jpg	original_images/268682.jpg	135	270	2019-06-17 15:54:33.220179+02	\N	\N	\N	\N	\N	1239	1	ad2bcf03b87d7cf8d90403cbebdb96c36ccf2f99
49	Zrzut ekranu 2019-06-17 o 15.55.02.png	original_images/Zrzut_ekranu_2019-06-17_o_15.55.02.png	182	290	2019-06-17 15:55:25.651805+02	\N	\N	\N	\N	\N	7648	1	b7416bc6b2b55229e03ea87de5550028cde0de4e
50	Zrzut ekranu 2019-06-17 o 15.56.30.png	original_images/Zrzut_ekranu_2019-06-17_o_15.56.30.png	68	298	2019-06-17 15:56:47.63936+02	\N	\N	\N	\N	\N	7034	1	e2caf1b455e8c3af5978eae7588afecc5425944e
51	nask.jpg	original_images/nask.jpg	414	77	2019-06-17 15:59:41.633239+02	\N	\N	\N	\N	\N	9307	1	fd3964f0fe0c618a7b477ceddac50f2c1ff3646b
52	4B9A3055.jpg	original_images/4B9A3055.jpg	1881	1254	2019-06-18 15:21:50.815418+02	\N	\N	\N	\N	\N	1182613	1	85195baeb84f210ed920d876627fec4dcd22cc0a
53	4668.jpg	original_images/4668.jpg	800	533	2019-06-18 15:26:59.539946+02	\N	\N	\N	\N	\N	50359	1	750e34002acecd3cc5e076c6a2ec7cd7439b63dd
54	27839783.jpg	original_images/27839783.jpg	1881	1254	2019-06-18 15:29:31.862303+02	\N	\N	\N	\N	\N	90375	1	e68b2be993088289816e858a53707e32951f03e1
55	7293397.jpg	original_images/7293397.jpg	1881	1254	2019-06-18 15:30:35.56177+02	\N	\N	\N	\N	\N	122846	1	9e2eb9136b30a05e4bbeb47dacd56c159a41494b
56	johnson-wang-515951-unsplash.jpg	original_images/johnson-wang-515951-unsplash.jpg	2449	1633	2019-06-19 11:51:27.464153+02	\N	\N	\N	\N	\N	1352346	1	9e3ac927f17d4b989a27cc8b489311900ba53408
57	johnson-wang-515951-unsplash.jpg	original_images/johnson-wang-515951-unsplash.jpg	2449	1633	2019-06-19 11:51:47.96129+02	\N	\N	\N	\N	\N	1352346	1	9e3ac927f17d4b989a27cc8b489311900ba53408
58	data2.jpg	original_images/data2.jpg	7360	4912	2019-06-19 13:53:56.720432+02	\N	\N	\N	\N	\N	4959909	1	00e71ebdb9e1a602826b39b5e2a4847ba0e3a8c9
59	optymalizacja.jpg	original_images/optymalizacja.jpg	5335	3557	2019-06-19 13:54:18.192279+02	\N	\N	\N	\N	\N	1146331	1	ff17ad3824b5e727b8f043c5a0a123e933d69e3a
60	cyfrowe2.jpg	original_images/cyfrowe2.jpg	3500	2333	2019-06-19 13:54:32.211383+02	\N	\N	\N	\N	\N	1517399	1	48f06aa629475cc0fae1da744d235f4311607cdc
61	optymalizacja3.jpg	original_images/optymalizacja3.jpg	6016	4016	2019-06-19 14:00:13.193205+02	\N	\N	\N	\N	\N	6038858	1	342ceb6fa206a3e5b1bddee4600a151086704588
62	cyfrowe.jpg	original_images/cyfrowe.jpg	4748	3165	2019-06-19 14:00:58.29964+02	\N	\N	\N	\N	\N	2955665	1	65233afbd8a3fd86111889241c77929cb602fce3
63	user-test.png	original_images/user-test.png	70	66	2019-06-19 14:07:56.197131+02	\N	\N	\N	\N	\N	1008	1	d30161543d30035b9743ffa2330932c683bff25f
64	warsztat.png	original_images/warsztat.png	73	73	2019-06-19 14:16:21.249227+02	\N	\N	\N	\N	\N	1970	1	f3ae80b4644244cb9fbc510e8d63cc8ed069ed1f
65	proto.png	original_images/proto.png	66	66	2019-06-19 14:16:39.301486+02	\N	\N	\N	\N	\N	1724	1	c5787444b1ceee9d9f803776ef9cddd9ea9a6aa4
66	user-test.png	original_images/user-test.png	70	66	2019-06-19 14:16:49.423264+02	\N	\N	\N	\N	\N	1008	1	d30161543d30035b9743ffa2330932c683bff25f
67	cyfrowe.png	original_images/cyfrowe.png	64	63	2019-06-19 14:19:22.821989+02	\N	\N	\N	\N	\N	1428	1	4aa1334913db43c5ddc29bbbffa356daecb6b580
68	uslugi.png	original_images/uslugi.png	79	65	2019-06-19 14:20:09.697855+02	\N	\N	\N	\N	\N	1576	1	9095971fdb71ec8901068564dae289f259726082
69	app-proto.png	original_images/app-proto.png	49	61	2019-06-19 14:21:10.692713+02	\N	\N	\N	\N	\N	1363	1	0e3decb85799bd5ffb0e8f67f2c724f066a3b55e
70	ux.jpg	original_images/ux.jpg	4000	2667	2019-06-19 15:28:25.707521+02	\N	\N	\N	\N	\N	773108	1	d9c3493b53bb577f0fad7d991e8de1938650c052
71	badania.jpg	original_images/badania.jpg	5472	3648	2019-06-19 15:30:31.899574+02	\N	\N	\N	\N	\N	8594153	1	d803c7bb6105ab3331ef31ca6e965f4ddcbaf518
72	warsztaty.jpg	original_images/warsztaty.jpg	5472	3648	2019-06-19 15:30:55.167125+02	\N	\N	\N	\N	\N	8981252	1	0cc423f8f1a726f9b016b747d426fea9f4f0d1c4
73	sprint.jpg	original_images/sprint.jpg	6000	4000	2019-06-19 15:32:22.647761+02	\N	\N	\N	\N	\N	10079203	1	2cccd7b3c0dc2af8e974af370f57adea726a2f91
74	warsztaty.png	original_images/warsztaty.png	64	64	2019-06-19 15:39:51.735417+02	\N	\N	\N	\N	\N	2283	1	8521afed4d34d404ebdcd413a3cf5c3974bcd6a4
75	coaching.png	original_images/coaching.png	64	64	2019-06-19 15:40:04.981381+02	\N	\N	\N	\N	\N	1962	1	6e56a6d1a8326c9cb3b13e99d9bee5f960e9be40
76	procesy.png	original_images/procesy.png	64	64	2019-06-19 15:40:14.058301+02	\N	\N	\N	\N	\N	2342	1	e675238bd519838c0b454a3b727aa554a96ef4a6
77	PrzygotowanieWprowadzenie.png	original_images/PrzygotowanieWprowadzenie.png	512	512	2019-06-21 11:48:41.326474+02	\N	\N	\N	\N	\N	10139	1	3136a925e1c40ea2f852d56842b5ec8f1a9b9b3b
78	zarzadzanieProcesem.png	original_images/zarzadzanieProcesem.png	512	512	2019-06-21 11:48:57.683435+02	\N	\N	\N	\N	\N	17058	1	bf0f848bca0ce049dc1f767fb0dce47858983ea3
79	aktywneWspieranie.png	original_images/aktywneWspieranie.png	512	512	2019-06-21 11:49:21.452881+02	\N	\N	\N	\N	\N	27507	1	f8086bd518c494a7f112fe13a5c98ec232e7f84d
80	opracowanieWarsztatow.png	original_images/opracowanieWarsztatow.png	512	512	2019-06-21 11:49:32.328543+02	\N	\N	\N	\N	\N	11175	1	dbb3d48b13d113c0362645722880248a382c0ee8
81	zebranieDanych.png	original_images/zebranieDanych.png	512	512	2019-06-21 11:51:39.378862+02	\N	\N	\N	\N	\N	2953	1	bffc1091905da5eac74a64f0bc02d31837af0a7b
82	analizaDanychH.png	original_images/analizaDanychH.png	512	512	2019-06-21 11:51:52.70909+02	\N	\N	\N	\N	\N	7621	1	d17108c38c6f2a07a1e37f27de68f36cde9df395
83	tworzenieAlgorytmu.png	original_images/tworzenieAlgorytmu.png	512	512	2019-06-21 11:52:02.726565+02	\N	\N	\N	\N	\N	13856	1	4cfbd639a57ce24059ef89a3fcb8bb67c2ddd27f
84	realizacjaProjektu.png	original_images/realizacjaProjektu.png	512	512	2019-06-21 11:52:16.16289+02	\N	\N	\N	\N	\N	18099	1	8df6eb2d87ea7d5ba6e99fb2bbc05c167700992b
85	inwentaryzacjaDanych.png	original_images/inwentaryzacjaDanych.png	512	512	2019-06-21 11:53:20.559828+02	\N	\N	\N	\N	\N	3637	1	d378a642bb12bf5fdbf57ebab4ef82bae284f4e0
86	dataScienc.png	original_images/dataScienc.png	512	512	2019-06-21 11:53:31.145362+02	\N	\N	\N	\N	\N	26025	1	9b8d3b1c8e20ca67ceb045a1d38d716effa9fd45
87	machineLearning.png	original_images/machineLearning.png	512	512	2019-06-21 11:53:41.962971+02	\N	\N	\N	\N	\N	38142	1	7759c333cb26816e145564439e002c25247c2b06
88	Analiza.png	original_images/Analiza.png	512	512	2019-06-21 15:31:27.233693+02	\N	\N	\N	\N	\N	25779	1	29a66e3673990e0af211cb7156eedccc2be0a44b
89	segmentacja.png	original_images/segmentacja.png	512	512	2019-06-21 15:31:38.490465+02	\N	\N	\N	\N	\N	34862	1	8c2a7dca8defa94a51d172c9f0f47e36e526e427
90	Predykcje.png	original_images/Predykcje.png	512	512	2019-06-21 15:31:47.701522+02	\N	\N	\N	\N	\N	7720	1	cc1db8fbb591519388042c667265e5a589afa755
91	Wykrywanie Anomalii.png	original_images/Wykrywanie_Anomalii.png	481	481	2019-06-21 15:31:59.001693+02	\N	\N	\N	\N	\N	11673	1	7a9c46157637114e455222675422d38b9aa3b535
93	Artefakty Scruma.png	original_images/Artefakty_Scruma.png	483	483	2019-06-21 15:33:09.524557+02	\N	\N	\N	\N	\N	19764	1	d3617648d23099de815cb5d328683ca0fdf5ea08
94	Wydarzenia scrumowe.png	original_images/Wydarzenia_scrumowe.png	481	489	2019-06-21 15:33:45.642463+02	\N	\N	\N	\N	\N	13547	1	115444666f094aac9376f9db44e5308f9164ef80
95	Scrum guide.png	original_images/Scrum_guide.png	481	481	2019-06-21 15:33:53.40569+02	\N	\N	\N	\N	\N	14358	1	91d6107b91fbe0f69514d673b6145fad13773c3a
96	ux.png	original_images/ux.png	512	512	2019-06-21 16:55:59.358296+02	\N	\N	\N	\N	\N	8366	1	b4c5b92b35dfcf29d88f910a3e4c0b2c9f6d2f7a
97	badania obserwacje.png	original_images/badania_obserwacje.png	476	512	2019-06-21 16:56:10.468477+02	\N	\N	\N	\N	\N	12008	1	ce80712f230c2c69a583a0e40f5d823b44085255
98	warsztaty wydobywcze.png	original_images/warsztaty_wydobywcze.png	480	480	2019-06-21 16:56:30.807349+02	\N	\N	\N	\N	\N	11799	1	d0d39d6f53941818d4d2a70cf0fdf50ea9d3dc99
99	design sprinty.png	original_images/design_sprinty.png	512	512	2019-06-21 16:56:40.541392+02	\N	\N	\N	\N	\N	9317	1	c759be5e4be4203d5ed5b7b3c740de1cdec3822f
100	20190210_185830.jpg	original_images/20190210_185830.jpg	4128	3096	2019-06-26 18:25:37.467114+02	\N	\N	\N	\N	\N	5177165	1	73e30e0ed9f146c65d2e909390c8b97f47e40f03
101	adult-analysis-business-1493375.jpg	original_images/adult-analysis-business-1493375.jpg	3965	3248	2019-06-26 18:26:22.938933+02	\N	\N	\N	\N	\N	1534405	1	e04292480164dc78edc62e97524c22db900b52a7
102	Firefox_Screenshot_2019-06-26T16-40-12.176Z.png	original_images/Firefox_Screenshot_2019-06-26T16-40-12.176Z.png	389	168	2019-06-26 18:40:49.493137+02	\N	\N	\N	\N	\N	756	1	520b39773bd4194f680c5ae0db0caf7db75ff70d
103	agora_logo.png	original_images/agora_logo.png	228	171	2019-07-03 18:12:31.058582+02	\N	\N	\N	\N	\N	3050	1	e883a9972906c22f7c51b8121db7b7a17ccad0a6
92	Roadmapy.png	original_images/narzedzia-road_mapy_projektow.jpg	1920	1080	2019-06-21 15:33:00.956114+02	\N	\N	\N	\N	\N	51013	1	e3e30d6c8d3f627f08916e6579013c851f3f706d
104	ministerstwo_logo.png	original_images/ministerstwo_logo.png	228	171	2019-07-03 18:12:46.217941+02	\N	\N	\N	\N	\N	5779	1	6b3a782a5e5094dfd1aa7d0fe04ed8cd9fd17d3a
105	biblioteka-narodowa_logo.png	original_images/biblioteka-narodowa_logo.png	228	171	2019-07-03 18:12:57.752759+02	\N	\N	\N	\N	\N	3619	1	4db7d13f5d1477952b8bba1e3ea0155fc43ce691
106	miasto-jest-nasze_logo.png	original_images/miasto-jest-nasze_logo.png	228	171	2019-07-03 18:13:08.147937+02	\N	\N	\N	\N	\N	5752	1	d413b7a037ee510e5ec79fe5ef501107a90a8cc2
107	inea_logo.png	original_images/inea_logo.png	228	171	2019-07-03 18:13:20.735497+02	\N	\N	\N	\N	\N	2416	1	7baf567639742187af258eb5aa46f8a49c9d9f39
108	J&J_logo.png	original_images/JJ_logo.png	228	171	2019-07-03 18:13:31.577342+02	\N	\N	\N	\N	\N	4398	1	da70dd32f0c29364ddabdd7c9d7a6e9fca958657
109	nask_logo.png	original_images/nask_logo.png	228	171	2019-07-03 18:13:43.034737+02	\N	\N	\N	\N	\N	2639	1	dbb9eea931213927396e9a7560b3ddd10c8c7a37
110	instytut-lacznosci_logo.png	original_images/instytut-lacznosci_logo.png	228	171	2019-07-03 18:13:53.080733+02	\N	\N	\N	\N	\N	4153	1	7a35d4d4e93aa1e2450ed1be1e5019f7ac168a5a
111	P1010639.jpg	original_images/P1010639.jpg	3000	2250	2019-07-03 20:30:10.402139+02	\N	\N	\N	\N	\N	636421	1	42769ee59ac60fad97d0bb0711a8aa2cc73cb33c
112	memo_2.png	original_images/memo_2.png	626	971	2019-07-04 10:37:53.666313+02	\N	\N	\N	\N	\N	257848	1	8fd2d7dd5a8b5c98c565b2a0576813f130d06f27
113	DARE magazine_2.png	original_images/DARE_magazine_2.png	648	971	2019-07-04 10:39:43.176053+02	\N	\N	\N	\N	\N	135664	1	8cf0008d5c2f4770b1531787aaf3481b7139605a
114	rodo pass_2.png	original_images/rodo_pass_2.png	648	971	2019-07-04 11:01:45.734164+02	\N	\N	\N	\N	\N	706608	1	1c0bb14ca50bee69a79e7d94f1a21f33f2dd5d20
116	ochrona srodowiska.png	original_images/ochrona_srodowiska.png	1937	620	2019-07-05 13:01:09.971834+02	\N	\N	\N	\N	\N	1054681	1	d9a5a98a9dccaa6e736042d53c70e98398f972c1
117	seniorzy.png	original_images/seniorzy.png	1920	620	2019-07-08 10:26:27.909908+02	\N	\N	\N	\N	\N	514773	1	ee331dd8181e70e95ba1765c0bfadef2c78dfe52
118	seniorzy_mobile.png	original_images/seniorzy_mobile.png	1344	971	2019-07-08 10:26:44.548535+02	\N	\N	\N	\N	\N	320851	1	6e3a7cc7a0c47091d0da693679110da554e4064c
119	media.png	original_images/media.png	1920	620	2019-07-08 10:30:53.693127+02	\N	\N	\N	\N	\N	1691568	1	17e253f23e3e16366f57b2310172b6d885e95184
120	media_mobile.png	original_images/media_mobile.png	1344	971	2019-07-08 10:31:11.049735+02	\N	\N	\N	\N	\N	556278	1	81752e973e3ce3896f328290d7eb26a987e2c222
121	prawo.png	original_images/prawo.png	1920	620	2019-07-08 10:33:35.58033+02	\N	\N	\N	\N	\N	2320108	1	2491f8be6149d17c3b9f2de00662e6bab24345a3
122	prawo_mobile.png	original_images/prawo_mobile.png	1344	971	2019-07-08 10:33:46.368028+02	\N	\N	\N	\N	\N	147839	1	1c51c14ff383a0c3dc809b8bb19ed940ea87470c
123	piknik_laboratorium.ee_14.jpg	original_images/piknik_laboratorium.ee_14.jpg	3000	2250	2019-07-08 11:05:49.945235+02	976	1363	1928	1772	\N	6316609	1	7ce2f7eebd5556a19007afe6c9d1f80e170994cf
124	P1010057.jpg	original_images/P1010057.jpg	3000	1688	2019-07-09 14:20:35.897791+02	\N	\N	\N	\N	\N	3037000	1	baab8ec3fa3c139d80b6af33c51a80ac1cbfb91c
125	P1010057.png	original_images/P10100571.png	2800	1575	2019-07-09 15:27:37.206954+02	\N	\N	\N	\N	\N	10392918	1	0a30c4b68e0fb9a193b79e18727d1d013bde00cd
126	P1010057(3).png	original_images/P10100573.png	2800	1305	2019-07-09 15:34:58.553597+02	\N	\N	\N	\N	\N	8660778	1	f33da9559312b606c0e754c3e53459062e6b249c
127	P1010057(4).png	original_images/P10100574.png	3000	1398	2019-07-09 15:37:59.194683+02	\N	\N	\N	\N	\N	6386885	1	c512ba5336087af89e94c55619f1757e8efd0dec
128	P1010057(5).png	original_images/P10100575.png	2465	1398	2019-07-09 15:44:47.141451+02	\N	\N	\N	\N	\N	5100227	1	e0fea882f3ddc22ea68a7af6f04b078db8503ba2
129	P1010047.png	original_images/P1010047.png	2488	1327	2019-07-09 15:47:46.303711+02	\N	\N	\N	\N	\N	4331070	1	7f88b769d5020c122d97f0d39bd42eae75797ddb
130	kontrola_git.png	original_images/kontrola_git.png	1440	700	2019-07-09 16:05:44.466883+02	\N	\N	\N	\N	\N	1092194	1	cacfbb09efec5098560b447598238e93a19c10ca
131	cool-background(5).png	original_images/cool-background5.png	1192	580	2019-07-11 14:38:15.848133+02	\N	\N	\N	\N	\N	129102	1	bdb4e8192b57d228462b00888beff7e396483b55
132	kontrola_git(1).jpg	original_images/kontrola_git1.jpg	1440	700	2019-07-12 12:13:46.359385+02	\N	\N	\N	\N	\N	529052	1	18b9505d5d37c90751845b6ffcbe8059f7241ea9
133	www_oferta_scrum_warsztaty.jpg	original_images/www_oferta_scrum_warsztaty.jpg	960	800	2019-07-12 12:16:51.357813+02	\N	\N	\N	\N	\N	108621	1	592684008a9c78aa9408030bac7b4502b60230c6
134	innowacje w oparciu o dane_2.jpg	original_images/innowacje_w_oparciu_o_dane_2.jpg	648	970	2019-07-12 12:30:45.071856+02	\N	\N	\N	\N	\N	591185	1	2feb9ad76b7af4ede9346ea3ee99ce55775b7fbd
135	cyfrowe2(1).jpg	original_images/cyfrowe21.jpg	3500	2333	2019-07-12 12:42:47.499047+02	\N	\N	\N	\N	\N	2445189	1	493547aad1e4d262f4621bb2004295a12bb5a9ca
136	ochrona srodowiska.jpg	original_images/ochrona_srodowiska.jpg	1937	620	2019-07-12 12:49:29.891845+02	\N	\N	\N	\N	\N	728296	1	fee95d79bf9553a08c0210d62627f91411a37e49
137	ochrona srodowiska_mobile.jpg	original_images/ochrona_srodowiska_mobile.jpg	1344	971	2019-07-12 12:50:11.122792+02	\N	\N	\N	\N	\N	219143	1	7a6108a1987e87c21a874ec6a9127014d7fbeb13
138	seniorzy.jpg	original_images/seniorzy.jpg	1920	620	2019-07-12 12:54:06.56654+02	\N	\N	\N	\N	\N	336580	1	ea6d2d19fbf68674f63e93f1f7f7e93086dca8af
139	media.jpg	original_images/media.jpg	1920	620	2019-07-12 12:56:32.970881+02	\N	\N	\N	\N	\N	1092198	1	5e67887ba598d715f79def92f1bf0ad95f578f40
140	prawo.jpg	original_images/prawo.jpg	1920	620	2019-07-12 12:57:34.388899+02	\N	\N	\N	\N	\N	1428576	1	1aec2d8c06b41f07ef3f350b576826bdd0a9c286
141	memo_2.jpg	original_images/memo_2.jpg	626	971	2019-07-12 13:02:04.230841+02	\N	\N	\N	\N	\N	234132	1	a621b1cdab6eb34e375fffd8157ece8042f747cd
142	DARE magazine_2.jpg	original_images/DARE_magazine_2.jpg	648	971	2019-07-12 13:05:17.174232+02	\N	\N	\N	\N	\N	192833	1	b6375a798d14219197e176b79145828e675d781e
143	rodo pass_2.jpg	original_images/rodo_pass_2.jpg	648	971	2019-07-12 13:12:44.690998+02	\N	\N	\N	\N	\N	575706	1	62eb148068638bb16ab7d5de9bf9905f053879de
144	cool-background(1).jpg	original_images/cool-background1.jpg	500	243	2019-07-12 16:06:02.180747+02	\N	\N	\N	\N	\N	73563	1	882bdd5bb4253932fb3b044041691c329b7cd349
145	cool-background(3).jpg	original_images/cool-background3.jpg	500	243	2019-07-12 16:07:57.931692+02	\N	\N	\N	\N	\N	70445	1	79e6c9b00a5f5489b2763c61aafd1a6ed14ce008
115	ochrona srodowiska.png	original_images/ochrona_srodowiska_mobile.png	1344	971	2019-07-05 13:00:48.144298+02	907	485	872	971	\N	216732	1	0be56a9403dd50e35eabfc7a3872326739d0de1a
146	business-calendar-symbol-on-day-11.png	original_images/business-calendar-symbol-on-day-11.png	512	512	2019-07-17 11:47:57.10926+02	\N	\N	\N	\N	\N	4867	1	0dc32076f905cc38accda02aca8d40d9139baf73
147	Bez tytułu.jpg	original_images/Beztytulu.jpg	1914	879	2019-07-17 11:59:31.926791+02	\N	\N	\N	\N	\N	27027	1	4ea37946bce306030d484364f854fb51bb952b75
148	baner_h-6-1170x468.jpg	original_images/baner_h-6-1170x468.jpg	1170	468	2019-07-17 14:00:15.733622+02	\N	\N	\N	\N	\N	47423	1	80aec22a18bb2cec3f5b16b7247eac04216c9d1f
149	Zrzut ekranu 2019-07-17 o 14.08.04.png	original_images/Zrzut_ekranu_2019-07-17_o_14.08.04.png	1187	470	2019-07-17 14:08:54.225101+02	\N	\N	\N	\N	\N	192305	1	e10384a5bda50ad60cce8ccc7e723f611abdebc4
150	4e9d7495d8f561b78e65752e735d0666-compressed.jpg	original_images/4e9d7495d8f561b78e65752e735d0666-compressed.jpg	382	382	2019-07-17 14:12:07.222842+02	\N	\N	\N	\N	\N	33401	1	6a18720e992d2aa94809fd62fa7bf64066658248
151	1-7-malakh-compressed.png	original_images/1-7-malakh-compressed.png	400	400	2019-07-17 14:32:38.561062+02	\N	\N	\N	\N	\N	376979	1	7cd8465b3c653c0b3694b6a6dfb3c66d5e0b398a
152	917308b4417492afb14dcbd96bca7e39-compressed.jpg	original_images/917308b4417492afb14dcbd96bca7e39-compressed.jpg	500	500	2019-07-17 14:38:08.718041+02	\N	\N	\N	\N	\N	12293	1	392c9bebc621cc338c60fc53f3357e94f7c559f7
153	3d239b62082b3d906eb13a9baa32ec13-compressed.jpg	original_images/3d239b62082b3d906eb13a9baa32ec13-compressed.jpg	400	400	2019-07-17 14:40:24.445627+02	\N	\N	\N	\N	\N	49306	1	3da34c197befe5b706ce5865661414a1a6d50ba6
154	8c22714ad788d3c4e38905b3f29023c1-1-compressed.png	original_images/8c22714ad788d3c4e38905b3f29023c1-1-compressed.png	320	320	2019-07-17 14:50:49.520472+02	\N	\N	\N	\N	\N	37708	1	e3c493ab07ec35a96f887d5b8bd6b2ed14f6e8be
155	be4203bc75f9a30a89c6405b207323d7-compressed.jpg	original_images/be4203bc75f9a30a89c6405b207323d7-compressed.jpg	500	500	2019-07-17 14:55:39.037418+02	\N	\N	\N	\N	\N	54853	1	56802d909c6f7641a76b8f19ae57af7119ffc2ca
156	1-5-goodoo-compressed.jpg	original_images/1-5-goodoo-compressed.jpg	350	350	2019-07-17 14:57:31.015932+02	\N	\N	\N	\N	\N	24553	1	2db4ec80139162f1f1d77afa5ed19d0bdb9824eb
157	fc0432d527b9e3115a8d04fc7de56f9f-compressed.jpg	original_images/fc0432d527b9e3115a8d04fc7de56f9f-compressed.jpg	400	400	2019-07-17 15:00:46.12045+02	\N	\N	\N	\N	\N	31163	1	42fa3567e53275a75e0d194e12bc3893c1a06099
158	f46e96edd55298682458719954ae9442-compressed.png	original_images/f46e96edd55298682458719954ae9442-compressed.png	366	366	2019-07-17 15:11:21.737824+02	\N	\N	\N	\N	\N	1227	1	49bcd6bfb6e2cc23b8b5e8905521964b12c8bcd2
159	76e2060c2b877c9aa0e88ca3f1f57deb-compressed.png	original_images/76e2060c2b877c9aa0e88ca3f1f57deb-compressed.png	400	400	2019-07-17 15:14:11.796878+02	\N	\N	\N	\N	\N	22309	1	70e700a3297bef476d74dbd843867f5563cd0926
160	ba6866b3550e34a6d5dbe70addcc17c9-compressed.png	original_images/ba6866b3550e34a6d5dbe70addcc17c9-compressed.png	366	366	2019-07-17 15:18:11.660365+02	\N	\N	\N	\N	\N	2778	1	52d45ccf4e99ff590fd4be40f17d8ac0982aa388
161	2a78c1f8da98bc8c09fa72574e2affe8-compressed.jpg	original_images/2a78c1f8da98bc8c09fa72574e2affe8-compressed.jpg	383	382	2019-07-17 15:22:55.469419+02	\N	\N	\N	\N	\N	22038	1	a1ab54812026b4f9371e70a2890152d85a0eeeb9
162	e8e11ed756d58c91dce4a0fe7e4150cd-compressed.png	original_images/e8e11ed756d58c91dce4a0fe7e4150cd-compressed.png	366	366	2019-07-17 15:26:57.900428+02	\N	\N	\N	\N	\N	78160	1	0567d41006254b702147efba2d841cfee517f366
163	4-5-dsh-1-compressed.jpg	original_images/4-5-dsh-1-compressed.jpg	400	400	2019-07-17 15:29:47.524405+02	\N	\N	\N	\N	\N	29060	1	7d85d9de9660fdaaed01b8f6267f409a559d5f50
164	4-6-dominikanie-1-compressed.jpg	original_images/4-6-dominikanie-1-compressed.jpg	400	400	2019-07-17 15:35:02.48882+02	\N	\N	\N	\N	\N	40071	1	6694c670286235f3a1b0edaffe724c003d369b02
165	91c046af6ca81ccb3c24e2cd6b0f5b46-compressed.png	original_images/91c046af6ca81ccb3c24e2cd6b0f5b46-compressed.png	366	366	2019-07-17 15:38:29.269978+02	\N	\N	\N	\N	\N	116297	1	08aa3b6e515dae795f2e0ec456d5c6a1a601380c
166	0payU-compressed.png	original_images/0payU-compressed.png	400	400	2019-07-17 15:42:50.951806+02	\N	\N	\N	\N	\N	19294	1	e89fe0ff319bd29c614d45a31217bc238fbf9ff8
167	4-2-frd-1-compressed.png	original_images/4-2-frd-1-compressed.png	400	400	2019-07-17 15:45:36.642232+02	\N	\N	\N	\N	\N	14189	1	258ac3fecd79e51b8aabd32ef159b1b6d2b3812a
168	3ded810a148cfc0a1b610a5a76aacc5b-compressed.jpg	original_images/3ded810a148cfc0a1b610a5a76aacc5b-compressed.jpg	383	383	2019-07-17 15:46:28.953906+02	\N	\N	\N	\N	\N	6377	1	b57930c1d1cd7ad006f2e02223497b17b685ed93
169	ccf5a592e1b250f1711a97b6ffbc8daa-compressed.jpg	original_images/ccf5a592e1b250f1711a97b6ffbc8daa-compressed.jpg	400	400	2019-07-17 15:48:44.263683+02	\N	\N	\N	\N	\N	40520	1	df47617d3e7558e142b9d922c54dfcf1fb64264b
170	4-1-jazdow-1-compressed.jpg	original_images/4-1-jazdow-1-compressed.jpg	400	400	2019-07-17 15:50:20.295238+02	\N	\N	\N	\N	\N	30925	1	4c0e7af112144bbeefd431cc58577210bf3579d1
171	a3a4f01c3562d23276617b467bf7de20-compressed.png	original_images/a3a4f01c3562d23276617b467bf7de20-compressed.png	366	366	2019-07-17 15:54:47.276306+02	\N	\N	\N	\N	\N	27750	1	6cd0ae88a4b8c0b2f7a647de385aed34cdfc41ae
172	4-8-animacja-compressed.jpg	original_images/4-8-animacja-compressed.jpg	800	386	2019-07-17 15:57:01.029372+02	\N	\N	\N	\N	\N	60152	1	20113d56764852dd4ac711d7534a58baad6c607c
173	Firefox_Screenshot_2019-07-18T08-17-21.987Z.png	original_images/Firefox_Screenshot_2019-07-18T08-17-21.987Z.png	1487	420	2019-07-18 10:17:38.980343+02	\N	\N	\N	\N	\N	1057060	1	ce5c9f0df487fb4797dd50cd94f20454b7fc3b7b
174	twoje prywatne centrum badawcze.jpg	original_images/twoje_prywatne_centrum_badawcze.jpg	1920	620	2019-07-18 15:26:24.339084+02	\N	\N	\N	\N	\N	186990	1	67e748b5d5d4d063b9ca184bfd066bdfb13c676a
175	topics-target-1.png	original_images/topics-target-1.png	371	751	2019-07-18 16:21:07.167067+02	\N	\N	\N	\N	\N	166899	1	851751d4b8e5f9dce270635fc21e275d15dfb330
176	topics-target-2.png	original_images/topics-target-2.png	371	753	2019-07-18 16:21:22.231469+02	\N	\N	\N	\N	\N	235663	1	a2e029cfd472c23fda6d6eb98f407aede6913e17
177	topics-target-3.png	original_images/topics-target-3.png	371	751	2019-07-18 16:21:33.33731+02	\N	\N	\N	\N	\N	440680	1	2c08447f2ae03909a15904c972556fcd4f58d176
178	innowacje w oparciu o dane_1.jpg	original_images/innowacje_w_oparciu_o_dane_1.jpg	648	904	2019-07-18 16:27:41.772165+02	\N	\N	\N	\N	\N	53013	1	d6157a33c7d871d005a13e6379fc51c8566713b5
179	optymalizacja procesow wytworczych_1.jpg	original_images/optymalizacja_procesow_wytworczych_1.jpg	648	904	2019-07-18 16:28:07.478015+02	\N	\N	\N	\N	\N	58247	1	e83f62a18ad2c6f5d7b55fd443f644183ae6d695
180	DARE magazine_1.jpg	original_images/DARE_magazine_1.jpg	648	904	2019-07-18 16:28:23.639709+02	\N	\N	\N	\N	\N	16234	1	bf4e7a842e4b88f8f5b6efd3932bf2baeee48e2f
181	narzedzia-analiza.jpg	original_images/narzedzia-analiza.jpg	1920	1080	2019-07-18 17:17:19.204239+02	\N	\N	\N	\N	\N	431474	1	e80e3fe62f29b3b69f51f2ca40cc48a6ff8c95d8
182	narzedzia-segmentacja.jpg	original_images/narzedzia-segmentacja.jpg	1920	1080	2019-07-18 17:18:08.388149+02	\N	\N	\N	\N	\N	95961	1	646c34a82f3a18e440f5bd060a425547d77ab4d3
183	narzedzia-predykcje.jpg	original_images/narzedzia-predykcje.jpg	1920	1080	2019-07-18 17:18:35.829721+02	\N	\N	\N	\N	\N	135149	1	4bae1d78d355379b13816780c03a903edb545228
184	narzedzia-wykrywanie.jpg	original_images/narzedzia-wykrywanie.jpg	1920	1080	2019-07-18 17:18:46.466005+02	\N	\N	\N	\N	\N	195227	1	54d4dcc1442a8e24b736ca5ba21e34524a0917e3
185	case study-narodowy.jpg	original_images/case_study-narodowy.jpg	1920	1080	2019-07-18 17:19:02.6134+02	\N	\N	\N	\N	\N	143734	1	6fe7cec86eae078147c29f0160ebcc6d0a201615
186	narzedzia-road mapy projektów.jpg	original_images/narzedzia-road_mapy_projektow.jpg	1920	1080	2019-07-19 11:06:28.982567+02	\N	\N	\N	\N	\N	51013	1	e3e30d6c8d3f627f08916e6579013c851f3f706d
187	narzedzia-Artefakty scruma.jpg	original_images/narzedzia-Artefakty_scruma.jpg	1920	1080	2019-07-19 11:06:45.925674+02	\N	\N	\N	\N	\N	107627	1	526423e5eaad1f1fa0d7cfd5ee26ae99daaa5b74
188	narzedzia-wydarzenia Scrumowe.png	original_images/narzedzia-wydarzenia_Scrumowe.png	1920	1080	2019-07-19 11:07:03.687333+02	\N	\N	\N	\N	\N	3082573	1	36277bf2535346ac87f9400e36b71d4a55a1102d
189	narzedzia-Scrum Guide.jpg	original_images/narzedzia-Scrum_Guide.jpg	1920	1080	2019-07-19 11:07:15.611354+02	\N	\N	\N	\N	\N	40110	1	e45e69cf0b84c0476ee528037e3889b085e37d09
190	narzedzia-User experience design.jpg	original_images/narzedzia-User_experience_design.jpg	1920	1080	2019-07-19 15:37:59.314546+02	\N	\N	\N	\N	\N	57957	1	0ef81fdb6f5558b46b75a09a36dd005f1e24270b
191	narzedzia-Badania i obserwacje.jpg	original_images/narzedzia-Badania_i_obserwacje.jpg	1920	1080	2019-07-19 15:38:22.959633+02	\N	\N	\N	\N	\N	139378	1	4406fa08a4b795d3d655ff198ecb3a933c2f870c
192	narzedzia-Warsztaty wydobywcze.jpg	original_images/narzedzia-Warsztaty_wydobywcze.jpg	1920	1084	2019-07-19 15:39:18.935886+02	\N	\N	\N	\N	\N	149325	1	94eff0689e8528be96bd42204ed468bda0ad400b
193	narzedzia-Design sprinty.jpg	original_images/narzedzia-Design_sprinty.jpg	1920	1080	2019-07-19 15:39:39.645302+02	\N	\N	\N	\N	\N	124979	1	e5d733934e219436f75b453e3af98909523c5f3f
194	case study-aplikacja.jpg	original_images/case_study-aplikacja.jpg	1920	1080	2019-07-19 15:40:13.193789+02	\N	\N	\N	\N	\N	223801	1	96f7ce744e636536f54dfd1004b9dc255025f317
195	Trammer.jpg	original_images/Trammer.jpg	1920	619	2019-07-22 21:10:06.426044+02	\N	\N	\N	\N	\N	80250	1	5ae49ca73deee9e2a49dc3a112777ff92736c512
196	Trammer_edited.jpg	original_images/Trammer_edited.jpg	1920	619	2019-07-22 21:19:52.027744+02	\N	\N	\N	\N	\N	138722	1	413bb9ebbe714ab212320a7b86cea9f8c9d5eccc
197	ochrona srodowiska_mobile.png	original_images/ochrona_srodowiska_mobile.png	1344	971	2019-07-23 14:57:07.994049+02	\N	\N	\N	\N	\N	216732	1	0be56a9403dd50e35eabfc7a3872326739d0de1a
198	ochrona srodowiska_mobile_edited.jpg	original_images/ochrona_srodowiska_mobile_edited.jpg	928	465	2019-07-23 15:05:19.395944+02	\N	\N	\N	\N	\N	68450	1	76e546d6d3c50b11c96432a71a365affa7a8f78f
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
1160	images/7293397.width-128.jpg	128	85		width-128	55
1161	images/www_oferta_scrum_warsztaty.width-128.jpg	128	106		width-128	133
1162	images/ochrona_srodowiska.width-128.jpg	128	40		width-128	136
1163	images/seniorzy.width-128.jpg	128	41		width-128	138
1164	images/media.width-128.jpg	128	41		width-128	139
1165	images/prawo.width-128.jpg	128	41		width-128	140
1166	images/topics-target-1.width-256.png	256	518		width-256	175
1167	images/topics-target-1.width-371.png	371	751		width-371	175
1168	images/topics-target-2.width-256.png	256	519		width-256	176
1169	images/topics-target-2.width-371.png	371	753		width-371	176
1170	images/topics-target-3.width-256.png	256	518		width-256	177
1171	images/topics-target-3.width-371.png	371	751		width-371	177
1172	images/prawo_mobile.width-256.png	256	184		width-256	122
1173	images/prawo_mobile.width-512.png	512	369		width-512	122
1174	images/prawo_mobile.width-1024.png	1024	739		width-1024	122
1175	images/prawo_mobile.width-1344.png	1344	971		width-1344	122
1176	images/kontrola_git1.width-128.jpg	128	62		width-128	132
1177	images/memo_2.width-128.jpg	128	198		width-128	141
1178	images/DARE_magazine_2.width-128.jpg	128	191		width-128	142
1179	images/rodo_pass_2.width-128.jpg	128	191		width-128	143
1180	images/7293397.2e16d0ba.fill-1448x724-c100.jpg	1448	724	2e16d0ba	fill-1448x724-c100	55
1181	images/seniorzy.2e16d0ba.fill-1448x512-c100.jpg	1448	512	2e16d0ba	fill-1448x512-c100	138
1182	images/ochrona_srodowiska.2e16d0ba.fill-1448x512-c100.jpg	1448	512	2e16d0ba	fill-1448x512-c100	136
1183	images/media.2e16d0ba.fill-1448x512-c100.jpg	1448	512	2e16d0ba	fill-1448x512-c100	139
1184	images/prawo.2e16d0ba.fill-1448x512-c100.jpg	1448	512	2e16d0ba	fill-1448x512-c100	140
1185	images/kontrola_git1.2e16d0ba.fill-1440x512-c100.jpg	1440	512	2e16d0ba	fill-1440x512-c100	132
1186	images/memo_2.2e16d0ba.fill-512x724-c100.jpg	512	724	2e16d0ba	fill-512x724-c100	141
1187	images/DARE_magazine_2.2e16d0ba.fill-512x724-c100.jpg	512	724	2e16d0ba	fill-512x724-c100	142
1188	images/rodo_pass_2.2e16d0ba.fill-512x724-c100.jpg	512	724	2e16d0ba	fill-512x724-c100	143
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
1	/en	t		3	\N
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 198, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 41, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 39, true);


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

SELECT pg_catalog.setval('public.django_content_type_id_seq', 50, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 193, true);


--
-- Name: main_contactform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_contactform_id_seq', 1, true);


--
-- Name: main_cooperatorlogo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_cooperatorlogo_id_seq', 12, true);


--
-- Name: main_footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_footer_id_seq', 2, true);


--
-- Name: main_subpagemetric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.main_subpagemetric_id_seq', 18, true);


--
-- Name: projects_projectmetric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_projectmetric_id_seq', 96, true);


--
-- Name: projects_teammemberspecializationtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_teammemberspecializationtag_id_seq', 12, true);


--
-- Name: projects_topicpage_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_topicpage_projects_id_seq', 5, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 9, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 84, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 570, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, true);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, true);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, true);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 198, true);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 1188, true);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, true);


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

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 5, true);


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
-- Name: main_contactform main_contactform_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform
    ADD CONSTRAINT main_contactform_pkey PRIMARY KEY (id);


--
-- Name: main_contactform main_contactform_site_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform
    ADD CONSTRAINT main_contactform_site_id_key UNIQUE (site_id);


--
-- Name: main_cooperatorlogo main_cooperatorlogo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_pkey PRIMARY KEY (id);


--
-- Name: main_footer main_footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_pkey PRIMARY KEY (id);


--
-- Name: main_footer main_footer_site_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_site_id_key UNIQUE (site_id);


--
-- Name: main_oldhomepage main_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_oldhomepage
    ADD CONSTRAINT main_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_homepage main_homepage_pkey1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_homepage
    ADD CONSTRAINT main_homepage_pkey1 PRIMARY KEY (page_ptr_id);


--
-- Name: main_infopage main_infopage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_infopage
    ADD CONSTRAINT main_infopage_pkey PRIMARY KEY (page_ptr_id);


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
-- Name: main_subpage main_subpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpage
    ADD CONSTRAINT main_subpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: main_subpagemetric main_subpagemetric_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric
    ADD CONSTRAINT main_subpagemetric_pkey PRIMARY KEY (id);


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
-- Name: projects_topicpage projects_topicpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: projects_topicpage_projects projects_topicpage_proje_topicpage_id_projectpage_2b5e6777_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_proje_topicpage_id_projectpage_2b5e6777_uniq UNIQUE (topicpage_id, projectpage_id);


--
-- Name: projects_topicpage_projects projects_topicpage_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_projects_pkey PRIMARY KEY (id);


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
-- Name: main_homepage_join_us_background_id_7a97f261; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_homepage_join_us_background_id_7a97f261 ON public.main_oldhomepage USING btree (join_us_background_id);


--
-- Name: main_jobofferpage_icon_id_2c47f752; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_jobofferpage_icon_id_2c47f752 ON public.main_jobofferpage USING btree (icon_id);


--
-- Name: main_newspage_photo_id_ff5a2d19; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_newspage_photo_id_ff5a2d19 ON public.main_newspage USING btree (photo_id);


--
-- Name: main_newspage_specialization_id_6d607455; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_newspage_specialization_id_6d607455 ON public.main_newspage USING btree (specialization_id);


--
-- Name: main_subpage_header_background_image_id_dddd1f16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_subpage_header_background_image_id_dddd1f16 ON public.main_subpage USING btree (header_background_image_id);


--
-- Name: main_subpagemetric_icon_id_e745bce1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_subpagemetric_icon_id_e745bce1 ON public.main_subpagemetric USING btree (icon_id);


--
-- Name: main_subpagemetric_page_id_fae0c127; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX main_subpagemetric_page_id_fae0c127 ON public.main_subpagemetric USING btree (page_id);


--
-- Name: projects_projectmetric_project_id_b982bf7a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectmetric_project_id_b982bf7a ON public.projects_projectmetric USING btree (project_id);


--
-- Name: projects_projectpage_background_image_id_0dfc95d3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_background_image_id_0dfc95d3 ON public.projects_projectpage USING btree (background_image_id);


--
-- Name: projects_projectpage_icon_id_1145692d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_icon_id_1145692d ON public.projects_projectpage USING btree (icon_id);


--
-- Name: projects_projectpage_image_id_d50212f0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_projectpage_image_id_d50212f0 ON public.projects_projectpage USING btree (image_id);


--
-- Name: projects_specializationpage_background_image_id_87b958ff; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_specializationpage_background_image_id_87b958ff ON public.projects_specializationpage USING btree (background_image_id);


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
-- Name: projects_topicpage_background_image_id_c6783694; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_background_image_id_c6783694 ON public.projects_topicpage USING btree (background_image_id);


--
-- Name: projects_topicpage_phone_image_id_e78545c7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_phone_image_id_e78545c7 ON public.projects_topicpage USING btree (phone_image_id);


--
-- Name: projects_topicpage_projects_projectpage_id_16edc0fe; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_projects_projectpage_id_16edc0fe ON public.projects_topicpage_projects USING btree (projectpage_id);


--
-- Name: projects_topicpage_projects_topicpage_id_fc1de001; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX projects_topicpage_projects_topicpage_id_fc1de001 ON public.projects_topicpage_projects USING btree (topicpage_id);


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
-- Name: main_contactform main_contactform_site_id_004d3ccf_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_contactform
    ADD CONSTRAINT main_contactform_site_id_004d3ccf_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_cooperatorlogo main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_image_id_16147108_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_cooperatorlogo main_cooperatorlogo_page_id_ea52fbe3_fk_main_oldh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_cooperatorlogo
    ADD CONSTRAINT main_cooperatorlogo_page_id_ea52fbe3_fk_main_oldh FOREIGN KEY (page_id) REFERENCES public.main_oldhomepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_footer main_footer_site_id_e3025847_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_footer
    ADD CONSTRAINT main_footer_site_id_e3025847_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_oldhomepage main_homepage_join_us_background_i_7a97f261_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_oldhomepage
    ADD CONSTRAINT main_homepage_join_us_background_i_7a97f261_fk_wagtailim FOREIGN KEY (join_us_background_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_oldhomepage main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_oldhomepage
    ADD CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_homepage main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_homepage
    ADD CONSTRAINT main_homepage_page_ptr_id_c502a181_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_infopage main_infopage_page_ptr_id_b85bdde1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_infopage
    ADD CONSTRAINT main_infopage_page_ptr_id_b85bdde1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferindexpage main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferindexpage
    ADD CONSTRAINT main_jobofferindexpa_page_ptr_id_db913ca8_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_jobofferpage main_jobofferpage_icon_id_2c47f752_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_jobofferpage
    ADD CONSTRAINT main_jobofferpage_icon_id_2c47f752_fk_wagtailimages_image_id FOREIGN KEY (icon_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: main_newspage main_newspage_specialization_id_6d607455_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_newspage
    ADD CONSTRAINT main_newspage_specialization_id_6d607455_fk_projects_ FOREIGN KEY (specialization_id) REFERENCES public.projects_specializationpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpage main_subpage_header_background_im_dddd1f16_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpage
    ADD CONSTRAINT main_subpage_header_background_im_dddd1f16_fk_wagtailim FOREIGN KEY (header_background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpage main_subpage_page_ptr_id_b97f8f24_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpage
    ADD CONSTRAINT main_subpage_page_ptr_id_b97f8f24_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpagemetric main_subpagemetric_icon_id_e745bce1_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric
    ADD CONSTRAINT main_subpagemetric_icon_id_e745bce1_fk_wagtailimages_image_id FOREIGN KEY (icon_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_subpagemetric main_subpagemetric_page_id_fae0c127_fk_main_subpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_subpagemetric
    ADD CONSTRAINT main_subpagemetric_page_id_fae0c127_fk_main_subpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES public.main_subpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectmetric projects_projectmetr_project_id_b982bf7a_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectmetric
    ADD CONSTRAINT projects_projectmetr_project_id_b982bf7a_fk_projects_ FOREIGN KEY (project_id) REFERENCES public.projects_projectpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_projectpage projects_projectpage_background_image_id_0dfc95d3_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_projectpage
    ADD CONSTRAINT projects_projectpage_background_image_id_0dfc95d3_fk_wagtailim FOREIGN KEY (background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: projects_specializationpage projects_specializat_background_image_id_87b958ff_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_specializationpage
    ADD CONSTRAINT projects_specializat_background_image_id_87b958ff_fk_wagtailim FOREIGN KEY (background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: projects_topicpage projects_topicpage_background_image_id_c6783694_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_background_image_id_c6783694_fk_wagtailim FOREIGN KEY (background_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage_projects projects_topicpage_p_projectpage_id_16edc0fe_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_p_projectpage_id_16edc0fe_fk_projects_ FOREIGN KEY (projectpage_id) REFERENCES public.projects_projectpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage_projects projects_topicpage_p_topicpage_id_fc1de001_fk_projects_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage_projects
    ADD CONSTRAINT projects_topicpage_p_topicpage_id_fc1de001_fk_projects_ FOREIGN KEY (topicpage_id) REFERENCES public.projects_topicpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage projects_topicpage_page_ptr_id_c3c2d719_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_page_ptr_id_c3c2d719_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_topicpage projects_topicpage_phone_image_id_e78545c7_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects_topicpage
    ADD CONSTRAINT projects_topicpage_phone_image_id_e78545c7_fk_wagtailim FOREIGN KEY (phone_image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


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

