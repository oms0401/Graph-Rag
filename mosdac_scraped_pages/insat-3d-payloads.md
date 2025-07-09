# INSAT-3D Payloads
The satellite has 3 payloads:
  * Meteorological (MET) - IMAGER and SOUNDER
  * Data Relay Transponder (DRT)
  * Satellite Aided Search and Rescue (SAS&R)


Meteorological Payload
The INSAT-3D spacecraft incorporates advanced Imager and Sounder instruments.
**IMAGER**
The INSAT-3D imager provides imaging capability of the earth disc from geostationary altitude in one visible (0.52 - 0.72 micrometers) and five infrared; 1.55 - 1.70(SWIR), 3.80 - 4.00(MIR), 6.50 - 7.00 (water vapour), 10.2 - 11.2 (TIR-1) and 11.5 - 12.5 (TIR-2) bands. The ground resolution at the sub-satellite point is nominally 1km x 1km for visible and SWIR bands, 4km x 4km for one MIR and both TIR bands and 8km x 8km for WV band.
The Imager is an improved design of VHRR/2 (Very High Resolution Radiometer) heritage instrument flown on the Kalpana-1 and INSAT-3A missions. The instrument features 6 spectral bands (against the 3 bands in previous versions) offering an improved 1 km resolution in the visible band for the monitoring of meso scale phenomena and severe local storms. The two new SWIR and MWIR bands with a resolution of 1 km and 4 km, respectively, will enable better land-cloud discrimination and detection of surface features like snow. One more significant improvement is the split-band TIR channel with two separate windows in 10.2-11.2 and 11.5-12.5 Micrometer regions with a 4 km resolution.
This new element enables the extraction of sea surface temperature over the Indian region with a far greater accuracy since the dual-window algorithm can be applied to eliminate the atmospheric attenuation effects. The 1 km resolution of the visible channel and 4 km resolution of the thermal IR channels indirectly improve the accuracy of the derived products like outgoing longwave radiation and cloud motion vectors.
Key Parameters of the Imager
Telescope aperture | 310 mm diameter  
---|---  
Number of bands (6) | 0.52 - 0.72 µm, VIS (Visible) 1.55 - 1.70 µm, SWIR (Short Wave Infrared) 3.80 - 4.00 µm, MWIR (Mid Wave Infrared) 6.50 - 7.00 µm, WV (Water Vapor) 10.2 - 11.2 µm, TIR-1 (Thermal Infrared) 11.5 - 12.5 µm, TIR-2 (Thermal Infrared)  
Spatial resolution | 1 km for VIS and SWIR 4 km for MWIR 8 km for WV 4 km for TIR-1 and TIR-2  
Band separation, band definition | Beam splitter, interference filters  
IFOV (Instantaneous Field of View) | 28 µrad for VIS and SWIR (1 km) 112 µrad for MWIR, TIR-1, & TIR-2 (4 km) 224 µrad for WV (8 km)  
Sampling interval | 1.75 samples / IFOV for VIS, SWIR,MIR & TIR-1 / -2 3.5 samples / IFOV for WV  
Scan step angle | Linear in E-W direction (8 µR step size) Line step 224 µrad in N-S direction  
Scan rate Scan linearity Inflight calibration | 200º/s +0.2 s turnaround time 56 µR (peak to peak) Full aperture blackbody and spaceview  
Scan modes | Full, normal and programmable sector for quick repetivity  
Frame time | 25 minutes for normal mode  
Signal quantization | 10 bit/sample  
Downlink data rate | 4.0 Mbit/s  
**SOUNDER**
The INSAT-3D sounder has 18 infrared channels distributed over longwave and shortwave bands. A visible channel provides synoptic view of the clouds and the earth to aid in generating three dimensional map of temperature and moisture structure of the atmosphere.
The Sounder is a first time instrument of the geostationary INSAT series designed and developed at ISRO. The overall objective is to measure the temperature and humidity profiles (vertical distributions) to obtain a three-dimensional representation of the atmosphere. The instrument requirements call for soundings at 10 km ground resolution every 3 hours for a full frame scan. This enables the derivation of vertical profiles of temperature and humidity. These vertical profiles can then be used to derive various atmospheric stability indices and other parameters such as atmospheric water vapor content and total column ozone amount.
Key Parameters of the sounder  
---  
| Telescope aperture | 310 mm diameter  
---|---  
Number of bands (6) | 18 Infrared + 1 Visible  
Band definition | Filter wheel with interference filters  
IFOV (Instantaneous Field of View) | 280 µrad x 280 rad, corresponding to 10 km x 10 km on the surface  
Sampling interval | 280 µrad E-W / N-S  
No of simultaneous soundings | 4 per band  
Scan step angle | 10 km E-W, every 0.1 s, and 40 km N-S after completion of E-W scan, 150 µR rms  
Step and dwell time | 0.1, 0.2 and 0.4 s  
Turnaround time | 0.1 s per scan  
In-flight calibration | Full aperture blackbody and space view  
Scan modes | Options provided to cater to quick dynamic environmental phenomena  
Frame time | 160 minutes for 6000 km x 6000 km area sounding  
Signal quantization | 13 bit/sample  
Downlink data rate | 40 kbit/s  
Frame time | 90 kg, (without cooler), 100 W  
Spectral parameters and sensitivity of the sounder  
| Band No. | Center wavelength µm (cm-1) | Bandwidth µm (cm-1) | NEDT at 300 K (typical) K  
---|---|---|---  
1 | 14.71 (680) | 0.281 (13) | 1.5  
2 | 14.37 (696) | 0.268 (13) | 1  
3 | 14.06 (711) | 0.256 (13) | 0.5  
4 | 13.96 (733) | 0.298 (16) | 0.5  
5 | 13.37 (749) | 0.286 (16) | 0.5  
6 | 12.66 (790) | 0.481 (30) | 0.3  
7 | 12.02 (832) | 0.723 (50) | 0.15  
8 | 11.03 (907) | 0.608 (50) | 0.15  
9 | 9.71 (1030) | 0.235 (25) | 0.2  
10 | 7.43 (1425) | 0.304 (55) | 0.2  
11 | 7.02 (1425) | 0.394 (80) | 0.2  
12 | 6.51 (1535) | 0.255 (60) | 0.2  
13 | 4.57 (2188) | 0.048 (23) | 0.2  
14 | 4.52 (2210) | 0.047 (23) | 0.15  
15 | 4.45 (2245) | 0.045 (23) | 0.15  
16 | 4.13 (2420) | 0.0683 (40) | 0.15  
17 | 3.98 (2513) | 0.0683 (40) | 0.15  
18 | 3.74 (2671) | 0.140 (100) | 0.15  
19 | 0.695 (14367) 0.05 (1000) (0.67-0.72) |  | 0.1% albedo  
Communication Payload
Communication transponders are required to be configured to provide continuity of some of the INSAT services. A total satellite mass of 2000kg is considered for the launch compatibility, and 70 kg (approximately) of mass apportionment is done for the communication payload components. The communication payload components are - Meteorological Transmitter, Data Relay Transponder, Satellite Aided Search and Rescue (SAS&R) Transponder & S-band Broadcast Satellite Services Transponder.