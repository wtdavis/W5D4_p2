# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    validates :long_url, presence: true
    validates :short_url, presence: true, uniqueness: true
    validates :user_id, presence: true

    def self.random_code
        random_code = SecureRandom.urlsafe_base64

        if ShortenedUrl.table.exists?(random_code)
            ShortenedUrl.random_code
        end

    end

    # after_initialize will take the two parameters
    # id, and long URL, 
    # and then call generate_short_url, which calls ::random_code. 

# task_from_user4 = ShortenedUrl.new(id:4, long_url:"google.com", short_url:nil)
# task_from_user4.random_code => ;asldkfjasldkfj short_url = asldkfjaslkdfjaksjd

    end

    def generate_short_url

    end

end
