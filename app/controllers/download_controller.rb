class DownloadController < ApplicationController
  def index
  end

  def doc
    send_file Rails.root.join('private', 'energy_ren.docx'), :type=>"application/doc", :x_sendfile=>true
  end
end
