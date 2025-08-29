//Map function

const suburbs = ['Carlton', 'Carlton North', 'Docklands', 'East Melbourne', 'Kensington', 'Flemington', 'Melbourne', 'North Melbourne',
   'Parkville', 'Port Melbourne' ,'South Wharf','Southbank',  'South Yarra','West Melbourne' ]
const coordinates = [[-37.800769367539274, 144.9669645239939],
  [-37.782242261459956, 144.9728450197243],[-37.818270103387086,144.94652110894734],
  [-37.809722655827, 144.98323410479173],[-37.7853044663514, 144.92108829803618],
  [-37.79375456046413, 144.93065176926703],
  [-37.8154471144612, 144.95954238040235],[-37.80124085731237, 144.94806641799298],
  [-37.77857275106032, 144.94270488604815],[-37.837060715608146, 144.92806873249634],
  [-37.82132800461676, 144.95226695358227],[-37.82376921275596, 144.9621956913385],
  [-37.83886544669082, 144.99202238975008],[-37.80985909598387, 144.92837550014153]]

var map, infoWindow, featureLayer, position, displayState, displayType, displayIndicator;
var point = 7;
var Zoom = 12
/**
   * locate function to go to that location
   */
function locate(p){
  window.Zoom = 15
  window.point = p
  initMap();
}
/**
   * visulise crime data in map by buttom
   */
function showCrime(){
  console.log(crimeData);
  var tag = document.querySelectorAll('.tag')
  tag[0].style = ('background: red; opacity: 0.3')
  tag[1].style = ('background: red; opacity: 0.6')
  tag[2].style = ('background: red; opacity: 0.8')
  var text = document.querySelectorAll('.tagText')
  text[0].innerHTML = 'Low'
  text[1].innerHTML = 'Medium'
  text[2].innerHTML = 'High'
  displayState = 1
  initMap()
}
/**
   * visulise security data in map by buttom
   */
function showSafety(){
  console.log(safetyData);
  var tag = document.querySelectorAll('.tag')
  tag[0].style = ('background: purple; opacity: 0.3')
  tag[1].style = ('background: purple; opacity: 0.6')
  tag[2].style = ('background: purple; opacity: 0.8')
  var text = document.querySelectorAll('.tagText')
  text[0].innerHTML = 'Low'
  text[1].innerHTML = 'Medium'
  text[2].innerHTML = 'High'
  displayState = 2
  initMap()
}
/**
   * visulise kindness data in map by buttom
   */
function showkindness(){
  console.log(kindnessData);
  var tag = document.querySelectorAll('.tag')
  tag[0].style = ('background: blue; opacity: 0.3')
  tag[1].style = ('background: blue; opacity: 0.6')
  tag[2].style = ('background: blue; opacity: 0.8')
  var text = document.querySelectorAll('.tagText')
  text[0].innerHTML = 'Low'
  text[1].innerHTML = 'Medium'
  text[2].innerHTML = 'High'
  displayState = 3
  initMap()
}
/**
   * visulise all data in map by buttom
   */
function showAll(){
  console.log(allData);
  var tag = document.querySelectorAll('.tag')
  tag[0].style = ('background: green; opacity: 0.3')
  tag[1].style = ('background: green; opacity: 0.6')
  tag[2].style = ('background: green; opacity: 0.8')
  var text = document.querySelectorAll('.tagText')
  text[0].innerHTML = 'Low'
  text[1].innerHTML = 'Medium'
  text[2].innerHTML = 'High'
  displayState = 4
  initMap()
}


function initMap() {
  
  position = {lat:coordinates[point][0] , lng:coordinates[point][1]}
  
  map = new google.maps.Map(document.getElementById("map"), {
    center: position,
    zoom: Zoom,
    mapId:'40fc182982871df4'
  });

  if (map.getMapCapabilities().isDataDrivenStylingAvailable) {
    // Add a feature layer for localities.
    
    featureLayer  = map.getFeatureLayer('LOCALITY');
  }
  
  featureLayer.addListener("click", handlePlaceClick);
  
  infoWindow = new google.maps.InfoWindow();
  applyStyleToSelected();


  // current Location
  const locationButton = document.createElement("button");
  locationButton.textContent = "Pan to Current Location";
  locationButton.classList.add("custom-map-control-button");
  map.controls[google.maps.ControlPosition.TOP_CENTER].push(locationButton);
  locationButton.addEventListener("click", () => {
    // Try HTML5 geolocation.
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          
          const pos = {
            lat: position.coords.latitude,
            lng: position.coords.longitude,
          };
          infoWindow.setPosition(pos);
          // Verifty service range
          if(pos.lat < -38 || pos.lat > -36|| pos.lng < 144 || pos.lng > 145){
            infoWindow.setContent("Location found. You may not be in our service range, but you still can access the map");
          }else{
            infoWindow.setContent("Location found. You are in or close our service range.");
          }
          
          infoWindow.open(map);
          map.setCenter(pos);
        },
        () => {
          handleLocationError(true, infoWindow, map.getCenter());
        }
      );
    } else {
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
    }
  });
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(
    browserHasGeolocation
      ? "Error: The Geolocation service failed."
      : "Error: Your browser doesn't support geolocation."
  );
  infoWindow.open(map);
}

