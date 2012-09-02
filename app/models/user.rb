# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)
#  name             :string(255)
#  mat              :string(255)
#  pwd              :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  uid              :string(255)
#  oauth_token      :string(255)
#  oauth_expires_at :datetime
#  provider         :string(255)
#  image_url        :string(255)
#

class User < ActiveRecord::Base
	attr_accessible :mat,:pwd
	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |u|
			u.provider = auth.provider
			u.image_url = auth.info.image
			u.uid = auth.uid
			u.name = auth.info.name
			u.oauth_token = auth.credentials.token
			u.oauth_expires_at = Time.at(auth.credentials.expires_at)
			# u.classe = self.classe
			u.save!
		end
	end
	def has_valid_emsi_account?
		@valid_acc
	end
	def init
    @agent = Mechanize.new
    link = 'http://emsimarrakech.ma/site/verify.php'
    @form = @agent.get(link).form('form1')
    @form.mat, @form.pwd = self.mat, self.pwd
    @home_page = @agent.submit(@form)
    pp @home_page
    if @home_page.at('.msg_error')
      @valid_acc = false
    else
      @valid_acc = true
      @classe = @home_page.link(
      	href: 'profil.php').click.at('tr td.rouge').inner_text
    end
	end
end
