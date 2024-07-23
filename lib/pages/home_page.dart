import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/widget/AdditionalInfo_card.dart';
import 'package:weather_app/widget/Forecast_card.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

      appBar: AppBar(
        
        centerTitle: true,
      title: const Text('Weather App',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      
      actions:  [
        IconButton(onPressed: (){},  icon: const Icon(Icons.refresh)),
      ],

      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  // card for creating temp
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // inside Card
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('300° K',style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              ),
                              SizedBox(height: 10,),
                              Icon(Icons.cloud,size: 53,),
                              SizedBox(height: 10,),
                              Text('Rain',style: TextStyle(
                                fontSize: 18,
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          
                const SizedBox(height: 20,),
          
          
             // listView for forecast
            const Text('Weather Forecast',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
            ),
            ),
             const SizedBox(height: 10,),
            //  card for forecast
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ForecastItem(time: '0.00',icon: Icons.cloud,value: '300.52',),
                  ForecastItem(time: '0.00',icon: Icons.sunny,value: '300.52',),
                  ForecastItem(time: '0.00',icon: Icons.thunderstorm,value: '300.52',),
                  ForecastItem(time: '0.00',icon: Icons.sunny,value: '300.52',),
                  ForecastItem(time: '0.00',icon: Icons.cloudy_snowing,value: '300.52',),

                ],
              ),
            ),


            const SizedBox(height: 20,),

                  // extra info 
            const Text('Additional Information',style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 22,
            ),
            ),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            // card for humidity
                AdditionalInfoCard(icon: Icons.water_drop,label: 'Humidity',value: '91',),
            // card for wind speed
                AdditionalInfoCard(icon: Icons.wind_power,label: 'Wind Speed',value: '7.67',),
              //  card for pressure
                AdditionalInfoCard(icon: Icons.beach_access,label: 'Pressure',value: '1006',),
               

              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}


