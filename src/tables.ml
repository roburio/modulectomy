(* from readelf -s libasmrun.a | grep FUNC | grep -v UND | rev | cut -d ' ' -f 1 | rev | sort *)
(* OCaml 4.13.0 runtime *)
module S = Set.Make(String)

let stdlib_syms = S.of_list [
"alloc_custom_gen";
"bf_add_blocks";
"bf_allocate";
"bf_allocate_from_tree";
"bf_init";
"bf_init_merge";
"bf_insert_block";
"bf_make_free_blocks";
"bf_merge_block";
"bf_remove";
"bf_reset";
"call_on_entry_array";
"caml_abs_float";
"caml_acos_float";
"caml_acosh";
"caml_acosh_float";
"caml_add_debug_info";
"caml_add_float";
"caml_add_to_heap";
"caml_adjust_gc_speed";
"caml_alloc";
"caml_alloc_array";
"caml_alloc_backtrace_buffer";
"caml_alloc_channel";
"caml_alloc_custom";
"caml_alloc_custom_mem";
"caml_alloc_custom_table";
"caml_alloc_dependent_memory";
"caml_alloc_dummy";
"caml_alloc_dummy_float";
"caml_alloc_dummy_function";
"caml_alloc_dummy_infix";
"caml_alloc_ephe_table";
"caml_alloc_final";
"caml_alloc_float_array";
"caml_alloc_for_heap";
"caml_alloc_initialized_string";
"caml_alloc_minor_tables";
"caml_alloc_shr";
"caml_alloc_shr_aux";
"caml_alloc_shr_for_minor_gc";
"caml_alloc_shr_no_track_noexc";
"caml_alloc_shr_with_profinfo";
"caml_alloc_small";
"caml_alloc_small_dispatch";
"caml_alloc_some";
"caml_alloc_sprintf";
"caml_alloc_string";
"caml_alloc_table";
"caml_alloc_tuple";
"caml_alloc1";
"caml_alloc2";
"caml_alloc3";
"caml_allocation_color";
"caml_allocN";
"caml_array_append";
"caml_array_blit";
"caml_array_bound_error";
"caml_array_concat";
"caml_array_fill";
"caml_array_gather";
"caml_array_get";
"caml_array_get_addr";
"caml_array_length";
"caml_array_set";
"caml_array_set_addr";
"caml_array_sub";
"caml_array_unsafe_get";
"caml_array_unsafe_set";
"caml_asin_float";
"caml_asinh";
"caml_asinh_float";
"caml_atan_float";
"caml_atan2_float";
"caml_atanh";
"caml_atanh_float";
"caml_ba_alloc";
"caml_ba_alloc_dims";
"caml_ba_blit";
"caml_ba_byte_size";
"caml_ba_change_layout";
"caml_ba_compare";
"caml_ba_create";
"caml_ba_deserialize";
"caml_ba_dim";
"caml_ba_dim_1";
"caml_ba_dim_2";
"caml_ba_dim_3";
"caml_ba_fill";
"caml_ba_finalize";
"caml_ba_get_1";
"caml_ba_get_2";
"caml_ba_get_3";
"caml_ba_get_generic";
"caml_ba_get_N";
"caml_ba_hash";
"caml_ba_kind";
"caml_ba_layout";
"caml_ba_num_dims";
"caml_ba_num_elts";
"caml_ba_reshape";
"caml_ba_serialize";
"caml_ba_set_1";
"caml_ba_set_2";
"caml_ba_set_3";
"caml_ba_set_aux";
"caml_ba_set_generic";
"caml_ba_set_N";
"caml_ba_slice";
"caml_ba_sub";
"caml_ba_uint8_get16";
"caml_ba_uint8_get32";
"caml_ba_uint8_get64";
"caml_ba_uint8_set16";
"caml_ba_uint8_set32";
"caml_ba_uint8_set64";
"caml_backtrace_status";
"caml_blit_bytes";
"caml_blit_string";
"caml_bswap16";
"caml_bswap16_direct";
"caml_bytes_compare";
"caml_bytes_equal";
"caml_bytes_get";
"caml_bytes_get16";
"caml_bytes_get32";
"caml_bytes_get64";
"caml_bytes_greaterequal";
"caml_bytes_greaterthan";
"caml_bytes_lessequal";
"caml_bytes_lessthan";
"caml_bytes_notequal";
"caml_bytes_of_string";
"caml_bytes_set";
"caml_bytes_set16";
"caml_bytes_set32";
"caml_bytes_set64";
"caml_c_call";
"caml_call_gc";
"caml_callback";
"caml_callback_asm";
"caml_callback_exn";
"caml_callback2";
"caml_callback2_asm";
"caml_callback2_exn";
"caml_callback3";
"caml_callback3_asm";
"caml_callback3_exn";
"caml_callbackN";
"caml_callbackN_exn";
"caml_cbrt";
"caml_cbrt_float";
"caml_ceil_float";
"caml_channel_binary_mode";
"caml_channel_descriptor";
"caml_channel_size";
"caml_check_field_access";
"caml_check_pending_actions";
"caml_check_urgent_gc";
"caml_check_value_is_closure";
"caml_classify_float";
"caml_classify_float_unboxed";
"caml_clip_heap_chunk_wsz";
"caml_close_channel";
"caml_collect_current_callstack";
"caml_compact_heap";
"caml_compact_heap_maybe";
"caml_compare";
"caml_convert_debuginfo";
"caml_convert_flag_list";
"caml_convert_raw_backtrace";
"caml_convert_raw_backtrace_slot";
"caml_convert_signal_number";
"caml_copy_double";
"caml_copy_int32";
"caml_copy_int64";
"caml_copy_nativeint";
"caml_copy_string";
"caml_copy_string_array";
"caml_copysign";
"caml_copysign_float";
"caml_cos_float";
"caml_cosh_float";
"caml_create_bytes";
"caml_create_string";
"caml_darken";
"caml_darken_all_roots_slice";
"caml_darken_all_roots_start";
"caml_debug_info_available";
"caml_debug_info_status";
"caml_debugger";
"caml_debugger_cleanup_fork";
"caml_debugger_init";
"caml_debuginfo_extract";
"caml_debuginfo_location";
"caml_debuginfo_next";
"caml_decompose_path";
"caml_deserialize_block_1";
"caml_deserialize_block_2";
"caml_deserialize_block_4";
"caml_deserialize_block_8";
"caml_deserialize_block_float_8";
"caml_deserialize_error";
"caml_deserialize_float_4";
"caml_deserialize_float_8";
"caml_deserialize_sint_1";
"caml_deserialize_sint_2";
"caml_deserialize_sint_4";
"caml_deserialize_sint_8";
"caml_deserialize_uint_1";
"caml_deserialize_uint_2";
"caml_deserialize_uint_4";
"caml_deserialize_uint_8";
"caml_digest_of_code_fragment";
"caml_div_float";
"caml_dlclose";
"caml_dlerror";
"caml_dlopen";
"caml_dlsym";
"caml_do_exit";
"caml_do_local_roots_nat";
"caml_do_pending_actions_exn";
"caml_do_read";
"caml_do_roots";
"caml_dynlink_add_primitive";
"caml_dynlink_close_lib";
"caml_dynlink_get_current_libs";
"caml_dynlink_lookup_symbol";
"caml_dynlink_open_lib";
"caml_empty_minor_heap";
"caml_enter_blocking_section";
"caml_enter_blocking_section_default";
"caml_enter_blocking_section_no_pending";
"caml_ephe_blit_data";
"caml_ephe_blit_key";
"caml_ephe_check_data";
"caml_ephe_check_key";
"caml_ephe_clean_partial";
"caml_ephe_create";
"caml_ephe_get_data";
"caml_ephe_get_data_copy";
"caml_ephe_get_key";
"caml_ephe_get_key_copy";
"caml_ephe_set_data";
"caml_ephe_set_key";
"caml_ephe_set_key_option";
"caml_ephe_unset_data";
"caml_ephe_unset_key";
"caml_ephemeron_blit_data";
"caml_ephemeron_blit_key";
"caml_ephemeron_create";
"caml_ephemeron_data_is_set";
"caml_ephemeron_get_data";
"caml_ephemeron_get_data_copy";
"caml_ephemeron_get_key";
"caml_ephemeron_get_key_copy";
"caml_ephemeron_key_is_set";
"caml_ephemeron_num_keys";
"caml_ephemeron_set_data";
"caml_ephemeron_set_key";
"caml_ephemeron_unset_data";
"caml_ephemeron_unset_key";
"caml_eq_float";
"caml_equal";
"caml_erf";
"caml_erf_float";
"caml_erfc";
"caml_erfc_float";
"caml_eventlog_pause";
"caml_eventlog_resume";
"caml_executable_name";
"caml_execute_signal_exn";
"caml_exp_float";
"caml_exp2";
"caml_exp2_float";
"caml_expm1";
"caml_expm1_float";
"caml_ext_table_add";
"caml_ext_table_clear";
"caml_ext_table_free";
"caml_ext_table_init";
"caml_ext_table_remove";
"caml_failwith";
"caml_failwith_value";
"caml_fatal_error";
"caml_fatal_uncaught_exception";
"caml_fill_bytes";
"caml_fill_string";
"caml_final_custom_operations";
"caml_final_do_calls_exn";
"caml_final_do_roots";
"caml_final_empty_young";
"caml_final_invariant_check";
"caml_final_invert_finalisable_values";
"caml_final_oldify_young_roots";
"caml_final_register";
"caml_final_register_called_without_value";
"caml_final_release";
"caml_final_update_clean_phase";
"caml_final_update_mark_phase";
"caml_final_update_minor_roots";
"caml_finalise_heap";
"caml_finalize_channel";
"caml_find_code_fragment_by_digest";
"caml_find_code_fragment_by_num";
"caml_find_code_fragment_by_pc";
"caml_find_custom_operations";
"caml_finish_major_cycle";
"caml_fl_reset_and_switch_policy";
"caml_float_compare";
"caml_float_compare_unboxed";
"caml_float_of_int";
"caml_float_of_string";
"caml_floatarray_blit";
"caml_floatarray_create";
"caml_floatarray_get";
"caml_floatarray_set";
"caml_floatarray_unsafe_get";
"caml_floatarray_unsafe_set";
"caml_floor_float";
"caml_flush";
"caml_flush_partial";
"caml_fma";
"caml_fma_float";
"caml_fmod_float";
"caml_format_exception";
"caml_format_float";
"caml_format_int";
"caml_free_dependent_memory";
"caml_free_for_heap";
"caml_free_locale";
"caml_fresh_oo_id";
"caml_frexp_float";
"caml_garbage_collection";
"caml_gc_compaction";
"caml_gc_counters";
"caml_gc_dispatch";
"caml_gc_full_major";
"caml_gc_get";
"caml_gc_huge_fallback_count";
"caml_gc_major";
"caml_gc_major_slice";
"caml_gc_message";
"caml_gc_minor";
"caml_gc_minor_words";
"caml_gc_minor_words_unboxed";
"caml_gc_quick_stat";
"caml_gc_set";
"caml_gc_stat";
"caml_ge_float";
"caml_get_current_callstack";
"caml_get_exception_backtrace";
"caml_get_exception_raw_backtrace";
"caml_get_global_data";
"caml_get_major_bucket";
"caml_get_major_credit";
"caml_get_minor_free";
"caml_get_public_method";
"caml_get_section_table";
"caml_getblock";
"caml_getch";
"caml_getword";
"caml_globalsym";
"caml_greaterequal";
"caml_greaterthan";
"caml_gt_float";
"caml_hash";
"caml_hash_mix_double";
"caml_hash_mix_float";
"caml_hash_mix_int64";
"caml_hash_mix_intnat";
"caml_hash_mix_string";
"caml_hash_mix_uint32";
"caml_hash_variant";
"caml_hexstring_of_float";
"caml_hypot";
"caml_hypot_float";
"caml_init_atom_table";
"caml_init_backtrace";
"caml_init_custom_operations";
"caml_init_domain";
"caml_init_frame_descriptors";
"caml_init_gc";
"caml_init_locale";
"caml_init_major_heap";
"caml_init_signals";
"caml_initialize";
"caml_input_scan_line";
"caml_input_val";
"caml_input_val_from_bytes";
"caml_input_value";
"caml_input_value_from_block";
"caml_input_value_from_bytes";
"caml_input_value_from_malloc";
"caml_install_signal_handler";
"caml_int_as_pointer";
"caml_int_compare";
"caml_int_of_float";
"caml_int_of_string";
"caml_int32_add";
"caml_int32_and";
"caml_int32_bits_of_float";
"caml_int32_bits_of_float_unboxed";
"caml_int32_bswap";
"caml_int32_compare";
"caml_int32_compare_unboxed";
"caml_int32_direct_bswap";
"caml_int32_div";
"caml_int32_float_of_bits";
"caml_int32_float_of_bits_unboxed";
"caml_int32_format";
"caml_int32_mod";
"caml_int32_mul";
"caml_int32_neg";
"caml_int32_of_float";
"caml_int32_of_float_unboxed";
"caml_int32_of_int";
"caml_int32_of_string";
"caml_int32_or";
"caml_int32_shift_left";
"caml_int32_shift_right";
"caml_int32_shift_right_unsigned";
"caml_int32_sub";
"caml_int32_to_float";
"caml_int32_to_float_unboxed";
"caml_int32_to_int";
"caml_int32_xor";
"caml_int64_add";
"caml_int64_add_native";
"caml_int64_and";
"caml_int64_and_native";
"caml_int64_bits_of_float";
"caml_int64_bits_of_float_unboxed";
"caml_int64_bswap";
"caml_int64_compare";
"caml_int64_compare_unboxed";
"caml_int64_direct_bswap";
"caml_int64_div";
"caml_int64_div_native";
"caml_int64_float_of_bits";
"caml_int64_float_of_bits_unboxed";
"caml_int64_format";
"caml_int64_mod";
"caml_int64_mod_native";
"caml_int64_mul";
"caml_int64_mul_native";
"caml_int64_neg";
"caml_int64_neg_native";
"caml_int64_of_float";
"caml_int64_of_float_unboxed";
"caml_int64_of_int";
"caml_int64_of_int32";
"caml_int64_of_nativeint";
"caml_int64_of_string";
"caml_int64_or";
"caml_int64_or_native";
"caml_int64_shift_left";
"caml_int64_shift_right";
"caml_int64_shift_right_unsigned";
"caml_int64_sub";
"caml_int64_sub_native";
"caml_int64_to_float";
"caml_int64_to_float_unboxed";
"caml_int64_to_int";
"caml_int64_to_int32";
"caml_int64_to_nativeint";
"caml_int64_xor";
"caml_int64_xor_native";
"caml_invalid_argument";
"caml_invalid_argument_value";
"caml_invert_root";
"caml_invoke_traced_function";
"caml_is_double_array";
"caml_is_special_exception";
"caml_iterate_named_values";
"caml_lazy_make_forward";
"caml_ldexp_float";
"caml_ldexp_float_unboxed";
"caml_le_float";
"caml_leave_blocking_section";
"caml_leave_blocking_section_default";
"caml_lessequal";
"caml_lessthan";
"caml_lex_engine";
"caml_log_float";
"caml_log10_float";
"caml_log1p";
"caml_log1p_float";
"caml_log2";
"caml_log2_float";
"caml_lt_float";
"caml_main";
"caml_major_collection_slice";
"caml_make_array";
"caml_make_float_vect";
"caml_make_vect";
"caml_marshal_data_size";
"caml_md5_block";
"caml_md5_chan";
"caml_md5_channel";
"caml_md5_string";
"caml_MD5Final";
"caml_MD5Init";
"caml_MD5Transform";
"caml_MD5Update";
"caml_memprof_delete_th_ctx";
"caml_memprof_do_roots";
"caml_memprof_enter_thread";
"caml_memprof_handle_postponed_exn";
"caml_memprof_invert_tracked";
"caml_memprof_leave_thread";
"caml_memprof_minor_update";
"caml_memprof_new_th_ctx";
"caml_memprof_oldify_young_roots";
"caml_memprof_renew_minor_sample";
"caml_memprof_set_suspended";
"caml_memprof_start";
"caml_memprof_stop";
"caml_memprof_track_alloc_shr";
"caml_memprof_track_custom";
"caml_memprof_track_interned";
"caml_memprof_track_young";
"caml_memprof_update_clean_phase";
"caml_minor_collection";
"caml_ml_array_bound_error";
"caml_ml_bytes_length";
"caml_ml_channel_size";
"caml_ml_channel_size_64";
"caml_ml_close_channel";
"caml_ml_debug_info_status";
"caml_ml_enable_runtime_warnings";
"caml_ml_flush";
"caml_ml_input";
"caml_ml_input_char";
"caml_ml_input_int";
"caml_ml_input_scan_line";
"caml_ml_open_descriptor_in";
"caml_ml_open_descriptor_out";
"caml_ml_out_channels_list";
"caml_ml_output";
"caml_ml_output_bytes";
"caml_ml_output_char";
"caml_ml_output_int";
"caml_ml_pos_in";
"caml_ml_pos_in_64";
"caml_ml_pos_out";
"caml_ml_pos_out_64";
"caml_ml_runtime_warnings_enabled";
"caml_ml_seek_in";
"caml_ml_seek_in_64";
"caml_ml_seek_out";
"caml_ml_seek_out_64";
"caml_ml_set_binary_mode";
"caml_ml_set_channel_name";
"caml_ml_string_length";
"caml_modf_float";
"caml_modify";
"caml_modify_generational_global_root";
"caml_mul_float";
"caml_named_value";
"caml_natdynlink_getmap";
"caml_natdynlink_globals_inited";
"caml_natdynlink_loadsym";
"caml_natdynlink_open";
"caml_natdynlink_run";
"caml_natdynlink_run_toplevel";
"caml_nativeint_add";
"caml_nativeint_and";
"caml_nativeint_bswap";
"caml_nativeint_compare";
"caml_nativeint_compare_unboxed";
"caml_nativeint_direct_bswap";
"caml_nativeint_div";
"caml_nativeint_format";
"caml_nativeint_mod";
"caml_nativeint_mul";
"caml_nativeint_neg";
"caml_nativeint_of_float";
"caml_nativeint_of_float_unboxed";
"caml_nativeint_of_int";
"caml_nativeint_of_int32";
"caml_nativeint_of_string";
"caml_nativeint_or";
"caml_nativeint_shift_left";
"caml_nativeint_shift_right";
"caml_nativeint_shift_right_unsigned";
"caml_nativeint_sub";
"caml_nativeint_to_float";
"caml_nativeint_to_float_unboxed";
"caml_nativeint_to_int";
"caml_nativeint_to_int32";
"caml_nativeint_xor";
"caml_neg_float";
"caml_neq_float";
"caml_new_lex_engine";
"caml_next_frame_descriptor";
"caml_nextafter";
"caml_nextafter_float";
"caml_notequal";
"caml_num_rows_fd";
"caml_obj_add_offset";
"caml_obj_block";
"caml_obj_dup";
"caml_obj_make_forward";
"caml_obj_raw_field";
"caml_obj_reachable_words";
"caml_obj_set_raw_field";
"caml_obj_set_tag";
"caml_obj_tag";
"caml_obj_truncate";
"caml_obj_with_tag";
"caml_oldify_local_roots";
"caml_oldify_mopup";
"caml_oldify_one";
"caml_open_descriptor_in";
"caml_open_descriptor_out";
"caml_output_val";
"caml_output_value";
"caml_output_value_to_block";
"caml_output_value_to_buffer";
"caml_output_value_to_bytes";
"caml_output_value_to_malloc";
"caml_output_value_to_string";
"caml_page_table_add";
"caml_page_table_initialize";
"caml_page_table_lookup";
"caml_page_table_modify";
"caml_page_table_remove";
"caml_parse_engine";
"caml_parse_header";
"caml_parse_ocamlrunparam";
"caml_pos_in";
"caml_pos_out";
"caml_power_float";
"caml_print_exception_backtrace";
"caml_process_pending_actions";
"caml_process_pending_actions_exn";
"caml_process_pending_actions_with_root";
"caml_process_pending_actions_with_root_exn";
"caml_process_pending_signals_exn";
"caml_putblock";
"caml_putch";
"caml_putword";
"caml_raise";
"caml_raise_constant";
"caml_raise_end_of_file";
"caml_raise_exception";
"caml_raise_exn";
"caml_raise_if_exception";
"caml_raise_not_found";
"caml_raise_out_of_memory";
"caml_raise_stack_overflow";
"caml_raise_sys_blocked_io";
"caml_raise_sys_error";
"caml_raise_with_arg";
"caml_raise_with_args";
"caml_raise_with_string";
"caml_raise_zero_divide";
"caml_raw_backtrace_length";
"caml_raw_backtrace_next_slot";
"caml_raw_backtrace_slot";
"caml_read_directory";
"caml_read_fd";
"caml_realloc_custom_table";
"caml_realloc_ephe_ref_table";
"caml_realloc_global";
"caml_realloc_ref_table";
"caml_really_getblock";
"caml_really_putblock";
"caml_record_backtrace";
"caml_record_backtraces";
"caml_record_signal";
"caml_refill";
"caml_register_code_fragment";
"caml_register_custom_operations";
"caml_register_dyn_global";
"caml_register_frametable";
"caml_register_generational_global_root";
"caml_register_global_root";
"caml_register_named_value";
"caml_reify_bytecode";
"caml_remove_code_fragment";
"caml_remove_debug_info";
"caml_remove_generational_global_root";
"caml_remove_global_root";
"caml_request_major_slice";
"caml_request_minor_gc";
"caml_reset_afl_instrumentation";
"caml_restore_raw_backtrace";
"caml_rev_convert_signal_number";
"caml_round";
"caml_round_float";
"caml_runtime_parameters";
"caml_runtime_variant";
"caml_runtime_warnings_active";
"caml_scan_global_roots";
"caml_scan_global_young_roots";
"caml_search_dll_in_path";
"caml_search_exe_in_path";
"caml_search_in_path";
"caml_secure_getenv";
"caml_seek_in";
"caml_seek_out";
"caml_serialize_block_1";
"caml_serialize_block_2";
"caml_serialize_block_4";
"caml_serialize_block_8";
"caml_serialize_block_float_8";
"caml_serialize_float_4";
"caml_serialize_float_8";
"caml_serialize_int_1";
"caml_serialize_int_2";
"caml_serialize_int_4";
"caml_serialize_int_8";
"caml_set_action_pending";
"caml_set_allocation_policy";
"caml_set_major_window";
"caml_set_minor_heap_size";
"caml_set_oo_id";
"caml_set_parser_trace";
"caml_set_signal_action";
"caml_setup_afl";
"caml_setup_stack_overflow_detection";
"caml_shrink_heap";
"caml_shrink_mark_stack";
"caml_shutdown";
"caml_signbit";
"caml_signbit_float";
"caml_sin_float";
"caml_sinh_float";
"caml_skiplist_empty";
"caml_skiplist_find";
"caml_skiplist_find_below";
"caml_skiplist_init";
"caml_skiplist_insert";
"caml_skiplist_remove";
"caml_sqrt_float";
"caml_stack_overflow";
"caml_stack_usage";
"caml_start_program";
"caml_startup";
"caml_startup_aux";
"caml_startup_common";
"caml_startup_exn";
"caml_startup_pooled";
"caml_startup_pooled_exn";
"caml_stash_backtrace";
"caml_stat_alloc";
"caml_stat_alloc_aligned";
"caml_stat_alloc_aligned_noexc";
"caml_stat_alloc_noexc";
"caml_stat_calloc_noexc";
"caml_stat_create_pool";
"caml_stat_destroy_pool";
"caml_stat_free";
"caml_stat_resize";
"caml_stat_resize_noexc";
"caml_stat_strconcat";
"caml_stat_strdup";
"caml_stat_strdup_noexc";
"caml_static_release_bytecode";
"caml_string_compare";
"caml_string_equal";
"caml_string_get";
"caml_string_get16";
"caml_string_get32";
"caml_string_get64";
"caml_string_greaterequal";
"caml_string_greaterthan";
"caml_string_is_c_safe";
"caml_string_length";
"caml_string_lessequal";
"caml_string_lessthan";
"caml_string_notequal";
"caml_string_of_bytes";
"caml_string_set";
"caml_sub_float";
"caml_sys_argv";
"caml_sys_chdir";
"caml_sys_close";
"caml_sys_const_backend_type";
"caml_sys_const_big_endian";
"caml_sys_const_int_size";
"caml_sys_const_max_wosize";
"caml_sys_const_naked_pointers_checked";
"caml_sys_const_ostype_cygwin";
"caml_sys_const_ostype_unix";
"caml_sys_const_ostype_win32";
"caml_sys_const_word_size";
"caml_sys_error";
"caml_sys_executable_name";
"caml_sys_exit";
"caml_sys_file_exists";
"caml_sys_get_argv";
"caml_sys_get_config";
"caml_sys_getcwd";
"caml_sys_getenv";
"caml_sys_init";
"caml_sys_io_error";
"caml_sys_is_directory";
"caml_sys_isatty";
"caml_sys_mkdir";
"caml_sys_modify_argv";
"caml_sys_open";
"caml_sys_random_seed";
"caml_sys_read_directory";
"caml_sys_remove";
"caml_sys_rename";
"caml_sys_rmdir";
"caml_sys_system_command";
"caml_sys_time";
"caml_sys_time_include_children";
"caml_sys_time_include_children_unboxed";
"caml_sys_time_unboxed";
"caml_sys_unsafe_getenv";
"caml_tan_float";
"caml_tanh_float";
"caml_terminfo_rows";
"caml_trunc";
"caml_trunc_float";
"caml_unregister_frametable";
"caml_update_dummy";
"caml_update_young_limit";
"caml_weak_blit";
"caml_weak_check";
"caml_weak_create";
"caml_weak_get";
"caml_weak_get_copy";
"caml_weak_set";
"caml_write_fd";
"capture_callstack_postponed";
"clean_slice";
"compare_channel";
"compare_free_stack";
"compare_stack_overflow";
"compare_val";
"copy_value";
"do_compaction";
"entry_array_clean_phase";
"entry_array_do_roots";
"entry_array_invert";
"entry_array_minor_update";
"entry_array_oldify_young_roots";
"extern_failwith";
"extern_invalid_argument";
"extern_out_of_memory";
"extern_record_location";
"extern_resize_stack";
"extern_stack_overflow";
"extern_value";
"ff_add_blocks";
"ff_allocate";
"ff_init";
"ff_init_merge";
"ff_make_free_blocks";
"ff_merge_block";
"ff_reset";
"free_extern_output";
"generic_final_register";
"generic_final_update";
"handle_signal";
"hash_channel";
"init_frame_descriptors";
"int32_cmp";
"int32_deserialize";
"int32_hash";
"int32_serialize";
"int64_cmp";
"int64_deserialize";
"int64_hash";
"int64_serialize";
"intern_alloc";
"intern_bad_code_pointer";
"intern_cleanup";
"intern_end";
"intern_free_stack";
"intern_rec";
"intern_resize_stack";
"intern_stack_overflow";
"main";
"mark_slice";
"mark_slice_darken";
"mark_stack_push";
"nativeint_cmp";
"nativeint_deserialize";
"nativeint_hash";
"nativeint_serialize";
"nf_add_blocks";
"nf_allocate";
"nf_init";
"nf_init_merge";
"nf_make_free_blocks";
"nf_merge_block";
"nf_reset";
"parse_intnat";
"parse_sign_and_base";
"rand_geom";
"realloc_generic_table";
"sweep_slice";
"th_ctx_iter_default";
"th_ctx_memprof_stop";
]

