function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: {lat: 40.7128, lng: -74.0060},
      zoom: 12,
      styles: [
        {
          featureType: "road",
          elementType: "geometry.fill",
          stylers: [{"color": "#ffffff"}]
        },
        // Add more styles as needed
      ]
    });
  }