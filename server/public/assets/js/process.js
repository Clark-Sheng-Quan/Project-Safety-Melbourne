// VARABLE for saving asynchronous data
var crimeData, safetyData, kindnessData, allData

// process crime data by loading database crime and suburb
function dataProcess(crime,suburb){
  let dataset = []
  suburb.forEach(sub => {
    let weightAvg = 0;
    crime.forEach(cri =>{
      if(cri.Suburb == sub.Suburb){
        let sum = (cri.A_Crimes_against_the_person*25 + cri.B_property_and_deception*15 + cri.C_Drug_offences*10
           + cri.D_Public_order_and_security_offences*5 + cri.E_Justice_procedures_offences*2 + cri.F_other_offences)
        sum = Math.round(Math.sqrt(sum / sub.Daily_population)*100)
        switch (cri.Year) {
          case 2022:
            weightAvg += sum*0.4
            break;
          case 2021:
            weightAvg += sum*0.25
            break;
          case 2020:
            weightAvg += sum*0.2
            break;
          case 2019:
            weightAvg += sum*0.15
            break;
        }
      }
    })
    switch(sub.Suburb) {
      case 'Carlton':
        dataset.push({Suburb:sub.Suburb, Indicator: weightAvg})
        dataset.push({Suburb:'Carlton North', Indicator: weightAvg})
        break;
      case 'Kensington and Flemington':
        dataset.push({Suburb:'Kensington', Indicator: weightAvg})
        dataset.push({Suburb:'Flemington', Indicator: weightAvg})
        break;
      case 'Southbank':
        dataset.push({Suburb:'South Wharf', Indicator: weightAvg})
        dataset.push({Suburb:sub.Suburb, Indicator: weightAvg})
        break;
      default:
        dataset.push({Suburb:sub.Suburb, Indicator: weightAvg})
        break
    }
    
  });
  crimeData = dataset
}


function getCrime(){
  // ajax method for getting crime
  ajax({
    method:'get',
    url:'/user/crime',
    data:0,
    success: function(res){
      if(res){
        //pass to get suburb
        getSuburb(res)
      }else{error.innerHTML = "Database access failed"
      error.classList.add('d-block') 
      return; }
    }  
  })
}
function getSuburb(crime){
  // ajax method for getting suburb
    ajax({
      method:'get',
      url:'/user/suburb',
      data:0,
      success: function(res){
        if(res){
          //pass to process
          dataProcess(crime,res)
        }else{error.innerHTML = "Database access failed"
        error.classList.add('d-block') 
        return; }
      }  
    })
  }

function getIndicator(type){
  // ajax method for getting indicator
  ajax({
    method:'post',
    url:'/user/indicator',
    data:'TYPE=' + type,
    success: function(res){
      if(res){
        // create 14 arrays
        var dataset = new Array()
        for(let i=1;i<15;i++){
          dataset.push([])
        }

        res.forEach(element => {
          if(element.RESULT < 10) {element.RESULT *= 10;}
          switch (element.RESPONDENT_GROUP) {
            case 'City of Melbourne':
              dataset[9].push(element.RESULT)
              break;
            case 'Carlton 3053':
              dataset[0].push(element.RESULT)
              dataset[1].push(element.RESULT)
              break;
            case 'Docklands 3008':
              dataset[2].push(element.RESULT)
              break;
            case 'East Melbourne 3002':
              dataset[3].push(element.RESULT)
              break;
            case 'Kensington / Flemington 3031':
              dataset[4].push(element.RESULT)
              dataset[5].push(element.RESULT)
              break;
            case 'Melbourne 3000':
              dataset[6].push(element.RESULT)
              break;
            case 'North Melbourne 3051 / West Melbourne 3003':
              dataset[7].push(element.RESULT)
              dataset[13].push(element.RESULT)
              break;
            case 'Parkville 3052':
              dataset[8].push(element.RESULT)
              break;
            case 'South Wharf / Southbank 3006':
              dataset[10].push(element.RESULT)
              dataset[11].push(element.RESULT)
              break;
            case 'South Yarra 3141 / Melbourne/St Kilda Road 3004':
              dataset[12].push(element.RESULT)
              break;
          }
        })
        var result = []
        for(let i=0;i<14;i++){
          let sum = 0;
          let len = 0;
          dataset[i].forEach(e=>{
            sum += e
            len += 1
          })
          
          result.push({Suburb:suburbs[i], Indicator: Math.round(sum / len)})
        }
        if(type == 'Safety'){
          safetyData = result
        }else{
          kindnessData = result
        }
      }else{error.innerHTML = "Database access failed"
      error.classList.add('d-block') 
      return; }
    }  
  })
}
// function to calcaulate all the data
function getAll(){
  let result = []
  for(let i=0;i<14;i++){
    let sum = 0
    sum += (100-crimeData[i].Indicator) + safetyData[i].Indicator + kindnessData[i].Indicator
    result.push({Suburb: crimeData[i].Suburb, Indicator: sum/3})
  }
  allData = result
}

//sync function to load the data
function loadSync(){
  return new Promise((resolve, reject)=>{
    getCrime()
    getIndicator('Safety')
    getIndicator('Kindness')
    window.onload = function(){
      resolve(1)
    }
    window.onerror=function(){
      reject(0)
    }
  })
}
loadSync().then(()=>{
  getAll()
})