let openlibm_syms = S.of_list [
"isopenlibm";
"acos";
"acosf";
"acosh";
"acoshf";
"asin";
"asinf";
"atan2";
"atan2f";
"atanh";
"atanhf";
"cosh";
"coshf";
"exp";
"expf";
"fmod";
"fmodf";
"hypot";
"hypotf";
"qzero";
"j0";
"y0";
"j0f";
"y0f";
"qone";
"j1";
"y1";
"j1f";
"y1f";
"jn";
"yn";
"jnf";
"ynf";
"lgamma";
"lgamma_r";
"lgammaf";
"lgammaf_r";
"log";
"log10";
"log10f";
"log2";
"log2f";
"logf";
"pow";
"powf";
"__ieee754_rem_pio2";
"__ieee754_rem_pio2f";
"sinh";
"sinhf";
"__kernel_cos";
"__ldexp_cexp";
"__ldexp_exp";
"__ldexp_cexpf";
"__ldexp_expf";
"__kernel_rem_pio2";
"__kernel_sin";
"__kernel_tan";
"__kernel_cosdf";
"__kernel_sindf";
"__kernel_tandf";
"asinh";
"asinhf";
"atan";
"atanf";
"carg";
"cargf";
"cbrt";
"cbrtf";
"ceil";
"ceilf";
"copysign";
"copysignf";
"cos";
"cosf";
"csqrt";
"csqrtf";
"erf";
"erfc";
"erfcf";
"erff";
"exp2";
"exp2f";
"expm1";
"expm1f";
"fabs";
"fabsf";
"fdim";
"fdimf";
"fdiml";
"floor";
"floorf";
"fma";
"fmaf";
"fmax";
"fmaxf";
"fmin";
"fminf";
"__fpclassifyd";
"__fpclassifyf";
"__fpclassifyl";
"frexp";
"frexpf";
"ilogb";
"ilogbf";
"__isinff";
"__isinfl";
"isinf";
"isinff";
"__isfinite";
"__isfinitef";
"__isfinitel";
"__isnormal";
"__isnormalf";
"__isnormall";
"__isnanf";
"__isnanl";
"isnan";
"isnanf";
"llround";
"llroundf";
"log1p";
"log1pf";
"logb";
"logbf";
"lround";
"lroundf";
"modf";
"modff";
"nearbyint";
"nearbyintf";
"nextafter";
"nextafterf";
"nexttowardf";
"rint";
"rintf";
"round";
"roundf";
"scalbln";
"scalblnf";
"scalblnl";
"__signbit";
"__signbitf";
"__signbitl";
"sin";
"sincos";
"sinf";
"sincosf";
"tan";
"tanf";
"tanh";
"tanhf";
"tgammaf";
"trunc";
"truncf";
"cpow";
"cpowf";
"cabs";
"cabsf";
"__scan_nan";
"nan";
"nanf";
"copysignl";
"fabsl";
"modfl";
"acosl";
"asinl";
"atan2l";
"fmodl";
"fmaxl";
"fminl";
"ilogbl";
"hypotl";
"lgammal";
"atanl";
"ceill";
"cosl";
"cprojl";
"csqrtl";
"floorl";
"fmal";
"frexpl";
"nexttoward";
"roundl";
"lroundl";
"llroundl";
"cpowl";
"cargl";
"sinl";
"sincosl";
"tanl";
"truncl";
"cabsl";
"nextafterl";
"nexttowardl";
"__p1evll";
"__polevll";
"casinl";
"ctanl";
"cimagl";
"conjl";
"creall";
"cacoshl";
"catanhl";
"casinhl";
"catanl";
"csinl";
"cacosl";
"cexpl";
"csinhl";
"ccoshl";
"clogl";
"ctanhl";
"ccosl";
"cbrtl";
"ccos";
"ccosh";
"ccosf";
"ccoshf";
"cexp";
"cexpf";
"cimag";
"cimagf";
"conj";
"conjf";
"cproj";
"cprojf";
"creal";
"crealf";
"csin";
"csinh";
"csinf";
"csinhf";
"ctan";
"ctanh";
"ctanf";
"ctanhf";
"cacos";
"cacosf";
"cacosh";
"cacoshf";
"casin";
"casinf";
"casinh";
"casinhf";
"catan";
"catanf";
"catanh";
"catanhf";
"clog";
"clogf";
"fedisableexcept";
"feenableexcept";
"fegetenv";
"feholdexcept";
"feraiseexcept";
"fesetexceptflag";
"feupdateenv";
"remainder";
"remainderf";
"remainderl";
"sqrt";
"sqrtf";
"sqrtl";
"llrint";
"llrintf";
"llrintl";
"logbl";
"lrint";
"lrintf";
"lrintl";
"remquo";
"remquof";
"remquol";
"rintl";
"ldexp";
"scalbn";
"ldexpf";
"scalbnf";
"ldexpl";
"scalbnl";
"__exp__D";
"__log__D";
"tgamma";
"acoshl";
"powl";
"__kernel_tanl";
"exp2l";
"atanhl";
"lgammal_r";
"sinhl";
"asinhl";
"expm1l";
"coshl";
"log10l";
"tgammal";
"expl";
"log2l";
"__kernel_cosl";
"log1pl";
"tanhl";
"logl";
"__kernel_sinl";
"erfcl";
"erfl";
"nanl";
]

