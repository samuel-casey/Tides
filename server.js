// this file creates a server using express and writes frontend code to that server using express methods
const express = require('express')
const axios = require('axios')
const bodyParser = require('body-parser')
const morgan = require('morgan')
const app = express()
const db = require('./queries')
const timeCalc = require('./times')
const sslRedirect = require('heroku-ssl-redirect')

if (process.env.NODE_ENV === 'production') {
  app.use(sslRedirect());
}

app.use(express.static(__dirname + '/public'))
app.use(morgan('dev'))
app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (req, res, next) => {
    res.sendFile(__dirname + '/public/main.html')
})

app.post('/station', async (req, res, next) => {
  
  const userGeocode = await getGeocodeOfInput(req.body);
  const stationNearUser = await findStationClosestToUser(userGeocode);
  const station = await db.getStationByGeocode(stationNearUser); // gets station ID
  station.current_time = await timeCalc.calcTimeAtStation(stationNearUser)
  res.status(200).send(station);
  res.end();
})

console.log(`DIRNAME: ${__dirname}`)


function getGeocodeOfInput (userLocation) {
  
  const userAddress = userLocation.address

  let locationParams = { 
      address: userAddress,
      key:"AIzaSyDxknbsdX9jiMi-hSM6hl2ntApxiDvZZ84"
  }

  let url = `https://maps.googleapis.com/maps/api/geocode/json?address=${locationParams.address}&key=${locationParams.key}`
  
  return axios.get(url) // returns a promise
  .then( (response) => {

  let googleLat = (Math.round(response['data']['results'][0]['geometry']['location'].lat * 1000) / 1000)
  let googleLon = (Math.round(response['data']['results'][0]['geometry']['location'].lng * 1000) / 1000)
  
  let coordinates = {
    lat: googleLat,
    lon: googleLon
  }
  return coordinates // returns an object
  
  })
  .catch( error => console.log(error))
}

