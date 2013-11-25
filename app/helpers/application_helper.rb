module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def site_name
      "MarketRite: Agile Marketing Platform"
    end

    def site_url
      if Rails.env.production?
        # Place your production URL in the quotes below
        "http://www.marketrite.com/"
      else
        # Our dev & test URL.
        "http://localhost:3000"
      end
    end

    def meta_author
      "Website Author"
    end

    def meta_description
      "Add your website descripiton here"
    end

    def meta_keywords
      "Add some keywords here"
    end

    # Returns the full title on a per-page basis.
    def full_title(page_title)
      if page_title.empty?
        site_name
      else
        "#{page_title} | #{site_name}"
      end
    end
end
  