function handlePlaceClick(event) {
  let feature = event.features[0];
  
  // Apply the style to the feature layer.
  featureLayer.style = (options) => {
    applyStyleToSelected();
  };
  
  // Add the info window.
  switch (displayState) {
    case 1:
      displayType = 'Severity of Crime : '
      for(let s of crimeData){
        if (s.Suburb == feature.displayName){
          displayIndicator = Math.round(s.Indicator)
        }}
      break;
    case 2:
      displayType = 'Perceptions of Security: '
      for(let s of safetyData){
        if (s.Suburb == feature.displayName){
          displayIndicator = Math.round(s.Indicator)
        }}
      break;
    case 3:
      displayType = 'Inhabitants Kindness: '
      for(let s of kindnessData){
        if (s.Suburb == feature.displayName){
          displayIndicator = Math.round(s.Indicator)
        }}
      break;
    case 4:
      displayType = 'Comprehensive Safety: '
      for(let s of allData){
        if (s.Suburb == feature.displayName){
          displayIndicator = Math.round(s.Indicator)
        }}
      break;
    default:
      displayType = 'Default'
      displayIndicator = ''
      break;
  }
  let content = 
    '<span style="font-size:small">Suburb: ' +
    feature.displayName +
    "<br/> "+ displayType +
    displayIndicator +
    "</span>";
    
  updateInfoWindow(content, event.latLng);
}

// Apply styles to the map.
function applyStyleToSelected() {
  // Apply styles to the feature layer.
  featureLayer.style = (options) => {
    //crime 25 - 45 - 65 red
    //safety 70 - 72 - 74 blue
    //kindness 65 - 67 - 69 yellow
    //total 54 - 61 - 68 green      
    // Style fill and stroke for a polygon.
        switch (displayState) {
          case 1:
            for(let s of crimeData){
              if (s.Suburb == options.feature.displayName){
                if(s.Indicator>= 60) return crimeHigh
                else if(s.Indicator>= 45) return crimeMedium
                else return crimeLow
              }
            }
          case 2:
            for(let s of safetyData){
              if (s.Suburb == options.feature.displayName){
                
                if(s.Indicator>= 74) return safetyHigh
                else if(s.Indicator>= 72) return safetyMedium
                else return safetyLow
              }
            }
          case 3:
            for(let s of kindnessData){
              if (s.Suburb == options.feature.displayName){
                
                if(s.Indicator>= 69) return kindnessHigh
                else if(s.Indicator>= 67) return kindnessMedium
                else return kindnessLow
              }
            }
          case 4:
            for(let s of allData){
              
              if (s.Suburb == options.feature.displayName){
                if(s.Indicator>= 68) return allHigh
                else if(s.Indicator>= 61) return allMedium
                else return allLow
              }
            }
          default:
            for(let i of suburbs){
              
              if(options.feature.displayName == i){
            return styleDefault
        }
      }
    }
  }
}


// Helper function to create an info window.
function updateInfoWindow(content, center) {
  infoWindow.setContent(content);
  infoWindow.setPosition(center);
  infoWindow.open({
    map,
    shouldFocus: false,
  });
}

// Stroke and fill with minimum opacity value.
//@ts-ignore
const styleDefault = {
  strokeColor: "black",
  strokeOpacity: 1.0,
  strokeWeight: 2.0,
  fillColor: "white",
  fillOpacity: 0.3, // Polygons must be visible to receive click events.
};
// Style for the clicked Administrative Area Level 2 polygon.
//@ts-ignore

const styleClicked = {
  ...styleDefault,
  strokeColor: "white",
};

const crimeLow = {
  ...styleDefault,
  fillColor: "red",
};

const crimeMedium = {
  ...crimeLow,
  fillOpacity: 0.6
};

const crimeHigh = {
  ...crimeLow,
  fillOpacity: 0.8
};

const safetyLow = {
  ...styleDefault,
  fillColor: "purple",
};

const safetyMedium = {
  ...safetyLow,
  fillOpacity: 0.6
};

const safetyHigh = {
  ...safetyLow,
  fillOpacity: 0.8
};

const kindnessLow = {
  ...styleDefault,
  fillColor: "blue",
};

const kindnessMedium = {
  ...kindnessLow,
  fillOpacity: 0.6
};

const kindnessHigh = {
  ...kindnessLow,
  fillOpacity: 0.8
};

const allLow = {
  ...styleDefault,
  fillColor: "green",
};

const allMedium = {
  ...allLow,
  fillOpacity: 0.6
};

const allHigh = {
  ...allLow,
  fillOpacity: 0.8
};

window.initMap = initMap;