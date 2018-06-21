class ProjectsController < ApplicationController
    protect_from_forgery except: [:federdo_calculatrice, :googleMapsAPI_THP_P43]
      def initialize
          @var
      end

      def home
          render action: 'home',:layout => 'application', formats: [:html]
      end

      def scraping_facebook
          @var = ScrapFbPros.new.perform
          render :json => @var
      end

      def scraping_google_calendar
          @var = ScrapGoogleCal.new.perform
          render :json => @var
      end
      def scraping_sites_pro
          @var = ScrapUrlsPros.new.perform
          render :json => @var
      end

      def projectsparsing_stage_CAJ_pdf
          @var = ScrapCajStage.new(stage_file: params[:project], result_file: params[:result_path], table_name: params[:table]).perform
          render :json => @var
      end

      def scrap1
        @var = ScrapCdiscount.new.perform
        render :json => @var
      end

      def reformat
        @var = FormatKeysEnv.new.perform
        render :json => @var
      end

      def reformat2
        @var = FormatContact.new.perform
        render :json => @var
      end

      def federdo_calculatrice
        @var = (1..5).to_a
        # render :json => @var
        render layout: false
      end

      def testo
        # @var = (1..5).to_a
        # render :json => @var
        render action: 'testo', :layout => 'application', formats: [:pdf]

      end

      def scraping_annuaire_cabinets
        @var = ScrapCadremploi.new.perform
        render :json => @var
      end

      def googleMapsAPI_THP_P43
        render layout: false
      end

      def cv
        render action: 'cv', :layout => 'application'#, formats: [:pdf]
      end

      def main
        render :home
      end

      def displaying_color_names
          @var = ColorNames.new.res
          @var2 = ColorNames.new.res2
      end
end
