@[Link("pdf")]
lib PDFlib
  type PDF = Void

  fun new = PDF_new : PDF*
  fun delete = PDF_delete(p : PDF*) : Void
  fun begin_document = PDF_begin_document(p : PDF*, filename : LibC::Char*, len : LibC::Int, optlist : LibC::Char*) : LibC::Int
  fun end_document = PDF_end_document(p : PDF*, optlist : LibC::Char*) : Void
  fun get_buffer = PDF_get_buffer(p : PDF*, size : LibC::Long*) : LibC::Char*
  fun begin_page_ext = PDF_begin_page_ext(p : PDF*, width : LibC::Double, height : LibC::Double, optlist : LibC::Char*) : Void
  fun end_page_ext = PDF_end_page_ext(p : PDF*, optlist : LibC::Char*) : Void
  fun get_option = PDF_get_option(p : PDF*, keyword : LibC::Char*, optlist : LibC::Char*) : LibC::Double
  fun set_option = PDF_set_option(p : PDF*, optlist : LibC::Char*) : Void
  fun set_parameter = PDF_set_parameter(p : PDF*, optlist : LibC::Char*) : Void
  fun get_errmsg = PDF_get_errmsg(p : PDF*) : LibC::Char*
  fun moveto = PDF_moveto(p : PDF*, x : LibC::Double, y : LibC::Double) : Void
  fun lineto = PDF_lineto(p : PDF*, x : LibC::Double, y : LibC::Double) : Void
  fun closepath = PDF_closepath(p : PDF*) : Void
  fun closepath_fill_stroke = PDF_closepath_fill_stroke(p : PDF*) : Void
  fun closepath_stroke = PDF_closepath_stroke(p : PDF*) : Void
  fun stroke = PDF_stroke(p : PDF*) : Void
  fun load_font = PDF_load_font(p : PDF*, fontname : LibC::Char*, len : LibC::Int, encoding : LibC::Char*, optlist : LibC::Char*) : LibC::Int
  fun set_text_option = PDF_set_text_option(p : PDF*, optlist : LibC::Char*) : Void
  fun set_text_pos = PDF_set_text_pos(p : PDF*, x : LibC::Double, y : LibC::Double) : Void
  fun show = PDF_show(p : PDF*, text : LibC::Char*) : Void
  fun show2 = PDF_show2(p : PDF*, text : LibC::Char*, len : LibC::Int)
end