let nolibc_syms = S.of_list [
"__stpncpy";
"__strchrnul";
"_assert_fail";
"_nolibc_init";
"abort";
"Balloc";
"Bfree";
"bulk_free";
"calloc";
"chdir";
"close";
"closedir";
"console_write";
"d2b";
"dispose_chunk";
"exit";
"fcntl";
"ferror";
"fflush";
"fprintf";
"fputc";
"fread";
"free";
"fwrite";
"getc";
"getcwd";
"getenv";
"getpid";
"getppid";
"gettimeofday";
"ialloc";
"independent_calloc";
"independent_comalloc";
"internal_memalign";
"isalpha";
"isatty";
"isdigit";
"isprint";
"isspace";
"isupper";
"lseek";
"lshift";
"mallinfo";
"malloc";
"malloc_footprint";
"malloc_footprint_limit";
"malloc_max_footprint";
"malloc_set_footprint_limit";
"malloc_trim";
"malloc_usable_size";
"mallopt";
"memalign";
"memchr";
"memcmp";
"memcpy";
"memmove";
"memset";
"mkdir";
"multadd";
"open";
"opendir";
"pop_arg";
"posix_memalign";
"pow5mult";
"printf";
"printf_core";
"putc";
"puts";
"pvalloc";
"quorem";
"raise";
"read";
"readdir";
"readlink";
"realloc";
"realloc_in_place";
"rename";
"rmdir";
"sbrk";
"secure_getenv";
"setjmp";
"signal";
"sn_write";
"snprintf";
"sscanf";
"stat";
"strchr";
"strcmp";
"strerror";
"strlen";
"strncpy";
"strstr";
"strtod";
"strtol";
"sys_trim";
"system";
"times";
"try_realloc_chunk";
"ungetc";
"unlink";
"valloc";
"vfprintf";
"vsnprintf";
"write";
]

