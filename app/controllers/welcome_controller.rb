class WelcomeController <  ApplicationController

     def index
     end

      def home
         render('home')
      end

      def about
         render('about')
      end

      def other_hello
       redirect_to(:action => 'index')
      end
end
