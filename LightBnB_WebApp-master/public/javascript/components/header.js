$(() => {
  window.header = {};

  const $pageHeader = $('#page-header');
  let currentUser = null;
  function updateHeader(user) {
    currentUser = user;
    $pageHeader.find("#page-header__user-links").remove();
    let userLinks;

    if (!user) {
      userLinks = `
      <nav id="page-header__user-links" class="page-header__user-links">
        <ul>
          <li class="home" style="font-size:3em;">🏠</li>
          <li class="search_button" style="font-size:1.5em;">Search</li>
          <li class="login_button" style="font-size:1.5em;">Log In</li>
          <li class="sign-up_button" style="font-size:1.5em;">Sign Up</li>
        </ul>
      </nav>
      `
    } else {
      console.log(user);
      userLinks = `
      <nav id="page-header__user-links" class="page-header__user-links">
        <ul>
          <li class="home" style="font-size:3em;">🏠</li>
          <li class="search_button" style="font-size:1.5em;">Search</li>
          <li style="font-size:1.5em;">${user.name}</li>
          <li class="create_listing_button" style="font-size:1.5em;">Create Listing</li>
          <li class="my_listing_button" style="font-size:1.5em;">My Listings</li>
          <li class="my_reservations_button" style="font-size:1.5em;">My Reservations</li>
          <li class="logout_button" style="font-size:1.5em;">Log Out</li>
        </ul>
      </nav>
      `
    }

    $pageHeader.append(userLinks);
  }

  window.header.update = updateHeader;

  getMyDetails()
    .then(function( json ) {
      console.log(json);
    updateHeader(json.user);
  });

  $("header").on("click", '.my_reservations_button', function() {
    propertyListings.clearListings();
    getAllReservations()
      .then(function(json) {
        propertyListings.addProperties(json.reservations, true);
        views_manager.show('listings');
      })
      .catch(error => console.error(error));
  });
  $("header").on("click", '.my_listing_button', function() {
    propertyListings.clearListings();
    getAllListings(`owner_id=${currentUser.id}`)
      .then(function(json) {
        propertyListings.addProperties(json.properties);
        views_manager.show('listings');
    });
  });

  $("header").on("click", '.home', function() {
    propertyListings.clearListings();
    getAllListings()
      .then(function(json) {
        propertyListings.addProperties(json.properties);
        views_manager.show('listings');
    });
  });

  $('header').on('click', '.search_button', function() {
    views_manager.show('searchProperty');
  });

  $("header").on('click', '.login_button', () => {
    views_manager.show('logIn');
  });
  $("header").on('click', '.sign-up_button', () => {
    views_manager.show('signUp');
  });
  $("header").on('click', '.logout_button', () => {
    logOut().then(() => {
      header.update(null);
    });
  });

  $('header').on('click', '.create_listing_button', function() {
    views_manager.show('newProperty');
  });

});