let categorize_symbol tbl name addr =
  let add_or_inc x =
    let size = Owee_elf.Symbol_table.Symbol.size_in_bytes addr in
    let addr = Owee_elf.Symbol_table.Symbol.value addr in
    match Hashtbl.find_opt tbl x with
    | None -> Hashtbl.add tbl x (size, [ addr ])
    | Some (size', addrs) -> Hashtbl.replace tbl x (Int64.add size size', addr :: addrs)
  in
  if S.mem name stdlib_syms then
    add_or_inc "Stdlib"
  else if S.mem name openlibm_syms then
    add_or_inc "openlibm"
  else if S.mem name nolibc_syms then
    add_or_inc "nolibc"
  else if (String.length name >= 5 && String.(equal (sub name 0 5) "__gmp") ||
           String.length name >= 4 && String.(equal (sub name 0 4) "gmp_") ||
           String.length name >= 4 && String.(equal (sub name 0 4) "mpn_") ||
           String.length name >= 4 && String.(equal (sub name 0 4) "mpz_") ||
           String.length name >= 5 && String.(equal (sub name 0 5) "ml_z_"))
  then
    add_or_inc "Zarith"
  else if (String.length name >= 8 && String.(equal (sub name 0 8) "mc_p224_") ||
           String.length name >= 9 && String.(equal (sub name 0 9) "mc_np224_") ||
           String.length name >= 8 && String.(equal (sub name 0 8) "mc_p256_") ||
           String.length name >= 9 && String.(equal (sub name 0 9) "mc_np256_") ||
           String.length name >= 8 && String.(equal (sub name 0 8) "mc_p384_") ||
           String.length name >= 9 && String.(equal (sub name 0 9) "mc_np384_") ||
           String.length name >= 8 && String.(equal (sub name 0 8) "mc_p521_") ||
           String.length name >= 9 && String.(equal (sub name 0 9) "mc_np521_") ||
           String.length name >= 9 && String.(equal (sub name 0 9) "mc_25519_") ||
           String.length name >= 10 && String.(equal (sub name 0 10) "mc_x25519_") ||
           String.length name >= 10 && String.(equal (sub name 0 10) "fiat_p224_") ||
           String.length name >= 11 && String.(equal (sub name 0 11) "fiat_np224_") ||
           String.length name >= 10 && String.(equal (sub name 0 10) "fiat_p256_") ||
           String.length name >= 11 && String.(equal (sub name 0 11) "fiat_np256_") ||
           String.length name >= 10 && String.(equal (sub name 0 10) "fiat_p384_") ||
           String.length name >= 11 && String.(equal (sub name 0 11) "fiat_np384_") ||
           String.length name >= 10 && String.(equal (sub name 0 10) "fiat_p521_") ||
           String.length name >= 11 && String.(equal (sub name 0 11) "fiat_np521_") ||
           String.length name >= 3 && String.(equal (sub name 0 3) "fe_") ||
           String.length name >= 10 && String.(equal (sub name 0 10) "x25519_ge_") ||
           String.length name >= 6 && String.(equal (sub name 0 6) "k25519") ||
           String.length name >= 3 && String.(equal (sub name 0 3) "ge_") ||
           String.(equal name "point_double"))
  then
    add_or_inc "Mirage_crypto_ec"
  else if (String.length name >= 3 && String.(equal (sub name 0 3) "mc_") ||
           String.length name >= 4 && String.(equal (sub name 0 4) "_mc_")) then
    add_or_inc "Mirage_crypto"
  else if (String.length name >= 9 && String.(equal (sub name 0 9) "digestif_") ||
           String.length name >= 14 && String.(equal (sub name 0 14) "caml_digestif_")) then
    add_or_inc "Digestif"
  else
    ()
