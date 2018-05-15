import GMaps from 'gmaps';

document.addEventListener("submit",(event) => {
  event.preventDefault();
  console.log(event);
  const output = document.querySelector(".form-inputs").value;
   // console.log(output);
    const url = `https://maps.googleapis.com/maps/api/geocode/json?address=${output}&key=AIzaSyCzER7O10ZOUp7FloJzMe2r8X1GIQhgt7Q&callback`;
    fetch(url)
      .then(response => response.json())
      .then((data) => {
        const latr = data.results[0].geometry.location.lat;
        const lngr = data.results[0].geometry.location.lng;
        const geocode = document.getElementById('geocoding');
        console.log(geocode);
        geocode.innerHTML = "";
        console.log(geocode);
        geocode.insertAdjacentHTML("beforeend", `<h3>${latr} , ${lngr} </h3>`);
        const map = new GMaps({ el: '#map', lat: latr, lng: lngr, zoom: 14 });
        const marker = { lat: latr, lng: lngr };
        map.addMarkers([ marker ]);
      });
});