const allStationCoordinates = [
  {'lat':'30.279','lon':'-87.555'},
  {'lat':'30.406','lon':'-88.248'},
  {'lat':'30.782','lon':'-88.074'},
  {'lat':'30.648','lon':'-88.058'},
  {'lat':'30.251','lon':'-88.079'},
  {'lat':'30.25','lon':'-88.075'},
  {'lat':'30.565','lon':'-88.088'},
  {'lat':'30.444','lon':'-88.114'},
  {'lat':'30.28','lon':'-87.684'},
  {'lat':'30.978','lon':'-87.873'},
  {'lat':'30.667','lon':'-87.936'},
  {'lat':'30.705','lon':'-88.04'},
  {'lat':'30.487','lon':'-87.935'},
  {'lat':'30.417','lon':'-87.825'},
  {'lat':'30.377','lon':'-88.159'},
  {'lat':'51.863','lon':'-176.632'},
  {'lat':'59.773','lon':'-149.588'},
  {'lat':'58.29','lon':'-154.27'},
  {'lat':'59.953','lon':'-149.715'},
  {'lat':'59.885','lon':'-149.718'},
  {'lat':'54.233','lon':'-165.533'},
  {'lat':'54.133','lon':'-165.8'},
  {'lat':'56.897','lon':'-154.248'},
  {'lat':'59.772','lon':'-151.867'},
  {'lat':'56.638','lon':'-132.927'},
  {'lat':'61.238','lon':'-149.89'},
  {'lat':'52.232','lon':'-174.173'},
  {'lat':'57.088','lon':'-134.825'},
  {'lat':'71.36','lon':'-156.73'},
  {'lat':'70.129','lon':'-143.611'},
  {'lat':'59.725','lon':'-151.023'},
  {'lat':'56.595','lon':'-132.987'},
  {'lat':'60.8','lon':'-161.75'},
  {'lat':'53.829','lon':'-166.216'},
  {'lat':'54.835','lon':'-159.76'},
  {'lat':'56.183','lon':'-131.572'},
  {'lat':'54.065','lon':'-165.937'},
  {'lat':'56.038','lon':'-131.095'},
  {'lat':'56.277','lon':'-132.985'},
  {'lat':'59.693','lon':'-149.748'},
  {'lat':'55.064','lon':'-163.534'},
  {'lat':'58.522','lon':'-159.152'},
  {'lat':'66.586','lon':'-164.251'},
  {'lat':'60.337','lon':'-151.38'},
  {'lat':'67.054','lon':'-163.321'},
  {'lat':'54.6','lon':'-164.928'},
  {'lat':'59.378','lon':'-162.029'},
  {'lat':'56.232','lon':'-158.347'},
  {'lat':'59.17','lon':'-135.4'},
  {'lat':'60.503','lon':'-151.283'},
  {'lat':'55.808','lon':'-155.74'},
  {'lat':'56.052','lon':'-156.698'},
  {'lat':'58.848','lon':'-158.552'},
  {'lat':'59.601','lon':'-151.411'},
  {'lat':'55.208','lon':'-162.698'},
  {'lat':'60.558','lon':'-145.755'},
  {'lat':'55.488','lon':'-133.142'},
  {'lat':'59.713','lon':'-149.787'},
  {'lat':'55.1','lon':'-131.217'},
  {'lat':'61.532','lon':'-166.148'},
  {'lat':'66.097','lon':'-162.74'},
  {'lat':'55.122','lon':'-161.792'},
  {'lat':'56.163','lon':'-133.413'},
  {'lat':'56.163','lon':'-133.33'},
  {'lat':'58.195','lon':'-136.347'},
  {'lat':'56.812','lon':'-133.787'},
  {'lat':'57.967','lon':'-134.935'},
  {'lat':'54.858','lon':'-163.407'},
  {'lat':'61.173','lon':'-150.213'},
  {'lat':'56.787','lon':'-135.393'},
  {'lat':'66.23','lon':'-163.904'},
  {'lat':'61.393','lon':'-149.847'},
  {'lat':'54.11','lon':'-165.661'},
  {'lat':'60.1','lon':'-148.038'},
  {'lat':'58.085','lon':'-134.777'},
  {'lat':'60.27','lon':'-162.41'},
  {'lat':'55.066','lon':'-159.419'},
  {'lat':'60.475','lon':'-147.792'},
  {'lat':'58.108','lon':'-135.444'},
  {'lat':'56.113','lon':'-158.598'},
  {'lat':'55.202','lon':'-132.823'},
  {'lat':'54.778','lon':'-163.364'},
  {'lat':'56.96','lon':'-153.687'},
  {'lat':'58.299','lon':'-134.411'},
  {'lat':'56.948','lon':'-133.895'},
  {'lat':'60.512','lon':'-151.952'},
  {'lat':'59.468','lon':'-151.565'},
  {'lat':'55.332','lon':'-131.626'},
  {'lat':'55.06','lon':'-162.326'},
  {'lat':'67.727','lon':'-164.592'},
  {'lat':'57.73','lon':'-152.514'},
  {'lat':'66.902','lon':'-162.582'},
  {'lat':'58.84','lon':'-159.647'},
  {'lat':'57.53','lon':'-153.99'},
  {'lat':'56.788','lon':'-132.502'},
  {'lat':'55.602','lon':'-132.512'},
  {'lat':'60.554','lon':'-162.297'},
  {'lat':'65.39','lon':'-167.145'},
  {'lat':'56.392','lon':'-132.169'},
  {'lat':'55.788','lon':'-132.191'},
  {'lat':'60.417','lon':'-166.167'},
  {'lat':'56.908','lon':'-158.685'},
  {'lat':'55.128','lon':'-131.567'},
  {'lat':'55.89','lon':'-158.82'},
  {'lat':'60.025','lon':'-147.592'},
  {'lat':'56.535','lon':'-133.767'},
  {'lat':'57.978','lon':'-152.925'},
  {'lat':'60.517','lon':'-165.133'},
  {'lat':'54.967','lon':'-163.44'},
  {'lat':'60.683','lon':'-151.398'},
  {'lat':'52.941','lon':'-168.871'},
  {'lat':'60.055','lon':'-151.682'},
  {'lat':'64.495','lon':'-165.44'},
  {'lat':'61.043','lon':'-151.163'},
  {'lat':'63.317','lon':'-168.967'},
  {'lat':'55.722','lon':'-133.35'},
  {'lat':'58.392','lon':'-153.958'},
  {'lat':'62.533','lon':'-164.845'},
  {'lat':'57.203','lon':'-153.304'},
  {'lat':'57.922','lon':'-152.498'},
  {'lat':'56.677','lon':'-132.933'},
  {'lat':'57.958','lon':'-136.227'},
  {'lat':'60.127','lon':'-147.395'},
  {'lat':'60.672','lon':'-147.932'},
  {'lat':'59.047','lon':'-161.818'},
  {'lat':'59.938','lon':'-148.227'},
  {'lat':'56.178','lon':'-132.697'},
  {'lat':'68.342','lon':'-166.808'},
  {'lat':'56.558','lon':'-132.963'},
  {'lat':'61.037','lon':'-150.413'},
  {'lat':'65.257','lon':'-166.847'},
  {'lat':'60.123','lon':'-162.5'},
  {'lat':'56.247','lon':'-134.648'},
  {'lat':'57.873','lon':'-152.867'},
  {'lat':'61.268','lon':'-149.917'},
  {'lat':'55.986','lon':'-160.574'},
  {'lat':'58.5','lon':'-158.712'},
  {'lat':'57.515','lon':'-135.6'},
  {'lat':'70.411','lon':'-148.532'},
  {'lat':'57.707','lon':'-155.393'},
  {'lat':'59.751','lon':'-161.915'},
  {'lat':'56.857','lon':'-134.723'},
  {'lat':'67.576','lon':'-164.064'},
  {'lat':'54.131','lon':'-166.099'},
  {'lat':'56.353','lon':'-132.553'},
  {'lat':'54.052','lon':'-165.514'},
  {'lat':'56.903','lon':'-134.303'},
  {'lat':'55.332','lon':'-160.504'},
  {'lat':'63.679','lon':'-170.537'},
  {'lat':'54.394','lon':'-164.746'},
  {'lat':'57.34','lon':'-135.707'},
  {'lat':'54.102','lon':'-164.942'},
  {'lat':'60.425','lon':'-147.41'},
  {'lat':'59.44','lon':'-151.72'},
  {'lat':'57.41','lon':'-135.627'},
  {'lat':'60.12','lon':'-149.427'},
  {'lat':'64.38','lon':'-161.235'},
  {'lat':'66.263','lon':'-166.02'},
  {'lat':'57.052','lon':'-135.342'},
  {'lat':'59.451','lon':'-135.328'},
  {'lat':'59.04','lon':'-158.447'},
  {'lat':'60.25','lon':'-147.717'},
  {'lat':'60.367','lon':'-147.7'},
  {'lat':'54.151','lon':'-165.615'},
  {'lat':'57.744','lon':'-153.195'},
  {'lat':'57.533','lon':'-134.417'},
  {'lat':'58.965','lon':'-136.878'},
  {'lat':'65.267','lon':'-166.353'},
  {'lat':'57.295','lon':'-133.797'},
  {'lat':'56.682','lon':'-133.737'},
  {'lat':'56.118','lon':'-132.078'},
  {'lat':'54.12','lon':'-164.977'},
  {'lat':'65.558','lon':'-167.975'},
  {'lat':'54.14','lon':'-165.527'},
  {'lat':'55.352','lon':'-132.938'},
  {'lat':'56.8','lon':'-132.98'},
  {'lat':'63.871','lon':'-160.784'},
  {'lat':'53.879','lon':'-166.54'},
  {'lat':'59.79','lon':'-150.032'},
  {'lat':'57.928','lon':'-152.812'},
  {'lat':'61.124','lon':'-146.363'},
  {'lat':'57.125','lon':'-170.285'},
  {'lat':'56.22','lon':'-132.297'},
  {'lat':'58.107','lon':'-153.34'},
  {'lat':'57.25','lon':'-135.567'},
  {'lat':'60.778','lon':'-148.665'},
  {'lat':'59.875','lon':'-147.403'},
  {'lat':'56.47','lon':'-132.387'},
  {'lat':'59.548','lon':'-139.733'},
  {'lat':'55.335','lon':'-160.617'},
  {'lat':'32.37','lon':'-64.695'},
  {'lat':'32.373','lon':'-64.703'},
  {'lat':'37.772','lon':'-122.3'},
  {'lat':'38.02','lon':'-121.815'},
  {'lat':'38.915','lon':'-123.711'},
  {'lat':'33.345','lon':'-118.325'},
  {'lat':'37.865','lon':'-122.307'},
  {'lat':'37.908','lon':'-122.679'},
  {'lat':'38.183','lon':'-121.923'},
  {'lat':'40.637','lon':'-124.282'},
  {'lat':'37.465','lon':'-122.023'},
  {'lat':'41.746','lon':'-124.184'},
  {'lat':'38.058','lon':'-122.223'},
  {'lat':'37.507','lon':'-122.115'},
  {'lat':'36.818','lon':'-121.747'},
  {'lat':'36.857','lon':'-121.755'},
  {'lat':'40.723','lon':'-124.222'},
  {'lat':'34.469','lon':'-120.228'},
  {'lat':'38.704','lon':'-123.449'},
  {'lat':'37.73','lon':'-122.357'},
  {'lat':'36.841','lon':'-121.745'},
  {'lat':'32.867','lon':'-117.257'},
  {'lat':'33.752','lon':'-118.227'},
  {'lat':'33.72','lon':'-118.273'},
  {'lat':'38.043','lon':'-121.918'},
  {'lat':'35.95','lon':'-121.482'},
  {'lat':'38.07','lon':'-122.25'},
  {'lat':'38.035','lon':'-122.125'},
  {'lat':'32.794','lon':'-117.224'},
  {'lat':'36.605','lon':'-121.888'},
  {'lat':'33.603','lon':'-117.883'},
  {'lat':'40.766','lon':'-124.217'},
  {'lat':'39.426','lon':'-123.805'},
  {'lat':'37.795','lon':'-122.282'},
  {'lat':'34.469','lon':'-120.682'},
  {'lat':'37.772','lon':'-122.235'},
  {'lat':'37.79','lon':'-122.387'},
  {'lat':'37.503','lon':'-122.482'},
  {'lat':'38.015','lon':'-122.363'},
  {'lat':'37.994','lon':'-122.974'},
  {'lat':'38.056','lon':'-122.04'},
  {'lat':'35.169','lon':'-120.754'},
  {'lat':'41.945','lon':'-124.201'},
  {'lat':'37.507','lon':'-122.21'},
  {'lat':'37.923','lon':'-122.41'},
  {'lat':'38.145','lon':'-121.692'},
  {'lat':'40.827','lon':'-124.18'},
  {'lat':'32.714','lon':'-117.174'},
  {'lat':'37.806','lon':'-122.466'},
  {'lat':'37.695','lon':'-122.192'},
  {'lat':'37.58','lon':'-122.253'},
  {'lat':'34.403','lon':'-119.693'},
  {'lat':'34.008','lon':'-118.5'},
  {'lat':'40.025','lon':'-124.058'},
  {'lat':'38.157','lon':'-122.407'},
  {'lat':'32.629','lon':'-117.108'},
  {'lat':'38.128','lon':'-122.073'},
  {'lat':'36.83','lon':'-121.745'},
  {'lat':'33.005','lon':'-118.557'},
  {'lat':'18.457','lon':'-67.165'},
  {'lat':'18.481','lon':'-66.702'},
  {'lat':'17.951','lon':'-67.197'},
  {'lat':'17.591','lon':'-61.821'},
  {'lat':'18.363','lon':'-65.035'},
  {'lat':'18.347','lon':'-64.926'},
  {'lat':'17.748','lon':'-64.698'},
  {'lat':'18.301','lon':'-65.302'},
  {'lat':'18.297','lon':'-64.818'},
  {'lat':'18.371','lon':'-64.963'},
  {'lat':'18.094','lon':'-65.471'},
  {'lat':'18.335','lon':'-65.631'},
  {'lat':'17.713','lon':'-64.883'},
  {'lat':'18.153','lon':'-65.444'},
  {'lat':'18.345','lon':'-65.57'},
  {'lat':'18.318','lon':'-64.724'},
  {'lat':'17.928','lon':'-66.158'},
  {'lat':'18.368','lon':'-64.721'},
  {'lat':'17.695','lon':'-64.754'},
  {'lat':'18.361','lon':'-64.804'},
  {'lat':'22.262','lon':'-97.795'},
  {'lat':'17.97','lon':'-67.046'},
  {'lat':'18.219','lon':'-67.163'},
  {'lat':'18.09','lon':'-67.939'},
  {'lat':'18.187','lon':'-65.711'},
  {'lat':'17.973','lon':'-66.762'},
  {'lat':'18.075','lon':'-67.189'},
  {'lat':'18.165','lon':'-67.182'},
  {'lat':'18.459','lon':'-66.116'},
  {'lat':'17.955','lon':'-66.407'},
  {'lat':'26.71','lon':'-78.997'},
  {'lat':'18.348','lon':'-64.717'},
  {'lat':'18.349','lon':'-64.864'},
  {'lat':'18.055','lon':'-65.833'},
  {'lat':'41.157','lon':'-73.213'},
  {'lat':'41.173','lon':'-73.182'},
  {'lat':'41.268','lon':'-72.532'},
  {'lat':'41.038','lon':'-73.48'},
  {'lat':'41.283','lon':'-72.908'},
  {'lat':'41.361','lon':'-72.09'},
  {'lat':'41.12','lon':'-73.368'},
  {'lat':'41.097','lon':'-73.415'},
  {'lat':'41.133','lon':'-73.283'},
  {'lat':'41.038','lon':'-73.547'},
  {'lat':'41.343','lon':'-71.975'},
  {'lat':'38.987','lon':'-75.113'},
  {'lat':'39.582','lon':'-75.588'},
  {'lat':'38.61','lon':'-75.07'},
  {'lat':'38.783','lon':'-75.119'},
  {'lat':'39.185','lon':'-75.4'},
  {'lat':'39.558','lon':'-75.573'},
  {'lat':'38.873','lon':'-77.022'},
  {'lat':'28.165','lon':'-82.843'},
  {'lat':'29.724','lon':'-84.981'},
  {'lat':'28.533','lon':'-82.65'},
  {'lat':'30.327','lon':'-87.357'},
  {'lat':'29.615','lon':'-81.205'},
  {'lat':'27.468','lon':'-80.3'},
  {'lat':'30.08','lon':'-81.762'},
  {'lat':'30.637','lon':'-87.028'},
  {'lat':'30.387','lon':'-87.429'},
  {'lat':'24.575','lon':'-81.708'},
  {'lat':'26.343','lon':'-80.077'},
  {'lat':'26.707','lon':'-82.163'},
  {'lat':'29.595','lon':'-81.682'},
  {'lat':'25.288','lon':'-80.37'},
  {'lat':'30.437','lon':'-81.642'},
  {'lat':'29.135','lon':'-83.032'},
  {'lat':'28.715','lon':'-82.577'},
  {'lat':'30.683','lon':'-81.533'},
  {'lat':'30.407','lon':'-81.51'},
  {'lat':'27.978','lon':'-82.832'},
  {'lat':'28.368','lon':'-80.6'},
  {'lat':'26.4','lon':'-81.843'},
  {'lat':'25.897','lon':'-81.637'},
  {'lat':'30.722','lon':'-81.622'},
  {'lat':'29.768','lon':'-81.258'},
  {'lat':'28.898','lon':'-82.598'},
  {'lat':'30.708','lon':'-81.465'},
  {'lat':'25.615','lon':'-80.305'},
  {'lat':'26.855','lon':'-82.303'},
  {'lat':'30.387','lon':'-81.559'},
  {'lat':'30.397','lon':'-81.395'},
  {'lat':'25.895','lon':'-81.558'},
  {'lat':'28.882','lon':'-82.635'},
  {'lat':'30.12','lon':'-81.758'},
  {'lat':'29.81','lon':'-84.585'},
  {'lat':'25.373','lon':'-80.29'},
  {'lat':'30.45','lon':'-86.918'},
  {'lat':'30.502','lon':'-81.542'},
  {'lat':'27.602','lon':'-82.76'},
  {'lat':'29.707','lon':'-85.153'},
  {'lat':'25.453','lon':'-80.197'},
  {'lat':'26.438','lon':'-81.918'},
  {'lat':'30.671','lon':'-81.466'},
  {'lat':'30.337','lon':'-87.14'},
  {'lat':'24.592','lon':'-81.795'},
  {'lat':'30.582','lon':'-87.18'},
  {'lat':'26.648','lon':'-81.871'},
  {'lat':'28.8','lon':'-82.603'},
  {'lat':'26.988','lon':'-81.993'},
  {'lat':'25.903','lon':'-80.12'},
  {'lat':'26.47','lon':'-81.877'},
  {'lat':'30.455','lon':'-87.1'},
  {'lat':'26.26','lon':'-80.085'},
  {'lat':'29.437','lon':'-83.293'},
  {'lat':'29.77','lon':'-85.085'},
  {'lat':'30.192','lon':'-81.692'},
  {'lat':'30.283','lon':'-81.387'},
  {'lat':'28.692','lon':'-82.638'},
  {'lat':'26.025','lon':'-81.768'},
  {'lat':'24.718','lon':'-81.017'},
  {'lat':'24.551','lon':'-81.808'},
  {'lat':'26.613','lon':'-80.047'},
  {'lat':'26.613','lon':'-80.034'},
  {'lat':'26.37','lon':'-80.07'},
  {'lat':'29.878','lon':'-84.595'},
  {'lat':'30.643','lon':'-81.523'},
  {'lat':'26.188','lon':'-80.093'},
  {'lat':'26.93','lon':'-82.137'},
  {'lat':'24.632','lon':'-82.92'},
  {'lat':'30.36','lon':'-81.62'},
  {'lat':'30.515','lon':'-87.162'},
  {'lat':'27.012','lon':'-82.41'},
  {'lat':'28.87','lon':'-82.723'},
  {'lat':'25.908','lon':'-81.728'},
  {'lat':'25.972','lon':'-81.728'},
  {'lat':'28.762','lon':'-82.638'},
  {'lat':'30.398','lon':'-81.428'},
  {'lat':'30.393','lon':'-81.432'},
  {'lat':'30.4','lon':'-81.413'},
  {'lat':'25.985','lon':'-81.702'},
  {'lat':'27.913','lon':'-82.425'},
  {'lat':'25.763','lon':'-80.13'},
  {'lat':'25.768','lon':'-80.132'},
  {'lat':'25.778','lon':'-80.185'},
  {'lat':'30.418','lon':'-87.357'},
  {'lat':'27.615','lon':'-82.727'},
  {'lat':'27.045','lon':'-82.293'},
  {'lat':'26.132','lon':'-81.808'},
  {'lat':'30.568','lon':'-81.515'},
  {'lat':'30.377','lon':'-86.865'},
  {'lat':'29.767','lon':'-84.7'},
  {'lat':'29.023','lon':'-80.918'},
  {'lat':'27.783','lon':'-82.407'},
  {'lat':'27.472','lon':'-80.325'},
  {'lat':'26.605','lon':'-82.218'},
  {'lat':'26.527','lon':'-80.053'},
  {'lat':'27.858','lon':'-82.553'},
  {'lat':'29.997','lon':'-85.37'},
  {'lat':'28.863','lon':'-82.667'},
  {'lat':'28.825','lon':'-82.658'},
  {'lat':'28.94','lon':'-80.87'},
  {'lat':'29.643','lon':'-81.632'},
  {'lat':'30.213','lon':'-85.878'},
  {'lat':'30.152','lon':'-85.7'},
  {'lat':'30.404','lon':'-87.211'},
  {'lat':'26.843','lon':'-80.067'},
  {'lat':'30.383','lon':'-81.637'},
  {'lat':'29.063','lon':'-80.915'},
  {'lat':'26.72','lon':'-82.258'},
  {'lat':'27.638','lon':'-82.563'},
  {'lat':'26.77','lon':'-80.052'},
  {'lat':'29.815','lon':'-85.313'},
  {'lat':'25.325','lon':'-80.293'},
  {'lat':'26.488','lon':'-82.013'},
  {'lat':'29.802','lon':'-81.548'},
  {'lat':'25.523','lon':'-80.175'},
  {'lat':'29.982','lon':'-81.634'},
  {'lat':'27.988','lon':'-82.685'},
  {'lat':'24.453','lon':'-81.878'},
  {'lat':'28.923','lon':'-82.692'},
  {'lat':'30.06','lon':'-84.29'},
  {'lat':'30.582','lon':'-87.015'},
  {'lat':'29.613','lon':'-84.958'},
  {'lat':'30.417','lon':'-81.453'},
  {'lat':'24.718','lon':'-81.922'},
  {'lat':'27.457','lon':'-80.323'},
  {'lat':'29.802','lon':'-84.737'},
  {'lat':'26.447','lon':'-80.065'},
  {'lat':'26.082','lon':'-80.117'},
  {'lat':'30.32','lon':'-81.659'},
  {'lat':'29.92','lon':'-83.672'},
  {'lat':'29.857','lon':'-81.263'},
  {'lat':'29.873','lon':'-85.39'},
  {'lat':'30.078','lon':'-84.178'},
  {'lat':'27.761','lon':'-82.627'},
  {'lat':'29.867','lon':'-81.307'},
  {'lat':'29.705','lon':'-81.228'},
  {'lat':'27.89','lon':'-82.48'},
  {'lat':'26.443','lon':'-82.082'},
  {'lat':'28.416','lon':'-80.593'},
  {'lat':'30.42','lon':'-81.728'},
  {'lat':'28.772','lon':'-82.695'},
  {'lat':'25.437','lon':'-80.33'},
  {'lat':'29.915','lon':'-84.512'},
  {'lat':'26.797','lon':'-82.183'},
  {'lat':'28.927','lon':'-80.825'},
  {'lat':'28.905','lon':'-82.638'},
  {'lat':'24.711','lon':'-81.107'},
  {'lat':'30.503','lon':'-86.493'},
  {'lat':'30.63','lon':'-81.577'},
  {'lat':'27.072','lon':'-82.453'},
  {'lat':'27.632','lon':'-80.372'},
  {'lat':'29.917','lon':'-81.3'},
  {'lat':'25.732','lon':'-80.162'},
  {'lat':'29.477','lon':'-81.675'},
  {'lat':'29.785','lon':'-84.898'},
  {'lat':'29.881','lon':'-85.221'},
  {'lat':'30.387','lon':'-86.992'},
  {'lat':'30.985','lon':'-81.592'},
  {'lat':'31.213','lon':'-81.55'},
  {'lat':'31.575','lon':'-81.19'},
  {'lat':'31.487','lon':'-81.32'},
  {'lat':'31.374','lon':'-81.3'},
  {'lat':'30.763','lon':'-81.472'},
  {'lat':'32.037','lon':'-80.902'},
  {'lat':'31.963','lon':'-80.943'},
  {'lat':'31.145','lon':'-81.497'},
  {'lat':'30.797','lon':'-81.515'},
  {'lat':'32.143','lon':'-81.142'},
  {'lat':'31.963','lon':'-81.012'},
  {'lat':'31.015','lon':'-81.456'},
  {'lat':'31.793','lon':'-81.182'},
  {'lat':'31.99','lon':'-81.023'},
  {'lat':'31.723','lon':'-81.142'},
  {'lat':'30.72','lon':'-81.548'},
  {'lat':'31.132','lon':'-81.397'},
  {'lat':'31.767','lon':'-81.278'},
  {'lat':'21.368','lon':'-157.94'},
  {'lat':'21.33','lon':'-157.967'},
  {'lat':'19.73','lon':'-155.06'},
  {'lat':'21.307','lon':'-157.867'},
  {'lat':'20.895','lon':'-156.477'},
  {'lat':'21.085','lon':'-157.032'},
  {'lat':'20.037','lon':'-155.829'},
  {'lat':'21.433','lon':'-157.79'},
  {'lat':'21.954','lon':'-159.356'},
  {'lat':'21.903','lon':'-159.592'},
  {'lat':'29.668','lon':'-91.238'},
  {'lat':'30.19','lon':'-93.301'},
  {'lat':'29.768','lon':'-93.343'},
  {'lat':'29.21','lon':'-90.04'},
  {'lat':'29.245','lon':'-90.662'},
  {'lat':'29.713','lon':'-91.88'},
  {'lat':'29.201','lon':'-89.04'},
  {'lat':'29.072','lon':'-90.64'},
  {'lat':'30.05','lon':'-90.368'},
  {'lat':'29.077','lon':'-90.285'},
  {'lat':'29.368','lon':'-91.384'},
  {'lat':'29.552','lon':'-92.305'},
  {'lat':'29.373','lon':'-90.265'},
  {'lat':'29.263','lon':'-89.957'},
  {'lat':'30.127','lon':'-89.222'},
  {'lat':'30.068','lon':'-90.39'},
  {'lat':'29.667','lon':'-90.112'},
  {'lat':'30.224','lon':'-93.222'},
  {'lat':'29.45','lon':'-91.338'},
  {'lat':'29.248','lon':'-90.212'},
  {'lat':'29.945','lon':'-89.835'},
  {'lat':'29.318','lon':'-89.98'},
  {'lat':'30.027','lon':'-90.113'},
  {'lat':'29.387','lon':'-89.38'},
  {'lat':'28.932','lon':'-89.408'},
  {'lat':'29.178','lon':'-89.258'},
  {'lat':'29.114','lon':'-90.199'},
  {'lat':'29.868','lon':'-89.673'},
  {'lat':'28.99','lon':'-89.14'},
  {'lat':'29.743','lon':'-91.23'},
  {'lat':'28.925','lon':'-89.418'},
  {'lat':'29.402','lon':'-90.038'},
  {'lat':'29.175','lon':'-90.976'},
  {'lat':'30.167','lon':'-89.737'},
  {'lat':'29.837','lon':'-91.838'},
  {'lat':'44.785','lon':'-68.767'},
  {'lat':'44.392','lon':'-68.204'},
  {'lat':'43.925','lon':'-69.815'},
  {'lat':'43.492','lon':'-70.447'},
  {'lat':'43.462','lon':'-70.382'},
  {'lat':'44.87','lon':'-67.108'},
  {'lat':'44.657','lon':'-67.205'},
  {'lat':'44.642','lon':'-67.297'},
  {'lat':'44.905','lon':'-66.983'},
  {'lat':'44.535','lon':'-68.422'},
  {'lat':'44.472','lon':'-68.813'},
  {'lat':'44.233','lon':'-69.767'},
  {'lat':'44.923','lon':'-67.13'},
  {'lat':'44.823','lon':'-67.152'},
  {'lat':'43.755','lon':'-69.785'},
  {'lat':'43.358','lon':'-70.477'},
  {'lat':'44.54','lon':'-67.875'},
  {'lat':'44.192','lon':'-68.621'},
  {'lat':'45.128','lon':'-67.145'},
  {'lat':'43.545','lon':'-70.333'},
  {'lat':'43.658','lon':'-70.244'},
  {'lat':'44.157','lon':'-68.887'},
  {'lat':'44.088','lon':'-69.798'},
  {'lat':'44.105','lon':'-69.102'},
  {'lat':'43.08','lon':'-70.742'},
  {'lat':'44.072','lon':'-69.182'},
  {'lat':'43.933','lon':'-69.58'},
  {'lat':'43.32','lon':'-70.563'},
  {'lat':'38.983','lon':'-76.482'},
  {'lat':'39.267','lon':'-76.579'},
  {'lat':'38.342','lon':'-76.265'},
  {'lat':'38.428','lon':'-76.237'},
  {'lat':'39.372','lon':'-76.063'},
  {'lat':'38.22','lon':'-76.039'},
  {'lat':'38.933','lon':'-76.938'},
  {'lat':'38.139','lon':'-75.184'},
  {'lat':'38.573','lon':'-76.062'},
  {'lat':'39.527','lon':'-75.81'},
  {'lat':'38.392','lon':'-76.398'},
  {'lat':'37.977','lon':'-75.863'},
  {'lat':'39.245','lon':'-75.925'},
  {'lat':'37.995','lon':'-76.032'},
  {'lat':'39.262','lon':'-76.585'},
  {'lat':'39.537','lon':'-76.09'},
  {'lat':'38.917','lon':'-75.945'},
  {'lat':'38.837','lon':'-76.373'},
  {'lat':'38.465','lon':'-76.473'},
  {'lat':'39.032','lon':'-76.302'},
  {'lat':'38.655','lon':'-76.683'},
  {'lat':'38.957','lon':'-76.355'},
  {'lat':'38.3','lon':'-76.005'},
  {'lat':'38.328','lon':'-75.091'},
  {'lat':'38.327','lon':'-75.083'},
  {'lat':'39.388','lon':'-76.255'},
  {'lat':'38.758','lon':'-76.375'},
  {'lat':'38.148','lon':'-75.285'},
  {'lat':'38.365','lon':'-75.607'},
  {'lat':'38.178','lon':'-75.397'},
  {'lat':'38.317','lon':'-76.451'},
  {'lat':'38.215','lon':'-75.192'},
  {'lat':'39.213','lon':'-76.245'},
  {'lat':'39.503','lon':'-75.917'},
  {'lat':'38.483','lon':'-75.818'},
  {'lat':'42.395','lon':'-71.077'},
  {'lat':'42.328','lon':'-70.892'},
  {'lat':'42.355','lon':'-71.053'},
  {'lat':'41.745','lon':'-70.593'},
  {'lat':'41.77','lon':'-70.562'},
  {'lat':'42.083','lon':'-70.647'},
  {'lat':'41.742','lon':'-70.617'},
  {'lat':'41.605','lon':'-70.652'},
  {'lat':'41.688','lon':'-69.951'},
  {'lat':'41.667','lon':'-69.967'},
  {'lat':'42.387','lon':'-71.023'},
  {'lat':'42.038','lon':'-70.67'},
  {'lat':'41.388','lon':'-70.512'},
  {'lat':'42.632','lon':'-70.777'},
  {'lat':'41.704','lon':'-71.164'},
  {'lat':'41.735','lon':'-70.623'},
  {'lat':'41.712','lon':'-70.715'},
  {'lat':'41.632','lon':'-70.3'},
  {'lat':'42.458','lon':'-70.943'},
  {'lat':'41.326','lon':'-70.59'},
  {'lat':'41.354','lon':'-70.768'},
  {'lat':'42.825','lon':'-70.988'},
  {'lat':'41.285','lon':'-70.096'},
  {'lat':'41.593','lon':'-70.9'},
  {'lat':'42.815','lon':'-70.873'},
  {'lat':'42.28','lon':'-70.953'},
  {'lat':'41.45','lon':'-70.922'},
  {'lat':'41.695','lon':'-70.72'},
  {'lat':'42.71','lon':'-70.789'},
  {'lat':'42.817','lon':'-70.82'},
  {'lat':'41.96','lon':'-70.662'},
  {'lat':'42.05','lon':'-70.182'},
  {'lat':'42.763','lon':'-71.077'},
  {'lat':'42.658','lon':'-70.615'},
  {'lat':'41.538','lon':'-70.928'},
  {'lat':'41.775','lon':'-70.535'},
  {'lat':'42.523','lon':'-70.877'},
  {'lat':'42.838','lon':'-70.908'},
  {'lat':'41.772','lon':'-70.507'},
  {'lat':'41.668','lon':'-70.057'},
  {'lat':'42.202','lon':'-70.727'},
  {'lat':'41.752','lon':'-70.155'},
  {'lat':'41.458','lon':'-70.6'},
  {'lat':'42.248','lon':'-70.967'},
  {'lat':'41.524','lon':'-70.671'},
  {'lat':'30.325','lon':'-89.325'},
  {'lat':'30.412','lon':'-88.903'},
  {'lat':'30.348','lon':'-88.506'},
  {'lat':'30.413','lon':'-88.403'},
  {'lat':'30.362','lon':'-88.663'},
  {'lat':'30.36','lon':'-89.082'},
  {'lat':'30.407','lon':'-89.027'},
  {'lat':'30.238','lon':'-88.667'},
  {'lat':'30.392','lon':'-88.798'},
  {'lat':'30.368','lon':'-88.563'},
  {'lat':'30.34','lon':'-88.533'},
  {'lat':'30.203','lon':'-88.442'},
  {'lat':'30.213','lon':'-88.972'},
  {'lat':'30.282','lon':'-89.367'},
  {'lat':'43.198','lon':'-70.868'},
  {'lat':'43.071','lon':'-70.711'},
  {'lat':'39.357','lon':'-74.418'},
  {'lat':'39.762','lon':'-74.112'},
  {'lat':'39.128','lon':'-74.892'},
  {'lat':'39.232','lon':'-75.033'},
  {'lat':'40.08','lon':'-74.873'},
  {'lat':'38.968','lon':'-74.96'},
  {'lat':'40.453','lon':'-74.273'},
  {'lat':'40.137','lon':'-74.737'},
  {'lat':'39.238','lon':'-75.175'},
  {'lat':'39.508','lon':'-74.325'},
  {'lat':'40.508','lon':'-74.312'},
  {'lat':'39.308','lon':'-74.533'},
  {'lat':'39.448','lon':'-74.728'},
  {'lat':'40.488','lon':'-74.435'},
  {'lat':'40.417','lon':'-74.363'},
  {'lat':'39.835','lon':'-75.238'},
  {'lat':'40.555','lon':'-74.245'},
  {'lat':'40.467','lon':'-74.009'},
  {'lat':'40.478','lon':'-74.357'},
  {'lat':'39.305','lon':'-75.375'},
  {'lat':'39.057','lon':'-74.765'},
  {'lat':'40.012','lon':'-75.043'},
  {'lat':'39.95','lon':'-74.198'},
  {'lat':'39.122','lon':'-74.717'},
  {'lat':'40.188','lon':'-74.755'},
  {'lat':'39.295','lon':'-74.748'},
  {'lat':'39.335','lon':'-74.477'},
  {'lat':'38.975','lon':'-74.823'},
  {'lat':'42.65','lon':'-73.747'},
  {'lat':'40.595','lon':'-73.743'},
  {'lat':'40.63','lon':'-73.67'},
  {'lat':'40.903','lon':'-73.55'},
  {'lat':'41.5','lon':'-73.983'},
  {'lat':'40.639','lon':'-74.146'},
  {'lat':'40.703','lon':'-73.995'},
  {'lat':'40.965','lon':'-73.043'},
  {'lat':'40.873','lon':'-73.47'},
  {'lat':'40.868','lon':'-73.933'},
  {'lat':'40.953','lon':'-73.4'},
  {'lat':'40.627','lon':'-73.26'},
  {'lat':'40.863','lon':'-73.655'},
  {'lat':'40.543','lon':'-74.14'},
  {'lat':'40.623','lon':'-73.502'},
  {'lat':'41.101','lon':'-72.361'},
  {'lat':'40.835','lon':'-73.652'},
  {'lat':'41.218','lon':'-73.963'},
  {'lat':'40.777','lon':'-73.942'},
  {'lat':'41.783','lon':'-73.95'},
  {'lat':'40.81','lon':'-73.765'},
  {'lat':'40.581','lon':'-73.934'},
  {'lat':'41.073','lon':'-71.935'},
  {'lat':'40.91','lon':'-73.432'},
  {'lat':'40.596','lon':'-73.655'},
  {'lat':'41.015','lon':'-72.562'},
  {'lat':'41.048','lon':'-71.959'},
  {'lat':'40.787','lon':'-72.75'},
  {'lat':'40.764','lon':'-72.756'},
  {'lat':'40.645','lon':'-73.837'},
  {'lat':'40.9','lon':'-73.353'},
  {'lat':'40.982','lon':'-72.645'},
  {'lat':'40.635','lon':'-73.747'},
  {'lat':'41.137','lon':'-72.307'},
  {'lat':'40.633','lon':'-73.617'},
  {'lat':'40.75','lon':'-73'},
  {'lat':'41.172','lon':'-72.205'},
  {'lat':'40.594','lon':'-73.584'},
  {'lat':'40.85','lon':'-72.503'},
  {'lat':'40.802','lon':'-73.907'},
  {'lat':'40.832','lon':'-73.703'},
  {'lat':'40.758','lon':'-73.958'},
  {'lat':'40.8','lon':'-73.928'},
  {'lat':'40.962','lon':'-73.672'},
  {'lat':'41.003','lon':'-72.297'},
  {'lat':'40.649','lon':'-73.151'},
  {'lat':'40.837','lon':'-72.48'},
  {'lat':'40.819','lon':'-72.587'},
  {'lat':'41.257','lon':'-72.03'},
  {'lat':'40.738','lon':'-72.868'},
  {'lat':'40.935','lon':'-72.582'},
  {'lat':'40.701','lon':'-74.014'},
  {'lat':'40.805','lon':'-73.795'},
  {'lat':'42.014','lon':'-73.939'},
  {'lat':'40.612','lon':'-74.06'},
  {'lat':'40.793','lon':'-73.782'},
  {'lat':'40.712','lon':'-73.968'},
  {'lat':'40.761','lon':'-73.85'},
  {'lat':'34.693','lon':'-76.712'},
  {'lat':'34.72','lon':'-76.67'},
  {'lat':'35.223','lon':'-75.635'},
  {'lat':'34.613','lon':'-76.538'},
  {'lat':'34.825','lon':'-76.69'},
  {'lat':'34.797','lon':'-76.455'},
  {'lat':'36.183','lon':'-75.747'},
  {'lat':'35.903','lon':'-75.77'},
  {'lat':'33.902','lon':'-78.082'},
  {'lat':'35.795','lon':'-75.548'},
  {'lat':'35.845','lon':'-75.655'},
  {'lat':'35.35','lon':'-75.512'},
  {'lat':'35.812','lon':'-75.7'},
  {'lat':'34.875','lon':'-76.343'},
  {'lat':'33.915','lon':'-78.018'},
  {'lat':'34.725','lon':'-76.803'},
  {'lat':'34.023','lon':'-77.947'},
  {'lat':'33.865','lon':'-78.507'},
  {'lat':'35.768','lon':'-75.527'},
  {'lat':'35.209','lon':'-75.704'},
  {'lat':'34.228','lon':'-77.954'},
  {'lat':'34.213','lon':'-77.787'},
  {'lat':'33.95','lon':'-77.952'},
  {'lat':'46.207','lon':'-123.768'},
  {'lat':'45.048','lon':'-124.007'},
  {'lat':'46.124','lon':'-123.804'},
  {'lat':'43.345','lon':'-124.322'},
  {'lat':'44.88','lon':'-123.964'},
  {'lat':'43.158','lon':'-124.182'},
  {'lat':'43.985','lon':'-124.045'},
  {'lat':'44.81','lon':'-124.058'},
  {'lat':'45.482','lon':'-123.902'},
  {'lat':'44.002','lon':'-124.123'},
  {'lat':'45.555','lon':'-123.919'},
  {'lat':'42.422','lon':'-124.419'},
  {'lat':'43.675','lon':'-124.192'},
  {'lat':'46.202','lon':'-123.945'},
  {'lat':'45.734','lon':'-123.876'},
  {'lat':'45.57','lon':'-123.965'},
  {'lat':'42.739','lon':'-124.498'},
  {'lat':'45.51','lon':'-122.673'},
  {'lat':'43.708','lon':'-124.098'},
  {'lat':'45.697','lon':'-122.868'},
  {'lat':'44.625','lon':'-124.045'},
  {'lat':'45.863','lon':'-122.796'},
  {'lat':'44.434','lon':'-124.058'},
  {'lat':'46.162','lon':'-123.409'},
  {'lat':'44.593','lon':'-124.008'},
  {'lat':'13.443','lon':'144.656'},
  {'lat':'7.447','lon':'151.847'},
  {'lat':'-17.535','lon':'-149.572'},
  {'lat':'16.738','lon':'-169.53'},
  {'lat':'8.732','lon':'167.736'},
  {'lat':'13.428','lon':'144.797'},
  {'lat':'-14.277','lon':'-170.689'},
  {'lat':'15.227','lon':'145.737'},
  {'lat':'28.212','lon':'-177.36'},
  {'lat':'-18.133','lon':'178.425'},
  {'lat':'19.291','lon':'166.618'},
  {'lat':'39.983','lon':'-75.075'},
  {'lat':'39.812','lon':'-75.409'},
  {'lat':'40.137','lon':'-74.752'},
  {'lat':'39.953','lon':'-75.138'},
  {'lat':'39.933','lon':'-75.142'},
  {'lat':'41.163','lon':'-71.61'},
  {'lat':'41.173','lon':'-71.557'},
  {'lat':'41.637','lon':'-71.255'},
  {'lat':'41.697','lon':'-71.293'},
  {'lat':'41.717','lon':'-71.343'},
  {'lat':'41.665','lon':'-71.445'},
  {'lat':'41.708','lon':'-71.242'},
  {'lat':'41.504','lon':'-71.326'},
  {'lat':'41.363','lon':'-71.49'},
  {'lat':'41.807','lon':'-71.401'},
  {'lat':'41.587','lon':'-71.41'},
  {'lat':'41.465','lon':'-71.193'},
  {'lat':'41.328','lon':'-71.762'},
  {'lat':'41.497','lon':'-71.387'},
  {'lat':'41.572','lon':'-71.445'},
  {'lat':'32.91','lon':'-79.952'},
  {'lat':'32.43','lon':'-80.675'},
  {'lat':'33.435','lon':'-79.127'},
  {'lat':'33.647','lon':'-79.095'},
  {'lat':'32.927','lon':'-79.83'},
  {'lat':'32.781','lon':'-79.924'},
  {'lat':'33.333','lon':'-79.193'},
  {'lat':'32.503','lon':'-80.784'},
  {'lat':'32.34','lon':'-80.465'},
  {'lat':'33.578','lon':'-79.003'},
  {'lat':'33.575','lon':'-78.997'},
  {'lat':'33.008','lon':'-79.923'},
  {'lat':'32.837','lon':'-80.022'},
  {'lat':'33.512','lon':'-79.068'},
  {'lat':'33.352','lon':'-79.187'},
  {'lat':'33.412','lon':'-79.135'},
  {'lat':'33.432','lon':'-79.117'},
  {'lat':'32.267','lon':'-80.737'},
  {'lat':'33.507','lon':'-79.145'},
  {'lat':'32.857','lon':'-79.707'},
  {'lat':'33.655','lon':'-78.918'},
  {'lat':'33.367','lon':'-79.255'},
  {'lat':'33.415','lon':'-79.25'},
  {'lat':'28.228','lon':'-96.795'},
  {'lat':'27.837','lon':'-97.039'},
  {'lat':'29.757','lon':'-95.09'},
  {'lat':'27.581','lon':'-97.216'},
  {'lat':'29.563','lon':'-95.067'},
  {'lat':'28.114','lon':'-97.024'},
  {'lat':'29.48','lon':'-94.918'},
  {'lat':'28.936','lon':'-95.294'},
  {'lat':'28.943','lon':'-95.303'},
  {'lat':'28.948','lon':'-95.308'},
  {'lat':'29.357','lon':'-94.725'},
  {'lat':'29.327','lon':'-94.693'},
  {'lat':'29.31','lon':'-94.793'},
  {'lat':'29.285','lon':'-94.789'},
  {'lat':'29.303','lon':'-94.897'},
  {'lat':'29.595','lon':'-94.39'},
  {'lat':'29.765','lon':'-95.079'},
  {'lat':'29.726','lon':'-95.266'},
  {'lat':'28.427','lon':'-96.33'},
  {'lat':'28.71','lon':'-95.914'},
  {'lat':'29.682','lon':'-94.985'},
  {'lat':'27.705','lon':'-97.28'},
  {'lat':'27.833','lon':'-97.486'},
  {'lat':'27.633','lon':'-97.237'},
  {'lat':'27.827','lon':'-97.05'},
  {'lat':'27.84','lon':'-97.073'},
  {'lat':'29.867','lon':'-93.931'},
  {'lat':'29.365','lon':'-94.78'},
  {'lat':'27.822','lon':'-97.203'},
  {'lat':'26.061','lon':'-97.216'},
  {'lat':'28.641','lon':'-96.61'},
  {'lat':'28.446','lon':'-96.396'},
  {'lat':'29.98','lon':'-93.882'},
  {'lat':'28.022','lon':'-97.047'},
  {'lat':'29.516','lon':'-94.511'},
  {'lat':'29.728','lon':'-93.87'},
  {'lat':'29.095','lon':'-95.113'},
  {'lat':'28.771','lon':'-95.617'},
  {'lat':'28.407','lon':'-96.712'},
  {'lat':'26.072','lon':'-97.167'},
  {'lat':'26.068','lon':'-97.157'},
  {'lat':'26.068','lon':'-97.155'},
  {'lat':'29.689','lon':'-93.842'},
  {'lat':'29.68','lon':'-94.868'},
  {'lat':'27.812','lon':'-97.39'},
  {'lat':'37.033','lon':'-76.083'},
  {'lat':'36.967','lon':'-76.113'},
  {'lat':'37.907','lon':'-75.405'},
  {'lat':'37.932','lon':'-75.383'},
  {'lat':'38.252','lon':'-76.96'},
  {'lat':'38.32','lon':'-77.037'},
  {'lat':'37.138','lon':'-76.623'},
  {'lat':'37.557','lon':'-75.917'},
  {'lat':'37.247','lon':'-76.5'},
  {'lat':'37.313','lon':'-77.27'},
  {'lat':'37.22','lon':'-76.791'},
  {'lat':'37.982','lon':'-75.302'},
  {'lat':'37.22','lon':'-76.663'},
  {'lat':'37.165','lon':'-75.988'},
  {'lat':'36.884','lon':'-76.276'},
  {'lat':'37.403','lon':'-76.912'},
  {'lat':'37.583','lon':'-76.99'},
  {'lat':'37.995','lon':'-76.465'},
  {'lat':'36.778','lon':'-76.302'},
  {'lat':'36.822','lon':'-76.293'},
  {'lat':'37.267','lon':'-77.372'},
  {'lat':'38.213','lon':'-77.243'},
  {'lat':'37.538','lon':'-76.015'},
  {'lat':'37.46','lon':'-77.421'},
  {'lat':'37.525','lon':'-77.42'},
  {'lat':'36.832','lon':'-75.973'},
  {'lat':'37.922','lon':'-75.728'},
  {'lat':'37.185','lon':'-76.783'},
  {'lat':'36.947','lon':'-76.33'},
  {'lat':'37.828','lon':'-75.993'},
  {'lat':'37.24','lon':'-76.943'},
  {'lat':'37.608','lon':'-75.686'},
  {'lat':'37.873','lon':'-76.783'},
  {'lat':'36.823','lon':'-76.399'},
  {'lat':'37.315','lon':'-77.098'},
  {'lat':'37.616','lon':'-76.29'},
  {'lat':'37.227','lon':'-76.479'},
  {'lat':'46.968','lon':'-123.853'},
  {'lat':'48.535','lon':'-122.797'},
  {'lat':'47.748','lon':'-122.727'},
  {'lat':'46.152','lon':'-123.039'},
  {'lat':'45.62','lon':'-122.02'},
  {'lat':'48.992','lon':'-122.765'},
  {'lat':'48.415','lon':'-122.652'},
  {'lat':'47.562','lon':'-122.623'},
  {'lat':'47.098','lon':'-122.895'},
  {'lat':'46.3','lon':'-124'},
  {'lat':'46.152','lon':'-123.29'},
  {'lat':'48.863','lon':'-122.758'},
  {'lat':'47.98','lon':'-122.223'},
  {'lat':'47.927','lon':'-122.617'},
  {'lat':'48.545','lon':'-123.013'},
  {'lat':'48.105','lon':'-122.57'},
  {'lat':'46.372','lon':'-123.95'},
  {'lat':'48.582','lon':'-123.17'},
  {'lat':'48.187','lon':'-124.063'},
  {'lat':'48.485','lon':'-123.083'},
  {'lat':'45.742','lon':'-122.755'},
  {'lat':'47.913','lon':'-124.637'},
  {'lat':'46.106','lon':'-122.954'},
  {'lat':'48.343','lon':'-122.686'},
  {'lat':'48.37','lon':'-124.602'},
  {'lat':'48.975','lon':'-123.083'},
  {'lat':'48.125','lon':'-123.44'},
  {'lat':'48.113','lon':'-122.76'},
  {'lat':'48.035','lon':'-122.227'},
  {'lat':'48.447','lon':'-122.9'},
  {'lat':'48.647','lon':'-122.87'},
  {'lat':'47.153','lon':'-122.675'},
  {'lat':'47.602','lon':'-122.339'},
  {'lat':'48.263','lon':'-124.297'},
  {'lat':'46.27','lon':'-123.457'},
  {'lat':'48.4','lon':'-122.548'},
  {'lat':'46.663','lon':'-123.798'},
  {'lat':'48.088','lon':'-122.322'},
  {'lat':'48.458','lon':'-122.513'},
  {'lat':'47.27','lon':'-122.413'},
  {'lat':'48.443','lon':'-122.805'},
  {'lat':'45.987','lon':'-122.837'},
  {'lat':'46.708','lon':'-123.967'},
  {'lat':'48.171','lon':'-124.737'},
  {'lat':'48.065','lon':'-122.288'},
  {'lat':'48.107','lon':'-122.347'},
  {'lat':'48.445','lon':'-122.555'},
  {'lat':'47.358','lon':'-123.098'},
  {'lat':'48.572','lon':'-122.885'},
  {'lat':'45.632','lon':'-122.697'},
  {'lat':'48.717','lon':'-122.708'},
  {'lat':'48.687','lon':'-123.038'},
  {'lat':'45.578','lon':'-122.382'},
  {'lat':'47.378','lon':'-122.634'},
  {'lat':'46.904','lon':'-124.105'},
  {'lat':'47.18','lon':'-122.675'}
]

