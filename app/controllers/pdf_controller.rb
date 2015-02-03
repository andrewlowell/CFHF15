class PdfController < ApplicationController
  def download_pdf
    send_file(
      "#{Rails.root}/public/CFHF15_Schedule.pdf",
      filename: "CFHF15_Schedule.pdf",
      type: "application/pdf"
    )
  end
end
