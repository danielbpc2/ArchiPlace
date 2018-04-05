class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cards = [
      {
        title: 'coppery atmosphere',
        image: 'https://pimpmyroom.fr/wp-content/uploads/2017/04/look-book-cuivre-salon.jpg'
      },
      {
        title: 'balcony',
        image: 'https://pimpmyroom.fr/wp-content/uploads/2017/04/look-book-balcon-summer.jpg'
      },
      {
        title: 'baby cozy',
        image: 'https://pimpmyroom.fr/wp-content/uploads/2017/03/pimpmyroom_look_book_baby_cosy.jpg'
      },
      {
        title: 'jungle',
        image: 'https://pimpmyroom.fr/wp-content/uploads/2017/03/pimpmyroom_look_book_jungle.jpg'
      }
    ]
  end
end