// function to find distance between two sets of coordinates
function distance(lat1, lon1, lat2, lon2, unit) {
	if ((lat1 == lat2) && (lon1 == lon2)) {
		return 0;
	}
	else {
		var radlat1 = Math.PI * lat1/180;
		var radlat2 = Math.PI * lat2/180;
		var theta = lon1-lon2;
		var radtheta = Math.PI * theta/180;
		var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
		if (dist > 1) {
			dist = 1;
		}
		dist = Math.acos(dist);
		dist = dist * 180/Math.PI;
		dist = dist * 60 * 1.1515;
		if (unit=="K") { dist = dist * 1.609344 }
		if (unit=="N") { dist = dist * 0.8684 }
		return dist;
	}
}

function findStationClosestToUser(userCoordinates) {
    const userLat = userCoordinates.lat
        const userLon = userCoordinates.lon

        //unsorted list of distances b/w user location and station locations
        const unsorted_distances = []

        // loop through all station coordinates and calc the distance between the user's inputted location each station
        for (index = 0; index < allStationCoordinates.length; index++) {
            var milesFromInputtedLocation = distance(userLat, userLon, allStationCoordinates[index].lat, allStationCoordinates[index].lon);
            unsorted_distances.push(milesFromInputtedLocation);
        };

        // sort distances from location to station
        const sorted_distances = unsorted_distances.slice(0).sort(function(a, b){return a-b});

        // get the index of the closest station 
        const closest_station_index = unsorted_distances.indexOf(sorted_distances[0]);

        // use index to find closest station from the list of all station coordinates
        const closest_station = allStationCoordinates[closest_station_index];
        
        const stationCoordinates = {
            'lat': closest_station.lat,
            'lon': closest_station.lon
        }
        
        return new Promise ( (resolve, reject) => {
          if (stationCoordinates) {
            resolve(stationCoordinates)
          } else {
            reject('Couldn\'t find a station near the user')
          }
        })
}

let port = process.env.PORT;
if (port == null || port == "") {
  port = 8000;
}
app.listen(port, () => console.log(`tides-vis app running on port:${port}\nNODE_ENV=${process.env.NODE_ENV}`));