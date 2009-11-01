require File.join(File.dirname(__FILE__), 'test_helper')
require 'mocha'

class TestRbST < Test::Unit::TestCase
  def setup
    @rst_file = File.join(File.dirname(__FILE__), 'files', 'test.rst')
    @html_file = File.join(File.dirname(__FILE__), 'files', 'test.html')
  end
  
  should "call bare rest2parts when passed no options" do
    converter = RbST.new(@rst_file)
    converter.expects(:execute).with('python ./test/../lib/rest2parts.py').returns(true)
    assert converter.convert
  end
  
  should "convert ReST to html" do
    html = RbST.new(@rst_file).to_html
    assert_equal html, File.read(@html_file)
  end
  
  should "recognize strip_comments option" do
    html_with_comment = RbST.convert(".. comment")
    assert_equal html_with_comment, %Q{<div class="document">\n<!-- comment -->\n</div>}
    html_without_comment = RbST.convert(".. comment", :strip_comments)
    assert_equal html_without_comment, %Q{<div class="document">\n</div>}
  end
  
  should "recognize cloak_email_addresses option" do
    html_with_uncloaked_email = RbST.convert("steve@mac.com")
    assert_equal %Q{<div class="document">\n<p><a class="reference external" href="mailto:steve&#64;mac.com">steve&#64;mac.com</a></p>\n</div>}, html_with_uncloaked_email
    html_with_cloaked_email = RbST.convert("steve@mac.com", :cloak_email_addresses)
    assert_equal %Q{<div class="document">\n<p><a class="reference external" href="mailto:steve&#37;&#52;&#48;mac&#46;com">steve<span>&#64;</span>mac<span>&#46;</span>com</a></p>\n</div>}, html_with_cloaked_email
  end
  
  should "recognize part option" do
    html_body = RbST.convert("hello world", :part => :html_body)
    assert_equal %Q{<div class="document">\n<p>hello world</p>\n</div>}, html_body
    fragment = RbST.convert("hello world", :part => :fragment)
    assert_equal %Q{<p>hello world</p>}, fragment
  end
  
end
