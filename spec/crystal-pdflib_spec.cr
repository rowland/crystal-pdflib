require "./spec_helper"

describe "PDFlib" do
  optlist = ""
  width = 612.0
  height = 792.0

  context "blank page" do
    filename = "test_blank_page.pdf"
    it "should create a document" do
      File.delete(filename) if File.exists?(filename)
      doc = PDFlib.new
      res = PDFlib.begin_document(doc, filename, 0, optlist)
      res.should eq 1
      PDFlib.begin_page_ext(doc, width, height, optlist)
      PDFlib.end_page_ext(doc, optlist)
      PDFlib.end_document(doc, optlist)
      PDFlib.delete(doc)
      File.exists?(filename).should be_true
      File.delete(filename) if File.exists?(filename)
    end

    it "should create a document buffer" do
      doc = PDFlib.new
      PDFlib.begin_document(doc, "", 0, optlist).should eq 1
      PDFlib.begin_page_ext(doc, width, height, optlist)
      PDFlib.end_page_ext(doc, optlist)
      PDFlib.end_document(doc, optlist)
      buf = PDFlib.get_buffer(doc, out size)
      s = String.new(buf, size)
      s.should match /%PDF-1.7/
      PDFlib.delete(doc)
    end
  end

  context "bogus filename" do
    filename = "/bogus/test_bogus.pdf"
    it "should return an error message" do
      doc = PDFlib.new
      PDFlib.begin_document(doc, filename, 0, optlist).should eq -1
      String.new(PDFlib.get_errmsg(doc)).should match /Couldn't open PDF file/
      PDFlib.delete(doc)
    end
  end
end
