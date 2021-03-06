--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-06-23 10:38:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 30324)
-- Name: station_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.station_metadata (
    station_id character(7) NOT NULL,
    station_name character(66),
    lat character(8),
    lon character(8),
    has_predictions character(1),
    tidal_range character(8),
    max_level character(8),
    min_level character(8),
    range_size character(2)
);


ALTER TABLE public.station_metadata OWNER TO postgres;

--
-- TOC entry 2812 (class 0 OID 30324)
-- Dependencies: 202
-- Data for Name: station_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.station_metadata (station_id, station_name, lat, lon, has_predictions, tidal_range, max_level, min_level, range_size) FROM stdin;
8730667	Alabama Point, AL                                                 	30.279  	-87.555 	1	1.636   	4.019   	2.383   	S 
8739803	Bayou La Batre Bridge, AL                                         	30.406  	-88.248 	1	3.209   	29.127  	25.918  	S 
8731952	BON SECOUR, AL                                                    	30.303  	-87.735 	0	\N	\N	\N	\N
8737138	Chickasaw Creek, AL                                               	30.782  	-88.074 	1	2.789   	26.83   	24.041  	S 
8736897	Coast Guard Sector Mobile, AL                                     	30.648  	-88.058 	1	2.467   	30.734  	28.267  	S 
8735184	DAUPHIN ISLAND (TEMP), AL                                         	30.252  	-88.080 	0	\N	\N	\N	\N
8735181	Dauphin Island Hydro, AL                                          	30.251  	-88.079 	1	2.74    	4.788   	2.048   	S 
8735180	Dauphin Island, AL                                                	30.250  	-88.075 	1	2.739   	4.758   	2.019   	S 
8735391	Dog River Bridge, AL                                              	30.565  	-88.088 	1	3.11    	31.26   	28.15   	S 
8735523	East Fowl River Bridge, AL                                        	30.444  	-88.114 	1	2.931   	15.63   	12.699  	S 
8731439	Gulf Shores, ICWW, AL                                             	30.280  	-87.684 	1	2.368   	29.947  	27.579  	S 
8731269	GULF SHORES, AL                                                   	30.248  	-87.668 	0	\N	\N	\N	\N
8737373	Lower Bryant Landing, AL                                          	30.978  	-87.873 	1	3.011   	22.485  	19.474  	S 
8733839	Meaher State Park, Mobile Bay, AL                                 	30.667  	-87.936 	1	2.97    	31.839  	28.869  	S 
8737048	Mobile State Docks, AL                                            	30.705  	-88.040 	1	3.113   	3.612   	0.499   	S 
8735587	NORTH POINT, DAUPHIN ISLAND, AL                                   	30.258  	-88.113 	0	\N	\N	\N	\N
8730849	PETERSON POINT, WOLF BAY, AL                                      	30.355  	-87.600 	0	\N	\N	\N	\N
8733821	Point Clear, Mobile Bay, AL                                       	30.487  	-87.935 	1	2.999   	30.403  	27.404  	S 
8732828	Weeks Bay, Mobile Bay, AL                                         	30.417  	-87.825 	1	2.778   	32.308  	29.53   	S 
8738043	West Fowl River Bridge, AL                                        	30.377  	-88.159 	1	3.015   	21.791  	18.776  	S 
9461380	Adak Island, AK                                                   	51.863  	-176.632	1	6.632   	7.942   	1.31    	S 
9455120	AGNES COVE,                                                       	59.773  	-149.588	1	16.892  	10.937  	-5.955  	L 
9456901	AGUCHIK ISLAND, KUKAK BAY,                                        	58.290  	-154.270	1	21.556  	16.252  	-5.304  	L 
9455145	AIALIK BAY, NORTH END,                                            	59.953  	-149.715	1	16.804  	55.097  	38.293  	L 
9455146	AIALIK SILL, AIALIK BAY,                                          	59.885  	-149.718	1	16.525  	43.914  	27.389  	L 
9468283	Akeftapak, St. Lawrence Island, AK                                	63.719  	-171.645	0	\N	\N	\N	\N
9462719	Akun Cove, Akun Island, AK                                        	54.233  	-165.533	1	5.506   	7.228   	1.722   	S 
9462694	Akutan, Alaska, AK                                                	54.133  	-165.800	1	6.14    	42.714  	36.574  	S 
9457804	Alitak,                                                           	56.897  	-154.248	1	18.502  	20.72   	2.218   	L 
9455606	Anchor Point, Cook Inlet,                                         	59.772  	-151.867	1	28.674  	47.449  	18.775  	XL
9451317	Anchor Point,                                                     	56.638  	-132.927	1	24.264  	22.102  	-2.162  	XL
9455921	ANCHORAGE (BACKUP ADR),                                           	61.238  	-149.888	0	\N	\N	\N	\N
9455920	Anchorage, AK                                                     	61.238  	-149.890	1	38.048  	39.905  	1.857   	XL
9452141	ANNEX CREEK ENTRANCE,                                             	58.317  	-134.100	0	\N	\N	\N	\N
9454794	Applegate Island,                                                 	60.623  	-148.165	0	\N	\N	\N	\N
9461710	Atka,                                                             	52.232  	-174.173	1	6.127   	31.556  	25.429  	S 
9454755	Bainbridge Point,                                                 	60.197  	-148.042	0	\N	\N	\N	\N
9451625	Baranof, Warm Spring Bay,                                         	57.088  	-134.825	1	21.127  	22.104  	0.977   	L 
9452318	Barlow Cove,                                                      	58.322  	-134.878	0	\N	\N	\N	\N
9494935	Barrow Offshore,                                                  	71.360  	-156.730	1	1.708   	148.728 	147.02  	S 
9499176	Barter Island, AK                                                 	70.129  	-143.611	1	0.846   	2.822   	1.976   	S 
9455128	BEAR COVE, AIALIK PENINSULA, KENAI PENIN,                         	59.802  	-149.615	0	\N	\N	\N	\N
9455595	Bear Cove, Kachemak Bay,                                          	59.725  	-151.023	1	29.839  	10.296  	-19.543 	XL
9450906	BECK ISLAND, CLARENCE STRAIT,                                     	56.047  	-132.862	0	\N	\N	\N	\N
9451287	Beecher Pass,                                                     	56.595  	-132.987	1	23.704  	14.608  	-9.096  	XL
9466477	Bethel, Kuskokwim River, AK, AK                                   	60.800  	-161.750	1	5.34    	8.752   	3.412   	S 
9450623	Big Salt Lake,                                                    	55.600  	-132.950	0	\N	\N	\N	\N
9462645	Biorka Village, Biverly Inlet,                                    	53.829  	-166.216	1	8.053   	8.3     	0.247   	M 
9459251	Bird Island, Shumagin Bank, AK                                    	54.835  	-159.760	1	11.511  	10.391  	-1.12   	M 
9465182	BLACK ROCK, WALRUS IS BRISTOL B,                                  	58.708  	-160.188	0	\N	\N	\N	\N
9454907	BLACKSTONE BAY, PR. WILLIAM SOUND,                                	60.765  	-148.523	0	\N	\N	\N	\N
9450973	Blashke Island,                                                   	56.127  	-132.895	0	\N	\N	\N	\N
9454381	BLIGH ISLAND, T-16,                                               	60.807  	-146.798	0	\N	\N	\N	\N
9454818	BLUE FjORD, PORT NELLIE JUAN,                                     	60.492  	-148.242	0	\N	\N	\N	\N
9452378	Boat Harbor,                                                      	58.628  	-135.165	0	\N	\N	\N	\N
9455777	BOULDER POINT, AK                                                 	60.777  	-151.245	0	\N	\N	\N	\N
9451012	Bradfield Canal, AK                                               	56.183  	-131.572	1	25.298  	15.663  	-9.635  	XL
9462676	Broad Bight, AK                                                   	54.065  	-165.937	1	8.868   	17.487  	8.619   	M 
9450949	BURNETTE INLET, ETOLIN ISLAND,                                    	56.073  	-132.478	0	\N	\N	\N	\N
9450914	Burrough Bay, Behm Canal,                                         	56.038  	-131.095	1	24.467  	13.87   	-10.597 	XL
9454374	Busby Island,                                                     	60.898  	-146.782	0	\N	\N	\N	\N
9451074	BUSHY ISLAND, SNOW PASSAGE,                                       	56.277  	-132.985	1	22.681  	13.18   	-9.501  	XL
9455151	CAMP COVE, HARRIS PENNINSULA,                                     	59.693  	-149.748	1	16.953  	19.694  	2.741   	L 
9451781	CANNERY COVE, PYBUS BAY,                                          	57.307  	-134.133	0	\N	\N	\N	\N
9462941	Cape Chunak, AK, AK                                               	55.064  	-163.534	1	11.565  	144.924 	133.359 	M 
9464961	CAPE CONSTANTINE, NUSHAGAK PENINSULA,                             	58.522  	-159.152	1	17.604  	16.225  	-1.379  	L 
9465988	Cape Corwin GPS Tide Buoy, AK                                     	60.005  	-165.591	0	\N	\N	\N	\N
9490096	Cape Espenberg, Kotzebue Sound, AK                                	66.586  	-164.251	1	1.427   	154.032 	152.605 	S 
9454329	Cape Hichinbrook,                                                 	60.238  	-146.648	0	\N	\N	\N	\N
9455711	Cape Kasilof,                                                     	60.337  	-151.380	1	32.222  	18.363  	-13.859 	XL
9490571	Cape Krusenstern, AK                                              	67.054  	-163.321	1	0.783   	40.687  	39.904  	S 
9465137	CAPE PEIRCE, WEST SIDE,                                           	58.627  	-161.837	0	\N	\N	\N	\N
9462787	Cape Sarichef, Unimak Island,                                     	54.600  	-164.928	1	7.504   	9.682   	2.178   	S 
9465601	Carter Bay, Kuskokwim Bay, AK                                     	59.378  	-162.029	1	14.988  	25.461  	10.473  	L 
9458907	Castle Bay,                                                       	56.232  	-158.347	1	14.154  	34.193  	20.039  	M 
9458849	Chankliut Island,                                                 	56.147  	-158.107	0	\N	\N	\N	\N
9454777	CHENEGA ISLAND (S.W. END),                                        	60.283  	-148.113	0	\N	\N	\N	\N
9458945	CHIGNIK LAGOON MAIN CHANNEL,                                      	56.323  	-158.515	0	\N	\N	\N	\N
9458917	CHIGNIK, ANCHORAGE BAY,                                           	56.297  	-158.400	0	\N	\N	\N	\N
9452421	CHILKAT INLET,                                                    	59.170  	-135.400	1	24.62   	14.917  	-9.703  	XL
9455735	CHINULNA POINT, COOK INLET,                                       	60.503  	-151.283	1	32.111  	20.525  	-11.586 	XL
9458293	Chirikof Island, AK                                               	55.808  	-155.740	1	13.344  	133.165 	119.821 	M 
9458519	Chowiet island,                                                   	56.052  	-156.698	1	13.942  	17.601  	3.659   	M 
9465261	CLARKS POINT, NUSHAGAK BAY,                                       	58.848  	-158.552	1	27.901  	30.496  	2.595   	XL
9455558	COAL POINT,                                                       	59.601  	-151.411	1	29.479  	25.965  	-3.514  	XL
9454851	COCHRANE BAY, PR. WILLIAM SOUND,                                  	60.663  	-148.357	0	\N	\N	\N	\N
9459949	Cold Bay, AK                                                      	55.208  	-162.698	1	11.869  	10.198  	-1.671  	M 
9454460	Columbia Glacier,                                                 	61.023  	-147.085	0	\N	\N	\N	\N
9452682	Composite Island, Glacier Bay,                                    	58.888  	-136.573	0	\N	\N	\N	\N
9454050	Cordova, AK                                                       	60.558  	-145.755	1	19.581  	22.318  	2.737   	L 
9451335	COSMOS POINT,                                                     	56.663  	-132.617	0	\N	\N	\N	\N
9452346	Cove Point, AK                                                    	58.752  	-135.028	0	\N	\N	\N	\N
9450551	CRAIG,                                                            	55.488  	-133.142	1	15.262  	17.791  	2.529   	L 
9455159	CRATER BAY, HARRIS BAY,                                           	59.713  	-149.787	1	17.026  	20.458  	3.432   	L 
9452082	CRIB POINT, PORT SNETTISHAM, STEPHENS PA,                         	58.097  	-133.742	0	\N	\N	\N	\N
9450296	Custom House Cove, Mary Island,                                   	55.100  	-131.217	1	22.993  	15.344  	-7.649  	XL
9466931	Dall Point, AK                                                    	61.532  	-166.148	1	7.172   	47.228  	40.056  	S 
9469751	Deering, AK                                                       	66.097  	-162.740	1	2.606   	18.501  	15.895  	S 
9453196	DISENCHANTMENT BAY,                                               	60.047  	-139.555	0	\N	\N	\N	\N
9459758	Dolgoi Harbor, Dolgoi Island,                                     	55.122  	-161.792	1	10.607  	28.734  	18.127  	M 
9451376	Dorothy Cove,                                                     	56.722  	-135.075	0	\N	\N	\N	\N
9457393	Dovolno Point, Kizhuyak Bay,                                      	57.739  	-152.875	0	\N	\N	\N	\N
9450998	Dry Pass, EL Capitan Passage,                                     	56.163  	-133.413	1	18.34   	19.355  	1.015   	L 
9450286	Dunbar Inlet GPS Tide Buoy, AK                                    	55.088  	-132.816	0	\N	\N	\N	\N
9466012	Eastern Nunivak Island, AK                                        	60.043  	-165.681	0	\N	\N	\N	\N
9450997	EL Capitan Passage,                                               	56.163  	-133.330	1	17.44   	18.409  	0.969   	L 
9452635	ELFIN COVE, PORT ALTHORP (BACKUP),                                	58.193  	-136.343	0	\N	\N	\N	\N
9452634	Elfin Cove,                                                       	58.195  	-136.347	1	16.93   	23.466  	6.536   	L 
9468863	ELIM, NORTON BAY,                                                 	64.617  	-162.248	0	\N	\N	\N	\N
9451706	ELIZA HARBOR, FREDERICK SOUND,                                    	57.188  	-134.287	0	\N	\N	\N	\N
9451438	Entrance Island,                                                  	56.812  	-133.787	1	21.65   	14.521  	-7.129  	L 
9450251	Entrance to Windy Cove, AK                                        	55.035  	-133.024	0	\N	\N	\N	\N
9454757	ESHAMY LAGOON, KNIGHT ISLAND PASSAGE, AK                          	60.462  	-148.045	0	\N	\N	\N	\N
9452437	EXCURSION INLET (SOUTH END),                                      	58.417  	-135.447	0	\N	\N	\N	\N
9452328	False Bay, Chatham Strait,                                        	57.967  	-134.935	1	23.158  	19.426  	-3.732  	XL
9462955	False Pass, Unimak Island,                                        	54.858  	-163.407	1	7.165   	8.111   	0.946   	S 
9455914	FIRE ISLAND (BACKUP),                                             	61.173  	-150.205	0	\N	\N	\N	\N
9455912	Fire Island, Cook Inlet, AK                                       	61.173  	-150.213	1	38.659  	36.624  	-2.035  	XL
9498381	FLAXMAN ISLAND, ARCTIC, AK                                        	70.185  	-146.050	0	\N	\N	\N	\N
9452321	FUNTER, MANSFIELD PENINSULA,                                      	58.255  	-134.895	0	\N	\N	\N	\N
9457726	Geese Island GPS Tide Buoy, AK                                    	56.595  	-153.996	0	\N	\N	\N	\N
9451421	Golf Island,                                                      	56.787  	-135.393	1	14.576  	12.549  	-2.027  	M 
9469833	Goodhope Bay,                                                     	66.230  	-163.904	1	2.551   	39.255  	36.704  	S 
9455963	Goose Creek, Cook Inlet, AK                                       	61.393  	-149.847	1	43.916  	10.265  	-33.651 	XL
9454807	GRANITE MINE (BACKUP),                                            	60.950  	-148.212	0	\N	\N	\N	\N
9454806	GRANITE MINE,                                                     	60.950  	-148.212	0	\N	\N	\N	\N
9454153	GRAVINA RIVER,                                                    	60.768  	-146.078	0	\N	\N	\N	\N
9462705	Green Bight, AK                                                   	54.110  	-165.661	1	8.351   	140.58  	132.229 	M 
9454751	Guguak,                                                           	60.100  	-148.038	1	18.608  	14.773  	-3.835  	L 
9454824	HARRIMAN FIORD,                                                   	61.035  	-148.313	0	\N	\N	\N	\N
9452294	Hawk Inlet,                                                       	58.085  	-134.777	1	23.01   	15.784  	-7.226  	XL
9452292	HAWK INLET,                                                       	58.127  	-134.758	0	\N	\N	\N	\N
9466153	Helmick Point,                                                    	60.270  	-162.410	1	13.628  	33.3    	19.672  	M 
9459163	Herendeen Island, Shumagin Islands,                               	55.066  	-159.419	1	12.014  	7.606   	-4.408  	M 
9451634	HERRING BAY, FREDERICK SOUND,                                     	57.113  	-134.380	0	\N	\N	\N	\N
9454691	HERRING POINT, KNIGHT ISLAND, PR WIL SND,                         	60.475  	-147.792	1	18.672  	16.909  	-1.763  	L 
9465173	HIGH ISLAND, BRISTOL BAY,                                         	58.722  	-160.427	0	\N	\N	\N	\N
9452067	HOLKHAM BAY, STEPHENS PASSAGE,                                    	57.760  	-133.603	0	\N	\N	\N	\N
9450544	Hollis Anchorage, Kasaan Bay,                                     	55.480  	-132.645	0	\N	\N	\N	\N
9455557	HOMER,                                                            	59.603  	-151.420	0	\N	\N	\N	\N
9452438	Hoonah, Port Fredrick, AK                                         	58.108  	-135.444	1	23.149  	59.665  	36.516  	XL
9458964	Hump Island, Kuiukta Bay,                                         	56.113  	-158.598	1	12.959  	18.181  	5.222   	M 
9450364	Hydaburg, Sukkwan Strait,                                         	55.202  	-132.823	1	20.016  	19.663  	-0.353  	L 
9453472	ICY BAY ENTRANCE, ZONING GAUGE A,                                 	59.858  	-141.663	0	\N	\N	\N	\N
9453471	ICY BAY ENTRANCE, ZONING GAUGE B,                                 	59.858  	-141.655	0	\N	\N	\N	\N
9469626	Ikpek Lagoon, AK                                                  	65.893  	-167.273	0	\N	\N	\N	\N
9462961	ISANOTSKI STRAIT ENTRANCE, AK                                     	54.778  	-163.364	1	10.711  	34.125  	23.414  	M 
9457634	Japanese Bay, Kodiak Island,                                      	56.960  	-153.687	1	12.698  	10.04   	-2.658  	M 
9453215	JOHNSTONE PASSAGE,                                                	59.582  	-139.702	0	\N	\N	\N	\N
9452210	Juneau, AK                                                        	58.299  	-134.411	1	25.096  	23.759  	-1.337  	XL
9451528	Kake Harbor, Keku Strait, AK                                      	56.948  	-133.895	1	22.172  	43.026  	20.854  	XL
9455732	KALIGAN ISLAND (NORTH END), COOK INLET,                           	60.512  	-151.952	1	29.833  	21.485  	-8.348  	XL
9458365	KANATAK LAGOON, PORTAGE BAY,                                      	57.520  	-156.052	0	\N	\N	\N	\N
9450581	Kasaan Bay,                                                       	55.535  	-132.397	0	\N	\N	\N	\N
9455517	Kasitsna Bay, Kachemak Bay,                                       	59.468  	-151.565	1	29.016  	9.98    	-19.036 	XL
9468261	Kavalghak Bay, AK, AK                                             	63.683  	-171.750	0	\N	\N	\N	\N
9450460	Ketchikan, AK                                                     	55.332  	-131.626	1	23.688  	25.856  	2.168   	XL
9453444	Kichyatt Point,                                                   	60.027  	-141.367	0	\N	\N	\N	\N
9465953	Kinak Bay, AK                                                     	59.948  	-164.211	0	\N	\N	\N	\N
9459881	King Cove,                                                        	55.060  	-162.326	1	11.001  	12.812  	1.811   	M 
9454951	KINGS BAY INSIDE, PRINCE WILLIAM SOUND,                           	60.457  	-148.665	0	\N	\N	\N	\N
9491247	Kivalina Lagoon, AK                                               	67.727  	-164.532	0	\N	\N	\N	\N
9491253	Kivalina, AK                                                      	67.727  	-164.592	1	1.428   	5.057   	3.629   	S 
9457292	Kodiak Island, AK                                                 	57.730  	-152.514	1	13.622  	36.524  	22.902  	M 
9457283	KODIAK, ST PAULS HARBOR,                                          	57.745  	-152.483	0	\N	\N	\N	\N
9490424	Kotzebue, AK                                                      	66.902  	-162.582	1	1.005   	4.289   	3.284   	S 
9450913	Kuiu Island, Affleck Canal,                                       	56.037  	-134.115	0	\N	\N	\N	\N
9458819	KUJULIK BAY (NORTH SHORE),                                        	56.613  	-157.983	0	\N	\N	\N	\N
9465265	KULUKAK POINT,                                                    	58.840  	-159.647	1	17.554  	23.574  	6.02    	L 
9458705	KUMLIK ISLAND (BACKUP),                                           	56.617  	-157.492	0	\N	\N	\N	\N
9465911	Kwigillinok, AK                                                   	59.880  	-163.166	0	\N	\N	\N	\N
9469982	Lagoon at 165 West,                                               	66.462  	-165.055	0	\N	\N	\N	\N
9457724	Larsen Bay, Kodiak Island, AK, AK                                 	57.530  	-153.990	1	21.677  	16.677  	-5      	L 
9454713	Latouche,                                                         	60.053  	-147.907	0	\N	\N	\N	\N
9451422	LECONTE BAY,                                                      	56.788  	-132.502	1	24.005  	15.58   	-8.425  	XL
9452569	LEMESURIER ISLAND (BACKUP),                                       	58.313  	-136.037	0	\N	\N	\N	\N
9465419	LEVELOCK, KVICHAK RIVER,                                          	59.113  	-156.832	0	\N	\N	\N	\N
9452336	LINCOLN ISLAND, FAVORITE CHANNEL,                                 	58.498  	-134.965	0	\N	\N	\N	\N
9450625	Lindeman Cove,                                                    	55.602  	-132.512	1	24.843  	31.906  	7.063   	XL
9469541	Little Diomede Island, AK                                         	65.757  	-168.950	0	\N	\N	\N	\N
9466328	Lomavik, AK                                                       	60.554  	-162.297	1	10.312  	34.994  	24.682  	M 
9454825	LONG BAY ENTR, CULROSS PASSAGE,                                   	60.692  	-148.263	0	\N	\N	\N	\N
9469460	Lopp Lagoon West,                                                 	65.625  	-168.025	0	\N	\N	\N	\N
9469338	LOST RIVER, SEWARD PENINSULA,                                     	65.390  	-167.145	1	1.507   	5.996   	4.489   	S 
9454642	LOUIS BAY,                                                        	60.462  	-147.672	0	\N	\N	\N	\N
9454674	Macleod Harbor,                                                   	59.890  	-147.795	0	\N	\N	\N	\N
9451152	Madan Bay,                                                        	56.392  	-132.169	1	24.988  	16.478  	-8.51   	XL
9450753	Magnetic Point, Union Bay, Earnest Sound, AK                      	55.788  	-132.191	1	24.284  	12.239  	-12.045 	XL
9450466	Mckenzie Inlet,                                                   	55.358  	-132.368	0	\N	\N	\N	\N
9466217	Mekoryuk, Mekoryuk River Entrance, AK                             	60.417  	-166.167	1	11.255  	62.954  	51.699  	M 
9464075	Meshik, Port Heiden, AK                                           	56.908  	-158.685	1	18.012  	52.939  	34.927  	L 
9450314	Metlakatla, Port Chester, AK,                                     	55.128  	-131.567	1	22.915  	28.614  	5.699   	XL
9459016	Mitrofania Island,                                                	55.890  	-158.820	1	12.233  	31.028  	18.795  	M 
9454616	Montague Island,                                                  	60.025  	-147.592	1	18.056  	13.539  	-4.517  	L 
9451247	Monte Carlo Island,                                               	56.535  	-133.767	1	19.598  	20.09   	0.492   	L 
9455824	MOOSE POINT,                                                      	60.963  	-150.673	0	\N	\N	\N	\N
9453443	Moraine Bay,                                                      	59.930  	-141.363	0	\N	\N	\N	\N
9452584	Muir Inlet, Glacier Bay,                                          	58.913  	-136.108	0	\N	\N	\N	\N
9457407	Nachalni Island,                                                  	57.978  	-152.925	1	21.195  	14.927  	-6.268  	L 
9458779	NAKCHAMIK ISLAND, CHIGNIK BAY,                                    	56.352  	-157.812	0	\N	\N	\N	\N
9465203	Naknek, AK                                                        	58.732  	-156.983	0	\N	\N	\N	\N
9465283	NE SIDE SUMMIT ISLAND, TOGIAK BAY A,                              	58.847  	-160.210	0	\N	\N	\N	\N
9457258	NEAR ISLAND,                                                      	57.775  	-152.403	0	\N	\N	\N	\N
9466298	Nelson Island, Tooksook Bay, AK                                   	60.517  	-165.133	1	13.39   	38.353  	24.963  	M 
9462948	NEUMANS COVE, AK                                                  	54.967  	-163.440	1	7.185   	5.929   	-1.256  	S 
9455760	Nikiski, AK                                                       	60.683  	-151.398	1	30.737  	32.095  	1.358   	XL
9462450	Nikolski, AK                                                      	52.941  	-168.871	1	6.807   	9.345   	2.538   	S 
9455653	Ninilchik, Cook Inlet,                                            	60.055  	-151.682	1	30.481  	12.506  	-17.975 	XL
9468756	Nome, Norton Sound, AK                                            	64.495  	-165.440	1	2.655   	5.804   	3.149   	S 
9455869	North Foreland,                                                   	61.043  	-151.163	1	30.181  	35.003  	4.822   	XL
9452005	North Shore Upper Endicott Arm,                                   	57.522  	-133.055	0	\N	\N	\N	\N
9468039	Northeast Cape, St. Lawrence Island,                              	63.317  	-168.967	1	3.618   	32.285  	28.667  	S 
9450642	Northern Carroll Inlet GPS Tide Buoy, AK                          	55.629  	-131.363	0	\N	\N	\N	\N
9455178	Northwest Passage,                                                	59.748  	-149.900	0	\N	\N	\N	\N
9450711	Nossuk Bay, AK                                                    	55.722  	-133.350	1	15.612  	13.386  	-2.226  	L 
9456717	NUKSHAK ISLAND, SHELIKOF STRAIT,                                  	58.392  	-153.958	1	21.433  	14.279  	-7.154  	L 
9465116	TWIN ISLAND, BRISTOL BAY,                                         	58.598  	-160.307	0	\N	\N	\N	\N
9467551	Nunam Iqua (Sheldon Point), AK                                    	62.533  	-164.845	1	4.178   	31.614  	27.436  	S 
9457527	OLD HARBOR, KODIAK ISLAND, AK                                     	57.203  	-153.304	1	12.995  	28.788  	15.793  	M 
9497147	OLIKTOK, BEAUFORT SEA, AK                                         	70.512  	-149.867	0	\N	\N	\N	\N
9452184	OLIVER INLET, PORTAGE,                                            	58.108  	-134.310	0	\N	\N	\N	\N
9469515	Outside Lopp Lagoon,                                              	65.729  	-168.032	0	\N	\N	\N	\N
9457287	Ouzinkie, Spruce Island,                                          	57.922  	-152.498	1	13.749  	10.912  	-2.837  	M 
9451346	Papke?s Landing,                                                  	56.677  	-132.933	1	24.915  	31.929  	7.014   	XL
9452611	Pelican Harbor, Lisianski Inlet, AK,                              	57.958  	-136.227	1	16.24   	21.121  	4.881   	L 
9454561	Perch Point,                                                      	60.127  	-147.395	1	18.429  	11.357  	-7.072  	L 
9455427	PERL ISLAND,                                                      	59.130  	-151.697	0	\N	\N	\N	\N
9454721	PERRY ISLAND (SOUTH BAY),                                         	60.672  	-147.932	1	18.911  	14.16   	-4.751  	L 
9465396	Platinum, AK, AK                                                  	59.047  	-161.818	1	12.392  	47.552  	35.16   	M 
9452516	POINT ADOLPHUS,                                                   	58.287  	-135.803	0	\N	\N	\N	\N
9454814	Point Erlington, Erlington Island,                                	59.938  	-148.227	1	16.406  	12.912  	-3.494  	L 
9451005	POINT HARRINGTON, CLARENCE STRAIT,                                	56.178  	-132.697	1	24.58   	17.736  	-6.844  	XL
9454671	POINT HELEN, KNIGHT ISLAND,                                       	60.153  	-147.767	0	\N	\N	\N	\N
9491873	Point Hope,                                                       	68.342  	-166.808	1	2.201   	3.756   	1.555   	S 
9453210	POINT LATOUCHE, YAKUTAT BAY,                                      	59.903  	-139.627	0	\N	\N	\N	\N
9493300	Point Lay, AK,                                                    	69.745  	-163.064	0	\N	\N	\N	\N
9451263	Point Lockwood,                                                   	56.558  	-132.963	1	23.192  	27.452  	4.26    	XL
9455866	Point Possession,                                                 	61.037  	-150.413	1	37.178  	32.108  	-5.07   	XL
9469237	Point Spencer, Port Clarence,                                     	65.257  	-166.847	1	1.617   	6.07    	4.453   	S 
9450467	Polk Inlet,                                                       	55.358  	-132.485	0	\N	\N	\N	\N
9458471	Poltava Island,                                                   	57.013  	-156.483	0	\N	\N	\N	\N
9466057	Popokamute (Kokokamute), Kuskokwim River, AK                      	60.123  	-162.500	1	14.9    	34.221  	19.321  	L 
9451054	Port Alexander,                                                   	56.247  	-134.648	1	16.881  	17.618  	0.737   	L 
9454673	PORT AUDREY,                                                      	60.343  	-147.768	0	\N	\N	\N	\N
9454511	Port Chalmers,                                                    	60.242  	-147.249	0	\N	\N	\N	\N
9455428	PORT CHATHAM,                                                     	59.213  	-151.728	0	\N	\N	\N	\N
9455437	Port Graham,                                                      	59.350  	-151.827	0	\N	\N	\N	\N
9452542	Port Gustavus,                                                    	58.382  	-135.918	0	\N	\N	\N	\N
9457391	Port Lions, AK, AK                                                	57.873  	-152.867	1	14.725  	33.882  	19.157  	M 
9455934	Port Mackenzie,                                                   	61.268  	-149.917	1	41.317  	43.002  	1.685   	XL
9463502	Port Moller,                                                      	55.986  	-160.574	1	15.439  	42.071  	26.632  	L 
9457261	PORT OF KODIAK,                                                   	57.783  	-152.428	0	\N	\N	\N	\N
9465056	PROTECTION POINT, NUSHAGAK BAY,                                   	58.500  	-158.712	1	25.365  	27.439  	2.074   	XL
9451936	Provorotni Island,                                                	57.515  	-135.600	1	22.906  	17.752  	-5.154  	XL
9497649	PRUDHOE BAY #2, AK                                                	70.388  	-148.510	0	\N	\N	\N	\N
9497645	Prudhoe Bay,                                                      	70.411  	-148.532	1	1.835   	37.166  	35.331  	S 
9454729	PT. PERRY, PERRY ISLAND,                                          	60.753  	-147.958	0	\N	\N	\N	\N
9458209	Puale Bay,                                                        	57.707  	-155.393	1	19.34   	18.191  	-1.149  	L 
9465123	PYRITE POINT, BRISTOL BAY,                                        	58.620  	-161.542	0	\N	\N	\N	\N
9465831	Quinhagak (Kwinak), Kushkokwin River, AK                          	59.751  	-161.915	1	16.368  	56.11   	39.742  	L 
9450815	Ratz Harbor,                                                      	55.880  	-132.595	0	\N	\N	\N	\N
9451467	Red Bluff Bay, Baranof Island, AK                                 	56.857  	-134.723	1	19.786  	27.647  	7.861   	L 
9491094	Red Dog Dock,                                                     	67.576  	-164.064	1	2.091   	6.848   	4.757   	S 
9453208	REDFIELD COVE, YAKUTAT BAY,                                       	59.612  	-139.580	0	\N	\N	\N	\N
9462662	Reef Bight,                                                       	54.131  	-166.099	1	5.713   	152.656 	146.943 	S 
9451124	REEF POINT, STIKINE STRAIT,                                       	56.353  	-132.553	1	24.36   	14.531  	-9.829  	XL
9453456	Riou Bay,                                                         	59.885  	-141.457	0	\N	\N	\N	\N
9454363	ROCKY PT, T-17,                                                   	60.947  	-146.755	0	\N	\N	\N	\N
9462723	Rootok Island, AK                                                 	54.052  	-165.514	1	8.432   	25.144  	16.712  	M 
9450651	Rudyerd Bay,                                                      	55.642  	-130.645	0	\N	\N	\N	\N
9453178	RUSSELL FIORD,                                                    	59.975  	-139.407	0	\N	\N	\N	\N
9451497	Saginaw Bay, Kuiu Island,                                         	56.903  	-134.303	1	20.914  	24.52   	3.606   	L 
9450495	Saltery Cove,                                                     	55.402  	-132.328	0	\N	\N	\N	\N
9459450	Sand Point, AK                                                    	55.332  	-160.504	1	11.866  	39.92   	28.054  	M 
9468258	Savoonga, AK                                                      	63.679  	-170.537	1	3.751   	12.935  	9.184   	S 
9452022	Sawyer Island, Tracy Arm, Holkham Bay,                            	57.878  	-133.190	0	\N	\N	\N	\N
9462808	Scotch Cap, Unimak Island, AK, AK                                 	54.394  	-164.746	1	10.026  	10.491  	0.465   	M 
9451805	Scraggy Island,                                                   	57.340  	-135.707	1	15.542  	12.589  	-2.953  	L 
9462786	SE Tigalda Island, Pacific Ocean, AK                              	54.102  	-164.942	1	8.741   	28.501  	19.76   	M 
9454564	SEAL ISLAND,                                                      	60.425  	-147.410	1	18.513  	14.038  	-4.475  	L 
9451454	Security Bay GPS Buoy, AK                                         	56.838  	-134.327	0	\N	\N	\N	\N
9455500	Seldovia, AK                                                      	59.440  	-151.720	1	28.662  	29.941  	1.279   	XL
9451853	Sergius Narrows,                                                  	57.410  	-135.627	1	19.876  	14.197  	-5.679  	L 
9455090	Seward, AK                                                        	60.120  	-149.427	1	16.916  	19.932  	3.016   	L 
9450982	SHAKAN BAY ENTRANCE,                                              	56.140  	-133.610	0	\N	\N	\N	\N
9450987	SHAKAN STRAIT (NORTHEAST END),                                    	56.148  	-133.460	0	\N	\N	\N	\N
9468691	Shaktoolik, AK                                                    	64.380  	-161.235	1	6.82    	27.415  	20.595  	S 
9450618	Shinaku Inlet, AK                                                 	55.593  	-133.152	0	\N	\N	\N	\N
9469854	Shishmaref Inlet 2,                                               	66.263  	-166.020	1	1.655   	4.876   	3.221   	S 
9469804	Shishmaref Inlet Inside, AK                                       	66.170  	-166.207	0	\N	\N	\N	\N
9451600	Sitka, AK                                                         	57.052  	-135.342	1	15.477  	17.162  	1.685   	L 
9457512	Sitkalidak Island GPS Tide Buoy, AK                               	56.966  	-153.252	0	\N	\N	\N	\N
9452400	Skagway, Taiya Inlet, AK                                          	59.451  	-135.328	1	25.542  	22.89   	-2.652  	XL
9454533	SMITH IS, NE END,                                                 	60.532  	-147.343	0	\N	\N	\N	\N
9465374	Snag Point, Dillingham,                                           	59.040  	-158.447	1	27.063  	64.828  	37.765  	XL
9456173	SNUG HARBOR,                                                      	60.107  	-152.582	0	\N	\N	\N	\N
9454662	Snug Harbor,                                                      	60.250  	-147.717	1	18.165  	10.97   	-7.195  	L 
9454652	SOUTH ARM, KNIGHT ISLAND, BAY OF ISLES,                           	60.367  	-147.700	1	18.756  	11.586  	-7.17   	L 
9454952	SOUTHERN BLACKSTON BAY (INSIDE),                                  	60.683  	-148.673	0	\N	\N	\N	\N
9452377	St. James Bay,                                                    	58.615  	-135.163	0	\N	\N	\N	\N
9450578	Steamboat Bay,                                                    	55.533  	-133.637	0	\N	\N	\N	\N
9468151	STEBBINS, NORTON SOUND, EAST,                                     	63.525  	-162.293	0	\N	\N	\N	\N
9497646	STP (INSIDE), PRUDHOE BAY, AK                                     	70.400  	-148.527	0	\N	\N	\N	\N
9462711	Surf Bay, Akutan Bay, AK                                          	54.151  	-165.615	1	6.418   	61.647  	55.229  	S 
9457493	SW Terror Bay, AK                                                 	57.744  	-153.195	1	22.506  	16.588  	-5.918  	XL
9452368	SWANSON HARBOR,                                                   	58.215  	-135.127	0	\N	\N	\N	\N
9452434	TAIYASANKA HARBOR, AK                                             	59.302  	-135.428	0	\N	\N	\N	\N
9456993	TAKLI ISLAND, GAGE B,                                             	58.063  	-154.477	0	\N	\N	\N	\N
9456992	TAKLI ISLAND, SHELIKOF STRAIT,                                    	58.063  	-154.477	0	\N	\N	\N	\N
9452123	TAKU HARBOR,                                                      	58.068  	-134.012	0	\N	\N	\N	\N
9452131	TAKU INLET (MIDDLE), TAKU RIVER ENTRANCE,                         	58.367  	-134.052	0	\N	\N	\N	\N
9451953	Target Island, Mitchell Bay,                                      	57.533  	-134.417	1	16.167  	64.503  	48.336  	L 
9452749	Tarr Inlet, Glacier Bay,                                          	58.965  	-136.878	1	25.625  	15.084  	-10.541 	XL
9469239	TELLER, PORT CLARENCE,                                            	65.267  	-166.353	1	1.45    	11.346  	9.896   	S 
9451785	THE BROTHERS, STEPHENS PASSAGE,                                   	57.295  	-133.797	1	22.892  	15.787  	-7.105  	XL
9451349	The Summit,                                                       	56.682  	-133.737	1	23.324  	15.781  	-7.543  	XL
9450970	Thoms Point, AK                                                   	56.118  	-132.078	1	24.284  	9.836   	-14.448 	XL
9450938	Thorne Island,                                                    	56.058  	-132.968	0	\N	\N	\N	\N
9462782	Tigalda Bay, Tigalda Island,                                      	54.120  	-164.977	1	5.794   	23.785  	17.991  	S 
9469439	Tin City, Bering Sea,                                             	65.558  	-167.975	1	1.488   	4.792   	3.304   	S 
9457152	TONKI BAY, AFOGNAK ISLAND,                                        	58.317  	-152.067	0	\N	\N	\N	\N
9452069	TRACY ARM, HOLKHAM BAY,                                           	57.807  	-133.630	0	\N	\N	\N	\N
9462721	Trident Bay, Akun Island, AK                                      	54.140  	-165.527	1	7.06    	31.961  	24.901  	S 
9450463	Trocadero Bay, AK                                                 	55.352  	-132.938	1	15.195  	13.038  	-2.157  	L 
9451434	Turn Point,                                                       	56.800  	-132.980	1	23.667  	15.935  	-7.732  	XL
9468333	Unalakleet, AK                                                    	63.871  	-160.784	1	5.684   	6.613   	0.929   	S 
9462621	UNALASKA (BACKUP),                                                	53.880  	-166.542	0	\N	\N	\N	\N
9462620	Unalaska, AK                                                      	53.879  	-166.540	1	6.159   	7.28    	1.121   	S 
9458762	UNAVIKSHAK ISLAND,                                                	56.492  	-157.740	0	\N	\N	\N	\N
9455204	UPPER NORTHWESTERN FIORD,                                         	59.790  	-150.032	1	17.376  	19.057  	1.681   	L 
9458553	UQAIUSHAK ISLAND,                                                 	56.797  	-156.848	0	\N	\N	\N	\N
9457728	Uyak,                                                             	57.635  	-154.007	0	\N	\N	\N	\N
9457376	Uzkosti Point,                                                    	57.928  	-152.812	1	17.304  	19.083  	1.779   	L 
9454328	VALDEZ NARROWS, T-19,                                             	61.082  	-146.668	0	\N	\N	\N	\N
9454240	Valdez, AK                                                        	61.124  	-146.363	1	19.024  	22.233  	3.209   	L 
9464212	Village Cove, St Paul Island,                                     	57.125  	-170.285	1	5.232   	5.421   	0.189   	S 
9451037	Village Rock, AK                                                  	56.220  	-132.297	1	24.995  	13.311  	-11.684 	XL
9450761	Vixen Harbor, Earnest Sound,                                      	55.800  	-132.166	0	\N	\N	\N	\N
9452632	Wachusett Inlet, Glacier Bay,                                     	58.947  	-136.333	0	\N	\N	\N	\N
9494168	Wainwright Inlet, AK                                              	70.598  	-160.108	0	\N	\N	\N	\N
9497651	WEST DOCK, PRUDHOE BAY, AK                                        	70.388  	-148.502	0	\N	\N	\N	\N
9455768	WEST FORELAND,                                                    	60.713  	-151.727	0	\N	\N	\N	\N
9457535	West Raspberry Island,                                            	58.107  	-153.340	1	22.354  	18.477  	-3.877  	XL
9465358	WEST SIDE, TOGIAK BAY (BACKUP),                                   	58.987  	-160.625	0	\N	\N	\N	\N
9451741	WHITESTONE NARROWS, Neva Strait, AK                               	57.250  	-135.567	1	15.614  	35.723  	20.109  	L 
9454948	WHITTIER (BACKUP),                                                	60.778  	-148.665	0	\N	\N	\N	\N
9454949	Whittier,                                                         	60.778  	-148.665	1	19.182  	15.519  	-3.663  	L 
9452391	WILLIAM HENRY BAY,                                                	58.713  	-135.232	0	\N	\N	\N	\N
9452046	WINDHAM BAY EAST, STEPHENS PASSAGE, AK                            	57.588  	-133.407	0	\N	\N	\N	\N
9454562	Wooded Island,                                                    	59.875  	-147.403	1	15.959  	20.98   	5.021   	L 
9451204	Wrangell,                                                         	56.470  	-132.387	1	24.621  	11.579  	-13.042 	XL
9453220	Yakutat, Yakutat Bay, AK                                          	59.548  	-139.733	1	15.74   	14.088  	-1.652  	L 
9452249	YOUNG BAY,                                                        	58.183  	-134.587	0	\N	\N	\N	\N
9459465	ZACHARY BAY, UNGA IS (N. SIDE),                                   	55.335  	-160.617	1	12.209  	40.258  	28.049  	M 
9454411	Zaikof Point,                                                     	60.308  	-146.943	0	\N	\N	\N	\N
9463885	ZAPADNI BAY, ST. GEORGE ISLAND,                                   	56.570  	-169.700	0	\N	\N	\N	\N
1495000	Esperanza, Antarctica,                                            	-63.395 	-56.995 	0	\N	\N	\N	\N
2695535	Bermuda Biological Station,                                       	32.370  	-64.695 	1	4.494   	7.366   	2.872   	S 
2695540	Bermuda, St. Georges Island, Bermuda                              	32.373  	-64.703 	1	4.599   	7.174   	2.575   	S 
9414632	ALAMEDA CREEK, SAN FRANCISCO BAY, CA                              	37.595  	-122.145	0	\N	\N	\N	\N
9414767	ALAMEDA NAS, NAVY FUEL PIER, CA                                   	37.793  	-122.315	0	\N	\N	\N	\N
9414750	Alameda, CA                                                       	37.772  	-122.300	1	9.423   	11.148  	1.725   	M 
9414818	ANGEL ISLAND, EAST GARRISON, S.F. BAY, CA                         	37.863  	-122.420	0	\N	\N	\N	\N
9415064	ANTIOCH, SAN JOAQUIN RIVER, CA                                    	38.020  	-121.815	1	5.666   	8.076   	2.41    	S 
9416841	Arena Cove, CA                                                    	38.915  	-123.711	1	9.232   	36.398  	27.166  	M 
9410079	AVALON, SANTA CATALINA ISLAND, CA                                 	33.345  	-118.325	1	8.7     	19.112  	10.412  	M 
9415027	BACON ISLAND,MIDDLE RIVER, CA                                     	38.003  	-121.523	0	\N	\N	\N	\N
9410155	Ballast Point, CA                                                 	32.687  	-117.233	0	\N	\N	\N	\N
9410962	BECHERS BAY, SANTA ROSA ISLAND, CA                                	34.008  	-120.047	0	\N	\N	\N	\N
9415111	BENICIA, CARQUINEZ STRAIT, CA                                     	38.043  	-122.130	0	\N	\N	\N	\N
9415522	BENSON FERRY BRIDGE,MOKELUMNE R., CA                              	38.257  	-121.438	0	\N	\N	\N	\N
9414816	BERKELEY,S.F.BAY, CA                                              	37.865  	-122.307	1	9.371   	12.403  	3.032   	M 
9415117	BISHOP CUT, DISSAPOINTMENT SLOUGH, CA                             	38.045  	-121.420	0	\N	\N	\N	\N
9415021	BLACKSLOUGH LANDING, SAN JOAQUIN RIVER, CA                        	37.995  	-121.419	0	\N	\N	\N	\N
9415396	BLAKE LANDING,TOMALES BAY, CA                                     	38.190  	-122.917	0	\N	\N	\N	\N
9414958	Bolinas, Bolinas Lagoon, CA                                       	37.908  	-122.679	1	6.461   	7.658   	1.197   	S 
9414835	BORDEN HIGHWAY BRIDGE, MIDDLE RIVER, CA                           	37.892  	-121.488	0	\N	\N	\N	\N
9414867	BORDEN HIGHWAY BRIDGE, SAN JOAQUIN RIVER, CA                      	37.937  	-121.333	0	\N	\N	\N	\N
9414836	BORDEN HWY BRIDGE,OLD RIVER, CA                                   	37.883  	-121.577	0	\N	\N	\N	\N
9414811	Bradmoor Island, CA                                               	38.183  	-121.923	1	8.268   	10.797  	2.529   	M 
9415446	BRAZOS DRAWBRIDGE,NAPA RIVER, CA                                  	38.210  	-122.307	0	\N	\N	\N	\N
9418778	BUCKSPORT, HUMBOLDT BAY, CA                                       	40.778  	-124.197	0	\N	\N	\N	\N
9410650	CABRILLO BEACH, CA                                                	33.707  	-118.273	0	\N	\N	\N	\N
9415846	CLARKSBURG,SACRAMENTO RIVER, CA                                   	38.417  	-121.523	0	\N	\N	\N	\N
9414794	CLIFTON COURT FERRY,OLD RIVER, CA                                 	37.835  	-121.552	0	\N	\N	\N	\N
9418637	Cockrobin Island Bridge,                                          	40.637  	-124.282	1	9.403   	28.137  	18.734  	M 
9415176	COLLINSVILLE,SACRAMENTO RIVER, CA                                 	38.073  	-121.848	0	\N	\N	\N	\N
9414874	CORTE MADERA CREEK, CA                                            	37.943  	-122.513	0	\N	\N	\N	\N
9414561	COYOTE CREEK, TRIBUTARY #1, S. F. BAY, CA                         	37.447  	-121.963	0	\N	\N	\N	\N
9414589	COYOTE CREEK, TRIBUTARY 2, S. F. BAY, CA                          	37.460  	-121.953	0	\N	\N	\N	\N
9414575	Coyote Creek, CA                                                  	37.465  	-122.023	1	11.875  	9.878   	-1.997  	M 
9414621	COYOTE HILLS SLOUGH,S.F.BAY, CA                                   	37.563  	-122.128	0	\N	\N	\N	\N
9419750	Crescent City, CA                                                 	41.746  	-124.184	1	10.711  	12.371  	1.66    	M 
9415143	CROCKETT, CARQUINEZ STRAIT, CA                                    	38.058  	-122.223	1	8.102   	14.101  	5.999   	M 
9414509	Dumbarton Bridge, CA                                              	37.507  	-122.115	1	11.802  	22.056  	10.254  	M 
9414510	DUMBARTON RAILROAD BRIDGE, CA                                     	37.500  	-122.100	0	\N	\N	\N	\N
9415053	DUTCH SLOUGH, CA                                                  	38.012  	-121.638	0	\N	\N	\N	\N
9415415	EDGERLEY ISLAND, NAPA RIVER, CA                                   	38.192  	-122.312	0	\N	\N	\N	\N
9415004	ELDORADO PUMP, SAN JOAQUIN RIVER, CA                              	37.985  	-121.392	0	\N	\N	\N	\N
9413631	Elkhorn Slough at Elkhorn, CA                                     	36.818  	-121.747	1	7.977   	12.788  	4.811   	M 
9413663	Elkhorn Slough Railroad Bridge, CA                                	36.857  	-121.755	1	8.634   	25.151  	16.517  	M 
9413623	ELKHORN SLOUGH, ENTRANCE BRIDGE, CA                               	36.810  	-121.785	0	\N	\N	\N	\N
9418802	EUREKA SLOUGH, HUMBOLDT BAY, CA                                   	40.807  	-124.142	0	\N	\N	\N	\N
9418801	Eureka, CA                                                        	40.807  	-124.167	0	\N	\N	\N	\N
9418723	FIELDS LANDING, HUMBOLDT BAY, CA                                  	40.723  	-124.222	1	10.902  	10.613  	-0.289  	M 
9418799	FRESHWATER SLOUGH, HUMBOLDT BAY, CA                               	40.798  	-124.120	0	\N	\N	\N	\N
9415052	GALLINAS, GALLINAS CREEK, CA                                      	38.015  	-122.503	0	\N	\N	\N	\N
9411399	Gaviota State Park, Pacific Ocean, CA                             	34.469  	-120.228	1	8.583   	50.458  	41.875  	M 
9415287	GEORGIANA SLOUGH, MOKELUMNE RIVER, CA                             	38.125  	-121.578	0	\N	\N	\N	\N
9414551	GOLD STREET BRIDGE, ALVISO SLOUGH, CA                             	37.423  	-121.975	0	\N	\N	\N	\N
9414796	GPS Buoy, San Francisco Bay, CA                                   	37.833  	-122.397	0	\N	\N	\N	\N
9414785	GRANT LINE CANAL BRDG.,OLD RIVER, CA                              	37.820  	-121.447	0	\N	\N	\N	\N
9416409	Green Cove, CA                                                    	38.704  	-123.449	1	8.703   	19.898  	11.195  	M 
9415126	Hamilton AFB (Inside), CA                                         	38.048  	-122.498	0	\N	\N	\N	\N
9415124	Hamilton AFB (Outside), CA                                        	38.048  	-122.498	0	\N	\N	\N	\N
9415074	HERCULES WHARF, CA                                                	38.023  	-122.292	0	\N	\N	\N	\N
9415344	HOG IS.,SAN ANTONIO CREEK, CA                                     	38.162  	-122.550	0	\N	\N	\N	\N
9414759	HOLLY SUGAR REF.,TOM PAINE SL., CA                                	37.775  	-121.420	0	\N	\N	\N	\N
9414866	HOLT, WHISKEY SLOUGH, CA                                          	37.935  	-121.435	0	\N	\N	\N	\N
9418686	HOOKTON SLOUGH,HUMBOLDT BAY, CA                                   	40.687  	-124.222	0	\N	\N	\N	\N
9414358	HUNTERS POINT, S.F. BAY, CA                                       	37.730  	-122.357	1	9.81    	10.605  	0.795   	M 
9410120	IMPERIAL BEACH, PACIFIC OCEAN, CA                                 	32.578  	-117.135	0	\N	\N	\N	\N
9415228	INVERNESS, TOMALES BAY, CA                                        	38.113  	-122.868	0	\N	\N	\N	\N
9415352	ISLETON,SACRAMENTO RIVER, CA                                      	38.163  	-121.608	0	\N	\N	\N	\N
9415145	JERSEY ISLAND, FALSE RIVER, CA                                    	38.055  	-121.657	0	\N	\N	\N	\N
9415379	JOICE ISLAND, SUISUN SLOUGH, CA                                   	38.180  	-122.045	0	\N	\N	\N	\N
9410738	KING HARBOR, SANTA MONICA BAY, CA                                 	33.847  	-118.398	0	\N	\N	\N	\N
9413651	Kirby Park, Elkhorn Slough, CA                                    	36.841  	-121.745	1	8.436   	15.524  	7.088   	M 
9415229	KORTHS HBR, SAN JOAQUIN RIVER, CA                                 	38.098  	-121.568	0	\N	\N	\N	\N
9410230	La Jolla, CA                                                      	32.867  	-117.257	1	8.527   	11.281  	2.754   	M 
9415423	LAKEVILLE, PETALUMA RIVER, CA                                     	38.198  	-122.547	0	\N	\N	\N	\N
9410680	LONG BEACH, TERMINAL ISLAND, CA                                   	33.752  	-118.227	1	8.916   	9.199   	0.283   	M 
9410660	Los Angeles, CA                                                   	33.720  	-118.273	1	8.742   	10.962  	2.22    	M 
9418865	MAD RIVER SLOUGH, ARCATA BAY, CA                                  	40.865  	-124.148	0	\N	\N	\N	\N
9415112	MALLARD ISLAND, SUISUN BAY, CA                                    	38.043  	-121.918	1	5.935   	8.382   	2.447   	S 
9412802	Mansfield Cone, CA                                                	35.950  	-121.482	1	8.307   	32.068  	23.761  	M 
9415165	MARE ISLAND STRAIT, CA                                            	38.112  	-122.273	0	\N	\N	\N	\N
9415218	Mare Island, CA                                                   	38.070  	-122.250	1	8.31    	9.84    	1.53    	M 
9415102	Martinez-Amorco Pier, CA                                          	38.035  	-122.125	1	7.589   	41.336  	33.747  	S 
9415307	MEINS LANDING, MONTEZUMA SLOUGH, CA                               	38.137  	-121.907	0	\N	\N	\N	\N
9410196	Mission Bay,                                                      	32.794  	-117.224	1	8.828   	23.335  	14.507  	M 
9413450	Monterey, CA                                                      	36.605  	-121.888	1	8.408   	10.241  	1.833   	M 
9415402	MONTEZUMA SLOUGH BRIDGE, CA                                       	38.187  	-121.980	0	\N	\N	\N	\N
9415205	MONTEZUMA SLOUGH, SUISUN BAY, CA                                  	38.077  	-121.885	0	\N	\N	\N	\N
9413616	Moss Landing, CA                                                  	36.802  	-121.790	0	\N	\N	\N	\N
9414768	MOSSDALE,SAN JOAQUIN RIVER, CA                                    	37.787  	-121.313	0	\N	\N	\N	\N
9414519	MOWRY SLOUGH, SAN FRANCISCO BAY, CA                               	37.493  	-122.042	0	\N	\N	\N	\N
9411013	MUGU LAGOON BRIDGE, CA                                            	34.102  	-119.098	0	\N	\N	\N	\N
9414778	NAGLEE BRIDGE,OLD RIVER, CA                                       	37.803  	-121.448	0	\N	\N	\N	\N
9415623	NAPA, NAPA RIVER, CA                                              	38.298  	-122.280	0	\N	\N	\N	\N
9415478	NEW HOPE BRIDGE, MOKELUMNE RIVER, CA                              	38.227  	-121.490	0	\N	\N	\N	\N
9414506	NEWARK SLOUGH,S.F.BAY, CA                                         	37.513  	-122.080	0	\N	\N	\N	\N
9410580	NEWPORT BEACH, NEWPORT BAY ENTRANCE, CA                           	33.603  	-117.883	1	8.58    	10.317  	1.737   	M 
9414305	NORTH POINT [PIER 41] S.F.BAY, CA                                 	37.810  	-122.413	0	\N	\N	\N	\N
9418767	North Spit, CA                                                    	40.766  	-124.217	1	10.637  	23.219  	12.582  	M 
9417426	NOYO HARBOR, CA                                                   	39.426  	-123.805	1	9.776   	7.608   	-2.168  	M 
9414711	OAKLAND AIRPORT, SAN FRANCISCO BAY, CA                            	37.732  	-122.208	0	\N	\N	\N	\N
9414764	Oakland Inner Harbor, CA                                          	37.795  	-122.282	1	9.611   	12.155  	2.544   	M 
9414777	OAKLAND MIDDLE HARBOR, PIER 40, CA                                	37.805  	-122.338	0	\N	\N	\N	\N
9414779	OAKLAND,MATSON WHARF,S.F.BAY, CA                                  	37.810  	-122.327	0	\N	\N	\N	\N
9410179	Ocean Beach, Point Loma, CA                                       	32.748  	-117.255	0	\N	\N	\N	\N
9410396	OCEANSIDE HARBOR, CA                                              	33.210  	-117.395	0	\N	\N	\N	\N
9411406	Oil Platform Harvest, CA                                          	34.469  	-120.682	1	8.612   	51.788  	43.176  	M 
9410025	ONEONTA SLOUGH,TIJUANA EST., CA                                   	32.572  	-117.120	0	\N	\N	\N	\N
9414868	ORWOOD,OLD RIVER, CA                                              	37.938  	-121.560	0	\N	\N	\N	\N
9414392	OYSTER POINT MARINA, SAN FRANCISCO BAY, CA                        	37.665  	-122.377	0	\N	\N	\N	\N
9414525	PALO ALTO YACHT HARBOR, S. F. BAY, CA                             	37.458  	-122.105	0	\N	\N	\N	\N
9414537	PALO ALTO, CHANNEL MARKER 8, S. F. BAY, CA                        	37.457  	-122.110	0	\N	\N	\N	\N
9414746	PARK STREET BRIDGE, CA                                            	37.772  	-122.235	1	9.885   	9.581   	-0.304  	M 
9415252	PETALUMA RIVER ENTRANCE, CA                                       	38.115  	-122.506	0	\N	\N	\N	\N
9415584	Petaluma River, Upper Drawbridge, CA                              	38.228  	-122.613	0	\N	\N	\N	\N
9414317	PIER 22 1/2, SAN FRANCISCO, CA                                    	37.790  	-122.387	1	9.18    	10.958  	1.778   	M 
9415266	PIERCE HARBOR,GOODYEAR SLOUGH, CA                                 	38.127  	-122.100	0	\N	\N	\N	\N
9414131	Pillar Point Harbor, CA                                           	37.503  	-122.482	1	8.822   	7.128   	-1.694  	M 
9415056	Pinole Point, San Pablo Bay, CA                                   	38.015  	-122.363	1	9.531   	15.568  	6.037   	M 
9415096	PITTSBURG, NEW YORK SLOUGH, SUISUN BAY, CA                        	38.037  	-121.880	0	\N	\N	\N	\N
9414837	POINT CHAUNCEY, RICHARDSON BAY, CA                                	37.892  	-122.443	0	\N	\N	\N	\N
9414881	POINT ORIENT, CA                                                  	37.958  	-122.425	0	\N	\N	\N	\N
9415020	Point Reyes, CA                                                   	37.994  	-122.974	1	8.994   	11.219  	2.225   	M 
9415009	POINT SAN PEDRO, SAN FRANCISCO BAY, CA                            	37.993  	-122.447	0	\N	\N	\N	\N
9414873	POINT SAN QUENTIN, SAN FRANCISCO BAY, CA                          	37.945  	-122.475	0	\N	\N	\N	\N
9415144	Port Chicago, CA                                                  	38.056  	-122.040	1	6.364   	9.788   	3.424   	S 
9412110	Port San Luis, CA                                                 	35.169  	-120.754	1	8.543   	11.139  	2.596   	M 
9415198	POTATO PT,VENICE IS,SN JQN R, CA                                  	38.080  	-121.568	0	\N	\N	\N	\N
9410971	PRISONERS HARBOR, SANTA CRUZ IS., CA                              	34.020  	-119.683	0	\N	\N	\N	\N
9415149	PRISONERS POINT, SAN JOAQUIN RIVER, CA                            	38.062  	-121.555	0	\N	\N	\N	\N
9419945	Pyramid Point, CA                                                 	41.945  	-124.201	1	10.198  	28.707  	18.509  	M 
9418739	RED BLUFF, HUMBOLDT BAY, CA                                       	40.740  	-124.212	0	\N	\N	\N	\N
9414523	Redwood City, CA                                                  	37.507  	-122.210	1	11.342  	16.296  	4.954   	M 
9414501	REDWOOD CREEK,C.M. NO. 8,S.F.BAY, CA                              	37.533  	-122.193	0	\N	\N	\N	\N
9419551	Requa Dock, CA                                                    	41.545  	-124.070	0	\N	\N	\N	\N
9415320	REYNOLDS, TOMALES BAY, CA                                         	38.147  	-122.883	0	\N	\N	\N	\N
9414849	RICHMOND INNER HARBOR, SAN FRANCISCO BAY, CA                      	37.910  	-122.358	0	\N	\N	\N	\N
9414863	Richmond, CA                                                      	37.923  	-122.410	1	9.14    	18.962  	9.822   	M 
9411270	RINCON ISLAND, PACIFIC OCEAN, CA                                  	34.348  	-119.443	0	\N	\N	\N	\N
9415316	Rio Vista, CA                                                     	38.145  	-121.692	1	5.351   	17.309  	11.958  	S 
9415479	RYER ISLAND, CACHE SLOUGH, CA                                     	38.227  	-121.673	0	\N	\N	\N	\N
9416174	SACRAMENTO, SACRAMENTO RIVER, CA                                  	38.580  	-121.507	0	\N	\N	\N	\N
9418817	Samoa, Humboldt Bay, CA                                           	40.827  	-124.180	1	11.156  	10.927  	-0.229  	M 
9410170	San Diego, San Diego Bay, CA                                      	32.714  	-117.174	1	9.252   	11.3    	2.048   	M 
9410302	SAN ELIJO LAGOON, CA                                              	33.013  	-117.277	0	\N	\N	\N	\N
9414290	San Francisco, CA                                                 	37.806  	-122.466	1	8.672   	13.077  	4.405   	M 
9414688	San Leandro Marina, CA                                            	37.695  	-122.192	1	10.532  	13.588  	3.056   	M 
9414637	SAN MATEO BRIDGE,EAST END, CA                                     	37.608  	-122.182	0	\N	\N	\N	\N
9414458	San Mateo Bridge, CA                                              	37.580  	-122.253	1	10.819  	23.771  	12.952  	M 
9415187	SAN PABLO BAY, CA                                                 	38.080  	-122.462	0	\N	\N	\N	\N
9412553	SAN SIMEON, CA                                                    	35.642  	-121.188	0	\N	\N	\N	\N
9415477	SAND POINT, TOMALES BAY, CA                                       	38.232  	-122.968	0	\N	\N	\N	\N
9411340	Santa Barbara, CA                                                 	34.403  	-119.693	1	8.61    	10.159  	1.549   	M 
9410840	Santa Monica, CA                                                  	34.008  	-118.500	1	8.7     	9.507   	0.807   	M 
9414819	SAUSALITO, COE DOCK, S.F. BAY, CA                                 	37.865  	-122.493	0	\N	\N	\N	\N
9414806	SAUSALITO, SAN FRANCISCO BAY, CA                                  	37.847  	-122.477	0	\N	\N	\N	\N
9418024	SHELTER COVE, CA                                                  	40.025  	-124.058	1	9.725   	30.882  	21.157  	M 
9415438	SKAGGS ISLAND, HUDEMAN SLOUGH, CA                                 	38.205  	-122.373	0	\N	\N	\N	\N
9415565	SNODGRASS SLOUGH, CA                                              	38.277  	-121.495	0	\N	\N	\N	\N
9415338	Sonoma Creek Entrance, CA                                         	38.157  	-122.407	1	7.88    	7.628   	-0.252  	M 
9415447	SONOMA CREEK, WINGO, CA                                           	38.210  	-122.427	0	\N	\N	\N	\N
9414609	SOUTH BAY WRECK,S.F.BAY, CA                                       	37.552  	-122.162	0	\N	\N	\N	\N
9410135	South San Diego Bay, CA                                           	32.629  	-117.108	1	9.515   	27.942  	18.427  	M 
9415414	STEAMBOAT SLOUGH, CA                                              	38.183  	-121.655	0	\N	\N	\N	\N
9414883	STOCKTON,SAN JOAQUIN RIVER, CA                                    	37.958  	-121.290	0	\N	\N	\N	\N
9415498	SUISUN CITY, SUISUN SLOUGH, CA                                    	38.237  	-122.030	0	\N	\N	\N	\N
9415265	SUISUN SLOUGH ENTRANCE, CA                                        	38.128  	-122.073	1	6.901   	8.73    	1.829   	S 
9415257	TERMINOUS,MOKELUMNE RIVER, CA                                     	38.110  	-121.498	0	\N	\N	\N	\N
9415236	THREE MILE SLOUGH,SACRAMENTO R., CA                               	38.107  	-121.700	0	\N	\N	\N	\N
9415193	THREE MILE SLOUGH,SAN JOAQUIN R., CA                              	38.087  	-121.685	0	\N	\N	\N	\N
9413643	Tidal Creek, Elkhorn Slough,                                      	36.830  	-121.745	1	8.248   	31.909  	23.661  	M 
9419059	TRINIDAD HARBOR, CA                                               	41.057  	-124.147	0	\N	\N	\N	\N
9414585	UPPER COYOTE CREEK, TRIBUTARY 3, CA                               	37.462  	-121.953	0	\N	\N	\N	\N
9418983	UPPER MAD RIVER SLOUGH, CA                                        	40.898  	-124.135	0	\N	\N	\N	\N
9415151	VENICE ISLAND, VENICE CUT, CA                                     	38.057  	-121.530	0	\N	\N	\N	\N
9415489	WALNUT GROVE,SACRAMENTO RIVER, CA                                 	38.240  	-121.522	0	\N	\N	\N	\N
9415105	WARDS ISLAND, SAN JOAQUIN RIVER, CA                               	38.050  	-121.497	0	\N	\N	\N	\N
9410032	WILSON COVE, SAN CLEMENTE IS., CA                                 	33.005  	-118.557	1	8.59    	22.336  	13.746  	M 
9414782	YERBA BUENA ISLAND, SAN FRANCISCO BAY, CA                         	37.810  	-122.360	0	\N	\N	\N	\N
9648958	Acajutla, El Salvador                                             	13.583  	-89.850 	0	\N	\N	\N	\N
9759412	Aguadilla, Crashboat Beach, PR                                    	18.457  	-67.165 	1	2.426   	24.587  	22.161  	S 
9757809	Arecibo, PR                                                       	18.481  	-66.702 	1	2.789   	24.464  	21.675  	S 
9759197	Bahia Salinas, PR                                                 	17.951  	-67.197 	1	1.382   	27.907  	26.525  	S 
9761115	Barbuda, Antigua and Barbuda                                      	17.591  	-61.821 	1	1.455   	28.985  	27.53   	S 
9751774	Botany Bay, St. Thomas, VI                                        	18.363  	-65.035 	1	2.411   	3.09    	0.679   	S 
9751639	Charlotte Amalie, VI                                              	18.347  	-64.926 	1	1.539   	6.392   	4.853   	S 
9751364	Christiansted Harbor, St Croix, VI                                	17.748  	-64.698 	1	1.393   	28.095  	26.702  	S 
9653601	COCHINO PEQUENO, Honduras                                         	15.953  	-86.500 	0	\N	\N	\N	\N
9752235	Culebra, PR                                                       	18.301  	-65.302 	1	1.979   	29.001  	27.022  	S 
9751494	Dog Island, St. Thomas, VI                                        	18.297  	-64.818 	1	1.503   	20.699  	19.196  	S 
9751768	Dorothea Bay, Saint Thomas, VI                                    	18.371  	-64.963 	1	2.136   	18.845  	16.709  	S 
9752695	Esperanza, Vieques Island, PR                                     	18.094  	-65.471 	1	1.4     	27.068  	25.668  	S 
9753216	Fajardo, PR                                                       	18.335  	-65.631 	1	2.35    	25.246  	22.896  	S 
9751584	Fredericksted, St. Croix, VI                                      	17.713  	-64.883 	1	1.399   	25.619  	24.22   	S 
9731158	GUANTANAMO BAY, INNER HARBOR, Cuba                                	19.907  	-75.147 	0	\N	\N	\N	\N
9751456	HART BAY, ST JOHNS, VI                                            	18.317  	-64.782 	0	\N	\N	\N	\N
9752619	Isabel Segunda, Vieques Island, PR                                	18.153  	-65.444 	1	1.998   	25.542  	23.544  	S 
9654601	ISLA DE GUANAJA, Honduras                                         	16.445  	-85.915 	0	\N	\N	\N	\N
9752962	Isla Palominos, PR                                                	18.345  	-65.570 	1	2.586   	22.743  	20.157  	S 
9652734	LA CEIBA, Honduras                                                	15.788  	-86.795 	0	\N	\N	\N	\N
9751381	Lameshur Bay, St John, VI                                         	18.318  	-64.724 	1	1.59    	30.125  	28.535  	S 
9755679	Las Mareas, PR                                                    	17.928  	-66.158 	1	1.235   	14.141  	12.906  	S 
9751309	Leinster Point, Leinster Bay, St. John?s, VI                      	18.368  	-64.721 	1	1.951   	29.731  	27.78   	S 
9751401	Lime Tree Bay, VI                                                 	17.695  	-64.754 	1	1.462   	35.14   	33.678  	S 
9751467	Lovango Cay, St. John, VI                                         	18.361  	-64.804 	1	1.555   	28.834  	27.279  	S 
9500966	Madero, Tampico Harbor, Mexico, Mexico                            	22.262  	-97.795 	1	2.736   	12.994  	10.258  	S 
9759110	Magueyes Island, PR                                               	17.970  	-67.046 	1	1.294   	4.531   	3.237   	S 
9505950	Manzanillo, Mexico                                                	19.063  	-104.298	0	\N	\N	\N	\N
9759394	Mayaguez, PR                                                      	18.219  	-67.163 	1	2.09    	5.257   	3.167   	S 
9759938	Mona Island, PR                                                   	18.090  	-67.939 	1	1.405   	29.65   	28.245  	S 
9753641	Naguabo, PR                                                       	18.187  	-65.711 	1	1.488   	7.932   	6.444   	S 
9812530	NAOS ISLAND, PANAMA BAY, Panama                                   	8.918   	-79.533 	0	\N	\N	\N	\N
9712712	NORTH CAT CAY, BAHAMAS, BWI,                                      	25.550  	-79.282 	0	\N	\N	\N	\N
9712714	NORTH CAT CAY, BAHAMAS, Bahamas                                   	25.552  	-79.282 	0	\N	\N	\N	\N
9758053	Penuelas (Punta Guayanilla), PR                                   	17.973  	-66.762 	1	1.356   	32.95   	31.594  	S 
9665401	Puerto Cabezas, Nicaragua                                         	14.042  	-83.382 	0	\N	\N	\N	\N
9654234	Puerto Castilla, Honduras                                         	16.017  	-86.033 	0	\N	\N	\N	\N
9662957	Puerto Corinto, Nicaragua                                         	12.478  	-87.168 	0	\N	\N	\N	\N
9650593	Puerto Cortes, Honduras                                           	15.835  	-87.870 	0	\N	\N	\N	\N
9635000	Puerto Quetzal (San Jose), Guatemala                              	13.917  	-90.830 	0	\N	\N	\N	\N
9759189	Puerto Real, PR                                                   	18.075  	-67.189 	1	1.391   	30.294  	28.903  	S 
9635002	Puerto Santo Tomas de Castilla, Guatemala                         	15.695  	-88.620 	0	\N	\N	\N	\N
9759421	PUNTA GUANAJABO, MAYAGUES, PR                                     	18.165  	-67.182 	1	1.881   	3.842   	1.961   	S 
9751540	REDHOOK BAY, ST THOMAS, USVI, VI                                  	18.327  	-64.852 	0	\N	\N	\N	\N
9755371	San Juan, La Puntilla, San Juan Bay, PR                           	18.459  	-66.116 	1	2.594   	5.539   	2.945   	S 
9756639	Santa Isabel, PR                                                  	17.955  	-66.407 	1	1.576   	26.748  	25.172  	S 
9710441	Settlement Point, Bahamas                                         	26.710  	-78.997 	1	4.767   	42.645  	37.878  	S 
9509990	Socorro Island, Mexico                                            	18.708  	-110.948	0	\N	\N	\N	\N
9751373	ST JOHN?S ISLAND, CORAL HARBOR, VI                                	18.348  	-64.717 	1	1.679   	4.139   	2.46    	S 
9751472	ST. JOHN?S ISLAND, LITTLE CRUZ BAY, Virgin Islands, US            	18.335  	-64.795 	0	\N	\N	\N	\N
9751583	Water Bay, VI                                                     	18.349  	-64.864 	1	2.063   	19.535  	17.472  	S 
9754228	Yabucoa Harbor, PR                                                	18.055  	-65.833 	1	1.397   	12.015  	10.618  	S 
8467373	Black Rock Harbor, CT                                             	41.157  	-73.213 	1	10.303  	16.055  	5.752   	M 
8467150	Bridgeport, CT                                                    	41.173  	-73.182 	1	9.974   	10.741  	0.767   	M 
8463701	Clinton Harbor, CT                                                	41.268  	-72.532 	1	7.181   	31.446  	24.265  	S 
8464445	GUILFORD, GUILFORD HARBOR, CT                                     	41.272  	-72.667 	0	\N	\N	\N	\N
8466375	GULF BEACH, CT                                                    	41.205  	-73.042 	0	\N	\N	\N	\N
8463836	HIGGANUM CREEK, CONNECTICUT R., CT                                	41.503  	-72.553 	0	\N	\N	\N	\N
8466797	I-95 BRIDGE, HOUSATONIC RIVER, CT                                 	41.203  	-73.112 	0	\N	\N	\N	\N
8465692	LIGHTHOUSE POINT, NEW HAVEN HARBOR, CT                            	41.252  	-72.905 	0	\N	\N	\N	\N
8468799	LONG NECK POINT, LONG ISLAND SOUND, CT                            	41.038  	-73.480 	1	10.887  	12.1    	1.213   	M 
8463827	MAROMAS, CONNECTICUT RIVER, CT                                    	41.542  	-72.552 	0	\N	\N	\N	\N
8469057	Mianus, CT                                                        	41.039  	-73.592 	0	\N	\N	\N	\N
8464336	MIDDLETOWN, CONNECTICUT RIVER, CT                                 	41.560  	-72.645 	0	\N	\N	\N	\N
8466442	MILFORD HARBOR, CT                                                	41.218  	-73.055 	0	\N	\N	\N	\N
8466664	MURPHY?S BOAT YARD, HOUSATONIC RIVER, CT                          	41.275  	-73.088 	0	\N	\N	\N	\N
8465705	New Haven, CT                                                     	41.283  	-72.908 	1	9.276   	26.502  	17.226  	M 
8465748	NEW HAVEN, CT                                                     	41.293  	-72.917 	0	\N	\N	\N	\N
8461490	New London, CT                                                    	41.361  	-72.090 	1	4.474   	7.345   	2.871   	S 
8461925	NIANTIC, NIANTIC RIVER, CT                                        	41.325  	-72.187 	0	\N	\N	\N	\N
8461392	NORWICH, THAMES RIVER, CT                                         	41.523  	-72.078 	0	\N	\N	\N	\N
8464255	ROCKY HILL,CONNECTICUT RIVER, CT                                  	41.663  	-72.630 	0	\N	\N	\N	\N
8468609	ROWAYTON, FIVEMILE RIVER, CT                                      	41.065  	-73.445 	0	\N	\N	\N	\N
8468191	Saugatuck River,                                                  	41.120  	-73.368 	1	10.446  	24.974  	14.528  	M 
8466573	SHELTON, HOUSATONIC RIVER, CT                                     	41.302  	-73.072 	0	\N	\N	\N	\N
8466791	SNIFFENS POINT, HOUSATONIC RIVER, CT                              	41.187  	-73.113 	0	\N	\N	\N	\N
8468448	South Norwalk, CT                                                 	41.097  	-73.415 	1	10.95   	29.873  	18.923  	M 
8467726	Southport, Southport Harbor, CT                                   	41.133  	-73.283 	1	10.59   	30.548  	19.958  	M 
8469198	Stamford Harbor, CT                                               	41.038  	-73.547 	1	11.21   	16.149  	4.939   	M 
8463348	TYLERVILLE, CONNECTICUT R., CT                                    	41.452  	-72.465 	0	\N	\N	\N	\N
8460751	West Mystic River,                                                	41.343  	-71.975 	1	4.375   	32.349  	27.974  	S 
8461467	YALE BOATHOUSE, THAMES RIVER, CT                                  	41.430  	-72.093 	0	\N	\N	\N	\N
8555889	Brandywine Shoal Light, DE                                        	38.987  	-75.113 	1	7.994   	25.871  	17.877  	M 
8551851	DELAWARE CITY BRIDGE, DE                                          	39.570  	-75.590 	0	\N	\N	\N	\N
8551762	Delaware City, DE                                                 	39.582  	-75.588 	1	7.51    	29.205  	21.695  	S 
8550438	EDGEMOOR, DE                                                      	39.750  	-75.493 	0	\N	\N	\N	\N
8554501	Elbow of Cross Ledge Light, DE                                    	39.167  	-75.267 	0	\N	\N	\N	\N
8555461	FOURTEEN FOOT BANK LIGHT, DE                                      	39.048  	-75.183 	0	\N	\N	\N	\N
8557125	HARBOR OF REFUGE LIGHT, DE                                        	38.800  	-75.083 	0	\N	\N	\N	\N
8558695	INDIAN RIVER INLET, TEST GAGE 5, DE                               	38.610  	-75.070 	0	\N	\N	\N	\N
8558690	INDIAN RIVER INLET, DE                                            	38.610  	-75.070 	1	4.413   	6.617   	2.204   	S 
8557380	Lewes, DE                                                         	38.783  	-75.119 	1	6.746   	8.519   	1.773   	S 
8559885	LITTLE ASSAWOMAN, FENWICK ISL., DE                                	38.463  	-75.055 	0	\N	\N	\N	\N
8554399	Mahon River Entrance, DE                                          	39.185  	-75.400 	1	8.12    	15.224  	7.104   	M 
8558788	MILLSBORO BRIDGE, INDIAN RIVER, DE                                	38.595  	-75.292 	0	\N	\N	\N	\N
8556198	MISPILLION RIVER ENTRANCE, DE                                     	38.945  	-75.313 	0	\N	\N	\N	\N
8555388	MURDERKILL RIVER ENTRANCE, DE                                     	39.058  	-75.397 	0	\N	\N	\N	\N
8551201	NEW CASTLE, DE                                                    	39.657  	-75.562 	0	\N	\N	\N	\N
8558789	OAK ORCHARD, INDIAN RIVER, DE                                     	38.595  	-75.173 	0	\N	\N	\N	\N
8551702	PEA PATCH ISLAND, DE                                              	39.583  	-75.573 	0	\N	\N	\N	\N
8551910	Reedy Point, DE                                                   	39.558  	-75.573 	1	7.476   	8.097   	0.621   	S 
8557863	REHOBOTH BEACH, DE                                                	38.720  	-75.083 	0	\N	\N	\N	\N
8558101	WHITE OAK POINT, REHOBOTH BAY, DE                                 	38.690  	-75.078 	0	\N	\N	\N	\N
8550714	WILMINGTON, CHRISTINA R. ENT., DE                                 	39.718  	-75.520 	0	\N	\N	\N	\N
8593909	EAST LAKE, ANACOSTIA RIVER, DC                                    	38.910  	-76.955 	0	\N	\N	\N	\N
8593545	KINGMAN LAKE, ANACOSTIA RIVER, DC                                 	38.895  	-76.968 	0	\N	\N	\N	\N
8593005	WASHINGTON NAVY YARD,D.C., DC                                     	38.872  	-76.995 	0	\N	\N	\N	\N
8594900	Washington, DC                                                    	38.873  	-77.022 	1	4.405   	8.294   	3.889   	S 
7691360	Dakar, Senegal, Senegal                                           	14.677  	-17.420 	0	\N	\N	\N	\N
7641400	Lagos, Nigeria, Nigeria                                           	6.423   	3.412   	0	\N	\N	\N	\N
8723453	ADAMS KEY, FL                                                     	25.397  	-80.233 	0	\N	\N	\N	\N
8724992	ADDISON BAY, FL                                                   	25.963  	-81.665 	0	\N	\N	\N	\N
8726614	ALAFIA RIVER NORTH, FL                                            	27.870  	-82.328 	0	\N	\N	\N	\N
8729015	ALLANTON, EAST BAY, FL                                            	30.030  	-85.465 	0	\N	\N	\N	\N
8729364	ALLAQUAY BAYOU, FL                                                	30.488  	-86.205 	0	\N	\N	\N	\N
8721374	ALLENHURST,HAULOVER CANAL, FL                                     	28.733  	-80.757 	0	\N	\N	\N	\N
8729152	ALLIGATOR BAYOU, PANAMA CITY, FL                                  	30.170  	-85.755 	0	\N	\N	\N	\N
8728255	ALLIGATOR HARBOR, FL                                              	29.912  	-84.365 	0	\N	\N	\N	\N
8728261	ALLIGATOR POINT, SW CAPE, FL                                      	29.895  	-84.388 	0	\N	\N	\N	\N
8728288	ALLIGATOR POINT, FL                                               	29.903  	-84.413 	0	\N	\N	\N	\N
8723861	ALLIGATOR REEF LIGHTHOUSE, FL                                     	24.850  	-80.618 	0	\N	\N	\N	\N
8720086	AMELIA CITY, SOUTH AMELIA RIVER, FL                               	30.587  	-81.463 	0	\N	\N	\N	\N
8720623	ANASTASIA ISLAND, FL                                              	29.793  	-81.272 	0	\N	\N	\N	\N
8726917	ANCLOTE LIGHTHOUSE, ANCLOTE KEY, FL                               	28.165  	-82.843 	1	5.159   	6.309   	1.15    	S 
8726924	ANCLOTE RIVER, FL                                                 	28.172  	-82.785 	0	\N	\N	\N	\N
8722274	ANKONA, INDIAN RIVER, FL                                          	27.355  	-80.273 	0	\N	\N	\N	\N
8726243	ANNA MARIA OUTSIDE, FL                                            	27.497  	-82.713 	0	\N	\N	\N	\N
8726282	ANNA MARIA, CITY PIER, FL                                         	27.533  	-82.730 	0	\N	\N	\N	\N
8724229	ANNETTE KEY, FL                                                   	24.758  	-81.390 	0	\N	\N	\N	\N
8728715	APALACHICOLA RIVER, NORTH, FL                                     	29.842  	-85.028 	0	\N	\N	\N	\N
8728711	APALACHICOLA RIVER, FL                                            	29.763  	-85.033 	0	\N	\N	\N	\N
8728690	Apalachicola, FL                                                  	29.724  	-84.981 	1	3.158   	6.513   	3.355   	S 
8726537	APOLLO BEACH, HILLSBOROUGH BAY, FL                                	27.787  	-82.427 	0	\N	\N	\N	\N
8726632	ARCHIE CREEK, FL                                                  	27.882  	-82.397 	0	\N	\N	\N	\N
8727097	ARIPEKA, FL                                                       	28.433  	-82.668 	0	\N	\N	\N	\N
8724138	BAHIA HONDA KEY, FL                                               	24.655  	-81.282 	0	\N	\N	\N	\N
8726978	BAILEYS BLUFF GULFSIDE, FL                                        	28.205  	-82.783 	0	\N	\N	\N	\N
8726976	BAILEYS BLUFF INSIDE, FL                                          	28.202  	-82.780 	0	\N	\N	\N	\N
8729387	BASIN BAYOU, CHOCTAWHATCHEE BAY, FL                               	30.487  	-86.253 	0	\N	\N	\N	\N
8729381	BASIN CREEK, FL                                                   	30.497  	-86.240 	0	\N	\N	\N	\N
8723582	BASIN HILLS,KEY LARGO, FL                                         	25.223  	-80.343 	0	\N	\N	\N	\N
8726689	BAY ARISTOCRAT VILLAGE, OLD TAMPA BAY, FL                         	27.942  	-82.720 	0	\N	\N	\N	\N
8729849	BAYOU CHICO, FL                                                   	30.402  	-87.252 	0	\N	\N	\N	\N
8727151	BAYPORT, FL                                                       	28.533  	-82.650 	1	4.973   	5.577   	0.604   	S 
8729105	BEACON BEACH, ST ANDREW BAY, FL                                   	30.092  	-85.648 	0	\N	\N	\N	\N
8724489	BIG COPPITT KEY, FL                                               	24.602  	-81.655 	0	\N	\N	\N	\N
8729435	BIG HAMMOCK PT, CHOCTAWHATCHEE BAY, FL                            	30.465  	-86.352 	0	\N	\N	\N	\N
8729909	BIG LAGOON,                                                       	30.327  	-87.357 	1	2.306   	4.562   	2.256   	S 
8724979	BIG MARCO RIVER, U.S. 92, FL                                      	25.933  	-81.655 	0	\N	\N	\N	\N
8724226	Big Pine Key NE, FL                                               	24.728  	-81.387 	0	\N	\N	\N	\N
8724231	BIG PINE KEY NORTH END, FL                                        	24.745  	-81.395 	0	\N	\N	\N	\N
8724211	BIG PINE KEY VIADUCT, FL                                          	24.670  	-81.368 	0	\N	\N	\N	\N
8724192	BIG PINE KEY, COUPON BIGHT INSIDE, FL                             	24.652  	-81.350 	0	\N	\N	\N	\N
8724227	BIG PINE KEY, WEST SIDE, FL                                       	24.690  	-81.383 	0	\N	\N	\N	\N
8724246	BIG SPANISH KEY, FL                                               	24.788  	-81.412 	0	\N	\N	\N	\N
8724264	BIG TORCH KEY, WEST SIDE, FL                                      	24.705  	-81.433 	0	\N	\N	\N	\N
8723439	BILLY?S POINT, ELLIOTT KEY, FL                                    	25.415  	-80.210 	0	\N	\N	\N	\N
8720757	Bings Landing, Matanzas River, FL                                 	29.615  	-81.205 	1	3.517   	1.842   	-1.675  	S 
8722213	Binney Dock, FL                                                   	27.468  	-80.300 	1	3.384   	4.622   	1.238   	S 
8724436	BIRD KEY, FL                                                      	24.588  	-81.638 	0	\N	\N	\N	\N
8723089	BISCAYNE CREEK, INTRACOASTAL WATERWAY, FL                         	25.880  	-80.163 	0	\N	\N	\N	\N
8726353	BISHOP HARBOR, FL                                                 	27.602  	-82.553 	0	\N	\N	\N	\N
8720434	BLACK CREEK, FL                                                   	30.080  	-81.762 	1	1.232   	6.042   	4.81    	S 
8725943	BLACKBURN POINT, FL                                               	27.178  	-82.495 	0	\N	\N	\N	\N
8724975	BLACKWATER RIVER ENTRANCE, FL                                     	25.932  	-81.597 	0	\N	\N	\N	\N
8729753	BLACKWATER RIVER,                                                 	30.637  	-87.028 	1	3.073   	5.585   	2.512   	S 
8720203	BLOUNT ISLAND BRIDGE, FL                                          	30.413  	-81.545 	0	\N	\N	\N	\N
8729941	Blue Angels Park, FL                                              	30.387  	-87.429 	1	1.181   	28.766  	27.585  	S 
8724493	BOCA CHICA MARINA, FL                                             	24.575  	-81.708 	1	1.98    	14.077  	12.097  	S 
8724499	BOCA CHICA, SOUTHWEST END, FL                                     	24.563  	-81.713 	0	\N	\N	\N	\N
8724485	BOCA CHICA,LONG POINT, FL                                         	24.603  	-81.698 	0	\N	\N	\N	\N
8726574	BOCA CIEGA BAY, FL                                                	27.808  	-82.795 	0	\N	\N	\N	\N
8722816	BOCA RATON, FL                                                    	26.343  	-80.077 	1	3.292   	5.172   	1.88    	S 
8720084	BOGGY CREEK, UPPER NASSAU RIVER, FL                               	30.588  	-81.663 	0	\N	\N	\N	\N
8724193	BOGIE CHANNEL LANDING, BIG PINE KEY, FL                           	24.697  	-81.348 	0	\N	\N	\N	\N
8725541	BOKEELIA, CHARLOTTE HARBOR, FL                                    	26.707  	-82.163 	1	2.822   	5.261   	2.439   	S 
8723971	BOOT KEY HARBOR, FL                                               	24.703  	-81.105 	0	\N	\N	\N	\N
8722706	BOYNTON BEACH, FL                                                 	26.548  	-80.053 	0	\N	\N	\N	\N
8726247	BRADENTON, MANATEE RIVER, FL                                      	27.500  	-82.573 	0	\N	\N	\N	\N
8720767	Buffalo Bluff, St Johns River, FL                                 	29.595  	-81.682 	1	3.022   	1.663   	-1.359  	S 
8729154	BURNT MILL CREEK, WEST BAY, FL                                    	30.328  	-85.763 	0	\N	\N	\N	\N
8726774	CALADESI ISLAND, INSIDE, FL                                       	28.032  	-82.820 	0	\N	\N	\N	\N
8729063	CALLAWAY BAYOU, EAST BAY, FL                                      	30.137  	-85.572 	0	\N	\N	\N	\N
8729548	CAMP PINCHOT, FL                                                  	30.470  	-86.593 	0	\N	\N	\N	\N
8721608	CANAVERAL HARBOR ENTRANCE, FL                                     	28.408  	-80.602 	0	\N	\N	\N	\N
8721804	CANOVA, FL                                                        	28.138  	-80.578 	0	\N	\N	\N	\N
8725451	CAPE CORAL BR.,CALOOSAHATCHEE R., FL                              	26.564  	-81.936 	0	\N	\N	\N	\N
8723251	CAPE FLORIDA, KEY BISCAYNE, FL                                    	25.652  	-80.160 	0	\N	\N	\N	\N
8724947	CAPE ROMANO ISLAND, FL                                            	25.853  	-81.675 	0	\N	\N	\N	\N
8728942	CAPE SAN BLAS,                                                    	29.668  	-85.360 	0	\N	\N	\N	\N
8723534	CARD SOUND BRIDGE, FL                                             	25.288  	-80.370 	1	1.748   	4.818   	3.07    	S 
8725325	Carlos Point, Estero Bay, FL                                      	26.405  	-81.883 	0	\N	\N	\N	\N
8728464	CARRABELLE RIVER, ST. GEORGE SOUND, FL                            	29.850  	-84.665 	0	\N	\N	\N	\N
8723583	CARYSFORT REEF LIGHTHOUSE, FL                                     	25.222  	-80.212 	0	\N	\N	\N	\N
8725916	CASEY KEY, FL                                                     	27.153  	-82.483 	0	\N	\N	\N	\N
8728619	CAT POINT, APALACHICOLA BAY, FL                                   	29.723  	-84.887 	0	\N	\N	\N	\N
8720189	CEDAR HEIGHTS, FL                                                 	30.437  	-81.642 	1	5.194   	7.347   	2.153   	S 
8727520	Cedar Key, FL                                                     	29.135  	-83.032 	1	5.955   	6.41    	0.455   	S 
8724507	CHANNEL KEY, FL                                                   	24.603  	-81.725 	0	\N	\N	\N	\N
8727246	CHASSAHOWITZKA RIVER, FL                                          	28.715  	-82.577 	1	0.833   	12.069  	11.236  	S 
8729851	CHEMSTRAND PIER, FL                                               	30.598  	-87.247 	0	\N	\N	\N	\N
8720023	CHESTER, BELLS RIVER, FL                                          	30.683  	-81.533 	1	9.72    	10.656  	0.936   	M 
8729329	CHOCTAWHATCHEE RIVER, FL                                          	30.397  	-86.088 	0	\N	\N	\N	\N
8724919	CHOKOLOSKEE, FL                                                   	25.813  	-81.363 	0	\N	\N	\N	\N
8723457	CHRISTMAS POINT, ELLIOTT KEY, FL                                  	25.392  	-80.230 	0	\N	\N	\N	\N
8729567	CINCO BAYOU, FL                                                   	30.428  	-86.632 	0	\N	\N	\N	\N
8720198	CLAPBOARD CREEK, FL                                               	30.407  	-81.510 	1	6.128   	8.733   	2.605   	S 
8726724	Clearwater Beach, FL                                              	27.978  	-82.832 	1	4.687   	5.272   	0.585   	S 
8726706	CLEARWATER, CLEARWATER HARBOR, FL                                 	27.955  	-82.807 	0	\N	\N	\N	\N
8726425	COCKROACH BAY, FL                                                 	27.678  	-82.503 	0	\N	\N	\N	\N
8721649	COCOA BEACH, ATLANTIC OCEAN, FL                                   	28.368  	-80.600 	1	6.237   	18.326  	12.089  	S 
8724098	COCOANUT KEY, FL                                                  	24.745  	-81.237 	0	\N	\N	\N	\N
8725228	COCOHATCHEE RIVER, U.S. 41, FL                                    	26.282  	-81.802 	0	\N	\N	\N	\N
8725319	COCONUT POINT, ESTERO BAY, FL                                     	26.400  	-81.843 	1	3.937   	5.119   	1.182   	S 
8724307	CONTENT KEY,GULF OF MEXICO, FL                                    	24.790  	-81.483 	0	\N	\N	\N	\N
8724964	COON KEY PASS, GULLIVAN BAY, FL                                   	25.897  	-81.637 	1	6.037   	7.036   	0.999   	S 
8723391	COON POINT, ELLIOTT KEY, FL                                       	25.480  	-80.188 	0	\N	\N	\N	\N
8726217	CORTEZ, FL                                                        	27.467  	-82.687 	0	\N	\N	\N	\N
8724527	COW KEY CHANNEL, FL                                               	24.570  	-81.750 	0	\N	\N	\N	\N
8720004	CRANDALL, ST. MARYS RIVER, FL                                     	30.722  	-81.622 	1	7.799   	8.756   	0.957   	M 
8723746	CRANE KEY, FL                                                     	25.005  	-80.618 	0	\N	\N	\N	\N
8724199	CRAWL KEY, BIG SPANISH CHANNEL, FL                                	24.757  	-81.358 	0	\N	\N	\N	\N
8720651	Crescent Beach, Matanzas River, FL                                	29.768  	-81.258 	1	6.755   	3.33    	-3.425  	S 
8720855	Crescent City, FL                                                 	29.430  	-81.507 	0	\N	\N	\N	\N
8729179	CROOKED CREEK, WEST BAY, FL                                       	30.308  	-85.812 	0	\N	\N	\N	\N
8726996	CROSS BAYOU, NEW PORT RICHEY, FL                                  	28.247  	-82.735 	0	\N	\N	\N	\N
8727343	CRYSTAL RIVER, KINGS BAY, FL                                      	28.898  	-82.598 	1	3.069   	6.862   	3.793   	S 
8724313	CUDJOE BAY, FL                                                    	24.660  	-81.492 	0	\N	\N	\N	\N
8724305	CUDJOE KEY EAST SIDE, FL                                          	24.687  	-81.483 	0	\N	\N	\N	\N
8724328	CUDJOE KEY NO. POINT, FL                                          	24.700  	-81.505 	0	\N	\N	\N	\N
8724332	CUDJOE KEY PIRATES COVE, FL                                       	24.662  	-81.515 	0	\N	\N	\N	\N
8720097	CUNO, LOFTON CREEK, FL                                            	30.577  	-81.572 	0	\N	\N	\N	\N
8720011	CUT 1N FRONT RANGE, ST MARYS RIVER ENTR, FL                       	30.708  	-81.465 	1	9.465   	4.191   	-5.274  	M 
8720012	CUT 2N FRONT RANGE, ST MARYS RIVER ENTR, FL                       	30.717  	-81.302 	0	\N	\N	\N	\N
8723289	CUTLER, BISCAYNE BAY, FL                                          	25.615  	-80.305 	1	3.762   	5.952   	2.19    	S 
8725685	CUTOFF SOUTH, FL                                                  	26.855  	-82.303 	1	2.902   	4.742   	1.84    	S 
8727751	DALLUS CREEK, FL                                                  	29.713  	-83.502 	0	\N	\N	\N	\N
8720219	Dames Point, FL                                                   	30.387  	-81.559 	1	5.627   	8.404   	2.777   	S 
8724971	DAVID KEY, BARFIELD BAY, FL                                       	25.917  	-81.687 	0	\N	\N	\N	\N
8726657	DAVIS ISLAND, HILLSBOROUGH BAY, FL                                	27.908  	-82.452 	0	\N	\N	\N	\N
8721020	DAYTONA BEACH (OCEAN), FL                                         	29.228  	-81.005 	0	\N	\N	\N	\N
8721120	DAYTONA BEACH SHORES, FL                                          	29.147  	-80.963 	0	\N	\N	\N	\N
8720214	Degaussing Structure, FL                                          	30.397  	-81.395 	1	8.296   	3.686   	-4.61   	M 
8727809	DEKLE BEACH, FL                                                   	29.845  	-83.622 	0	\N	\N	\N	\N
8722746	DELRAY BEACH, FL                                                  	26.473  	-80.062 	0	\N	\N	\N	\N
8726273	DESOTO POINT, FL                                                  	27.523  	-82.650 	0	\N	\N	\N	\N
8729511	DESTIN, EAST PASS, FL                                             	30.395  	-86.513 	0	\N	\N	\N	\N
8726739	DICK CREEK, FL                                                    	27.988  	-82.608 	0	\N	\N	\N	\N
8723205	DINNER KEY MARINA,BISCAYNE BAY, FL                                	25.727  	-80.237 	0	\N	\N	\N	\N
8724963	DISMAL KEY, PUMPKIN BAY, FL                                       	25.895  	-81.558 	1	5.923   	6.268   	0.345   	S 
8727336	DIXIE BAY, FL                                                     	28.882  	-82.635 	1	3.361   	4.994   	1.633   	S 
8724201	DOCTORS ARM, FL                                                   	24.690  	-81.357 	0	\N	\N	\N	\N
8720406	DOCTORS LAKE, PEORIA POINT, FL                                    	30.120  	-81.758 	1	1.198   	6.78    	5.582   	S 
8728408	DOG ISLAND, EAST END, FL                                          	29.810  	-84.585 	1	4.38    	3.584   	-0.796  	S 
8725079	DOLLAR BAY, NORTH, FL                                             	26.083  	-81.785 	0	\N	\N	\N	\N
8722528	DONALD ROSS BRIDGE, FL                                            	26.882  	-80.070 	0	\N	\N	\N	\N
8726768	DOUBLE BRANCH, FL                                                 	28.028  	-82.633 	0	\N	\N	\N	\N
8724474	DUCK KEY POINT, FL                                                	24.623  	-81.685 	0	\N	\N	\N	\N
8723927	DUCK KEY, FL                                                      	24.765  	-80.913 	0	\N	\N	\N	\N
8723044	DUMFOUNDLING BAY, FL                                              	25.942  	-80.125 	0	\N	\N	\N	\N
8726761	DUNEDIN CITY DOCK, FL                                             	28.013  	-82.793 	0	\N	\N	\N	\N
8729083	DUPONT BRIDGE, EAST BAY, FL                                       	30.100  	-85.612 	0	\N	\N	\N	\N
8723465	EAST ARSENICKER, CARD SOUND, FL                                   	25.373  	-80.290 	1	1.982   	4.563   	2.581   	S 
8724094	EAST BAHIA HONDA KEY, FL                                          	24.775  	-81.227 	0	\N	\N	\N	\N
8729702	EAST BAY, HOLLEY,                                                 	30.450  	-86.918 	1	2.913   	4.043   	1.13    	S 
8723752	EAST KEY, FLORIDA BAY, FL                                         	24.997  	-80.610 	0	\N	\N	\N	\N
8720596	EAST TOCOI, ST. JOHNS RIVER, FL                                   	29.858  	-81.553 	0	\N	\N	\N	\N
8727956	ECONFINA RIVER, INSIDE, FL                                        	30.053  	-83.910 	0	\N	\N	\N	\N
8721191	EDGEWATER, INDIAN RIVER, FL                                       	28.988  	-80.900 	0	\N	\N	\N	\N
8720145	Edwards Creek, FL                                                 	30.502  	-81.542 	1	6.383   	6.232   	-0.151  	S 
8726347	EGMONT KEY, TAMPA BAY, FL                                         	27.602  	-82.760 	1	3.516   	4.025   	0.509   	S 
8725769	EL JOBEAN, MYAKKA RIVER, FL                                       	26.962  	-82.210 	0	\N	\N	\N	\N
8728786	ELEVEN MILE, ST. VINCENT SOUND,                                   	29.707  	-85.153 	1	2.809   	5.037   	2.228   	S 
8723393	ELLIOTT KEY (OUTSIDE), FL                                         	25.477  	-80.180 	0	\N	\N	\N	\N
8723409	ELLIOTT KEY HARBOR, ELLIOTT KEY, FL                               	25.453  	-80.197 	1	2.777   	5.705   	2.928   	S 
8725747	ENGLEWOOD, LEMON BAY, FL                                          	26.933  	-82.353 	0	\N	\N	\N	\N
8725351	ESTERO ISLAND, ESTERO BAY, FL                                     	26.438  	-81.918 	1	3.988   	5.472   	1.484   	S 
8725346	ESTERO RIVER, ESTERO BAY, FL                                      	26.430  	-81.857 	0	\N	\N	\N	\N
8724948	EVERGLADES CITY, FL                                               	25.858  	-81.387 	0	\N	\N	\N	\N
8724970	FAKA UNION BAY, FL                                                	25.903  	-81.513 	0	\N	\N	\N	\N
8724962	FAKAHATCHEE RIVER ENTRANCE, FL                                    	25.890  	-81.477 	0	\N	\N	\N	\N
8729017	FARMDALE, EAST BAY, ST. ANDREW BAY, FL                            	30.017  	-85.470 	0	\N	\N	\N	\N
8723949	FAT DEER KEY, FL                                                  	24.733  	-81.017 	0	\N	\N	\N	\N
8727892	FENHOLLOWAY RIVER, FL                                             	29.980  	-83.783 	0	\N	\N	\N	\N
8720030	Fernandina Beach, FL                                              	30.671  	-81.466 	1	9.654   	9.952   	0.298   	M 
8728258	FIDDLERS POINT, FL                                                	30.015  	-84.368 	0	\N	\N	\N	\N
8727086	FILLMANS BAYOU, FL                                                	28.413  	-82.677 	0	\N	\N	\N	\N
8726988	FILLMANS CREEK, NEW PORT RICHEY, FL                               	28.230  	-82.753 	0	\N	\N	\N	\N
8725272	FISH TRAP BAY, FL                                                 	26.337  	-81.845 	0	\N	\N	\N	\N
8729806	FISHING BEND, SANTA ROSA SOUND, FL                                	30.337  	-87.140 	1	2.383   	4.556   	2.173   	S 
8723644	FLAMINGO, FL                                                      	25.142  	-80.923 	0	\N	\N	\N	\N
8724571	Fleming Key, FL                                                   	24.592  	-81.795 	1	2.275   	31.187  	28.912  	S 
8729824	FLORIDATOWN, ESCAMBIA BAY,                                        	30.582  	-87.180 	1	2.978   	4.689   	1.711   	S 
8720186	FORT GEORGE ISLAND, FL                                            	30.440  	-81.438 	0	\N	\N	\N	\N
8726277	FORT HAMER, FL                                                    	27.525  	-82.430 	0	\N	\N	\N	\N
8720686	FORT MATANZAS, FL                                                 	29.715  	-81.238 	0	\N	\N	\N	\N
8725520	Fort Myers, FL                                                    	26.648  	-81.871 	1	2.497   	6.26    	3.763   	S 
8729882	FORT PICKENS, PENSACOLA BAY, FL                                   	30.330  	-87.292 	0	\N	\N	\N	\N
8722212	FORT PIERCE, SOUTH JETTY, FL                                      	27.470  	-80.288 	0	\N	\N	\N	\N
8729554	FORT WALTON BEACH, SANTA ROSA SOUND, FL                           	30.402  	-86.610 	0	\N	\N	\N	\N
8727512	FOWLER BLUFF, SUWANNEE RIVER, FL                                  	29.398  	-83.023 	0	\N	\N	\N	\N
8722939	FT. LAUDERDALE BAHIA YACHT CLUB, FL                               	26.113  	-80.108 	0	\N	\N	\N	\N
8722937	FT. LAUDERDALE, ANDREWS AVENUE BRIDGE, FL                         	26.118  	-80.145 	0	\N	\N	\N	\N
8720221	FULTON, ST. JOHNS RIVER, FL                                       	30.390  	-81.507 	0	\N	\N	\N	\N
8726573	GADSDEN POINT, TAMPA BAY, FL                                      	27.822  	-82.485 	0	\N	\N	\N	\N
8723693	GAGE A, POINT CHARLES, KEY LARGO, FL                              	25.077  	-80.455 	0	\N	\N	\N	\N
8725411	GALT ISLAND,PINE ISLAND SD., FL                                   	26.513  	-82.107 	0	\N	\N	\N	\N
8726641	GANDY BRIDGE, OLD TAMPA BAY, FL                                   	27.893  	-82.538 	0	\N	\N	\N	\N
8724697	GARDEN KEY, DRY TORTUGAS, FL                                      	24.627  	-82.872 	0	\N	\N	\N	\N
8729538	GARNIER BAYOU, SHALIMAR, FL                                       	30.435  	-86.587 	0	\N	\N	\N	\N
8723026	GOLDEN BEACH, FL                                                  	25.967  	-80.125 	0	\N	\N	\N	\N
8722414	GOMEZ, FL                                                         	27.093  	-80.137 	0	\N	\N	\N	\N
8724306	GOPHER KEY, FL                                                    	24.642  	-81.485 	0	\N	\N	\N	\N
8729155	GRAND LAGOON, WEST END, FL                                        	30.158  	-85.768 	0	\N	\N	\N	\N
8723921	GRASSY KEY NORTH SIDE, FLORIDA BAY, FL                            	24.772  	-80.940 	0	\N	\N	\N	\N
8723933	GRASSY KEY, ATLANTIC SIDE, FL                                     	24.755  	-80.958 	0	\N	\N	\N	\N
8720496	GREEN COVE SPRINGS, ST. JOHNS R., FL                              	29.990  	-81.663 	0	\N	\N	\N	\N
8720093	HALFMOON ISLAND, FL                                               	30.577  	-81.608 	0	\N	\N	\N	\N
8721138	HALIFAX RIVER, PONCE INLET, FL                                    	29.082  	-80.937 	0	\N	\N	\N	\N
8727293	HALLS RIVER BRIDGE, HALLS RIVER, FL                               	28.800  	-82.603 	1	1.017   	2.452   	1.435   	S 
8725791	HARBOUR HEIGHTS, PEACE RIVER, FL                                  	26.988  	-81.993 	1	3.394   	5.616   	2.222   	S 
8729613	HARRIS, SANTA ROSA SOUND, FL                                      	30.408  	-86.732 	0	\N	\N	\N	\N
8723073	HAULOVER INSIDE, FL                                               	25.903  	-80.125 	0	\N	\N	\N	\N
8723080	HAULOVER PIER, N. MIAMI BEACH, FL                                 	25.903  	-80.120 	1	4.546   	7.008   	2.462   	S 
8726045	HAYDEN ROBERTS BAY, FL                                            	27.292  	-82.542 	0	\N	\N	\N	\N
8729889	HEAD OF BAYOU GRANDE, FL                                          	30.370  	-87.318 	0	\N	\N	\N	\N
8725024	HENDERSON CREEK, FL                                               	26.027  	-81.730 	0	\N	\N	\N	\N
8725377	HENDRY CREEK, ESTERO BAY, FL                                      	26.470  	-81.877 	1	3.258   	5.257   	1.999   	S 
8729791	HERNANDEZ POINT NORTH,                                            	30.455  	-87.100 	1	2.711   	4.747   	2.036   	S 
8722862	HILLSBORO INLET OCEAN, FL                                         	26.257  	-80.080 	0	\N	\N	\N	\N
8722861	HILLSBORO INLET, INSIDE, FL                                       	26.258  	-80.082 	0	\N	\N	\N	\N
8722859	HILLSBORO, FL                                                     	26.260  	-80.085 	1	3.879   	4.423   	0.544   	S 
8726693	HILLSBOROUGH RIVER ENTRANCE, FL                                   	27.947  	-82.462 	0	\N	\N	\N	\N
8722429	HOBE SOUND BRIDGE, HOBE SOUND, FL                                 	27.065  	-80.123 	0	\N	\N	\N	\N
8722445	HOBE SOUND, STATE PARK, FL                                        	27.037  	-80.107 	0	\N	\N	\N	\N
8722979	HOLLYWOOD BEACH, FL                                               	26.040  	-80.115 	0	\N	\N	\N	\N
8726834	HONEYMOON ISLAND, NORTH POINT, FL                                 	28.083  	-82.828 	0	\N	\N	\N	\N
8726808	HONEYMOON ISLAND, SOUTH, FL                                       	28.058  	-82.810 	0	\N	\N	\N	\N
8726809	HONNEYMOON ISLAND, INSIDE, FL                                     	28.062  	-82.813 	0	\N	\N	\N	\N
8724139	HORESHOE KEYS, FL                                                 	24.767  	-81.283 	0	\N	\N	\N	\N
8727648	HORSESHOE POINT, FL                                               	29.437  	-83.293 	1	5.672   	5.248   	-0.424  	S 
8726904	HOWARD PARK, FL                                                   	28.153  	-82.802 	0	\N	\N	\N	\N
8724243	HOWE KEY (OFF SOUTH END), FL                                      	24.725  	-81.407 	0	\N	\N	\N	\N
8728757	HUCKLEBERRY LANDING, JACKSON RIVER,                               	29.770  	-85.085 	1	2.36    	2.17    	-0.19   	S 
8727061	HUDSON, HUDSON CREEK, FL                                          	28.362  	-82.710 	0	\N	\N	\N	\N
8729598	HULBERT FIELD, FL                                                 	30.407  	-86.700 	0	\N	\N	\N	\N
8725368	HURRICANE BAY, SAN CARLOS ISLAND, FL                              	26.460  	-81.940 	0	\N	\N	\N	\N
8729943	HURST HAMMOCK, PERDIDO RIVER, FL                                  	30.458  	-87.408 	0	\N	\N	\N	\N
8720357	I-295 Bridge, St Johns River, FL                                  	30.192  	-81.692 	1	2.406   	1.198   	-1.208  	S 
8725269	IMPERIAL RIVER ENTRANCE, FL                                       	26.337  	-81.830 	0	\N	\N	\N	\N
8725271	IMPERIAL RIVER, HEADWATERS, FL                                    	26.343  	-81.780 	0	\N	\N	\N	\N
8726853	INDIAN BLUFF ISLAND, FL                                           	28.103  	-82.778 	0	\N	\N	\N	\N
8723843	INDIAN KEY, HAWK CHANNEL, FL                                      	24.877  	-80.677 	0	\N	\N	\N	\N
8724932	INDIAN KEY, FL                                                    	25.810  	-81.465 	0	\N	\N	\N	\N
8726601	INDIAN ROCKS BEACH, FL                                            	27.873  	-82.852 	0	\N	\N	\N	\N
8724409	INNER NARROWS, FL                                                 	24.658  	-81.608 	0	\N	\N	\N	\N
8725418	IONA SHORES, CALOOSAHATCHEE R., FL                                	26.522  	-81.965 	0	\N	\N	\N	\N
8723797	ISLAMORADA, WHALE HARBOR CHANNEL, FL                              	24.938  	-80.610 	0	\N	\N	\N	\N
8720291	Jacksonville Beach, FL                                            	30.283  	-81.387 	1	8.533   	13.436  	4.903   	M 
8720268	JACKSONVILLE,ACOSTA BRIDGE, FL                                    	30.325  	-81.665 	0	\N	\N	\N	\N
8722338	JENSEN BEACH, INDIAN RIVER, FL                                    	27.235  	-80.210 	0	\N	\N	\N	\N
8723613	JEWFISH CREEK, BARNES SOUND, FL                                   	25.183  	-80.390 	0	\N	\N	\N	\N
8727235	JOHNS ISLAND, CHASSAHOWITZKA BAY, FL                              	28.692  	-82.638 	1	3.516   	4.606   	1.09    	S 
8726533	JOHNS PASS, FL                                                    	27.785  	-82.782 	0	\N	\N	\N	\N
8724172	JOHNSON KEYS NORTH, FL                                            	24.767  	-81.323 	0	\N	\N	\N	\N
8724153	JOHNSON KEYS SOUTH, FL                                            	24.743  	-81.300 	0	\N	\N	\N	\N
8724397	JOHNSTON KEY, FL                                                  	24.710  	-81.593 	0	\N	\N	\N	\N
8729332	JOLLY BAY, CHOCTAWHATCHEE BAY, FL                                 	30.428  	-86.137 	0	\N	\N	\N	\N
8720409	JULINGTON CREEK, FL                                               	30.135  	-81.630 	0	\N	\N	\N	\N
8722495	JUPITER INLET, FL                                                 	26.943  	-80.073 	0	\N	\N	\N	\N
8722491	JUPITER SOUND, SOUTH END, FL                                      	26.952  	-80.080 	0	\N	\N	\N	\N
8722492	JUPITER WEST, FL                                                  	26.947  	-80.090 	0	\N	\N	\N	\N
8722499	JUPITER, INTRACOASTAL WATERWAY, FL                                	26.935  	-80.085 	0	\N	\N	\N	\N
8725019	KEEWAYDIN ISLAND, INSIDE, FL                                      	26.025  	-81.768 	1	4.12    	3.97    	-0.15   	S 
8724292	KEMP CHANNEL VIADUCT, FL                                          	24.662  	-81.468 	0	\N	\N	\N	\N
8723232	KEY BISCAYNE YACHT CLUB, FL                                       	25.698  	-80.170 	0	\N	\N	\N	\N
8723962	Key Colony Beach, FL                                              	24.718  	-81.017 	1	3.723   	6.4     	2.677   	S 
8724517	KEY HAVEN WEST, FL                                                	24.580  	-81.738 	0	\N	\N	\N	\N
8724557	KEY WEST, WHITE STREET PIER, FL                                   	24.545  	-81.783 	0	\N	\N	\N	\N
8724580	Key West, FL                                                      	24.551  	-81.808 	1	3.213   	7.119   	3.906   	S 
8720058	KINGSLEY CREEK, SEABOARD R.R., FL                                 	30.632  	-81.477 	0	\N	\N	\N	\N
8724008	KNIGHT KEY CHANNEL, FL                                            	24.707  	-81.125 	0	\N	\N	\N	\N
8724302	KNOCKEMDOWN KEY, FL                                               	24.715  	-81.478 	0	\N	\N	\N	\N
8726899	KREAMER BAYOU, FL                                                 	28.150  	-82.772 	0	\N	\N	\N	\N
8729333	LA GRANGE BAYOU, FL                                               	30.468  	-86.138 	0	\N	\N	\N	\N
8729045	LAIRD BAYOU, EAST BAY, FL                                         	30.122  	-85.528 	0	\N	\N	\N	\N
8722512	LAKE WORTH CREEK, FL                                              	26.912  	-80.080 	0	\N	\N	\N	\N
8722669	Lake Worth ICW, FL                                                	26.613  	-80.047 	1	3.915   	29.405  	25.49   	S 
8722670	Lake Worth Pier, Atlantic Ocean, FL                               	26.613  	-80.034 	1	4.992   	34.191  	29.199  	S 
8722802	LAKE WYMAN, FL                                                    	26.370  	-80.070 	1	3.526   	5.174   	1.648   	S 
8728412	LANARK, ST. GEORGES SOUND,                                        	29.878  	-84.595 	1	4.553   	4.058   	-0.495  	S 
8720051	LANCEFORD CREEK, LOFTON, FL                                       	30.643  	-81.523 	1	9.477   	8.532   	-0.945  	M 
8722899	LAUDERDALE-BY-THE-SEA, FL                                         	26.188  	-80.093 	1	4.95    	7.258   	2.308   	S 
8723824	LIGNUMVITAE KEY EAST, FL                                          	24.903  	-80.695 	0	\N	\N	\N	\N
8723825	LIGNUMVITAE KEY WEST, FL                                          	24.900  	-80.705 	0	\N	\N	\N	\N
8724093	LITTLE DUCK KEY, FL                                               	24.682  	-81.228 	0	\N	\N	\N	\N
8725665	LITTLE GASPARILLA ISLAND, FL                                      	26.827  	-82.285 	0	\N	\N	\N	\N
8725259	LITTLE HICKORY BAY, FL                                            	26.330  	-81.838 	0	\N	\N	\N	\N
8725283	LITTLE HICKORY IS., ESTERO B., FL                                 	26.353  	-81.855 	0	\N	\N	\N	\N
8724177	LITTLE PINE KEY NORTH, FL                                         	24.750  	-81.328 	0	\N	\N	\N	\N
8724154	LITTLE PINE KEY SOUTH, FL                                         	24.713  	-81.303 	0	\N	\N	\N	\N
8720274	LITTLE POTTSBURG CREEK, FL                                        	30.310  	-81.610 	0	\N	\N	\N	\N
8729808	LITTLE SABINE BAY, FL                                             	30.337  	-87.147 	0	\N	\N	\N	\N
8724209	LITTLE SPANISH KEY ISLAND, FL                                     	24.773  	-81.368 	0	\N	\N	\N	\N
8720006	LITTLE ST. MARYS RIVER, FL                                        	30.732  	-81.727 	0	\N	\N	\N	\N
8724224	LITTLE TORCH KEY, FL                                              	24.665  	-81.387 	0	\N	\N	\N	\N
8725835	LIVERRPOOL, PEACE RIVER, FL                                       	27.043  	-81.987 	0	\N	\N	\N	\N
8725745	LOCUST POINT, HOG ISLAND, FL                                      	26.930  	-82.137 	1	3.335   	5.477   	2.142   	S 
8724698	Loggerhead Key, FL                                                	24.632  	-82.920 	1	3.006   	5.135   	2.129   	S 
8723906	LONG KEY CHANNEL WEST, FL                                         	24.792  	-80.883 	0	\N	\N	\N	\N
8723873	LONG KEY, FLORIDA BAY, FL                                         	24.838  	-80.798 	0	\N	\N	\N	\N
8726604	LONG SHOAL, MACDILL AFB, FL                                       	27.855  	-82.480 	0	\N	\N	\N	\N
8726089	LONGBOAT KEY, FL                                                  	27.340  	-82.590 	0	\N	\N	\N	\N
8720242	Longbranch, FL                                                    	30.360  	-81.620 	1	4.49    	6.882   	2.392   	S 
8729816	LORA POINT, ESCAMBIA BAY, FL                                      	30.515  	-87.162 	1	2.847   	5.164   	2.317   	S 
8723851	LOWER MATECUMBE KEY HAWK CHANNEL, FL                              	24.868  	-80.703 	0	\N	\N	\N	\N
8723852	LOWER MATECUMBE KEY, FLA. BAY, FL                                 	24.865  	-80.717 	0	\N	\N	\N	\N
8727433	LOWS BAY, FL                                                      	29.077  	-82.812 	0	\N	\N	\N	\N
8722496	LOXAHATCHEE RIVER LOCK, FL                                        	26.935  	-80.143 	0	\N	\N	\N	\N
8722481	LOXAHATCHEE RIVER, FL                                             	26.970  	-80.127 	0	\N	\N	\N	\N
8729102	LYNN HAVEN, NORTH BAY, FL                                         	30.255  	-85.648 	0	\N	\N	\N	\N
8725809	MANASOTA, FL                                                      	27.012  	-82.410 	1	2.85    	5.04    	2.19    	S 
8723574	MANATEE CREEK, BARNES SOUND, FL                                   	25.235  	-80.435 	0	\N	\N	\N	\N
8727989	MANDALAY, AUCILLA RIVER, FL                                       	30.127  	-83.975 	0	\N	\N	\N	\N
8726492	MANGROVE POINT INSIDE, FL                                         	27.742  	-82.467 	0	\N	\N	\N	\N
8727333	Mangrove Point, FL                                                	28.870  	-82.723 	1	5.393   	6.147   	0.754   	S 
8724967	MARCO ISLAND, CAXAMBAS PASS, FL                                   	25.908  	-81.728 	1	4.604   	4.911   	0.307   	S 
8724991	MARCO, BIG MARCO RIVER, FL                                        	25.972  	-81.728 	1	4.329   	4.878   	0.549   	S 
8726467	MARSH BRANCH, RUSKIN, FL                                          	27.718  	-82.453 	0	\N	\N	\N	\N
8723950	MARTHON SHORES KEY, VACA CUT, FL                                  	24.730  	-81.030 	0	\N	\N	\N	\N
8727274	MASON CREEK, HOMOSASSA BAY, FL                                    	28.762  	-82.638 	1	1.958   	3.468   	1.51    	S 
8729107	MASSALINA BAYOU, ST. ANDREW BAY, FL                               	30.152  	-85.660 	0	\N	\N	\N	\N
8724205	MAYO KEY, FL                                                      	24.733  	-81.362 	0	\N	\N	\N	\N
8720218	Mayport (Bar Pilots Dock), FL                                     	30.398  	-81.428 	1	7.699   	15.57   	7.871   	M 
8720220	Mayport (Ferry Depot), FL                                         	30.393  	-81.432 	1	7.558   	8.076   	0.518   	S 
8720211	Mayport Naval Sta., St Johns River, FL                            	30.400  	-81.413 	1	8.137   	3.564   	-4.573  	M 
8720224	MAYPORT, ST JOHNS RIVER, FL                                       	30.395  	-81.432 	0	\N	\N	\N	\N
8724996	MCILVAINE BAY, FL                                                 	25.985  	-81.702 	1	4.082   	3.853   	-0.229  	S 
8728366	MCINTYRE, OCHLOCKONEE RIVER, FL                                   	29.982  	-84.527 	0	\N	\N	\N	\N
8726667	Mckay Bay Entrance, FL                                            	27.913  	-82.425 	1	4.459   	3.687   	-0.772  	S 
8721832	MELBOURNE, INDIAN RIVER, FL                                       	28.100  	-80.612 	0	\N	\N	\N	\N
8728995	MEXICO BEACH, FL                                                  	29.948  	-85.425 	0	\N	\N	\N	\N
8723178	MIAMI BEACH, GOVERNMENT CUT, FL                                   	25.763  	-80.130 	1	4.305   	11.146  	6.841   	S 
8723170	Miami Beach, FL                                                   	25.768  	-80.132 	1	4.674   	6.384   	1.71    	S 
8723155	MIAMI SHIP BASE, FL                                               	25.770  	-80.168 	0	\N	\N	\N	\N
8723165	MIAMI, BISCAYNE BAY, FL                                           	25.778  	-80.185 	1	4.03    	6.281   	2.251   	S 
8721994	MICCO, INDIAN RIVER, FL                                           	27.873  	-80.497 	0	\N	\N	\N	\N
8724427	MIDDLE NARROWS, FL                                                	24.667  	-81.630 	0	\N	\N	\N	\N
8727001	MIDDLE PITHLACHASCOTEE RIVER, FL                                  	28.248  	-82.723 	0	\N	\N	\N	\N
8729071	MILL BAYOU, NORTH BAY, FL                                         	30.245  	-85.605 	0	\N	\N	\N	\N
8720244	MILL COVE, FL                                                     	30.370  	-81.558 	0	\N	\N	\N	\N
8729905	Millview, Perdido Bay, FL                                         	30.418  	-87.357 	1	1.275   	3.045   	1.77    	S 
8729757	MILTON,                                                           	30.627  	-87.037 	0	\N	\N	\N	\N
8720119	MINK CREEK ENT., NASSAU RIVER, FL                                 	30.537  	-81.582 	0	\N	\N	\N	\N
8724099	MISSOURI-LITTLE DUCK CHANNEL, FL                                  	24.680  	-81.235 	0	\N	\N	\N	\N
8724107	MISSOURI-OHIO CHANNEL, FL                                         	24.673  	-81.243 	0	\N	\N	\N	\N
8726769	MOBBLY BAYOU, FL                                                  	28.022  	-82.655 	0	\N	\N	\N	\N
8720805	Moccasin Landing, FL                                              	29.538  	-81.557 	0	\N	\N	\N	\N
8724062	MOLASSES KEY, FL                                                  	24.683  	-81.192 	0	\N	\N	\N	\N
8720217	MONCRIEF CREEK ENTRANCE, FL                                       	30.392  	-81.662 	0	\N	\N	\N	\N
8724082	MONEY KEY, FL                                                     	24.683  	-81.217 	0	\N	\N	\N	\N
8724487	MUD KEYS, GULF OF MEXICO, FL                                      	24.675  	-81.702 	0	\N	\N	\N	\N
8729793	MULLATTO BAYOU,                                                   	30.545  	-87.103 	0	\N	\N	\N	\N
8726364	MULLET KEY, TAMPA BAY, FL                                         	27.615  	-82.727 	1	3.382   	3.845   	0.463   	S 
8724238	MUNSON KEY, FL                                                    	24.623  	-81.403 	0	\N	\N	\N	\N
8725837	MYAKKA RIVER, US 41, FL                                           	27.045  	-82.293 	1	3.015   	6.223   	3.208   	S 
8725114	NAPLES BAY, NORTH, FL                                             	26.137  	-81.788 	0	\N	\N	\N	\N
8725110	Naples, Gulf of Mexico, FL                                        	26.132  	-81.808 	1	4.881   	5.865   	0.984   	S 
8720135	NASSAU RIVER ENTRANCE, FL                                         	30.518  	-81.453 	0	\N	\N	\N	\N
8720098	NASSAUVILLE, NASSAU RIVER EAST, FL                                	30.568  	-81.515 	1	6.866   	9.299   	2.433   	S 
8729681	NAVARRE BEACH, FL                                                 	30.377  	-85.865 	0	\N	\N	\N	\N
8729678	NAVARRE BEACH, FL                                                 	30.377  	-86.865 	1	2.844   	27.809  	24.965  	S 
8720215	Navy Fuel Depot, FL                                               	30.400  	-81.627 	0	\N	\N	\N	\N
8728486	NE END, ST. GEORGE ISLAND,                                        	29.767  	-84.700 	1	4.155   	4.914   	0.759   	S 
8722312	NETTLES ISLAND, INDIAN RIVER, FL                                  	27.287  	-80.227 	0	\N	\N	\N	\N
8729136	NEW ENTRANCE CHANNEL, ST. ANDREW BAY, FL                          	30.125  	-85.730 	0	\N	\N	\N	\N
8721164	New Smyrna Beach, FL                                              	29.023  	-80.918 	1	3.873   	1.466   	-2.407  	S 
8724215	NEWFOUND HARBOR, FL                                               	24.652  	-81.375 	0	\N	\N	\N	\N
8726539	NEWMAN BRANCH,                                                    	27.783  	-82.407 	1	4.097   	5.851   	1.754   	S 
8729962	NIX POINT, PERDIDO BAY, FL                                        	30.393  	-87.425 	0	\N	\N	\N	\N
8724168	NO NAME KEY, FL                                                   	24.698  	-81.318 	0	\N	\N	\N	\N
8725899	NOKOMIS, VENICE INLET, FL                                         	27.123  	-82.470 	0	\N	\N	\N	\N
8726942	NORTH ANCLOTE KEY, FL                                             	28.210  	-82.840 	0	\N	\N	\N	\N
8722208	North Beach Causeway, FL                                          	27.472  	-80.325 	1	2.574   	0.411   	-2.163  	S 
8725488	NORTH CAPTIVA ISLAND, FL                                          	26.605  	-82.218 	1	3.285   	3.712   	0.427   	S 
8722957	NORTH DANIA SOUND, FL                                             	26.080  	-80.112 	0	\N	\N	\N	\N
8726908	NORTH FORK, ANCLOTE RIVER, FL                                     	28.158  	-82.757 	0	\N	\N	\N	\N
8722478	NORTH FORK, LOXAHATCHEE RIVER, FL                                 	26.975  	-80.113 	0	\N	\N	\N	\N
8722334	NORTH FORK, ST. LUCIE RIVER, FL                                   	27.243  	-80.313 	0	\N	\N	\N	\N
8724367	NORTH HARRIS CHANNEL, FL                                          	24.653  	-81.553 	0	\N	\N	\N	\N
8722472	NORTH LOXAHATCHEE RIVER, FL                                       	26.987  	-80.142 	0	\N	\N	\N	\N
8723050	NORTH MIAMI BEACH, FL                                             	25.930  	-80.120 	0	\N	\N	\N	\N
8722557	North Palm Beach, FL                                              	26.827  	-80.055 	0	\N	\N	\N	\N
8729949	NORTH PERDIDO RIVER, FL                                           	30.523  	-87.443 	0	\N	\N	\N	\N
8728941	NORTH PRONG, WETAPPO CREEK,                                       	30.003  	-85.348 	0	\N	\N	\N	\N
8721136	NORTH TURNBULL BAY, FL                                            	29.083  	-80.967 	0	\N	\N	\N	\N
8722482	NW FORK,LOXAHATCHEE RIVER, FL                                     	26.967  	-80.120 	0	\N	\N	\N	\N
8724441	O?HARA KEY, NORTH POINT, FL                                       	24.617  	-81.645 	0	\N	\N	\N	\N
8720305	OAK LANDING, FL                                                   	30.253  	-81.430 	0	\N	\N	\N	\N
8723519	OCEAN REEF HARBOR, KEY LARGO, FL                                  	25.308  	-80.277 	0	\N	\N	\N	\N
8722718	OCEAN RIDGE, FL                                                   	26.527  	-80.053 	1	3.92    	4.773   	0.853   	S 
8728262	OCHLOCKONEE BAY, FL                                               	29.977  	-84.375 	0	\N	\N	\N	\N
8728351	OCHLOCKONEE RIVER STATE PARK, FL                                  	30.005  	-84.472 	0	\N	\N	\N	\N
8724112	OHIO-BAHIA HONDA CHANNEL, FL                                      	24.670  	-81.252 	0	\N	\N	\N	\N
8729505	OLD PASS LAGOON, FL                                               	30.393  	-86.505 	0	\N	\N	\N	\N
8726607	Old Port Tampa, FL                                                	27.858  	-82.553 	1	4.375   	31.57   	27.195  	S 
8720374	ORANGE PARK, ST. JOHNS RIVER, FL                                  	30.168  	-81.695 	0	\N	\N	\N	\N
8720954	ORMOND BEACH, FL                                                  	29.285  	-81.053 	0	\N	\N	\N	\N
8720296	ORTEGA RIVER ENTRANCE, FL                                         	30.278  	-81.705 	0	\N	\N	\N	\N
8722146	OSLO,INDIAN RIVER, FL                                             	27.593  	-80.357 	0	\N	\N	\N	\N
8725331	OSTEGO BAY, ESTERO BAY, FL                                        	26.413  	-81.898 	0	\N	\N	\N	\N
8725171	OUTER CLAM BAY, FL                                                	26.212  	-81.813 	0	\N	\N	\N	\N
8728957	OVERSTREET,                                                       	29.997  	-85.370 	1	3.063   	4.883   	1.82    	S 
8727003	OYSTER CREEK NEW PORT RICHEY, FL                                  	28.257  	-82.735 	0	\N	\N	\N	\N
8727328	OZELLO NORTH, FL                                                  	28.863  	-82.667 	1	2.864   	5.869   	3.005   	S 
8727306	OZELLO, FL                                                        	28.825  	-82.658 	1	0.994   	4.889   	3.895   	S 
8726819	OZONA, FL                                                         	28.070  	-82.782 	0	\N	\N	\N	\N
8720232	PABLO CREEK ENTRANCE, FL                                          	30.377  	-81.448 	0	\N	\N	\N	\N
8720267	PABLO CREEK, FL                                                   	30.323  	-81.438 	0	\N	\N	\N	\N
8721222	PACKWOOD PLACE, FL                                                	28.940  	-80.870 	1	1.642   	3.793   	2.151   	S 
8720774	Palatka, St Johns River, FL                                       	29.643  	-81.632 	1	3.203   	1.686   	-1.517  	S 
8721874	PALM BAY, INDIAN RIVER, FL                                        	28.042  	-80.580 	0	\N	\N	\N	\N
8722621	Palm Beach, FL                                                    	26.705  	-80.045 	0	\N	\N	\N	\N
8722607	PALM BEACH, FL                                                    	26.733  	-80.042 	0	\N	\N	\N	\N
8726696	PALM RIVER ENTRANCE, FL                                           	27.947  	-82.402 	0	\N	\N	\N	\N
8726699	PALM RIVER, FL                                                    	27.948  	-82.385 	0	\N	\N	\N	\N
8720398	Palm Valley ICWW, FL                                              	30.133  	-81.387 	0	\N	\N	\N	\N
8726249	PALMA SOLA BAY NORTH, FL                                          	27.503  	-82.648 	0	\N	\N	\N	\N
8726233	PALMA SOLA BAY, SOUTH, FL                                         	27.485  	-82.645 	0	\N	\N	\N	\N
8720653	PALMETTO BLUFF, ST. JOHNS RIVER, FL                               	29.763  	-81.562 	0	\N	\N	\N	\N
8729189	PANAMA CITY BEACH, FL                                             	30.187  	-85.833 	0	\N	\N	\N	\N
8729210	Panama City Beach, FL                                             	30.213  	-85.878 	1	2.888   	29.09   	26.202  	S 
8729108	Panama City, FL                                                   	30.152  	-85.700 	1	2.905   	5.333   	2.428   	S 
8724951	PANTHER KEY, FL                                                   	25.858  	-81.538 	0	\N	\N	\N	\N
8729039	PARKER BRANCH, LAIRD BAYOU, EAST BAY, FL                          	30.137  	-85.517 	0	\N	\N	\N	\N
8729084	PARKER, EAST BAY, FL                                              	30.127  	-85.612 	0	\N	\N	\N	\N
8721727	PATRICK AIR FORCE BASE, FL                                        	28.245  	-80.600 	0	\N	\N	\N	\N
8729085	PEARL BAYOU, EAST BAY, FL                                         	30.098  	-85.613 	0	\N	\N	\N	\N
8722404	PECK LAKE, ST. LUCIE INLET, FL                                    	27.113  	-80.145 	0	\N	\N	\N	\N
8726651	PENDOLA POINT, HILLSBOROUGH BAY, FL                               	27.898  	-82.427 	0	\N	\N	\N	\N
8729868	PENSACOLA, NAVAL AIR STATION, FL                                  	30.345  	-87.273 	0	\N	\N	\N	\N
8729840	Pensacola, FL                                                     	30.404  	-87.211 	1	2.888   	10.374  	7.486   	S 
8729974	PERDIDO KEY, OLD RIVER, FL                                        	30.300  	-87.448 	0	\N	\N	\N	\N
8726254	PERICO BAYOU, FL                                                  	27.498  	-82.668 	0	\N	\N	\N	\N
8726232	PERICO ISLAND, FL                                                 	27.487  	-82.687 	0	\N	\N	\N	\N
8724353	PERKY LAKE, SUGERLOAF KEY, FL                                     	24.655  	-81.540 	0	\N	\N	\N	\N
8724378	PERKY, SUGARLOAF SOUND, FL                                        	24.648  	-81.570 	0	\N	\N	\N	\N
8722548	PGA Boulevard Bridge, Palm Beach, FL                              	26.843  	-80.067 	1	4.691   	6.389   	1.698   	S 
8720225	PHOENIX PARK, FL                                                  	30.383  	-81.637 	1	4.578   	8.452   	3.874   	S 
8724033	PIGEON KEY (INSIDE), FL                                           	24.705  	-81.157 	0	\N	\N	\N	\N
8724032	PIGEON KEY ATLANTIC SIDE, FL                                      	24.703  	-81.155 	0	\N	\N	\N	\N
8725528	PINE ISLAND, CHARLOTTE HARBOR, FL                                 	26.660  	-82.155 	0	\N	\N	\N	\N
8721749	PINEDA, INDIAN RIVER, FL                                          	28.212  	-80.663 	0	\N	\N	\N	\N
8720333	PINEY POINT, ST. JOHNS RIVER, FL                                  	30.228  	-81.663 	0	\N	\N	\N	\N
8727012	PITHLACHASCOTEE RIVER, FL                                         	28.268  	-82.727 	0	\N	\N	\N	\N
8725667	PLACIDA, GASPARILLA SOUND, FL                                     	26.833  	-82.265 	0	\N	\N	\N	\N
8723769	PLANTATION KEY, ATLANTIC SIDE, FL                                 	24.973  	-80.550 	0	\N	\N	\N	\N
8720008	PLATFORM OFF TIGER ISLAND, FL                                     	30.705  	-81.470 	0	\N	\N	\N	\N
8723689	POINT CHARLES, KEY LARGO, FL                                      	25.082  	-80.447 	0	\N	\N	\N	\N
8721147	Ponce De Leon Inlet South, FL                                     	29.063  	-80.915 	1	4.886   	6.56    	1.674   	S 
8724196	PORPOISE KEY, FL                                                  	24.718  	-81.352 	0	\N	\N	\N	\N
8725577	PORT BOCA GRANDE, CHARLOTTE HBR., FL                              	26.720  	-82.258 	1	2.882   	4.008   	1.126   	S 
8722951	PORT EVERGLADES, LAKE MABEL, FL                                   	26.092  	-80.123 	0	\N	\N	\N	\N
8727395	PORT INGLIS, WITHLACOOCHEE RIVER, FL                              	29.002  	-82.758 	0	\N	\N	\N	\N
8722968	PORT LAUDANIA, FL                                                 	26.060  	-80.130 	0	\N	\N	\N	\N
8726384	Port Manatee, FL                                                  	27.638  	-82.563 	1	3.823   	3.069   	-0.754  	S 
8722588	Port of West Palm Beach, FL                                       	26.770  	-80.052 	1	5.383   	29.231  	23.848  	S 
8722383	PORT SALERNO, FL                                                  	27.152  	-80.195 	0	\N	\N	\N	\N
8728912	Port St. Joe, FL                                                  	29.815  	-85.313 	1	3.005   	5.249   	2.244   	S 
8723691	PT. CHARLES, GAGE ?C?, KEY LARGO, FL                              	25.082  	-80.450 	0	\N	\N	\N	\N
8723692	PT. CHARLES, GAGE ?D?,KEY LARGO, FL                               	25.080  	-80.450 	0	\N	\N	\N	\N
8723506	PUMPKIN KEY, CARD SOUND, FL                                       	25.325  	-80.293 	1	1.726   	4.856   	3.13    	S 
8724373	PUMPKIN KEY, SUGARLOAF CHANNEL, FL                                	24.717  	-81.562 	0	\N	\N	\N	\N
8725744	Punta Gorda, FL                                                   	26.928  	-82.065 	0	\N	\N	\N	\N
8725391	PUNTA RASSA, SAN CARLOS BAY, FL                                   	26.488  	-82.013 	1	3.529   	5.548   	2.019   	S 
8727188	RACCOON POINT, FL                                                 	28.607  	-82.663 	0	\N	\N	\N	\N
8724311	RACOON KEY, FL                                                    	24.742  	-81.483 	0	\N	\N	\N	\N
8720625	Racy Point, St Johns River, FL                                    	29.802  	-81.548 	1	2.391   	1.305   	-1.086  	S 
8723350	RAGGED KEY #3, FL                                                 	25.533  	-80.172 	0	\N	\N	\N	\N
8723355	RAGGED KEY NO. 5, BISCAYNE BAY, FL                                	25.523  	-80.175 	1	2.982   	5.717   	2.735   	S 
8724239	RAMROD KEY SOUTHEAST, FL                                          	24.650  	-81.403 	0	\N	\N	\N	\N
8724255	RAMROD KEY, FL                                                    	24.660  	-81.423 	0	\N	\N	\N	\N
8720503	Red Bay Point, St Johns River, FL                                 	29.982  	-81.634 	1	1.204   	0.578   	-0.626  	S 
8726575	REDDINGTON LONG PIER, FL                                          	27.822  	-82.832 	0	\N	\N	\N	\N
8725441	REDFISH PASS,CAPTIVA IS.(NO. END), FL                             	26.550  	-82.197 	0	\N	\N	\N	\N
8726278	REDFISH POINT, MANATEE RIVER, FL                                  	27.527  	-82.482 	0	\N	\N	\N	\N
8720216	RIBAULT RIVER, LAKE FOREST, FL                                    	30.398  	-81.698 	0	\N	\N	\N	\N
8728949	RICHARDSON HAMMOCK, ST. JOSEPH BAY,                               	29.690  	-85.363 	0	\N	\N	\N	\N
8726906	RIVER VILLAGE, ANCLOTE RIVER, FL                                  	28.157  	-82.747 	0	\N	\N	\N	\N
8724529	RIVERIA CANAL, KEY WEST, FL                                       	24.565  	-81.752 	0	\N	\N	\N	\N
8723688	ROCK HARBOR INSIDE, FL                                            	25.082  	-80.445 	0	\N	\N	\N	\N
8729479	ROCKY BAYOU, FL                                                   	30.507  	-86.447 	0	\N	\N	\N	\N
8727122	ROCKY CR.,LITTLE PINE IS. BAY,, FL                                	28.487  	-82.662 	0	\N	\N	\N	\N
8720007	ROSES BLUFF, FL                                                   	30.703  	-81.577 	0	\N	\N	\N	\N
8724405	SADDLEBUNCH CHANNEL NO. 3, FL                                     	24.623  	-81.603 	0	\N	\N	\N	\N
8724417	SADDLEBUNCH CHANNEL NO. 4, FL                                     	24.615  	-81.617 	0	\N	\N	\N	\N
8724423	SADDLEBUNCH CHANNEL NO. 5, FL                                     	24.612  	-81.623 	0	\N	\N	\N	\N
8726738	SAFETY HARBOR, OLD TAMPA BAY, FL                                  	27.988  	-82.685 	1	4.312   	5.31    	0.998   	S 
8727021	SALT SPRINGS RUN PORT RICHEY, FL                                  	28.292  	-82.727 	0	\N	\N	\N	\N
8724635	SAND KEY LIGHTHOUSE, FL                                           	24.453  	-81.878 	1	3.031   	3.744   	0.713   	S 
8723372	SANDS KEY, ELLIOTT KEY, FL                                        	25.507  	-80.188 	0	\N	\N	\N	\N
8729376	SANTA ROSA HOGTOWN BAYOU, FL                                      	30.400  	-86.228 	0	\N	\N	\N	\N
8729679	SANTA ROSA SOUND, EAST END, FL                                    	30.385  	-86.863 	0	\N	\N	\N	\N
8726083	SARASOTA, FL                                                      	27.332  	-82.545 	0	\N	\N	\N	\N
8720137	SAWPIT CREEK ENTRANCE, FL                                         	30.513  	-81.457 	0	\N	\N	\N	\N
8720143	SAWPIT CREEK, FL                                                  	30.503  	-81.472 	0	\N	\N	\N	\N
8724369	SAWYER KEY (INSIDE), FL                                           	24.758  	-81.562 	0	\N	\N	\N	\N
8722004	SEBASTIAN INLET, FL                                               	27.860  	-80.448 	0	\N	\N	\N	\N
8722029	SEBASTIAN, INDIAN RIVER, FL                                       	27.812  	-80.463 	0	\N	\N	\N	\N
8722366	SEMINOLE SHORES, FL                                               	27.183  	-80.158 	0	\N	\N	\N	\N
8722371	SEWALL POINT. ST. LUCIE RIVER, FL                                 	27.175  	-80.188 	0	\N	\N	\N	\N
8725902	SHAKETT CREEK, FL                                                 	27.127  	-82.447 	0	\N	\N	\N	\N
8724438	SHARK KEY, FL                                                     	24.603  	-81.645 	0	\N	\N	\N	\N
8725781	SHELL CREEK, PEACE RIVER, FL                                      	26.980  	-81.960 	0	\N	\N	\N	\N
8725782	SHELL CREEK, SEABOARD RR, FL                                      	26.978  	-81.975 	0	\N	\N	\N	\N
8727359	SHELL ISLAND, CRYSTAL RIVER, FL                                   	28.923  	-82.692 	1	4.409   	4.878   	0.469   	S 
8729119	SHELL ISLAND, ST. ANDREWS BAY, FL                                 	30.095  	-85.685 	0	\N	\N	\N	\N
8723812	SHELL KEY CHANNEL, FL                                             	24.913  	-80.660 	0	\N	\N	\N	\N
8723807	SHELL KEY, N.W.SIDE, FL                                           	24.923  	-80.672 	0	\N	\N	\N	\N
8728229	SHELL POINT, WALKER CREEK, FL                                     	30.060  	-84.290 	1	5.94    	4.554   	-1.386  	S 
8729169	SHELL POINT, WEST BAY, FL                                         	30.215  	-85.740 	0	\N	\N	\N	\N
8729747	SHIELD POINT, BLACKWATER RIVER,                                   	30.582  	-87.015 	1	3.043   	5.177   	2.134   	S 
8727604	SHIRED ISLAND, FL                                                 	29.398  	-83.207 	0	\N	\N	\N	\N
8725985	SIESTA KEY, FL                                                    	27.222  	-82.515 	0	\N	\N	\N	\N
8724542	SIGSBEE PARK, GARRISON BIGHT CHANNEL, FL                          	24.585  	-81.775 	0	\N	\N	\N	\N
8728669	SIKES CUT, ST. GEORGE ISLAND,                                     	29.613  	-84.958 	1	2.743   	4.557   	1.814   	S 
8724422	SIMILAR SOUND, FL                                                 	24.600  	-81.622 	0	\N	\N	\N	\N
8720168	SIMPSON CREEK, FL                                                 	30.465  	-81.432 	0	\N	\N	\N	\N
8727705	SINK CREEK, FL                                                    	29.557  	-83.402 	0	\N	\N	\N	\N
8720196	SISTERS CREEK, FL                                                 	30.417  	-81.453 	1	7.303   	9.3     	1.997   	S 
8720833	SMITH CREEK, FLAGLER BEACH, FL                                    	29.478  	-81.137 	0	\N	\N	\N	\N
8724671	Smith Shoal Light, FL                                             	24.718  	-81.922 	1	5.278   	29.123  	23.845  	S 
8724463	SNIPE POINT, SNIPE KEYS, FL                                       	24.692  	-81.673 	0	\N	\N	\N	\N
8723999	SOMBRERO KEY LIGHTHOUSE, FL                                       	24.627  	-81.112 	0	\N	\N	\N	\N
8722219	South Beach Causeway, FL                                          	27.457  	-80.323 	1	2.509   	0.304   	-2.205  	S 
8728488	SOUTH CARRABELLE BEACH,                                           	29.802  	-84.737 	1	4.145   	4.95    	0.805   	S 
8722761	SOUTH DELRAY BEACH, FL                                            	26.447  	-80.065 	1	3.765   	3.799   	0.034   	S 
8722376	SOUTH FORK,ST. LUCIE RIVER, FL                                    	27.165  	-80.255 	0	\N	\N	\N	\N
8725691	SOUTH LEMON BAY, FL                                               	26.872  	-82.313 	0	\N	\N	\N	\N
8729117	SOUTH OF DAVIS POINT, ST. ANDREW BAY, FL                          	30.113  	-85.680 	0	\N	\N	\N	\N
8722956	South Port Everglades, FL                                         	26.082  	-80.117 	1	4.67    	27.969  	23.299  	S 
8720226	Southbank Riverwalk, St Johns River, FL                           	30.320  	-81.659 	1	3.616   	1.672   	-1.944  	S 
8729101	SOUTHPORT, NORTH BAY, FL                                          	30.283  	-85.647 	0	\N	\N	\N	\N
8724178	SPANISH HARBOR VIADUCT, BIG PINE KEY, FL                          	24.648  	-81.330 	0	\N	\N	\N	\N
8726892	SPRING BAYOU, TARPON SPRINGS, FL                                  	28.147  	-82.758 	0	\N	\N	\N	\N
8727843	SPRING WARRIOR CREEK, FL                                          	29.920  	-83.672 	1	5.857   	6.952   	1.095   	S 
8729052	ST ANDREW SOUND, FL                                               	30.025  	-85.542 	0	\N	\N	\N	\N
8726430	ST PETERSBURG BEACH SOUTH END, FL                                 	27.683  	-82.738 	0	\N	\N	\N	\N
8720576	ST. AUGUSTINE, FL                                                 	29.892  	-81.310 	0	\N	\N	\N	\N
8729022	ST. ANDREW SOUND, EAST END, FL                                    	29.970  	-85.480 	0	\N	\N	\N	\N
8729149	ST. ANDREW STATE PARK, FL                                         	30.130  	-85.743 	0	\N	\N	\N	\N
8729141	ST. ANDREWS STATE PARK, GRAND LAGOON, FL                          	30.133  	-85.732 	0	\N	\N	\N	\N
8720587	St. Augustine Beach, FL                                           	29.857  	-81.263 	1	7.985   	9.8     	1.815   	M 
8728552	ST. GEORGE IS.,RATTLESNAKE COVE, FL                               	29.692  	-84.792 	0	\N	\N	\N	\N
8728626	ST. GEORGE ISLAND, BAYSIDE,                                       	29.653  	-84.897 	0	\N	\N	\N	\N
8728548	ST. GEORGE ISLAND,EAST END, FL                                    	29.687  	-84.787 	0	\N	\N	\N	\N
8725393	ST. JAMES CITY,PINE ISLAND, FL                                    	26.492  	-82.082 	0	\N	\N	\N	\N
8728958	ST. JOSEPH POINT, ST. JOSEPH BAY,                                 	29.873  	-85.390 	1	2.845   	2.577   	-0.268  	S 
8722207	ST. LUCIE,INDIAN RIVER, FL                                        	27.480  	-80.333 	0	\N	\N	\N	\N
8728151	ST. MARKS CITY, FL                                                	30.155  	-84.203 	0	\N	\N	\N	\N
8728130	ST. MARKS LHTSE., APALACHEE BAY, FL                               	30.078  	-84.178 	1	5.78    	5.224   	-0.556  	S 
8720001	ST. MARYS RIVER HEADWATERS, FL                                    	30.787  	-81.840 	0	\N	\N	\N	\N
8726522	ST. PETERSBURG, (TEMP ADR), FL                                    	27.760  	-82.627 	0	\N	\N	\N	\N
8726520	St. Petersburg, Tampa Bay, FL                                     	27.761  	-82.627 	1	3.895   	6.313   	2.418   	S 
8728311	ST. TERESA BEACH, FL                                              	29.928  	-84.447 	0	\N	\N	\N	\N
8720582	State Road 312, Matanzas River, FL                                	29.867  	-81.307 	1	6.578   	2.947   	-3.631  	S 
8720692	State Road A1A Bridge, FL                                         	29.705  	-81.228 	1	5.976   	2.967   	-3.009  	S 
8727695	STEINHATCHEE, FL                                                  	29.672  	-83.390 	0	\N	\N	\N	\N
8724503	STOCK ISLAND, FL                                                  	24.577  	-81.722 	0	\N	\N	\N	\N
8722357	STUART, ST. LUCIE RIVER, FL                                       	27.200  	-80.258 	0	\N	\N	\N	\N
8724375	SUGARLOAF BEACH (INSIDE), FL                                      	24.607  	-81.567 	0	\N	\N	\N	\N
8724368	SUGARLOAF KEY (NORTH END), FL                                     	24.693  	-81.555 	0	\N	\N	\N	\N
8724347	SUGARLOAF KEY EAST SIDE, FL                                       	24.672  	-81.533 	0	\N	\N	\N	\N
8724377	SUGARLOAF SHORES NORTH, FL                                        	24.640  	-81.570 	0	\N	\N	\N	\N
8724363	SUGARLOAF SHORES WEST, FL                                         	24.633  	-81.552 	0	\N	\N	\N	\N
8724266	SUMMERLAND KEY EAST, FL                                           	24.652  	-81.435 	0	\N	\N	\N	\N
8724276	SUMMERLAND KEY, WEST SIDE, FL                                     	24.650  	-81.447 	0	\N	\N	\N	\N
8723678	SUNSET COVE, KEY LARGO, FL                                        	25.095  	-80.443 	0	\N	\N	\N	\N
8726833	SUTHERLAND BAYOU, PALM HARBOR, FL                                 	28.085  	-82.772 	0	\N	\N	\N	\N
8720782	Sutherlands Still, FL                                             	29.572  	-81.607 	0	\N	\N	\N	\N
8727558	SUWANNEE RIVER ENTRANCE, FL                                       	29.325  	-83.142 	0	\N	\N	\N	\N
8727577	SUWANNEE, FL                                                      	29.328  	-83.152 	0	\N	\N	\N	\N
8726639	TAMPA, BALLAST POINT, FL                                          	27.890  	-82.480 	1	4.383   	4.47    	0.087   	S 
8726668	TAMPA, HOOKER POINT, HILLSBOROUGH BAY, FL                         	27.918  	-82.445 	0	\N	\N	\N	\N
8729938	TARKLIN BAY,                                                      	30.350  	-87.415 	0	\N	\N	\N	\N
8725362	TARPON BAY, FL                                                    	26.443  	-82.082 	1	3.668   	6.071   	2.403   	S 
8724327	TARPON CREEK (OUTSIDE), FL                                        	24.628  	-81.510 	0	\N	\N	\N	\N
8724334	TARPON CREEK, SUGARLOAF KEY, FL                                   	24.630  	-81.517 	0	\N	\N	\N	\N
8726905	TARPON SPRINGS, ANCLOTE RIVER, FL                                 	28.160  	-82.768 	0	\N	\N	\N	\N
8723741	TAVERNIER (INSIDE), FLORIDA BAY, FL                               	25.015  	-80.515 	0	\N	\N	\N	\N
8723747	TAVERNIER HAWK CHANNEL, FL                                        	25.005  	-80.517 	0	\N	\N	\N	\N
8722488	TEQUESTA, LOXAHATCHEE RIVER, FL                                   	26.952  	-80.103 	0	\N	\N	\N	\N
8722486	TEQUESTA, N.FORK,LOXAHATCHEE R., FL                               	26.960  	-80.105 	0	\N	\N	\N	\N
8722487	TEQUESTA, NORTH, FL                                               	26.952  	-80.102 	0	\N	\N	\N	\N
8726572	THE KITCHEN, FL                                                   	27.820  	-82.387 	0	\N	\N	\N	\N
8726428	TIERRA VERDE, FL                                                  	27.688  	-82.718 	0	\N	\N	\N	\N
8720148	TIGER POINT, PUMPKIN HILLS CREEK, FL                              	30.502  	-81.495 	0	\N	\N	\N	\N
8721456	TITUSVILLE, INDIAN RIVER, FL                                      	28.620  	-80.800 	0	\N	\N	\N	\N
8720494	TOLOMATO RIVER, ICWW, FL                                          	29.994  	-81.329 	0	\N	\N	\N	\N
8723918	TOM?S HARBOR CHANNEL, FL                                          	24.777  	-80.923 	0	\N	\N	\N	\N
8723912	TOM?S HARBOR CUT, FL                                              	24.783  	-80.907 	0	\N	\N	\N	\N
8723467	TOTTEN KEY, BISCAYNE BAY, FL                                      	25.378  	-80.257 	0	\N	\N	\N	\N
8721604	Trident Pier, Port Canaveral, FL                                  	28.416  	-80.593 	1	6.413   	23.379  	16.966  	S 
8725439	TROPICAL HOMESITES,MATLACHA PASS, FL                              	26.548  	-82.080 	0	\N	\N	\N	\N
8720213	TROUT R., SHERWOOD FOREST, FL                                     	30.420  	-81.728 	1	4.698   	7.963   	3.265   	S 
8727277	TUCKERS ISLAND, HOMOSASSA RIVER, FL                               	28.772  	-82.695 	1	2.943   	4.662   	1.719   	S 
8723423	TURKEY POINT, BISCAYNE BAY, FL                                    	25.437  	-80.330 	1	2.887   	4.199   	1.312   	S 
8728360	TURKEY POINT, FL                                                  	29.915  	-84.512 	1	4.795   	4.012   	-0.783  	S 
8725649	TURTLE BAY, FL                                                    	26.797  	-82.183 	1	2.791   	5.18    	2.389   	S 
8721223	TURTLE MOUND, FL                                                  	28.927  	-80.825 	1	0.696   	3.679   	2.983   	S 
8726685	TWENTY-SECOND ST. CAUSEWAY, FL                                    	27.938  	-82.432 	0	\N	\N	\N	\N
8727348	Twin Rivers Marina, FL                                            	28.905  	-82.638 	1	3.652   	5.523   	1.871   	S 
8729738	UPPER BLACKWATER RIVER, FL                                        	30.658  	-86.988 	0	\N	\N	\N	\N
8723828	UPPER MATECUMBE KEY, WEST END, FL                                 	24.897  	-80.658 	0	\N	\N	\N	\N
8723814	UPPER MATECUMBE KEY,ATLAN. SIDE, FL                               	24.915  	-80.632 	0	\N	\N	\N	\N
8723808	UPPER MATECUMBE KEY,FLORIDA BAY, FL                               	24.925  	-80.632 	0	\N	\N	\N	\N
8723786	USCG STA., ISLAMORADA, SNAKE CR, FL                               	24.953  	-80.587 	0	\N	\N	\N	\N
8723970	Vaca Key, Florida Bay, FL                                         	24.711  	-81.107 	1	2.054   	4.08    	2.026   	S 
8729501	Valparaiso, FL                                                    	30.503  	-86.493 	1	1.356   	5.324   	3.968   	S 
8720059	Vaughns Landing, FL                                               	30.630  	-81.577 	1	3.356   	31.55   	28.194  	S 
8725858	VENICE, GULF OF MEXICO, FL                                        	27.072  	-82.453 	1	3.678   	3.845   	0.167   	S 
8725889	VENICE, ROBERTS BAY, FL                                           	27.112  	-82.463 	0	\N	\N	\N	\N
8722125	Vero Beach, FL                                                    	27.632  	-80.372 	1	1.135   	3.578   	2.443   	S 
8720554	Vilano Beach ICWW, FL                                             	29.917  	-81.300 	1	7.614   	3.613   	-4.001  	S 
8723214	Virginia Key, Biscayne Bay, FL                                    	25.732  	-80.162 	1	3.763   	13.266  	9.503   	S 
8722059	WABASSO,INDIAN RIVER, FL                                          	27.755  	-80.425 	0	\N	\N	\N	\N
8727471	WACCASASSA RIVER, FL                                              	29.165  	-82.808 	0	\N	\N	\N	\N
8728171	WAKULLA RIVER, FL                                                 	30.177  	-84.247 	0	\N	\N	\N	\N
8724448	WALTZ KEY, FL                                                     	24.647  	-81.653 	0	\N	\N	\N	\N
8729871	WARRINGTON, BAYOU GRANDE, FL                                      	30.375  	-87.277 	0	\N	\N	\N	\N
8724189	WATER KEY, BIG SPANISH CHANNEL, FL                                	24.740  	-81.342 	0	\N	\N	\N	\N
8724273	WATER KEYS SOUTH END, FL                                          	24.747  	-81.450 	0	\N	\N	\N	\N
8725222	WATER TURKEY BAY, FL                                              	26.277  	-81.825 	0	\N	\N	\N	\N
8723518	WEDNESDAY POINT, KEY LARGO, FL                                    	25.310  	-80.298 	0	\N	\N	\N	\N
8720832	Welaka, FL                                                        	29.477  	-81.675 	1	0.519   	0.55    	0.031   	S 
8724129	WEST BAHIA HONDA KEY, FL                                          	24.780  	-81.272 	0	\N	\N	\N	\N
8729197	WEST BAY CREEK WEST BAY, FL                                       	30.293  	-85.858 	0	\N	\N	\N	\N
8724639	West Jetty Navaid, FL                                             	24.625  	-81.895 	0	\N	\N	\N	\N
8722977	WEST LAKE, NORTH END, FL                                          	26.043  	-80.127 	0	\N	\N	\N	\N
8722982	WEST LAKE, SOUTH END, FL                                          	26.033  	-80.123 	0	\N	\N	\N	\N
8722654	WEST PALM BEACH, FL                                               	26.645  	-80.045 	0	\N	\N	\N	\N
8726711	WEST TAMPA, HILLSBOROUGH RIVER, FL                                	27.960  	-82.468 	0	\N	\N	\N	\N
8724646	WESTERN DRY ROCKS, FL                                             	24.445  	-81.927 	0	\N	\N	\N	\N
8728973	WETAPPO CREEK, EAST BAY, FL                                       	30.038  	-85.393 	0	\N	\N	\N	\N
8723795	WHALE HARBOR MARINA, FL                                           	24.940  	-80.608 	0	\N	\N	\N	\N
8722971	WHISKEY CREEK, SOUTH ENTRANCE, FL                                 	26.055  	-80.113 	0	\N	\N	\N	\N
8728694	WHITE BEACH, EAST BAY,                                            	29.785  	-84.898 	1	3.113   	5.117   	2.004   	S 
8728853	White City, ICWW, FL                                              	29.881  	-85.221 	1	1.881   	4.001   	2.12    	S 
8726159	WHITFIELD ESTATES, SARASOTA BAY, FL                               	27.408  	-82.580 	0	\N	\N	\N	\N
8725235	WIGGINS PASS, INSIDE, FL                                          	26.290  	-81.818 	0	\N	\N	\N	\N
8729736	WOODLAWN BEACH, FL                                                	30.387  	-86.992 	1	2.691   	3.643   	0.952   	S 
8722784	YAMATO, FL                                                        	26.403  	-80.070 	0	\N	\N	\N	\N
8727411	YANKEETOWN, WITHLACOOCHEE RIVER, FL                               	29.030  	-82.713 	0	\N	\N	\N	\N
8678322	Bailey Cut, Satilla River, GA                                     	30.985  	-81.592 	1	10.085  	33.826  	23.741  	M 
8679945	BEACH CREEK, GA                                                   	30.727  	-81.477 	0	\N	\N	\N	\N
8676808	CRISPEN ISLAND,TURTLE RIVER, GA                                   	31.213  	-81.550 	1	12.775  	12.969  	0.194   	M 
8674301	Daymark #135, South Newport River, GA                             	31.575  	-81.190 	1	10.973  	34.25   	23.277  	M 
8674975	Daymark #156, Head of Mud River, GA                               	31.487  	-81.320 	1	11.813  	10.882  	-0.931  	M 
8675761	Daymark #185, Rockdedundy River Entrance, GA                      	31.374  	-81.300 	1	11.04   	13.249  	2.209   	M 
8679758	DUNGENESS, SEACAMP DOCK, GA                                       	30.763  	-81.472 	1	9.767   	9.598   	-0.169  	M 
8670870	Fort Pulaski, GA                                                  	32.037  	-80.902 	1	10.766  	12.642  	1.876   	M 
8671314	HALFMOON REEF, HALFMOON RIVER,                                    	31.963  	-80.943 	1	10.915  	16.559  	5.644   	M 
8673381	HALFMOON, COLONELS ISLAND, TIMMONS RIVER, GA                      	31.695  	-81.272 	0	\N	\N	\N	\N
8677406	Howe Street Pier, Brunswick, GA                                   	31.145  	-81.497 	1	11.454  	29.994  	18.54   	M 
8679511	KINGS BAY, GA                                                     	30.797  	-81.515 	1	9.698   	11.589  	1.891   	M 
8676329	MACKAY RIVER, ICWW, BUTTERMILK SOUND, GA                          	31.285  	-81.385 	0	\N	\N	\N	\N
8674599	NORTH BLACKBEARD IS, SAPELO SND, GA                               	31.537  	-81.193 	0	\N	\N	\N	\N
8675622	OLD TOWER, SAPELO ISLAND, DOBOY SOUND, GA                         	31.390  	-81.288 	0	\N	\N	\N	\N
8670893	PALMER JOHNSON SHIPYARD, WILMINGTON R., GA                        	32.023  	-81.047 	0	\N	\N	\N	\N
8670424	Port Wentworth, GA                                                	32.143  	-81.142 	1	12.704  	12.352  	-0.352  	M 
8671315	PRIEST LANDING, WILMINGTON RIVER,                                 	31.963  	-81.012 	1	11.334  	16.383  	5.049   	M 
8678124	Raccoon Key Spit, GA                                              	31.015  	-81.456 	1	10.599  	33.905  	23.306  	M 
8679909	RANGE A LIGHT TOWER, GA                                           	30.727  	-81.498 	0	\N	\N	\N	\N
8672667	Range A Light, Bear River, GA                                     	31.793  	-81.182 	1	11.589  	10.202  	-1.387  	M 
8675623	SAPELO ISLAND (OUTSIDE), GA                                       	31.392  	-81.267 	0	\N	\N	\N	\N
8671086	SKIDAWAY INSTITUTE, SKIDAWAY RIVER,                               	31.990  	-81.023 	1	11.974  	17.991  	6.017   	M 
8673171	South Ossabaw Island, Bear River, GA                              	31.723  	-81.142 	1	11.273  	12.992  	1.719   	M 
8679964	ST. MARYS, ST. MARYS RIVER, GA                                    	30.720  	-81.548 	1	9.137   	9.332   	0.195   	M 
8677344	St.Simons Island, GA                                              	31.132  	-81.397 	1	10.827  	10.852  	0.025   	M 
8672875	Sunbury, Sunbury Channel, GA                                      	31.767  	-81.278 	1	11.358  	11.888  	0.53    	M 
8671029	TYBEE MARINA, TYBEE CREEK, GA                                     	31.997  	-80.855 	0	\N	\N	\N	\N
9044035	Fort Wayne, MI                                                    	42.298  	-83.093 	0	\N	\N	\N	\N
9044036	Fort Wayne, MI                                                    	42.298  	-83.093 	0	\N	\N	\N	\N
9044020	Gibraltar, MI                                                     	42.092  	-83.187 	0	\N	\N	\N	\N
9044049	Windmill Point, MI                                                	42.357  	-82.930 	0	\N	\N	\N	\N
9044030	Wyandotte, MI                                                     	42.202  	-83.148 	0	\N	\N	\N	\N
9063048	Ashtabula, NY                                                     	41.900  	-80.798 	0	\N	\N	\N	\N
9063032	Barcelona, NY                                                     	42.343  	-79.594 	0	\N	\N	\N	\N
9063020	Buffalo, NY                                                       	42.877  	-78.890 	0	\N	\N	\N	\N
9063063	Cleveland, OH                                                     	41.541  	-81.635 	0	\N	\N	\N	\N
9063043	CONNEAUT, OH                                                      	41.963  	-80.548 	0	\N	\N	\N	\N
9063112	Conners Island, Niagara River, NY                                 	43.073  	-78.978 	0	\N	\N	\N	\N
9063091	Cooley Creek, Lake Erie, OH                                       	41.673  	-83.284 	0	\N	\N	\N	\N
9063029	Dunkirk, NY                                                       	42.489  	-79.336 	0	\N	\N	\N	\N
9063038	Erie, Lake Erie, PA                                               	42.154  	-80.093 	0	\N	\N	\N	\N
9063053	Fairport, OH                                                      	41.760  	-81.281 	0	\N	\N	\N	\N
9063090	Fermi Power Plant, MI                                             	41.960  	-83.257 	0	\N	\N	\N	\N
9063074	HURON, OH                                                         	41.400  	-82.600 	0	\N	\N	\N	\N
9063069	Lorain, OH                                                        	41.469  	-82.175 	0	\N	\N	\N	\N
9063079	Marblehead, OH                                                    	41.544  	-82.731 	0	\N	\N	\N	\N
9063087	MONROE, MI                                                        	41.898  	-83.362 	0	\N	\N	\N	\N
9063075	Old Woman Creek NERRS, OH                                         	41.383  	-82.514 	0	\N	\N	\N	\N
9063117	ONTARIO STREET, NY                                                	42.943  	-78.910 	0	\N	\N	\N	\N
9063083	PORT CLINTON, OH                                                  	41.514  	-82.940 	0	\N	\N	\N	\N
9063097	PUT IN BAY, OH                                                    	41.659  	-82.826 	0	\N	\N	\N	\N
9063028	Sturgeon Point, NY                                                	42.691  	-79.047 	0	\N	\N	\N	\N
9063085	Toledo, OH                                                        	41.694  	-83.472 	0	\N	\N	\N	\N
9075065	Alpena, MI                                                        	45.063  	-83.429 	0	\N	\N	\N	\N
9075057	BLACK RIVER, MI                                                   	44.816  	-83.306 	0	\N	\N	\N	\N
9075092	CEDARVILLE, MI                                                    	45.996  	-84.362 	0	\N	\N	\N	\N
9075099	De Tour Village, MI                                               	45.993  	-83.898 	0	\N	\N	\N	\N
9075098	Detour on Lake Huron, MI                                          	46.017  	-83.920 	0	\N	\N	\N	\N
9075035	Essexville, MI                                                    	43.640  	-83.847 	0	\N	\N	\N	\N
9075034	ESSEXVILLE, MI                                                    	43.642  	-83.847 	0	\N	\N	\N	\N
9075041	Great Lakes Shores Marina, MI                                     	43.954  	-83.882 	0	\N	\N	\N	\N
9075014	Harbor Beach, MI                                                  	43.846  	-82.643 	0	\N	\N	\N	\N
9075059	HARRISVILLE, MI                                                   	44.659  	-83.286 	0	\N	\N	\N	\N
9075002	Lakeport, MI                                                      	43.142  	-82.493 	0	\N	\N	\N	\N
9075080	Mackinaw City, MI                                                 	45.800  	-84.721 	0	\N	\N	\N	\N
9075079	Mackinaw City, MI                                                 	45.800  	-84.725 	0	\N	\N	\N	\N
9075056	Oscoda, Lake Huron, MI                                            	44.406  	-83.322 	0	\N	\N	\N	\N
9075045	Point Lookout, MI                                                 	44.050  	-83.657 	0	\N	\N	\N	\N
9075024	Port Austin, MI                                                   	44.049  	-82.994 	0	\N	\N	\N	\N
9075011	PORT SANILAC, MI                                                  	43.431  	-82.539 	0	\N	\N	\N	\N
9075073	Rogers City, MI                                                   	45.423  	-83.810 	0	\N	\N	\N	\N
9075031	Sebewaing, Lake Huron, MI                                         	43.735  	-83.459 	0	\N	\N	\N	\N
9087091	Anderson Point, MI                                                	45.619  	-86.659 	0	\N	\N	\N	\N
9087044	Calumet Harbor, IL                                                	41.730  	-87.538 	0	\N	\N	\N	\N
9087090	ESCANABA, MI                                                      	45.743  	-87.042 	0	\N	\N	\N	\N
9087175	Fish Creek Harbor, Lake Michigan, WI                              	44.747  	-87.699 	0	\N	\N	\N	\N
9087018	Frankfort, MI                                                     	44.630  	-86.246 	0	\N	\N	\N	\N
9087077	Green Bay Southeast, WI                                           	44.538  	-88.003 	0	\N	\N	\N	\N
9087079	Green Bay, WI                                                     	44.541  	-88.007 	0	\N	\N	\N	\N
9087078	GREEN BAY, WI                                                     	44.540  	-88.008 	0	\N	\N	\N	\N
9087031	Holland, MI                                                       	42.773  	-86.213 	0	\N	\N	\N	\N
9087042	INDIANA HARBOR, IN                                                	41.654  	-87.430 	0	\N	\N	\N	\N
9087068	Kewaunee, Lake Michigan, WI                                       	44.464  	-87.501 	0	\N	\N	\N	\N
9087023	Ludington, MI                                                     	43.947  	-86.442 	0	\N	\N	\N	\N
9087094	MANISTIQUE, MI                                                    	45.952  	-86.247 	0	\N	\N	\N	\N
9087064	Manitowoc, WI                                                     	44.089  	-87.648 	0	\N	\N	\N	\N
9087088	Menominee, MI                                                     	45.096  	-87.590 	0	\N	\N	\N	\N
9087038	Michigan City, IN                                                 	41.725  	-86.908 	0	\N	\N	\N	\N
9087058	Milwaukee, Lake Michigan, WI                                      	43.002  	-87.888 	0	\N	\N	\N	\N
9087057	Milwaukee, WI                                                     	43.002  	-87.888 	0	\N	\N	\N	\N
9087028	Muskegon, MI                                                      	43.228  	-86.238 	0	\N	\N	\N	\N
9087005	PETOSKEY, LAKE MICHIGAN, MI                                       	45.378  	-84.959 	0	\N	\N	\N	\N
9087096	Port Inland, MI                                                   	45.970  	-85.872 	0	\N	\N	\N	\N
9087036	St. Joseph, MI                                                    	42.113  	-86.481 	0	\N	\N	\N	\N
9087072	Sturgeon Bay Canal, WI                                            	44.796  	-87.314 	0	\N	\N	\N	\N
9087010	Traverse City, MI                                                 	44.770  	-85.625 	0	\N	\N	\N	\N
9087050	WAUKEGAN, IL                                                      	42.361  	-87.823 	0	\N	\N	\N	\N
9052000	Cape Vincent, NY                                                  	44.130  	-76.332 	0	\N	\N	\N	\N
9052090	Fort Niagara, NY                                                  	43.264  	-79.064 	0	\N	\N	\N	\N
9052076	Olcott, NY                                                        	43.338  	-78.727 	0	\N	\N	\N	\N
9052030	Oswego, NY                                                        	43.464  	-76.512 	0	\N	\N	\N	\N
9052025	Port Ontario, Lake Ontario, NY                                    	43.574  	-76.202 	0	\N	\N	\N	\N
9052058	Rochester, NY                                                     	43.269  	-77.626 	0	\N	\N	\N	\N
9052015	Stony Island, NY                                                  	43.881  	-76.353 	0	\N	\N	\N	\N
9052001	TIBBETTS POINT, NY                                                	44.100  	-76.370 	0	\N	\N	\N	\N
9034051	Grosse Pointe YC, MI                                              	42.435  	-82.872 	0	\N	\N	\N	\N
9034058	MINNICH DOCK, MI                                                  	42.575  	-82.655 	0	\N	\N	\N	\N
9034057	New Baltimore, Lake St. Clair, MI                                 	42.678  	-82.734 	0	\N	\N	\N	\N
9034055	Point Huron, MI                                                   	42.593  	-82.772 	0	\N	\N	\N	\N
9034052	St Clair Shores, MI                                               	42.473  	-82.879 	0	\N	\N	\N	\N
9099050	Ashland, MI                                                       	46.596  	-90.900 	0	\N	\N	\N	\N
9099075	Beaver Bay, MN                                                    	47.271  	-91.276 	0	\N	\N	\N	\N
9099064	Duluth, MN                                                        	46.776  	-92.092 	0	\N	\N	\N	\N
9099039	Eagle Harbor, MI                                                  	47.459  	-88.149 	0	\N	\N	\N	\N
9099090	Grand Marais, Lake Superior, MN                                   	47.749  	-90.341 	0	\N	\N	\N	\N
9099025	KEWEENAW [LE], MI                                                 	46.976  	-88.433 	0	\N	\N	\N	\N
9099041	KEWEENAW [UE], MI                                                 	47.233  	-88.624 	0	\N	\N	\N	\N
9099018	Marquette C.G., MI                                                	46.546  	-87.379 	0	\N	\N	\N	\N
9099016	Marquette, MI                                                     	46.542  	-87.390 	0	\N	\N	\N	\N
9099013	Munising, MI                                                      	46.417  	-86.655 	0	\N	\N	\N	\N
9099044	Ontonagon, MI                                                     	46.874  	-89.324 	0	\N	\N	\N	\N
9099004	Point Iroquois, MI                                                	46.485  	-84.631 	0	\N	\N	\N	\N
9099062	Superior NERRS, WI                                                	46.704  	-92.017 	0	\N	\N	\N	\N
9099070	TWO HARBOR, MN                                                    	47.017  	-91.675 	0	\N	\N	\N	\N
9099007	Whitefish Point, Lake Superior, MI                                	46.761  	-84.964 	0	\N	\N	\N	\N
9063009	American Falls, NY                                                	43.081  	-79.061 	0	\N	\N	\N	\N
9063010	American Falls, NY                                                	43.082  	-79.063 	0	\N	\N	\N	\N
9063007	Ashland Ave, NY                                                   	43.100  	-79.060 	0	\N	\N	\N	\N
9063015	Beaver Island State Park, Niagara River, NY                       	42.958  	-78.954 	0	\N	\N	\N	\N
9063017	Black Rock Canal, NY                                              	42.934  	-78.908 	0	\N	\N	\N	\N
9063016	HUNTLEY STATION, NY                                               	42.971  	-78.930 	0	\N	\N	\N	\N
9063013	LA SALLE YACHT CLUB, NY                                           	43.073  	-78.985 	0	\N	\N	\N	\N
9063012	Niagara Intake, NY                                                	43.077  	-79.014 	0	\N	\N	\N	\N
9063019	PEACE BRIDGE, NY                                                  	42.907  	-78.903 	0	\N	\N	\N	\N
9063018	TONAWANDA ISLAND, NY                                              	43.028  	-78.887 	0	\N	\N	\N	\N
9014070	Algonac, MI                                                       	42.621  	-82.527 	0	\N	\N	\N	\N
9014087	Dry Dock, MI                                                      	42.945  	-82.443 	0	\N	\N	\N	\N
9014096	Dunn Paper, MI                                                    	43.003  	-82.422 	0	\N	\N	\N	\N
9014098	Fort Gratiot, MI                                                  	43.007  	-82.423 	0	\N	\N	\N	\N
9014099	Fort Gratiot, MI                                                  	43.006  	-82.420 	0	\N	\N	\N	\N
9014084	Marysville, MI                                                    	42.907  	-82.467 	0	\N	\N	\N	\N
9014090	Mouth of the Black River, MI                                      	42.975  	-82.419 	0	\N	\N	\N	\N
9014091	Mouth of the Black River, MI                                      	42.975  	-82.419 	0	\N	\N	\N	\N
9014080	St. Clair State Police, MI                                        	42.812  	-82.486 	0	\N	\N	\N	\N
9014081	St. Clair, MI                                                     	42.804  	-82.465 	0	\N	\N	\N	\N
8311062	Alexandria Bay, NY                                                	44.331  	-75.935 	0	\N	\N	\N	\N
8311060	ALEXANDRIA BAY, NY                                                	44.300  	-75.917 	0	\N	\N	\N	\N
8311070	CLAYTON, NY                                                       	44.242  	-76.087 	0	\N	\N	\N	\N
8311030	Ogdensburg, NY                                                    	44.702  	-75.494 	0	\N	\N	\N	\N
8311018	WADDINGTON, NY                                                    	44.865  	-75.210 	0	\N	\N	\N	\N
9076050	FRECHETTE POINT, MI                                               	46.461  	-84.286 	0	\N	\N	\N	\N
9076032	Little Rapids, MI                                                 	46.485  	-84.301 	0	\N	\N	\N	\N
9076033	Little Rapids, MI                                                 	46.486  	-84.302 	0	\N	\N	\N	\N
9076028	Lookout Station #4, MI                                            	46.284  	-84.212 	0	\N	\N	\N	\N
9076024	Rock Cut, MI                                                      	46.265  	-84.191 	0	\N	\N	\N	\N
9076070	S.W. Pier, St. Marys River, MI                                    	46.501  	-84.373 	0	\N	\N	\N	\N
9076060	U.S. Slip, MI                                                     	46.501  	-84.340 	0	\N	\N	\N	\N
9076027	West Neebish Island, MI                                           	46.283  	-84.205 	0	\N	\N	\N	\N
1612404	FORD ISLAND, FERRY DOCK, PEARL HARBOR, HI                         	21.368  	-157.940	1	2.99    	5.006   	2.016   	S 
1612366	FORT KAMEHAMEHA, BISHOP POINT, PEARL HBR, HI                      	21.330  	-157.967	1	2.963   	4.701   	1.738   	S 
1617760	Hilo, Hilo Bay, Kuhio Bay, HI                                     	19.730  	-155.060	1	3.82    	7.12    	3.3     	S 
1612340	Honolulu, HI                                                      	21.307  	-157.867	1	2.964   	6.391   	3.427   	S 
1615680	Kahului, Kahului Harbor, HI                                       	20.895  	-156.477	1	3.622   	5.346   	1.724   	S 
1614465	KAUMALAPAU HARBOR, LANAI ISLAND, HI                               	20.790  	-156.995	0	\N	\N	\N	\N
1613198	Kaunakakai Harbor, HI                                             	21.085  	-157.032	1	3.205   	7.73    	4.525   	S 
1617433	Kawaihae, HI                                                      	20.037  	-155.829	1	3.303   	5.72    	2.417   	S 
1612702	LAIEMALOO, OAHU ISLAND, HI                                        	21.637  	-157.922	0	\N	\N	\N	\N
1612479	MOKUOLOE, KANEONE BAY, OAHU IS. (BACKUP), HI                      	21.435  	-157.792	0	\N	\N	\N	\N
1612480	Mokuoloe, HI                                                      	21.433  	-157.790	1	3.49    	5.714   	2.224   	S 
1611400	Nawiliwili, HI                                                    	21.954  	-159.356	1	2.949   	4.79    	1.841   	S 
1611347	PORT ALLEN, HANAPEPE BAY, KAUAI ISLAND, HI                        	21.903  	-159.592	1	3.188   	5.951   	2.763   	S 
2431000	Diego Garcia, United Kingdom                                      	-7.290  	72.393  	0	\N	\N	\N	\N
8761727	ALLIANCE, MISSISSIPPI RIVER, LA                                   	29.690  	-89.973 	0	\N	\N	\N	\N
8761108	BAY GARDENE, LA                                                   	29.598  	-89.618 	0	\N	\N	\N	\N
8764044	Berwick, Atchafalaya River, LA                                    	29.668  	-91.238 	1	2.78    	21.532  	18.752  	S 
8761534	BIG POINT, LAKE PONTCHARTRAIN, LA                                 	30.228  	-89.853 	0	\N	\N	\N	\N
8761414	BILLET BAY COMMUNITY, BILLET BAY, LA                              	29.372  	-89.752 	0	\N	\N	\N	\N
8760595	BRETON ISLAND, LA                                                 	29.493  	-89.173 	0	\N	\N	\N	\N
8767961	Bulk Terminal, LA                                                 	30.190  	-93.301 	1	1.976   	24.605  	22.629  	S 
8768094	Calcasieu Pass, LA                                                	29.768  	-93.343 	1	3.606   	29.34   	25.734  	S 
8761955	Carrollton, LA                                                    	29.933  	-90.135 	0	\N	\N	\N	\N
8762788	CARTHAGE BLUFF LDG, AMITE RIVER, LA                               	30.308  	-90.587 	0	\N	\N	\N	\N
8761487	CHEF MENTEUR, CHEF MENTEUR PASS, LA                               	30.065  	-89.800 	0	\N	\N	\N	\N
8761826	CHENIERE CAMINADA, CAMINADA PASS, LA                              	29.210  	-90.040 	1	2.275   	4.898   	2.623   	S 
8761198	CHEVRON STATION 289, PELICAN ISLAND, LA                           	29.267  	-89.598 	0	\N	\N	\N	\N
8762928	Cocodrie, LA                                                      	29.245  	-90.662 	1	2.325   	5.029   	2.704   	S 
8760742	COMFORT ISLAND, LA                                                	29.823  	-89.270 	0	\N	\N	\N	\N
8765258	CYPREMORT POINT, LA                                               	29.712  	-91.878 	0	\N	\N	\N	\N
8765251	Cypremort Point, LA                                               	29.713  	-91.880 	1	2.351   	25.947  	23.596  	S 
8764101	DEER ISLAND, LA                                                   	29.473  	-91.267 	0	\N	\N	\N	\N
8760417	Devon Energy Facility, LA                                         	29.201  	-89.040 	1	2.981   	41.949  	38.968  	S 
8762888	E. ISLE DERNIERES, LAKE PELTO, LA                                 	29.072  	-90.640 	1	2.816   	5.171   	2.355   	S 
8762372	East Bank 1, Norco, B. LaBranche, LA                              	30.050  	-90.368 	1	1.418   	33.391  	31.973  	S 
8762273	EAST END, PASS MANCHAC, LA                                        	30.297  	-90.312 	0	\N	\N	\N	\N
8762223	EAST TIMBALIER ISLAND, TIMBALIER BAY, LA                          	29.077  	-90.285 	1	2.823   	4.809   	1.986   	S 
8761207	EMPIRE, DOULLUT CANAL, LA                                         	29.375  	-89.602 	0	\N	\N	\N	\N
8761193	EMPIRE, MISSISSIPPI RIVER, LA                                     	29.390  	-89.595 	0	\N	\N	\N	\N
8761959	EQUITABLE PETROLEUM DOCK, TURTLE BAY, LA                          	29.520  	-90.138 	0	\N	\N	\N	\N
8764314	Eugene Island, North of , Gulf of Mexico, LA                      	29.368  	-91.384 	1	3.521   	14.73   	11.209  	S 
8764311	Eugene Island, LA                                                 	29.372  	-91.385 	0	\N	\N	\N	\N
8762079	FOURCHON (LUMCON), LA                                             	29.113  	-90.185 	0	\N	\N	\N	\N
8766072	Freshwater Canal Locks, LA                                        	29.552  	-92.305 	1	3.737   	23.622  	19.885  	S 
8762184	GOLDEN MEADOW, PLAISANCE CANAL,                                   	29.373  	-90.265 	1	0.82    	4.065   	3.245   	S 
8761720	GRAND ISLE, LA                                                    	29.255  	-89.968 	0	\N	\N	\N	\N
8761724	Grand Isle, LA                                                    	29.263  	-89.957 	1	2.432   	8.016   	5.584   	S 
8760668	GRAND PASS, LA                                                    	30.127  	-89.222 	1	3.445   	4.987   	1.542   	S 
8761426	GREENS DITCH, LAKE ST. CATHERINE, LA                              	30.112  	-89.760 	0	\N	\N	\N	\N
8762483	I-10 Bonnet Carre Floodway, LA                                    	30.068  	-90.390 	1	1.651   	0.932   	-0.719  	S 
8763027	LA HIGHWAY 57, BAYOU DULAC, LA                                    	29.373  	-90.712 	0	\N	\N	\N	\N
8761899	LAFITTE, BARATARIA WATERWAY, LA                                   	29.667  	-90.112 	1	1.107   	4       	2.893   	S 
8767816	Lake Charles, LA                                                  	30.224  	-93.222 	1	2.502   	28.103  	25.601  	S 
8761602	LAKE JUDGE PEREZ, HERMITAGE BAYO, LA                              	29.558  	-89.883 	0	\N	\N	\N	\N
8764227	LAWMA, Amerada Pass, LA                                           	29.450  	-91.338 	1	3.097   	25.548  	22.451  	S 
8761484	LEASE VB #4, BAYOU DULAC, LA                                      	29.457  	-89.800 	0	\N	\N	\N	\N
8762084	LEEVILLE, BAYOU LAFOURCHE, LA                                     	29.248  	-90.212 	1	2.019   	4.812   	2.793   	S 
8761799	M.V. PETROLEUM DOCK, BAYOU ST DENIS, LA                           	29.497  	-90.025 	0	\N	\N	\N	\N
8765026	MARSH IS., ATCHAFALAYA BAY, LA                                    	29.485  	-91.763 	0	\N	\N	\N	\N
8761529	MARTELLO CASTLE, LAKE BORGNE, LA                                  	29.945  	-89.835 	1	2.053   	64.976  	62.923  	S 
8761742	MENDICANT ISLAND, BARATARIA BAY, LA                               	29.318  	-89.980 	1	2.255   	4.719   	2.464   	S 
8761678	MICHOUD SUBSTATION, ICWW, LA                                      	30.007  	-89.937 	0	\N	\N	\N	\N
8763986	MORGAN CITY, LA                                                   	29.693  	-91.210 	0	\N	\N	\N	\N
8761927	New Canal Station, LA                                             	30.027  	-90.113 	1	1.486   	5.271   	3.785   	S 
8765171	New Iberia, LA                                                    	29.948  	-91.838 	0	\N	\N	\N	\N
8760412	North Pass, LA                                                    	29.205  	-89.037 	0	\N	\N	\N	\N
8760889	Olga Compressor Station, Grand Bay, LA                            	29.387  	-89.380 	1	2.194   	36.509  	34.315  	S 
8760922	Pilots Station East, S.W. Pass, LA                                	28.932  	-89.408 	1	2.549   	32.607  	30.058  	S 
8760721	Pilottown, LA                                                     	29.178  	-89.258 	1	2.016   	7.055   	5.039   	S 
8764256	POINT AU FER, LA                                                  	29.333  	-91.353 	0	\N	\N	\N	\N
8762731	POINT BARRE, HUMBLE CANAL, LA                                     	29.428  	-90.557 	0	\N	\N	\N	\N
8762525	POINTE AU CHIEN @ CUT OFF CANAL, LA                               	29.417  	-90.447 	0	\N	\N	\N	\N
8762075	Port Fourchon, Belle Pass, LA                                     	29.114  	-90.199 	1	2.709   	31.821  	29.112  	S 
8762571	PT. AU CHIEN WMA, ST LOUIS CANAL, LA                              	29.457  	-90.472 	0	\N	\N	\N	\N
8763506	RACCOON POINT, ISLE DERNIERES, LA                                 	29.063  	-90.962 	0	\N	\N	\N	\N
8761473	RT. 433, BAYOU BONFOUCA, LA                                       	30.272  	-89.793 	0	\N	\N	\N	\N
8761699	S.N.G. CO., LACOMBE BAYOU, LA                                     	30.280  	-89.953 	0	\N	\N	\N	\N
8764632	SALT POINT, LA                                                    	29.573  	-91.537 	0	\N	\N	\N	\N
8762231	SALVADOR WMA, LAKE SALVADOR, LA                                   	29.772  	-90.290 	0	\N	\N	\N	\N
8761305	Shell Beach, LA                                                   	29.868  	-89.673 	1	2.967   	33.559  	30.592  	S 
8764165	SHELL ISLAND,ATCHAFALAYA BAY, LA                                  	29.473  	-91.305 	0	\N	\N	\N	\N
8760781	SHELL OIL, EAST BAY, LA                                           	29.053  	-89.305 	0	\N	\N	\N	\N
8760550	SOUTH PASS, LA                                                    	28.992  	-89.140 	0	\N	\N	\N	\N
8760551	South Pass, LA                                                    	28.990  	-89.140 	1	2.951   	6.31    	3.359   	S 
8760783	SOUTHWEST PASS, LA                                                	29.057  	-89.308 	0	\N	\N	\N	\N
8761679	ST. MARYS POINT, BARATARIA BAY, LA                                	29.432  	-89.938 	0	\N	\N	\N	\N
8764025	Stouts Pass at Six Mile Lake, LA                                  	29.743  	-91.230 	1	1.071   	22.127  	21.056  	S 
8763153	SUPERIOR OIL, FOUR ISLAND BAYOU, LA                               	29.235  	-90.780 	0	\N	\N	\N	\N
8760943	SW Pass, LA                                                       	28.925  	-89.418 	1	2.633   	16.9    	14.267  	S 
8761993	TCHEFUNCTA RIVER, LAKE PONT, LA                                   	30.378  	-90.160 	0	\N	\N	\N	\N
8761819	TEXACO DOCK, HACKBERRY BAY, LA                                    	29.402  	-90.038 	1	1.922   	4.594   	2.672   	S 
8761962	TEXACO GAS EXPLORATION DOCK, BAY RAMBO, LA                        	29.362  	-90.140 	0	\N	\N	\N	\N
8762938	TEXACO TB#3, BAYOU PETIT CAILLOU, LA                              	29.187  	-90.667 	0	\N	\N	\N	\N
8763535	Texas Gas Platform, Caillou Bay, LA                               	29.175  	-90.976 	1	2.517   	23.929  	21.412  	S 
8761402	The Rigolets, LA                                                  	30.167  	-89.737 	1	1.955   	4.25    	2.295   	S 
8762582	TIMBALIER ISLAND, TIMBALIER BAY, LA                               	29.067  	-90.477 	0	\N	\N	\N	\N
8762419	U.S. HIGHWAY 51, PASS MANCHAC, LA                                 	30.285  	-90.402 	0	\N	\N	\N	\N
8760849	VENICE, GRAND PASS, LA                                            	29.273  	-89.352 	0	\N	\N	\N	\N
8761385	VICINITY OF UNO CHEF MENTEUR, LA                                  	30.069  	-89.802 	0	\N	\N	\N	\N
8764361	WAX LAKE OUTLET, LA                                               	29.573  	-91.420 	0	\N	\N	\N	\N
8765148	Weeks Bay, LA                                                     	29.837  	-91.838 	1	3.487   	2.886   	-0.601  	S 
8762482	West Bank 1, Bayou Gauche, LA                                     	29.789  	-90.420 	0	\N	\N	\N	\N
8761494	WEST POINT A LA HACHE, MISS. RIVER, LA                            	29.573  	-89.805 	0	\N	\N	\N	\N
8419751	APPLEDORE ISLAND, ME                                              	42.988  	-70.618 	0	\N	\N	\N	\N
8417144	Augusta, MCRR Bridge, Kennebec River, ME                          	44.320  	-69.770 	0	\N	\N	\N	\N
8414612	Bangor, ME                                                        	44.785  	-68.767 	1	18.554  	8.799   	-9.755  	L 
8413320	Bar Harbor, ME                                                    	44.392  	-68.204 	1	15.6    	17.015  	1.415   	L 
8417227	Bath, ME                                                          	43.925  	-69.815 	1	10.822  	24.453  	13.631  	M 
8415191	BELFAST, PENOBSCOT BAY, ME                                        	44.427  	-69.005 	0	\N	\N	\N	\N
8418828	BIDDEFORD, SACO RIVER, ME                                         	43.492  	-70.447 	1	16.955  	12.729  	-4.226  	L 
8414684	BUCKSPORT, ME                                                     	44.572  	-68.802 	0	\N	\N	\N	\N
8418606	CAMP ELLIS, SACO RIVER, ME                                        	43.462  	-70.382 	1	13.355  	15.587  	2.232   	M 
8419399	CAPE NEDDICK, ME                                                  	43.167  	-70.593 	0	\N	\N	\N	\N
8417821	CLIFF ISLAND, LUCKSE SOUND, ME                                    	43.695  	-70.110 	0	\N	\N	\N	\N
8410714	COFFIN POINT, COFFIN NECK, ME                                     	44.870  	-67.108 	1	23.759  	24.657  	0.898   	XL
8418009	COW ISLAND, CASCO BAY, ME                                         	43.690  	-70.190 	0	\N	\N	\N	\N
8417997	CUSHING ISLAND, CASCO BAY, ME                                     	43.645  	-70.198 	0	\N	\N	\N	\N
8411060	Cutler Farris Wharf, ME                                           	44.657  	-67.205 	1	19.551  	22.587  	3.036   	L 
8411250	Cutler Naval Base, ME                                             	44.642  	-67.297 	1	18.215  	38.456  	20.241  	L 
8417874	DOYLE POINT, CASCO BAY, ME                                        	43.752  	-70.140 	0	\N	\N	\N	\N
8410140	Eastport, ME                                                      	44.905  	-66.983 	1	25.669  	27.262  	1.593   	XL
8413801	Ellsworth, ME                                                     	44.535  	-68.422 	1	15.806  	18.743  	2.937   	L 
8418015	FALMOUTH FORESIDE, ME                                             	43.732  	-70.205 	0	\N	\N	\N	\N
8418268	FORE RIVER, PORTLAND, ME                                          	43.642  	-70.285 	0	\N	\N	\N	\N
8419528	FORT POINT, YORK HARBOR, ME                                       	43.130  	-70.638 	0	\N	\N	\N	\N
8414721	Fort Point, ME                                                    	44.472  	-68.813 	1	15.587  	32.518  	16.931  	L 
8417134	Gardiner, ME                                                      	44.233  	-69.767 	1	8.223   	29.343  	21.12   	M 
8410715	GARNET POINT, HERSEY NECK, ME                                     	44.923  	-67.130 	1	27.129  	25.484  	-1.645  	XL
8419688	GERRISH ISLAND, KITTERY, ME                                       	43.067  	-70.697 	0	\N	\N	\N	\N
8410864	Gravelly Point, Whiting Bay, ME                                   	44.823  	-67.152 	1	22.678  	29.423  	6.745   	XL
8417881	GREAT CHEBEAGUE ISLAND, ME                                        	43.722  	-70.142 	0	\N	\N	\N	\N
8417988	GREAT DIAMOND IS., CASCO BAY, ME                                  	43.670  	-70.200 	0	\N	\N	\N	\N
8417177	Hunniwell Point, ME                                               	43.755  	-69.785 	1	13.109  	29.215  	16.106  	M 
8414821	IRON POINT, FOX ISL, THOROFARE, ME                                	44.127  	-68.858 	0	\N	\N	\N	\N
8418911	KENNEBUNKPORT, KENNEBUNK RIVER, ME                                	43.358  	-70.477 	1	13.887  	13.83   	-0.057  	M 
8417941	LONG ISLAND, CASCO BAY, ME                                        	43.690  	-70.170 	0	\N	\N	\N	\N
8413825	MACKEREL COVE, SWANS ISLAND, ME                                   	44.170  	-68.435 	0	\N	\N	\N	\N
8412581	Milbridge, ME                                                     	44.540  	-67.875 	1	16.131  	26.395  	10.264  	L 
8414856	NORTH HAVEN, ME                                                   	44.127  	-68.873 	0	\N	\N	\N	\N
8414249	Oceanville, Deer Isle, ME                                         	44.192  	-68.621 	1	14.775  	32.076  	17.301  	M 
8410834	Pettegrove Point, Dochet Island, ME                               	45.128  	-67.145 	1	26.96   	31.668  	4.708   	XL
8417087	Phipps Pt., ME                                                    	43.898  	-69.743 	0	\N	\N	\N	\N
8418445	Pine Point, ME                                                    	43.545  	-70.333 	1	12.977  	29.726  	16.749  	M 
8418031	PORTLAND HEAD LIGHT STATION, ME                                   	43.623  	-70.207 	0	\N	\N	\N	\N
8418150	Portland, ME                                                      	43.658  	-70.244 	1	13.801  	20.39   	6.589   	M 
8417948	PRINCE POINT, YARMOUTH, ME                                        	43.762  	-70.173 	0	\N	\N	\N	\N
8414888	PULPIT HARBOR, PENOBSCOT BAY, ME                                  	44.157  	-68.887 	1	15.231  	15.395  	0.164   	L 
8417208	Richmond, ME                                                      	44.088  	-69.798 	1	7.659   	32.033  	24.374  	M 
8415490	Rockland, ME                                                      	44.105  	-69.102 	1	14.822  	16.327  	1.505   	M 
8414692	SANDY POINT, ME                                                   	44.505  	-68.805 	0	\N	\N	\N	\N
8419870	Seavey Island, ME                                                 	43.080  	-70.742 	1	11.936  	12.758  	0.822   	M 
8415709	Thomaston, ME                                                     	44.072  	-69.182 	1	13.791  	30.929  	17.138  	M 
8416731	WALPOLE, DAMARISCOTTA RIVER, ME                                   	43.933  	-69.580 	1	13.763  	15.298  	1.535   	M 
8419317	Wells, ME                                                         	43.320  	-70.563 	1	13.674  	26.388  	12.714  	M 
8414781	WINTERPORT, PENOBSCOT RIVER, ME                                   	44.637  	-68.842 	0	\N	\N	\N	\N
8416921	Wiscasset, ME                                                     	44.000  	-69.667 	0	\N	\N	\N	\N
8575510	ANNAPOLIS, NAVAL RADIO STATION, MD                                	38.975  	-76.457 	0	\N	\N	\N	\N
8575512	Annapolis, MD                                                     	38.983  	-76.482 	1	2.433   	6.418   	3.985   	S 
8571901	AVALON, TILGANAN ISLAND, MD                                       	38.710  	-76.335 	0	\N	\N	\N	\N
8574680	Baltimore, Fort McHenry, Patapsco River, MD                       	39.267  	-76.579 	1	2.639   	6.277   	3.638   	S 
8571579	Barren Island, MD                                                 	38.342  	-76.265 	1	2.366   	30.886  	28.52   	S 
8574726	BEAR CREEK MARINA, MD                                             	39.250  	-76.490 	0	\N	\N	\N	\N
8571702	Beaverdam Creek, MD                                               	38.428  	-76.237 	1	2.541   	31.495  	28.954  	S 
8573704	Betterton, MD                                                     	39.372  	-76.063 	1	2.478   	6.156   	3.678   	S 
8571421	Bishops Head, MD                                                  	38.220  	-76.039 	1	3.254   	31.609  	28.355  	S 
8579997	BLADENSBURG, ANACOSTIA RIVER, MD                                  	38.933  	-76.938 	1	4.235   	3.207   	-1.028  	S 
8570691	Buntings Bridge, MD                                               	38.139  	-75.184 	1	0.926   	29.942  	29.016  	S 
8571892	Cambridge, MD                                                     	38.573  	-76.062 	1	2.948   	4.933   	1.985   	S 
8571890	CAMBRIDGE, MD                                                     	38.575  	-76.072 	0	\N	\N	\N	\N
8571351	CHANCE, NANTICOKE RIVER, MD                                       	38.172  	-75.945 	0	\N	\N	\N	\N
8571289	CHANNEL LIGHT #6,LITTLE DEAL IS, MD                               	38.125  	-75.947 	0	\N	\N	\N	\N
8576363	CHESAPEAKE BEACH, MD                                              	38.700  	-76.533 	0	\N	\N	\N	\N
8573927	Chesapeake City, MD                                               	39.527  	-75.810 	1	4.328   	6.85    	2.522   	S 
8573137	CLIFF?S WHARF, MD                                                 	39.110  	-76.138 	0	\N	\N	\N	\N
8571181	COLBOURN CREEK, BIG ANNEMESSEX R, MD                              	38.048  	-75.803 	0	\N	\N	\N	\N
8575109	CORNFIELD CREEK, MAGOTHY RIVER, MD                                	39.100  	-76.445 	0	\N	\N	\N	\N
8577188	COVE POINT, MD                                                    	38.392  	-76.398 	1	2.01    	4.071   	2.061   	S 
8571091	CRISFIELD, MD                                                     	37.977  	-75.863 	1	2.855   	7.549   	4.694   	S 
8573349	Crumpton, MD                                                      	39.245  	-75.925 	1	3.977   	14.169  	10.192  	S 
8574848	CURTIS CREEK (OPR 514), MD                                        	39.195  	-76.577 	0	\N	\N	\N	\N
8571073	DAYMARKER #2, SMITH ISLAND, MD                                    	37.972  	-75.985 	0	\N	\N	\N	\N
8573211	DEEP LANDING, SWAN CREEK, MD                                      	39.145  	-76.260 	0	\N	\N	\N	\N
8571117	Ewell, Smith Island, MD                                           	37.995  	-76.032 	1	2.73    	2.699   	-0.031  	S 
8574683	Fort McHenry Marsh, MD                                            	39.262  	-76.585 	1	2.685   	6.307   	3.622   	S 
8575550	GINGERVILLE CREEK, SOUTH RIVER, MD                                	38.958  	-76.555 	0	\N	\N	\N	\N
8574071	HARVE DE GRACE (BACKUP), MD                                       	39.537  	-76.090 	0	\N	\N	\N	\N
8574070	Havre De Grace, MD                                                	39.537  	-76.090 	1	3.531   	9.367   	5.836   	S 
8574821	HAWKINS POINT, PATAPSCO RIVER, MD                                 	39.208  	-76.533 	0	\N	\N	\N	\N
8572669	Hillsboro, MD                                                     	38.917  	-75.945 	1	3.137   	28.329  	25.192  	S 
8571214	HOLLAND BAR LIGHT, MD                                             	38.068  	-76.097 	0	\N	\N	\N	\N
8571402	HOOPER STRAIT LIGHTHOUSE, MD                                      	38.227  	-76.077 	0	\N	\N	\N	\N
8572467	Kent Point, MD                                                    	38.837  	-76.373 	1	2.248   	10.273  	8.025   	S 
8570255	KEYDASH, ISLE OF WIGHT BAY, MD                                    	38.342  	-75.085 	0	\N	\N	\N	\N
8577004	Long Beach, MD                                                    	38.465  	-76.473 	1	2.043   	11.858  	9.815   	S 
8572955	Love Point Pier, MD                                               	39.032  	-76.302 	1	2.644   	6.6     	3.956   	S 
8579542	Lower Marlboro, MD                                                	38.655  	-76.683 	1	2.445   	10.733  	8.288   	S 
8572770	Matapeake, MD                                                     	38.957  	-76.355 	1	2.382   	5.969   	3.587   	S 
8571559	McCready?s Creek, MD                                              	38.300  	-76.005 	1	3.226   	9.62    	6.394   	S 
8571519	MIDDLE HOOPERS ISLAND, MD                                         	38.297  	-76.205 	0	\N	\N	\N	\N
8571477	NANTICOKE, MD                                                     	38.270  	-75.913 	0	\N	\N	\N	\N
8577385	NAVY SEAPLANE BASIN BOATHOUSE, MD                                 	38.272  	-76.397 	0	\N	\N	\N	\N
8574857	NORTH POINT, MD                                                   	39.197  	-76.445 	0	\N	\N	\N	\N
8570435	NPS #1, SINEPUXENT BAY, MD                                        	38.265  	-75.130 	0	\N	\N	\N	\N
8570616	NPS #2, SINEPUXENT BAY, MD                                        	38.188  	-75.192 	0	\N	\N	\N	\N
8570819	NPS #3, CHINCOTEAGUE BAY, MD                                      	38.102  	-75.222 	0	\N	\N	\N	\N
8570283	Ocean City Inlet, MD                                              	38.328  	-75.091 	1	4.072   	11.274  	7.202   	S 
8570280	OCEAN CITY, FISHING PIER, MD                                      	38.327  	-75.083 	1	6.081   	9.265   	3.184   	S 
8570282	Ocean City, MD                                                    	38.332  	-75.090 	0	\N	\N	\N	\N
8570509	OLD FERRY LANDING, MD                                             	38.203  	-75.163 	0	\N	\N	\N	\N
8578240	Piney Point, MD                                                   	38.133  	-76.533 	0	\N	\N	\N	\N
8578002	POINT LOOKOUT, POTOMAC RIVER, MD                                  	38.040  	-76.323 	0	\N	\N	\N	\N
8574459	POND POINT (ABERDEEN P.G.), BUSH RIVER, MD                        	39.388  	-76.255 	1	2.402   	10.822  	8.42    	S 
8572271	Poplar Island, MD                                                 	38.758  	-76.375 	1	2.542   	2.245   	-0.297  	S 
8574008	PORT DEPOSIT, MD                                                  	39.603  	-76.113 	0	\N	\N	\N	\N
8570649	PUBLIC LANDING, CHINCOTEAGUE BAY, MD                              	38.148  	-75.285 	1	1.324   	2.851   	1.527   	S 
8575787	RHODE RIVER, MD                                                   	38.887  	-76.540 	0	\N	\N	\N	\N
8571266	RUMBLEY, MANOKIN RIVER, MD                                        	38.092  	-75.862 	0	\N	\N	\N	\N
8571616	SALISBURY, WICOMICO RIVER, MD                                     	38.365  	-75.607 	1	5.362   	9.351   	3.989   	S 
8571359	Snow Hill, MD                                                     	38.178  	-75.397 	1	1.661   	14.248  	12.587  	S 
8577330	Solomons Island, MD                                               	38.317  	-76.451 	1	2.251   	5.544   	3.293   	S 
8570536	SOUTH POINT, SINEPUXENT NECK, CHINC. BAY, MD                      	38.215  	-75.192 	1	1.24    	4.319   	3.079   	S 
8572342	ST. MICHAELS, MILES RIVER, MD                                     	38.787  	-76.222 	0	\N	\N	\N	\N
8574931	STONY CREEK, MD                                                   	39.163  	-76.527 	0	\N	\N	\N	\N
8571979	TILGHMAN ISLAND, FERRY COVE, MD                                   	38.765  	-76.328 	0	\N	\N	\N	\N
8573364	Tolchester Beach, MD                                              	39.213  	-76.245 	1	2.919   	5.74    	2.821   	S 
8573903	TOWN POINT WHARF, MD                                              	39.503  	-75.917 	1	3.411   	5.919   	2.508   	S 
8571773	Vienna, MD                                                        	38.483  	-75.818 	1	2.741   	24.105  	21.364  	S 
8571485	WHITEHAVEN, WICOMICO RIVER, MD                                    	38.268  	-75.788 	0	\N	\N	\N	\N
8443662	AMELIA EARHART DAM, MYSTIC RIVER, MA                              	42.395  	-71.077 	1	14.313  	16.379  	2.066   	M 
8442417	BEVERLY, BEVERLY HARBOR, MA                                       	42.540  	-70.887 	0	\N	\N	\N	\N
8444162	Boston Light, MA                                                  	42.328  	-70.892 	1	13.652  	19.144  	5.492   	M 
8443970	Boston, MA                                                        	42.355  	-71.053 	1	14.103  	15.711  	1.608   	M 
8447259	Bourne Bridge, Cape Cod Canal (Sta. 320), MA                      	41.745  	-70.593 	1	6.95    	9.515   	2.565   	S 
8447191	Bournedale, Cape Cod Canal (Sta. 200), MA                         	41.770  	-70.562 	1	9.394   	10.201  	0.807   	M 
8446009	BRANT ROCK, GREEN HARBOR RIVER, MA                                	42.083  	-70.647 	1	13.605  	13.121  	-0.484  	M 
8447270	Buzzards Bay, MA                                                  	41.742  	-70.617 	1	6.376   	6.097   	-0.279  	S 
8448533	CAPE HIGGON NORTH, VINEYARD SND, MA                               	41.410  	-70.712 	0	\N	\N	\N	\N
8447685	Chappaquoit Point, MA                                             	41.605  	-70.652 	1	6.365   	9.247   	2.882   	S 
8447435	Chatham, Lydia Cove, MA                                           	41.688  	-69.951 	1	7.156   	10.274  	3.118   	S 
8447505	CHATHAM, STAGE HARBOR, MA                                         	41.667  	-69.967 	1	6.27    	8.633   	2.363   	S 
8443725	Chelsea, MA                                                       	42.387  	-71.023 	1	14.205  	26.021  	11.816  	M 
8449383	COAST GUARD ST, NANTUCKET, MA                                     	41.245  	-69.977 	0	\N	\N	\N	\N
8448376	CUTTYHUNK, MA                                                     	41.425  	-70.917 	0	\N	\N	\N	\N
8446166	DUXBURY, DUXBURY HARBOR, MA                                       	42.038  	-70.670 	1	14.294  	15.484  	1.19    	M 
8448558	Edgartown, MA                                                     	41.388  	-70.512 	1	3.545   	7.822   	4.277   	S 
8441771	ESSEX, ESSEX RIVER, MA                                            	42.632  	-70.777 	1	13.519  	15.56   	2.041   	M 
8447386	Fall River, MA                                                    	41.704  	-71.164 	1	7.305   	27.094  	19.789  	S 
8441841	GLOUCESTER HARBOR, MA                                             	42.610  	-70.660 	0	\N	\N	\N	\N
8447295	Gray Gables, MA                                                   	41.735  	-70.623 	1	5.78    	14.569  	8.789   	S 
8447368	Great Hill, MA                                                    	41.712  	-70.715 	1	6.382   	9.657   	3.275   	S 
8447605	HYANNISPORT, MA                                                   	41.632  	-70.300 	1	5.37    	17.026  	11.656  	S 
8441571	LOBSTER COVE, ANNISQUAM RIVER, MA                                 	42.655  	-70.677 	0	\N	\N	\N	\N
8443187	LYNN, LYNN HARBOR, MA                                             	42.458  	-70.943 	1	14.18   	15.317  	1.137   	M 
8447385	MARION, BUZZARD?S BAY, MA                                         	41.705  	-70.762 	0	\N	\N	\N	\N
8448875	Martha?s Vineyard GPS Buoy, MA                                    	41.326  	-70.590 	1	4.766   	-92.956 	-97.722 	S 
8447531	MATTAPOISETT, MA                                                  	41.657  	-70.813 	0	\N	\N	\N	\N
8448725	Menemsha Harbor, MA, MA                                           	41.354  	-70.768 	1	4.941   	29.39   	24.449  	S 
8440369	MERRIMACPORT, MERRIMACK RIVER, MA                                 	42.825  	-70.988 	1	9.845   	9.283   	-0.562  	M 
8447819	Monomoy Island - East, MA                                         	41.560  	-69.990 	0	\N	\N	\N	\N
8447355	MONUMENT BEACH T-8, MA                                            	41.715  	-70.617 	0	\N	\N	\N	\N
8449130	Nantucket Island, MA                                              	41.285  	-70.096 	1	5.12    	7.357   	2.237   	S 
8447712	NEW BEDFORD, CLARKS POINT, MA                                     	41.593  	-70.900 	1	5.972   	7.478   	1.506   	S 
8440466	NEWBURYPORT, MERRIMACK RIVER, MA                                  	42.815  	-70.873 	1	11.893  	15.21   	3.317   	M 
8444525	Nut Island, MA                                                    	42.280  	-70.953 	1	14.137  	27.144  	13.007  	M 
8448208	OAK BLUFFS, MARTHA?S VINEYARD, MA                                 	41.458  	-70.555 	0	\N	\N	\N	\N
8447277	ONSET BEACH T-12, MA                                              	41.742  	-70.658 	0	\N	\N	\N	\N
8448248	PENIKESE ISLAND, MA                                               	41.450  	-70.922 	1	5.942   	7.886   	1.944   	S 
8447416	Piney Point, MA                                                   	41.695  	-70.720 	1	6.507   	9.174   	2.667   	S 
8441241	Plum Island South, MA                                             	42.710  	-70.789 	1	12.867  	13.018  	0.151   	M 
8440452	PLUM ISLAND, MERRIMACK RIVER ENTRANCE, MA                         	42.817  	-70.820 	1	11.86   	14.777  	2.917   	M 
8446493	PLYMOUTH, PLYMOUTH HARBOR, MA                                     	41.960  	-70.662 	1	14.274  	15.556  	1.282   	M 
8446121	Provincetown, MA                                                  	42.050  	-70.182 	1	13.793  	15.875  	2.082   	M 
8448251	Quick?s Hole, MA                                                  	41.448  	-70.857 	0	\N	\N	\N	\N
8440889	RIVERSIDE, MERRIMACK RIVER, MA                                    	42.763  	-71.077 	1	7.815   	10.538  	2.723   	M 
8441551	ROCKPORT HARBOR, MA                                               	42.658  	-70.615 	1	13.277  	14.685  	1.408   	M 
8447842	ROUND HILL POINT, MA                                              	41.538  	-70.928 	1	7.085   	7.535   	0.45    	S 
8447173	Sagamore, Cape Cod Canal (Sta. 115), MA                           	41.775  	-70.535 	1	11.882  	10.881  	-1.001  	M 
8442645	SALEM, SALEM HARBOR, MA                                           	42.523  	-70.877 	1	13.635  	13.171  	-0.464  	M 
8440273	SALISBURY POINT, MERRIMACK RIVER, MA                              	42.838  	-70.908 	1	10.69   	13.121  	2.431   	M 
8447180	Sandwich, MA                                                      	41.772  	-70.507 	1	13.484  	11.942  	-1.542  	M 
8447495	SAQUATUCKET HARBOR, MA                                            	41.668  	-70.057 	1	6.195   	10.422  	4.227   	S 
8445138	SCITUATE, SCITUATE HARBOR, MA                                     	42.202  	-70.727 	1	13.375  	14.534  	1.159   	M 
8447241	SESUIT HARBOR, EAST DENNIS, MA                                    	41.752  	-70.155 	1	14.906  	15.018  	0.112   	L 
8447504	SOUTH YARMOUTH, BASS RIVER, MA                                    	41.665  	-70.183 	0	\N	\N	\N	\N
8447281	STEEPBROOK, MA                                                    	41.740  	-71.132 	0	\N	\N	\N	\N
8449375	SURFSIDE, NANTUCKET, MA                                           	41.238  	-70.078 	0	\N	\N	\N	\N
8448151	TARPAULIN COVE, NAUSHON IS., MA                                   	41.470  	-70.760 	0	\N	\N	\N	\N
8448157	VINEYARD HAVEN, VINEYARD HVN HBR, MA                              	41.458  	-70.600 	1	3.008   	7.018   	4.01    	S 
8444788	Weymouth Fore River, MA                                           	42.248  	-70.967 	1	14.279  	31.258  	16.979  	M 
8447930	Woods Hole, MA                                                    	41.524  	-70.671 	1	3.844   	5.756   	1.912   	S 
8447506	WYCHMERE HBR., HORWICHPORT, MA                                    	41.665  	-70.065 	0	\N	\N	\N	\N
8740175	B.H. FISH CAMP, BAYOU HERON, MS                                   	30.408  	-88.402 	0	\N	\N	\N	\N
8747437	Bay Waveland Yacht Club, MS                                       	30.325  	-89.325 	1	3.509   	4.882   	1.373   	S 
8748469	BAYOU LA CROIX WEST, MS                                           	30.322  	-89.453 	0	\N	\N	\N	\N
8748145	BAYOU LA CROIX, MS                                                	30.333  	-89.417 	0	\N	\N	\N	\N
8748318	BAYOU PHILLIP, MS                                                 	30.312  	-89.435 	0	\N	\N	\N	\N
8743639	BAYOU POITO, BACK BAY OF BILOXI, MS                               	30.438  	-88.845 	0	\N	\N	\N	\N
8743301	BAYOU TALLA, BACK BAY OF BILOXI, MS                               	30.430  	-88.800 	0	\N	\N	\N	\N
8743735	Biloxi (Cadet Point), MS                                          	30.390  	-88.857 	0	\N	\N	\N	\N
8744934	BILOXI RIVER, LOWER END, MS                                       	30.435  	-89.008 	0	\N	\N	\N	\N
8744117	Biloxi, MS                                                        	30.412  	-88.903 	1	2.992   	22.966  	19.974  	S 
8748005	BREATH BAYOU, JOURDAN RIVER, MS                                   	30.317  	-89.402 	0	\N	\N	\N	\N
8745799	CAT ISLAND, MISSISSIPPI SOUND, MS                                 	30.232  	-89.117 	0	\N	\N	\N	\N
8744391	CEDAR LAKE,TCHOUTACABOUFFA RIVER, MS                              	30.460  	-88.938 	0	\N	\N	\N	\N
8746737	CUEVAS, EASTERN BAYOU PORTAGE, MS                                 	30.360  	-89.225 	0	\N	\N	\N	\N
8747934	CUTOFF BAYOU, MS                                                  	30.352  	-89.388 	0	\N	\N	\N	\N
8743812	Deer Island, MS                                                   	30.383  	-88.867 	0	\N	\N	\N	\N
8746908	DELISLE, DELISLE BAYOU, MS                                        	30.380  	-89.253 	0	\N	\N	\N	\N
8741041	Dock E, Port of Pascagoula, MS                                    	30.348  	-88.506 	1	3.251   	23.876  	20.625  	S 
8742947	EASTERN OLD FORT BAYOU, MS                                        	30.440  	-88.727 	0	\N	\N	\N	\N
8746487	EASTERN WOLF RIVER, MS                                            	30.397  	-89.200 	0	\N	\N	\N	\N
8741414	ESCATAWPA, PASCAGOULA R., MS                                      	30.440  	-88.557 	0	\N	\N	\N	\N
8741798	Gautier, MS                                                       	30.383  	-88.610 	0	\N	\N	\N	\N
8740166	Grand Bay NERR, Mississippi Sound, MS                             	30.413  	-88.403 	1	2.578   	16.176  	13.598  	S 
8742205	GRAVELINE BAYOU ENTRANCE, MS                                      	30.362  	-88.663 	1	3.208   	5.452   	2.244   	S 
8745557	Gulfport Harbor, MS                                               	30.360  	-89.082 	1	3.312   	4.754   	1.442   	S 
8745101	HANDSBORO BRIDGE, BERNARD BAYOU, MS                               	30.407  	-89.027 	1	3.356   	3.816   	0.46    	S 
8746943	HENDERSON AVENUE BRIDGE, BAYOU PORTAGE, MS                        	30.342  	-89.265 	0	\N	\N	\N	\N
8747038	HENDERSON AVENUE BRIDGE, WOLF RIVER, MS                           	30.358  	-89.273 	0	\N	\N	\N	\N
8743081	HOLLINGSWORTH POINT, DAVIS BAYOU, MS                              	30.387  	-88.773 	0	\N	\N	\N	\N
8742221	Horn Island, MS                                                   	30.238  	-88.667 	1	2.881   	5.436   	2.555   	S 
8746724	JOHNSON BAYOU, MS                                                 	30.337  	-89.225 	0	\N	\N	\N	\N
8747739	JOURDAN RIVER ENTRANCE, MS                                        	30.337  	-89.367 	0	\N	\N	\N	\N
8748568	JOURDAN RIVER WEST, MS                                            	30.392  	-89.470 	0	\N	\N	\N	\N
8748371	JOURDAN RIVER, MS                                                 	30.395  	-89.432 	0	\N	\N	\N	\N
8744284	KEESLER AFB, BACK BAY OF BILOXI, MS                               	30.418  	-88.925 	0	\N	\N	\N	\N
8741429	L&N BRIDGE, PASCAGOULA RIVER, MS                                  	30.367  	-88.563 	0	\N	\N	\N	\N
8745555	Landon, MS                                                        	30.432  	-89.082 	0	\N	\N	\N	\N
8743838	Langley Point, MS                                                 	30.425  	-88.870 	0	\N	\N	\N	\N
8748087	LOWER JOURDAN RIVER, MS                                           	30.375  	-89.407 	0	\N	\N	\N	\N
8747131	MALLINI BAYOU NORTH, MS                                           	30.327  	-89.288 	0	\N	\N	\N	\N
8747145	MALLINI BAYOU SOUTH, MS                                           	30.312  	-89.287 	0	\N	\N	\N	\N
8740965	MS CHEMICAL CO., BAYOU CASOTTE, MS                                	30.363  	-88.557 	0	\N	\N	\N	\N
8747398	NORTH SHORE, BAY OF ST. LOUIS, MS                                 	30.373  	-89.322 	0	\N	\N	\N	\N
8742523	North Shore, MS                                                   	30.373  	-88.705 	0	\N	\N	\N	\N
8743495	OCEAN SPRINGS, OLD FORT BAYOU, MS                                 	30.420  	-88.828 	0	\N	\N	\N	\N
8743281	Ocean Springs, MS                                                 	30.392  	-88.798 	1	2.763   	32.438  	29.675  	S 
8743181	Old Fort Bayou, Ocean Springs Marina, MS                          	30.422  	-88.788 	0	\N	\N	\N	\N
8741533	Pascagoula NOAA Lab, MS                                           	30.368  	-88.563 	1	3.144   	24.057  	20.913  	S 
8741196	Pascagoula Point, MS                                              	30.340  	-88.533 	1	2.613   	4.772   	2.159   	S 
8746819	PASS CHRISTIAN YACHT CLUB, MISS. SOUND, MS                        	30.310  	-89.245 	0	\N	\N	\N	\N
8749704	PEARLINGTON, PEARL RIVER, MS                                      	30.240  	-89.615 	0	\N	\N	\N	\N
8740405	PETIT BOIS ISLAND, MISS. SOUND, MS                                	30.203  	-88.442 	1	2.586   	4.078   	1.492   	S 
8740448	POINT OF PINES, BAYOU CUMBEST, MS                                 	30.387  	-88.440 	0	\N	\N	\N	\N
8744671	POPPS FERRY, BACK BAY OF BILOXI, MS                               	30.413  	-88.975 	0	\N	\N	\N	\N
8747961	ROTTEN BAYOU, MS                                                  	30.398  	-89.385 	0	\N	\N	\N	\N
8744756	Ship Island, Mississippi Sound, MS                                	30.213  	-88.972 	1	3.109   	6.023   	2.914   	S 
8744663	Tchoutacabouffa River Entrance, MS                                	30.442  	-88.973 	0	\N	\N	\N	\N
8745375	TURKEY CREEK, BERNARD BAYOU, MS                                   	30.427  	-89.053 	0	\N	\N	\N	\N
8747819	WATTS BAYOU, JOURDAN RIVER, MS                                    	30.328  	-89.373 	0	\N	\N	\N	\N
8747766	Waveland, MS                                                      	30.282  	-89.367 	1	3.56    	30.179  	26.619  	S 
8422272	ADAMS POINT, DURHAM, NH                                           	43.093  	-70.863 	0	\N	\N	\N	\N
8423635	ATLANTIC HEIGHTS, NH                                              	43.090  	-70.763 	0	\N	\N	\N	\N
8423005	ATLANTIC TERMINALS T14A, NH                                       	43.117  	-70.812 	0	\N	\N	\N	\N
8422301	BRACKETTS POINT, NH                                               	43.060  	-70.868 	0	\N	\N	\N	\N
8420411	DOVER, COCHECO RIVER, NH                                          	43.198  	-70.868 	1	10.055  	15.223  	5.168   	M 
8423898	Fort Point, NH                                                    	43.071  	-70.711 	1	13.257  	13.973  	0.716   	M 
8537774	ABBOTS MEADOW, NJ                                                 	39.512  	-75.493 	0	\N	\N	\N	\N
8534638	ABSECON CHANNAL, NJ                                               	39.385  	-74.425 	0	\N	\N	\N	\N
8534540	ABSECON, ABSECON CREEK, NJ                                        	39.423  	-74.500 	0	\N	\N	\N	\N
8530095	ALPINE, HUDSON RIVER, NJ                                          	40.945  	-73.918 	0	\N	\N	\N	\N
8530696	AMTRACK RR SWINGBRIDGE, HACKENSACK RIVER, NJ                      	40.752  	-74.097 	0	\N	\N	\N	\N
8537614	ARTIFICIAL IS., NJ                                                	39.460  	-75.532 	0	\N	\N	\N	\N
8534720	Atlantic City, NJ                                                 	39.357  	-74.418 	1	6.749   	10.679  	3.93    	S 
8531662	ATLANTIC HIGHLANDS, SANDY HOOK, NJ                                	40.418  	-74.035 	0	\N	\N	\N	\N
8538274	AUBURN, OLDMANS CREEK, NJ                                         	39.715  	-75.360 	0	\N	\N	\N	\N
8532339	AVON SHARK RIVER, NJ                                              	40.187  	-74.027 	0	\N	\N	\N	\N
8537116	BACK CREEK, DEL. BAY, NJ                                          	39.305  	-75.278 	0	\N	\N	\N	\N
8533615	BARNEGAT INLET (INSIDE), NJ                                       	39.762  	-74.112 	1	4.022   	6.794   	2.772   	S 
8533141	BARNEGAT PIER, BARNEGAT BAY, NJ                                   	39.918  	-74.110 	0	\N	\N	\N	\N
8537363	Bayside, NJ                                                       	39.382  	-75.407 	0	\N	\N	\N	\N
8534208	BEACH HAVEN CG STATION, NJ                                        	39.548  	-74.257 	0	\N	\N	\N	\N
8534048	BEACH HAVEN CREST (INSIDE), NJ                                    	39.613  	-74.210 	0	\N	\N	\N	\N
8532716	BEAVER DAM CREEK (INSIDE), NJ                                     	40.062  	-74.073 	0	\N	\N	\N	\N
8532715	BEAVER DAM CREEK, NJ                                              	40.062  	-74.062 	0	\N	\N	\N	\N
8530591	BELLEVILLE, PASSAIC RIVER, NJ                                     	40.787  	-74.147 	0	\N	\N	\N	\N
8532337	BELMAR OUTSIDE, NJ                                                	40.185  	-74.008 	0	\N	\N	\N	\N
8530586	BERRYS CREEK, FISH CREEK, NJ                                      	40.793  	-74.092 	0	\N	\N	\N	\N
8530464	BERRYS CREEK, NO. 3, NJ                                           	40.828  	-74.080 	0	\N	\N	\N	\N
8530502	BERRYS CREEK, NO. 7, NJ                                           	40.817  	-74.087 	0	\N	\N	\N	\N
8536581	BIDWELL CREEK ENTRANCE, DELAWARE BAY, NJ                          	39.128  	-74.892 	1	8.592   	10.724  	2.132   	M 
8538552	BILLINGSPORT, NJ                                                  	39.850  	-75.250 	0	\N	\N	\N	\N
8536889	BIVALE, NJ                                                        	39.230  	-75.037 	0	\N	\N	\N	\N
8535055	Bivalve, Maurice River,                                           	39.232  	-75.033 	1	8.237   	3.871   	-4.366  	M 
8539494	BLACKS CREEK, DELAWARE RIVER, NJ                                  	40.138  	-74.712 	0	\N	\N	\N	\N
8536840	BRANDYWINE SHOAL LIGHTHOUSE, NJ                                   	38.987  	-75.112 	0	\N	\N	\N	\N
8538921	BRIDGEBORO, RANCOCAS CREEK, NJ                                    	40.028  	-74.932 	0	\N	\N	\N	\N
8538449	BRIDGEPORT, RACOON CREEK, NJ                                      	39.807  	-75.355 	0	\N	\N	\N	\N
8534496	BRIGANTINE CHANNEL, NJ                                            	39.435  	-74.363 	0	\N	\N	\N	\N
8539094	Burlington, Delaware River, NJ                                    	40.080  	-74.873 	1	10.137  	26.227  	16.09   	M 
8535902	CAPE ISLAND CREEK, NJ                                             	38.947  	-74.913 	0	\N	\N	\N	\N
8535901	CAPE MAY HARBOR, NJ                                               	38.948  	-74.892 	0	\N	\N	\N	\N
8536021	CAPE MAY POINT, NJ                                                	38.947  	-74.972 	0	\N	\N	\N	\N
8535962	CAPE MAY, ATLANTIC OCEAN, NJ                                      	38.930  	-74.935 	0	\N	\N	\N	\N
8536110	Cape May, NJ                                                      	38.968  	-74.960 	1	7.691   	9.037   	1.346   	M 
8530528	CARLSTADT, HACKENSACK RIVER, NJ                                   	40.807  	-74.060 	0	\N	\N	\N	\N
8537101	CEDAR CREEK, NJ                                                   	39.298  	-75.247 	0	\N	\N	\N	\N
8533295	CEDAR CREEK, NJ                                                   	39.870  	-74.155 	0	\N	\N	\N	\N
8533941	CEDAR RKUN, LI EGG HARBOR, NJ                                     	39.653  	-74.257 	0	\N	\N	\N	\N
8535001	CEDAR SWAMP, TUCKAHOE RIVER, NJ                                   	39.247  	-74.718 	0	\N	\N	\N	\N
8531223	CHEESEQUAKE CREEK, NJ                                             	40.453  	-74.273 	1	8.26    	9.335   	1.075   	M 
8538831	CINNAMINSON, NJ                                                   	39.978  	-75.013 	0	\N	\N	\N	\N
8533055	COATES POINT, BARNEGAT BAY, NJ                                    	39.948  	-74.115 	0	\N	\N	\N	\N
8531630	COMPTON CREEK, SANDY HOOK BAY, NJ                                 	40.432  	-74.085 	0	\N	\N	\N	\N
8530985	CONSTABLE HOOK UPPER BAY, NJ                                      	40.655  	-74.085 	0	\N	\N	\N	\N
8537779	COOPER CREEK, NJ                                                  	39.513  	-75.447 	0	\N	\N	\N	\N
8535101	CORSON INLET, NJ                                                  	39.215  	-74.648 	0	\N	\N	\N	\N
8534212	CRAMERS BOATYARD, MULLICA RIVER, NJ                               	39.548  	-74.462 	0	\N	\N	\N	\N
8530538	CROMAKILL CREEK, NJ                                               	40.803  	-74.033 	0	\N	\N	\N	\N
8538231	DEEPWATER, DELAWARE RIVER, NJ                                     	39.683  	-75.510 	0	\N	\N	\N	\N
8536736	DENNIS CREEK, DELAWARE BAY, NJ                                    	39.178  	-74.852 	0	\N	\N	\N	\N
8536449	DIAS CREEK, NJ                                                    	39.083  	-74.887 	0	\N	\N	\N	\N
8533982	DINNER POINT CREEK, NJ                                            	39.657  	-74.270 	0	\N	\N	\N	\N
8536999	DIVIDING CREEK, DEL BAY, NJ                                       	39.267  	-75.095 	0	\N	\N	\N	\N
8534739	DOCK THOROFARE, NJ                                                	39.352  	-74.540 	0	\N	\N	\N	\N
8533665	DOUBLE CREEK, NJ                                                  	39.745  	-74.202 	0	\N	\N	\N	\N
8536823	EAST CREEK, NJ                                                    	39.208  	-74.902 	0	\N	\N	\N	\N
8536780	EAST POINT, NJ                                                    	39.200  	-75.020 	0	\N	\N	\N	\N
8530403	EAST RUTHERFORD, PASSAIC RIVER, NJ                                	40.847  	-74.120 	0	\N	\N	\N	\N
8537359	MILLVILLE, NJ                                                     	39.392  	-75.042 	0	\N	\N	\N	\N
8539487	FIELDSBORO, DELAWARE RIVER, NJ                                    	40.137  	-74.737 	1	10.152  	9.512   	-0.64   	M 
8536848	FISHING CREEK, NJ                                                 	39.217  	-75.158 	0	\N	\N	\N	\N
8533780	FLAT CREEK, NJ                                                    	39.707  	-74.192 	0	\N	\N	\N	\N
8532703	FORGE POND, METEDECONK RIVER, NJ                                  	40.065  	-74.135 	0	\N	\N	\N	\N
8533391	FORKED RIVER, NJ                                                  	39.825  	-74.173 	0	\N	\N	\N	\N
8536931	FORTESCUE CREEK, NJ                                               	39.238  	-75.175 	1	8.863   	11.723  	2.86    	M 
8536915	FORTESCUE, DELAWARE BAY, NJ                                       	39.237  	-75.173 	0	\N	\N	\N	\N
8530345	GARFIELD PASSAIC RIVER, NJ                                        	40.868  	-74.112 	0	\N	\N	\N	\N
8533005	GOOSE CREEK BARNEGAT BAY, NJ                                      	39.963  	-74.115 	0	\N	\N	\N	\N
8531925	GOOSENECK BRIDGE, SHREWSBURY R, NJ                                	40.327  	-74.017 	0	\N	\N	\N	\N
8534244	GRAVELING POINT, NJ                                               	39.540  	-74.387 	0	\N	\N	\N	\N
8534320	GREAT BAY SPECIAL PROJECT, NJ                                     	39.508  	-74.325 	0	\N	\N	\N	\N
8534319	GREAT BAY, SHOOTING THOROFARE, NJ                                 	39.508  	-74.325 	1	4.516   	2.114   	-2.402  	S 
8534975	GREAT EGG HARBOR BAY, NJ                                          	39.288  	-74.628 	0	\N	\N	\N	\N
8534691	GREAT EGG HARBOR RIVER, NJ                                        	39.368  	-74.717 	0	\N	\N	\N	\N
8535445	GREAT SOUND, NJ                                                   	39.102  	-74.788 	0	\N	\N	\N	\N
8534117	GREEN BANK, MULLICA RIVER, NJ                                     	39.612  	-74.590 	0	\N	\N	\N	\N
8537374	GREENWICH, COHANSEY RIVER, NJ                                     	39.383  	-75.350 	0	\N	\N	\N	\N
8530278	HACKENSACK, HACKENSACK RIVER, NJ                                  	40.880  	-74.040 	0	\N	\N	\N	\N
8537753	HANCOCKS BRIDGE, ALLOWAY CREEK, NJ                                	39.505  	-75.483 	0	\N	\N	\N	\N
8533631	HIGH BAR, BARNEGAT BAY, NJ                                        	39.757  	-74.128 	0	\N	\N	\N	\N
8531712	HIGHLANDS BRIDGE, SHREWSBURY RIVER, NJ                            	40.397  	-73.982 	0	\N	\N	\N	\N
8537026	HOLLYWOOD BEACH, NJ                                               	39.275  	-75.142 	0	\N	\N	\N	\N
8537667	HOPE CREEK, DELAWARE BAY, NJ                                      	39.458  	-75.495 	0	\N	\N	\N	\N
8537103	HUSTED LND., NJ                                                   	39.352  	-75.258 	0	\N	\N	\N	\N
8535419	Ingram Thorofare, NJ                                              	39.110  	-74.738 	0	\N	\N	\N	\N
8533345	ISLAND BEACH BARNEGAT BAY, NJ                                     	39.852  	-74.088 	0	\N	\N	\N	\N
8533535	ISLAND BEACH, SEDGE ISLANDS, NJ                                   	39.788  	-74.098 	0	\N	\N	\N	\N
8535555	JENKINS SOUND, NJ                                                 	39.065  	-74.808 	0	\N	\N	\N	\N
8530802	JERSEY CITY PA-RR FERRY, NJ                                       	40.717  	-74.032 	0	\N	\N	\N	\N
8538086	KATES CREEK MEADOW, NJ                                            	39.620  	-75.453 	0	\N	\N	\N	\N
8530772	KEARNY POINT, HACKENSACK RIVER, NJ                                	40.728  	-74.103 	0	\N	\N	\N	\N
8531262	KEASBEY, RARITAN RIVER, NJ                                        	40.508  	-74.312 	1	8.365   	8.549   	0.184   	M 
8532835	KETTLE CREEK, NJ                                                  	40.013  	-74.113 	0	\N	\N	\N	\N
8531545	KEYPORT, RARITAN BAY, NJ                                          	40.440  	-74.198 	0	\N	\N	\N	\N
8534287	LITTLE SHEEPSHEAD CREEK, NJ                                       	39.522  	-74.320 	0	\N	\N	\N	\N
8531942	LONG BRANCH, INSIDE, NJ                                           	40.325  	-73.997 	0	\N	\N	\N	\N
8531991	LONG BRANCH,FISHING PIER, NJ                                      	40.303  	-73.977 	0	\N	\N	\N	\N
8534044	LONG POINT, LITTLE EGG HARBOR, NJ                                 	39.613  	-74.263 	0	\N	\N	\N	\N
8534836	LONGPORT, RISELY CHANNEL, NJ                                      	39.308  	-74.533 	1	6.088   	7.335   	1.247   	S 
8535451	LONGREACH, NJ                                                     	39.102  	-74.755 	0	\N	\N	\N	\N
8533738	LOVELADIES, NJ                                                    	39.725  	-74.137 	0	\N	\N	\N	\N
8537731	LOWER ALLOWAY CREEK, DEL.BAY, NJ                                  	39.497  	-75.517 	0	\N	\N	\N	\N
8536849	LOWER DIVIDING CREEK, NJ                                          	39.217  	-75.103 	0	\N	\N	\N	\N
8535221	LUDLAM BAY, NJ                                                    	39.177  	-74.710 	0	\N	\N	\N	\N
8537535	MAD HORSE CREEK, DELAWARE BAY, NJ                                 	39.432  	-75.447 	0	\N	\N	\N	\N
8534393	MAIN MARSH THOROFARE, NJ                                          	39.478  	-74.383 	0	\N	\N	\N	\N
8533909	MANAHAWKIN CREEK, NJ                                              	39.667  	-74.215 	0	\N	\N	\N	\N
8533935	MANAHAWKIN DRAWBRIDGE, NJ                                         	39.653  	-74.185 	0	\N	\N	\N	\N
8537242	MANANTICO CREEK, NJ                                               	39.343  	-75.008 	0	\N	\N	\N	\N
8532591	MANASQUAN INLET, NJ                                               	40.102  	-74.035 	0	\N	\N	\N	\N
8532786	MANTOLOKING, BARNEGAT BAY, NJ                                     	40.037  	-74.053 	0	\N	\N	\N	\N
8538438	MANTUA, NJ                                                        	39.795  	-75.177 	0	\N	\N	\N	\N
8537147	MANUMUSKIN RIVER, NJ                                              	39.313  	-74.985 	0	\N	\N	\N	\N
8531526	MATAWAN CREEK RARITAN BAY, NJ                                     	40.433  	-74.218 	0	\N	\N	\N	\N
8537059	MAURICETOWN, MAURICE RIVER, NJ                                    	39.285  	-74.992 	0	\N	\N	\N	\N
8534468	MAYS LANDING, GREAT EGG HARBOR RIVER, NJ                          	39.448  	-74.728 	1	5.252   	7.176   	1.924   	S 
8530576	MILL CREEK, HACKENSACK RIVER, NJ                                  	40.798  	-74.050 	0	\N	\N	\N	\N
8533905	MILL CREEK, MANAHAWKIN BAY, NJ                                    	39.665  	-74.232 	0	\N	\N	\N	\N
8538055	MILL CREEK, PENNSNECK, NJ                                         	39.610  	-75.520 	0	\N	\N	\N	\N
8537052	MONEY ISLAND, NJ                                                  	39.285  	-75.238 	0	\N	\N	\N	\N
8534256	NANCOTE CREEK, NJ                                                 	39.535  	-74.463 	0	\N	\N	\N	\N
8538414	NEW BRIDGE, OLDMANS CREEK, NJ                                     	39.783  	-75.407 	0	\N	\N	\N	\N
8531463	NEW BRUNSWICK RARITAN RIVER, NJ                                   	40.488  	-74.435 	1	9.004   	8.431   	-0.573  	M 
8534104	NEW GRETNA, BASS RIVER, NJ                                        	39.592  	-74.442 	0	\N	\N	\N	\N
8530186	NEW MILFORD, HACKENSACK RIVER, NJ                                 	40.935  	-74.030 	0	\N	\N	\N	\N
8537079	NEWPORT LDG., NANTUXENT CREEK, NJ                                 	39.292  	-75.198 	0	\N	\N	\N	\N
8533862	NORTH BEACH, MANAHAWKIN BAY, NJ                                   	39.675  	-74.160 	0	\N	\N	\N	\N
8538848	NORTH BRANCH,RANCOCAS CK, DEL B, NJ                               	39.998  	-74.818 	0	\N	\N	\N	\N
8531369	NORTH OLD BRIDGE, SOUTH RIVER, NJ                                 	40.417  	-74.363 	1	8.827   	8.285   	-0.542  	M 
8530531	NORTH SECAUCUS, HACK. RIVER, NJ                                   	40.805  	-74.053 	0	\N	\N	\N	\N
8535661	NUMMY IS.,GRASSY SND.CH., NJ                                      	39.028  	-74.802 	0	\N	\N	\N	\N
8532885	OCEAN BEACH, BARNEGAT BAY, NJ                                     	39.988  	-74.068 	0	\N	\N	\N	\N
8531753	OCEANIC, NAVESINK RIVER, NJ                                       	40.377  	-74.015 	0	\N	\N	\N	\N
8535695	OLD TURTLE, RICHARDSON SOUND, NJ                                  	39.018  	-74.842 	0	\N	\N	\N	\N
8536831	ORANOAKEN CREEK, NJ                                               	39.293  	-75.133 	0	\N	\N	\N	\N
8533465	OYSTER CREEK, NJ                                                  	39.808  	-74.188 	0	\N	\N	\N	\N
8538853	PALMYRA, PENNSAUKEN CREEK, NJ                                     	39.993  	-75.028 	0	\N	\N	\N	\N
8534049	PARKER RUN, LITTLE EGG HARBOR, NJ                                 	39.617  	-74.310 	0	\N	\N	\N	\N
8538512	PAULSBORO, MANTUA CREEK, NJ                                       	39.835  	-75.238 	1	8.146   	9.573   	1.427   	M 
8538779	PAVONIA, NJ                                                       	39.962  	-75.098 	0	\N	\N	\N	\N
8538369	PEDRICKTOWN, OLDMANS CREEK, NJ                                    	39.762  	-75.403 	0	\N	\N	\N	\N
8537488	PINE ISLAND, NJ                                                   	39.422  	-75.428 	0	\N	\N	\N	\N
8534657	PLEASANTVILLE, LAKES BAY, NJ                                      	39.382  	-74.518 	0	\N	\N	\N	\N
8530743	POINT NO POINT, PASSAIC RIVER, NJ                                 	40.732  	-74.117 	0	\N	\N	\N	\N
8532585	POINT PLEASANT BEACH, MANASQUAN RIVER, NJ                         	40.105  	-74.055 	0	\N	\N	\N	\N
8538875	POMPESTON CREEK, DELAWARE RIVER, NJ                               	40.013  	-75.008 	0	\N	\N	\N	\N
8530882	PORT ELIZABETH, NEWARK BAY, NJ                                    	40.673  	-74.140 	0	\N	\N	\N	\N
8531142	Port Reading,                                                     	40.555  	-74.245 	1	8.224   	11.474  	3.25    	M 
8537889	QUINTON, ALLOWAY CREEK, NJ                                        	39.548  	-75.415 	0	\N	\N	\N	\N
8537489	RACCOON DITCH, NJ                                                 	39.422  	-75.382 	0	\N	\N	\N	\N
8531077	RAHWAY RIVER #1, NJ                                               	40.598  	-74.232 	0	\N	\N	\N	\N
8531833	RED BANK, NAVESINK RIVER, NJ                                      	40.355  	-74.065 	0	\N	\N	\N	\N
8534469	REED BAY,WEST SIDE, NJ                                            	39.453  	-74.427 	0	\N	\N	\N	\N
8530398	RIDGEFIELD PARK HACKENSACK RIVER, NJ                              	40.850  	-74.030 	0	\N	\N	\N	\N
8536855	RIGGINS DITCH, HEISLARVILLE, NJ                                   	39.218  	-74.980 	0	\N	\N	\N	\N
8536801	RIGGINS DITCH, NJ                                                 	39.200  	-74.970 	0	\N	\N	\N	\N
8532611	RIVIERA BEACH, MANASQUAN RIVER, NJ                                	40.097  	-74.087 	0	\N	\N	\N	\N
8537979	SALEM, NJ                                                         	39.577  	-75.477 	0	\N	\N	\N	\N
8531680	Sandy Hook, NJ                                                    	40.467  	-74.009 	1	7.588   	9.008   	1.42    	S 
8531390	SAYREVILLE, RARITAN RIVER, NJ                                     	40.478  	-74.357 	1	8.668   	9.602   	0.934   	M 
8531804	Sea Bright, NJ                                                    	40.365  	-73.975 	0	\N	\N	\N	\N
8533071	SEASIDE HEIGHTS, NJ                                               	39.943  	-74.035 	0	\N	\N	\N	\N
8533135	SEASIDE PARK, NJ                                                  	39.922  	-74.083 	0	\N	\N	\N	\N
8532322	SHARK RIVER HILLS, NJ                                             	40.192  	-74.038 	0	\N	\N	\N	\N
8537121	Ship John Shoal, NJ                                               	39.305  	-75.375 	1	8.802   	26.126  	17.324  	M 
8532921	SILVER BAY, NJ                                                    	39.997  	-74.148 	0	\N	\N	\N	\N
8537589	SILVER LAKE FORK, NJ                                              	39.453  	-75.455 	0	\N	\N	\N	\N
8537961	SINNICKSON LANDING, SALEM R., NJ                                  	39.570  	-75.498 	0	\N	\N	\N	\N
8533185	SLOOP CREEK, NJ                                                   	39.905  	-74.133 	0	\N	\N	\N	\N
8536687	SLUICE CREEK, NJ                                                  	39.162  	-74.832 	0	\N	\N	\N	\N
8531232	SOUTH AMBOY RARITAN RIVER, NJ                                     	40.492  	-74.282 	0	\N	\N	\N	\N
8537416	STATHEMS NECK, STOW CK., NJ                                       	39.407  	-75.405 	0	\N	\N	\N	\N
8534779	STEELMANVILLE 2, PATCONG RIVER, NJ                                	39.337  	-74.595 	0	\N	\N	\N	\N
8534780	STEELMANVILLE 3, PATCONG RIVER, NJ                                	39.337  	-74.593 	0	\N	\N	\N	\N
8534781	STEELMANVILLE 4, PATCONG RIVER, NJ                                	39.330  	-74.577 	0	\N	\N	\N	\N
8534782	STEELMANVILLE 5, PATCONG RIVER, NJ                                	39.328  	-74.577 	0	\N	\N	\N	\N
8534778	STEELMANVILLE, PATCONG RIVER, NJ                                  	39.335  	-74.597 	0	\N	\N	\N	\N
8535357	STITES SOUND, NJ                                                  	39.120  	-74.755 	0	\N	\N	\N	\N
8666135	COMBAHEE RIVER @ 17A, SC                                          	32.703  	-80.825 	0	\N	\N	\N	\N
8535581	STONE HARBOR, GREAT CHANNEL, NJ                                   	39.057  	-74.765 	1	6.636   	2.974   	-3.662  	S 
8533365	Stouts Creek, NJ                                                  	39.845  	-74.152 	0	\N	\N	\N	\N
8537562	STOW CREEK,DELAWARE BAY, NJ                                       	39.462  	-75.403 	0	\N	\N	\N	\N
8535163	STRATHMERE, STRATHMERE BAY, NJ                                    	39.200  	-74.657 	0	\N	\N	\N	\N
8538479	SUNSET BEACH, BIG TIMBER CREEK, NJ                                	39.815  	-75.088 	0	\N	\N	\N	\N
8535838	SUNSET LAKE, NJ                                                   	38.978  	-74.837 	0	\N	\N	\N	\N
8535805	SWAIN CHANNEL, NJ                                                 	38.980  	-74.863 	0	\N	\N	\N	\N
8539808	SYLVAN GLEN, CROSSWICKS CREEK, NJ                                 	40.182  	-74.705 	0	\N	\N	\N	\N
8538886	Tacony-Palmyra Bridge, NJ                                         	40.012  	-75.043 	1	8.973   	25.757  	16.784  	M 
8532721	TALL PINES CAMP, METEDECONK R., NJ                                	40.058  	-74.117 	0	\N	\N	\N	\N
8533051	Toms River, NJ                                                    	39.950  	-74.198 	1	1.637   	-1.553  	-3.19   	S 
8535375	Townsend Inlet, NJ                                                	39.122  	-74.717 	1	6.44    	6.83    	0.39    	S 
8535309	TOWNSEND SOUND, NJ                                                	39.147  	-74.750 	0	\N	\N	\N	\N
8539993	TRENTON MARINE TERMINAL, NJ                                       	40.188  	-74.755 	1	10.936  	11.723  	0.787   	M 
8534884	TUCKAHOE 2, TUCKAHOE RIVER, NJ                                    	39.297  	-74.750 	0	\N	\N	\N	\N
8534885	TUCKAHOE 3, TUCKAHOE RIVER, NJ                                    	39.292  	-74.750 	0	\N	\N	\N	\N
8534883	TUCKAHOE,TUCKAHOE RIVER, NJ                                       	39.295  	-74.748 	1	5.291   	7.529   	2.238   	S 
8534139	TUCKERTON, LITTLE EGG HARBOR, NJ                                  	39.577  	-74.332 	0	\N	\N	\N	\N
8534080	TUCKERTON, TUCKERTONCREEK, NJ                                     	39.602  	-74.342 	0	\N	\N	\N	\N
8537353	TYNDALLS WHARF, NJ                                                	39.378  	-75.235 	0	\N	\N	\N	\N
8530645	UNION CITY HUDSON RIVER, NJ                                       	40.765  	-74.018 	0	\N	\N	\N	\N
8536551	UPPER BIDWELL CREEK, NJ                                           	39.118  	-74.868 	0	\N	\N	\N	\N
8537201	UPPER CEDAR CREEK, NJ                                             	39.330  	-75.212 	0	\N	\N	\N	\N
8536752	UPPER DENNIS CREEK, NJ                                            	39.183  	-74.822 	0	\N	\N	\N	\N
8537689	UPPER HOPE CREEK, NJ                                              	39.485  	-75.493 	0	\N	\N	\N	\N
8534002	UPPER MULLICA RIVER, NJ                                           	39.625  	-74.642 	0	\N	\N	\N	\N
8534772	VENTNOR CITY (NGS), NJ                                            	39.335  	-74.477 	0	\N	\N	\N	\N
8534770	VENTNOR CITY, FISHING PIER, NJ                                    	39.335  	-74.477 	1	6.742   	10.634  	3.892   	S 
8534773	VENTNOR OFFSHORE 2, NJ                                            	39.332  	-74.420 	0	\N	\N	\N	\N
8534774	VENTNOR OFFSHORE 5 MI., NJ                                        	39.290  	-74.375 	0	\N	\N	\N	\N
8536271	VILLAS-JACKSON PIER, NJ                                           	39.018  	-74.953 	0	\N	\N	\N	\N
8531592	WAACKAACK CK, RARITAN BAY, NJ                                     	40.448  	-74.143 	0	\N	\N	\N	\N
8534043	WADING RIVER, NJ                                                  	39.618  	-74.497 	0	\N	\N	\N	\N
8532371	WALL TOWNSHIP, SHARK RIVER, NJ                                    	40.178  	-74.047 	0	\N	\N	\N	\N
8533542	WARETOWN (BACKUP), NJ                                             	39.792  	-74.182 	0	\N	\N	\N	\N
8533541	WARETOWN BARNEGAT BAY, NJ                                         	39.792  	-74.182 	0	\N	\N	\N	\N
8536935	WEIR CREEK, DELAWARE BAY, NJ                                      	39.250  	-75.128 	0	\N	\N	\N	\N
8536764	WEST CREEK, DELAWARE BAY, NJ                                      	39.188  	-74.915 	0	\N	\N	\N	\N
8533987	WEST CREEK, WESTECUNK CREEK, NJ                                   	39.632  	-74.297 	0	\N	\N	\N	\N
8536851	WEST CREEK, NJ                                                    	39.217  	-74.925 	0	\N	\N	\N	\N
8535726	WEST WILDWOOD, GRASSY SOUND, NJ                                   	39.005  	-74.827 	0	\N	\N	\N	\N
8538601	WESTVILLE, BIG TIMBER CREEK, NJ                                   	39.873  	-75.123 	0	\N	\N	\N	\N
8535835	WILDWOOD CREST, NJ                                                	38.975  	-74.823 	1	7.185   	10.5    	3.315   	S 
8538095	WINSLOW FARMS, SALEM R., NJ                                       	39.628  	-75.482 	0	\N	\N	\N	\N
8531156	WOODBRIDGE CREEK #1, NJ                                           	40.545  	-74.265 	0	\N	\N	\N	\N
8538568	WOODBURY CREEK, NJ                                                	39.858  	-75.185 	0	\N	\N	\N	\N
8538548	WOODBURY CREEK, NJ                                                	39.860  	-75.187 	0	\N	\N	\N	\N
8518995	ALBANY, HUDSON RIVER, NY                                          	42.650  	-73.747 	1	7.633   	15.741  	8.108   	M 
8516881	Atlantic Beach, NY                                                	40.595  	-73.743 	1	7.083   	25.349  	18.266  	S 
8516661	Bay Park, NY, NY                                                  	40.630  	-73.670 	1	7.279   	32.197  	24.918  	S 
8515102	BAYSHORE, LONG ISLAND, NY                                         	40.717  	-73.240 	0	\N	\N	\N	\N
8516299	BAYVILLE BRIDGE, OYSTER BAY, NY                                   	40.903  	-73.550 	1	11.485  	13.918  	2.433   	M 
8517137	Beach Channel, NY                                                 	40.588  	-73.820 	0	\N	\N	\N	\N
8518934	Beacon, Hudson River, NY                                          	41.500  	-73.983 	1	5.091   	23.252  	18.161  	S 
8519483	Bergen Point West Reach, NY                                       	40.639  	-74.146 	1	8.182   	11.117  	2.935   	M 
8517847	Brooklyn Bridge, NY                                               	40.703  	-73.995 	1	7.245   	3.3     	-3.945  	S 
8514422	CEDAR BEACH, NY                                                   	40.965  	-73.043 	1	9.35    	11.062  	1.712   	M 
8667034	COMBAHEE RIVER AT RAILROAD BRIDGE, SC                             	32.590  	-80.630 	0	\N	\N	\N	\N
8516061	COLD SPRINGS HARBOR, NY                                           	40.873  	-73.470 	1	11.324  	15.434  	4.11    	M 
8517276	COLLEGE PT, FT. OF 110TH ST, LI, NY                               	40.783  	-73.857 	0	\N	\N	\N	\N
8518902	Dyckman Street, NY                                                	40.868  	-73.933 	1	6.401   	10.078  	3.677   	S 
8518695	EAST 41ST STREET PIER, NY                                         	40.747  	-73.968 	0	\N	\N	\N	\N
8515786	Eatons Neck, NY                                                   	40.953  	-73.400 	1	10.877  	30.637  	19.76   	M 
8515186	Fire Island, NY                                                   	40.627  	-73.260 	1	3.227   	9.417   	6.19    	S 
8519024	FORT WADSWORTH, STATEN ISLAND, NY                                 	40.607  	-74.055 	0	\N	\N	\N	\N
8516614	GLEN COVE YACHT CLUB, LONG ISLAND, NY                             	40.863  	-73.655 	1	11.469  	11.936  	0.467   	M 
8517921	GOWANUS BAY, NY                                                   	40.665  	-74.013 	0	\N	\N	\N	\N
8517811	GRAVESEND BAY, NORTON PT. BKLN, NY                                	40.590  	-73.998 	0	\N	\N	\N	\N
8519436	Great Kills Harbor, NY                                            	40.543  	-74.140 	1	7.863   	27.29   	19.427  	M 
8516155	GREEN ISLAND, NY                                                  	40.623  	-73.502 	1	4.813   	63.35   	58.537  	S 
8511907	Greenport, NY                                                     	41.101  	-72.361 	1	4.22    	28.989  	24.769  	S 
8516607	Harry Tappen Marina, NY                                           	40.835  	-73.652 	1	11.658  	29.057  	17.399  	M 
8518924	HAVERSTRAW BAY, NY                                                	41.218  	-73.963 	1	5.069   	10.776  	5.707   	S 
8518668	Horns Hook, NY                                                    	40.777  	-73.942 	1	7.889   	11.433  	3.544   	M 
8518621	HUNTS PT., NY                                                     	40.800  	-73.873 	0	\N	\N	\N	\N
8518951	Hyde Park, NY                                                     	41.783  	-73.950 	1	5.59    	32.357  	26.767  	S 
8516945	Kings Point, NY                                                   	40.810  	-73.765 	1	11.069  	22.475  	11.406  	M 
8517756	Kingsborough CC,                                                  	40.581  	-73.934 	1	7.677   	27.155  	19.478  	M 
8510448	Lake Montauk, NY                                                  	41.073  	-71.935 	1	3.41    	3.874   	0.464   	S 
8515921	LLOYD HARBOR LIGHTHOUSE, NY                                       	40.910  	-73.432 	1	10.62   	13.156  	2.536   	M 
8516663	LONG BEACH, NEW YORK, NY                                          	40.596  	-73.655 	1	6.787   	32.789  	26.002  	S 
8512668	Mattituck Inlet, Long Island, NY                                  	41.015  	-72.562 	1	7.873   	26.536  	18.663  	M 
8510321	MONTAUK POINT LIGHT, NY                                           	41.072  	-71.857 	0	\N	\N	\N	\N
8510560	Montauk, NY                                                       	41.048  	-71.959 	1	4.194   	7.336   	3.142   	S 
8513388	Moriches CGS, Moriches Bay, NY                                    	40.787  	-72.750 	1	3.208   	4.632   	1.424   	S 
8513398	Moriches Inlet, NY                                                	40.764  	-72.756 	1	4.794   	21.9    	17.106  	S 
8518490	NEW ROCHELLE, NY                                                  	40.893  	-73.782 	0	\N	\N	\N	\N
8517201	North Channel, NY                                                 	40.645  	-73.837 	1	8.453   	25.674  	17.221  	M 
8515586	NORTHPORT, NORTHPORT BAY, NY                                      	40.900  	-73.353 	1	11.099  	12.246  	1.147   	M 
8512987	Northville, NY                                                    	40.982  	-72.645 	1	8.051   	7.85    	-0.201  	M 
8516891	NORTON POINT, HOOK CREEK, NEW YORK, NY                            	40.635  	-73.747 	1	8.59    	28.351  	19.761  	M 
8511671	Orient Harbor, NY                                                 	41.137  	-72.307 	1	4.135   	28.457  	24.322  	S 
8516501	Parsonnage Cove, NY                                               	40.633  	-73.617 	1	6.975   	24.795  	17.82   	S 
8514322	PATCHOGUE, PATCHOGUE RIVER, NY                                    	40.750  	-73.000 	1	1.606   	5.435   	3.829   	S 
8511236	PLUM ISLAND PLUM GUT HARBOR, NY                                   	41.172  	-72.205 	1	4.602   	7.844   	3.242   	S 
8516402	Point Lookout, NY                                                 	40.594  	-73.584 	1	6.689   	29.545  	22.856  	S 
8512451	PONQUOGUE POINT, NY                                               	40.850  	-72.503 	1	4.78    	8.739   	3.959   	S 
8519200	PORT IVORY, ARTHUR KILL, NY                                       	40.645  	-74.180 	0	\N	\N	\N	\N
8514560	PORT JEFFERSON, NY                                                	40.950  	-73.077 	0	\N	\N	\N	\N
8518639	Port Morris, NY                                                   	40.802  	-73.907 	1	9.831   	10.125  	0.294   	M 
8516761	PORT WASHINGTON, MANHASSSET BAY, NY                               	40.832  	-73.703 	1	11.592  	14.382  	2.79    	M 
8518687	Queensboro Bridge, NY                                             	40.758  	-73.958 	1	6.755   	3.193   	-3.562  	S 
8518643	Randalls Island, NY                                               	40.800  	-73.928 	1	7.316   	10.163  	2.847   	S 
8518905	RIVERDALE, HUDSON RIVER, NY                                       	40.903  	-73.917 	0	\N	\N	\N	\N
8519789	ROSSVILLE, STATEN ISLAND, NY                                      	40.557  	-74.223 	0	\N	\N	\N	\N
8518091	RYE BEACH, AMUSEMENT PARK, NY                                     	40.962  	-73.672 	1	10.877  	13.053  	2.176   	M 
8511629	Sag Harbor, NY                                                    	41.003  	-72.297 	1	4.19    	27.911  	23.721  	S 
8514779	Seaview Ferry Dock, NY                                            	40.649  	-73.151 	1	2.15    	31.054  	28.904  	S 
8512671	Shinnecock Bay, NY                                                	40.820  	-72.562 	0	\N	\N	\N	\N
8512354	SHINNECOCK INLET OPEN COAST, NY                                   	40.837  	-72.480 	1	5.1     	22.46   	17.36   	S 
8512769	SHINNECOCK YACHT CLUB, PENNIMAN CREEK, NY                         	40.819  	-72.587 	1	4.001   	8.993   	4.992   	S 
8510719	Silver Eel Pond, NY                                               	41.257  	-72.030 	1	4.148   	11.175  	7.027   	S 
8513825	SMITH POINT BRIDGE, NARROW BAY, NY                                	40.738  	-72.868 	1	2.183   	4.474   	2.291   	S 
8512735	South Jamesport, NY                                               	40.935  	-72.582 	1	4.354   	5.292   	0.938   	S 
8518903	SPUYTEN DUYVIL CK, ENT., HUDSON R,, NY                            	40.878  	-73.925 	0	\N	\N	\N	\N
8518750	The Battery, NY                                                   	40.701  	-74.014 	1	7.336   	9.54    	2.204   	S 
8511171	THREEMILE HARBOR ENTRANCE, NY                                     	41.035  	-72.190 	0	\N	\N	\N	\N
8518526	Throgs Neck, NY                                                   	40.805  	-73.795 	1	11.394  	11.256  	-0.138  	M 
8518962	Turkey Point Hudson River NERRS, NY                               	42.014  	-73.939 	1	5.901   	30.388  	24.487  	S 
8519050	USCG Station NY, NY                                               	40.612  	-74.060 	1	7.362   	30.489  	23.127  	S 
8517732	WALLABOUT BAY, BKLN NAVY YARD, NY                                 	40.707  	-73.975 	0	\N	\N	\N	\N
8517401	WARDS IS., NY                                                     	40.787  	-73.922 	0	\N	\N	\N	\N
8517125	WHITESTONE, NY                                                    	40.798  	-73.813 	0	\N	\N	\N	\N
8516990	Willets Point, NY                                                 	40.793  	-73.782 	1	10.726  	14.548  	3.822   	M 
8518699	Williamsburg Bridge, NY                                           	40.712  	-73.968 	1	6.509   	3.004   	-3.505  	S 
8517251	Worlds Fair Marina, NY                                            	40.761  	-73.850 	1	10.761  	27.277  	16.516  	M 
8656590	Atlantic Beach Triple S Pier, NC                                  	34.693  	-76.712 	1	6.492   	10.664  	4.172   	S 
8653960	AVON, NC                                                          	35.347  	-75.500 	0	\N	\N	\N	\N
8658901	BALD HEAD ISLAND, CAPE FEAR RIVER, NC                             	33.880  	-78.002 	0	\N	\N	\N	\N
8656483	Beaufort, Duke Marine Lab, NC                                     	34.720  	-76.670 	1	5.552   	6.48    	0.928   	S 
8656518	BEAUFORT, TAYLOR CREEK, NC                                        	34.712  	-76.645 	0	\N	\N	\N	\N
8659960	BIRD ISLAND, LITTLE RIVER INLET, NC                               	33.855  	-78.543 	0	\N	\N	\N	\N
8659944	CALABASH CREEK BRIDGE, NC                                         	33.888  	-78.552 	0	\N	\N	\N	\N
8656612	CALICO JACKS MARINA, HARKER?S ISLAND, NC                          	34.687  	-76.533 	0	\N	\N	\N	\N
8654400	Cape Hatteras Fishing Pier, NC                                    	35.223  	-75.635 	1	5.489   	7.759   	2.27    	S 
8656937	CAPE LOOKOUT, ATLANTIC OCEAN, NC                                  	34.608  	-76.528 	0	\N	\N	\N	\N
8656841	CAPE LOOKOUT, LOOKOUT BIGHT, NC                                   	34.613  	-76.538 	1	6.466   	11.533  	5.067   	S 
8655151	CEDAR ISLAND, NC                                                  	35.020  	-76.310 	0	\N	\N	\N	\N
8659942	COLKINS NECK, LITTLE RIVER, NC                                    	33.873  	-78.547 	0	\N	\N	\N	\N
8656566	CORAL BAY, ATLANTIC BEACH, NC                                     	34.700  	-76.768 	0	\N	\N	\N	\N
8656084	CORE CREEK BRIDGE, NC                                             	34.825  	-76.690 	1	4.084   	4.592   	0.508   	S 
8656201	Core Sound, NC                                                    	34.797  	-76.455 	1	2.264   	30.447  	28.183  	S 
8651371	DUCK, (INSHORE), NC                                               	36.182  	-75.750 	0	\N	\N	\N	\N
8651370	Duck, NC                                                          	36.183  	-75.747 	1	5.765   	23.473  	17.708  	S 
8651817	Edenhouse Point, NC                                               	36.055  	-76.684 	0	\N	\N	\N	\N
8658715	FEDERAL POINT, CAPE FEAR RIVER, NC                                	33.962  	-77.940 	0	\N	\N	\N	\N
8656571	FORT MACON, NC                                                    	34.698  	-76.682 	0	\N	\N	\N	\N
8651538	Frog Island, NC                                                   	36.139  	-76.106 	0	\N	\N	\N	\N
8656451	GALLANT CHANNEL, NC                                               	34.728  	-76.668 	0	\N	\N	\N	\N
8653901	GULL SHOAL, NC                                                    	35.367  	-75.958 	0	\N	\N	\N	\N
8656503	HARKERS ISLAND BRIDGE, NC                                         	34.715  	-76.578 	0	\N	\N	\N	\N
8652226	JEANETTES PEIR, NC                                                	35.910  	-75.592 	0	\N	\N	\N	\N
8652905	Lake Worth, NC                                                    	35.698  	-75.773 	0	\N	\N	\N	\N
8656539	LENOXVILLE POINT, NORTH RIVER CHANNEL, NC                         	34.708  	-76.620 	0	\N	\N	\N	\N
8653305	LONG SHOAL LT., NC                                                	35.565  	-75.735 	0	\N	\N	\N	\N
8652247	Manns Harbor, NC                                                  	35.903  	-75.770 	1	0.793   	3.376   	2.583   	S 
8652232	MANTEO, SHALLOWBAG BAY, NC                                        	35.910  	-75.670 	0	\N	\N	\N	\N
8656502	MOREHEAD CITY HARBOR, HARBOR CHANNEL, NC                          	34.720  	-76.711 	0	\N	\N	\N	\N
8656306	MOREHEAD-BEAUFORT Y.C., NEWPORT RIVER, NC                         	34.768  	-76.672 	0	\N	\N	\N	\N
8658654	MOTSU SOUTH WHARF #1, CAPE FEAR RIVER, NC                         	33.990  	-77.957 	0	\N	\N	\N	\N
8656486	N.C.A.R. STATE FISHERIES, NC                                      	34.720  	-76.755 	0	\N	\N	\N	\N
8656225	NORTH RIVER BRIDGE, BETTIE, NC                                    	34.792  	-76.608 	0	\N	\N	\N	\N
8659182	Oak Island, Atlantic Ocean, NC                                    	33.902  	-78.082 	1	8.075   	10.232  	2.157   	M 
8657419	OCEAN CITY, FISHING PIER, NC                                      	34.452  	-77.495 	0	\N	\N	\N	\N
8654572	Ocracoke Island, NC                                               	35.171  	-75.817 	0	\N	\N	\N	\N
8652648	Old House Channel, NC                                             	35.777  	-75.585 	0	\N	\N	\N	\N
8666659	COMBAHEE RIVER AT US HWY. 17, SC                                  	32.652  	-80.683 	0	\N	\N	\N	\N
8652587	Oregon Inlet Marina, NC                                           	35.795  	-75.548 	1	1.871   	4.204   	2.333   	S 
8658501	ORTON POINT, CAPE FEAR RIVER, NC                                  	34.057  	-77.940 	0	\N	\N	\N	\N
8652437	Oyster Creek, NC                                                  	35.845  	-75.655 	1	0.795   	2.548   	1.753   	S 
8652715	PEA ISLAND #2, NC                                                 	35.757  	-75.532 	0	\N	\N	\N	\N
8653951	Peter?s Ditch, NC                                                 	35.350  	-75.512 	1	0.617   	29.839  	29.222  	S 
8655353	Portsmouth, NC                                                    	34.979  	-76.163 	0	\N	\N	\N	\N
8658622	REAVES POINT, MOTSU CENTER, NC                                    	34.003  	-77.955 	0	\N	\N	\N	\N
8658681	REAVES PT. CH., CAPE FEAR RIVER, NC                               	33.975  	-77.945 	0	\N	\N	\N	\N
8654875	River Dunes, NC                                                   	35.085  	-76.600 	0	\N	\N	\N	\N
8652547	Roanoke Marshes Light, NC                                         	35.812  	-75.700 	1	0.814   	4.901   	4.087   	S 
8653215	RODANTHE, PAMLICO SOUND, NC                                       	35.595  	-75.472 	0	\N	\N	\N	\N
8655875	Sea Level, NC                                                     	34.875  	-76.343 	1	1.038   	31.406  	30.368  	S 
8659084	Southport, NC                                                     	33.915  	-78.018 	1	6.497   	16.484  	9.987   	S 
8656467	Spooners Creek, NC                                                	34.725  	-76.803 	1	3.094   	26.127  	23.033  	S 
8658579	SUNNY POINT, MOTSU NORTH WHARF, NC                                	34.023  	-77.947 	1	6.305   	8.213   	1.908   	S 
8659898	SUNSET BEACH BRIDGE, NC                                           	33.882  	-78.510 	0	\N	\N	\N	\N
8659897	Sunset Beach, NC                                                  	33.865  	-78.507 	1	8.27    	12.583  	4.313   	M 
8652678	USCG LIFEBOAT STATION, OREGON INLET, NC                           	35.768  	-75.527 	1	3.699   	6.498   	2.799   	S 
8654467	USCG Station Hatteras, NC                                         	35.209  	-75.704 	1	0.942   	28.23   	27.288  	S 
8653365	Washington, Tar River, NC                                         	35.545  	-77.062 	0	\N	\N	\N	\N
8658559	WILMINGTON BEACH, NC                                              	34.032  	-77.893 	0	\N	\N	\N	\N
8658120	Wilmington, NC                                                    	34.228  	-77.954 	1	6.131   	8.062   	1.931   	S 
8658163	Wrightsville Beach, NC                                            	34.213  	-77.787 	1	7.155   	24.746  	17.591  	S 
8658741	ZEKES ISLAND, CAPE FEAR RIVER, NC                                 	33.950  	-77.952 	1	6.307   	8.084   	1.777   	S 
9439026	ASTORIA, YOUNGS BAY, OR                                           	46.172  	-123.842	0	\N	\N	\N	\N
9439040	Astoria, OR                                                       	46.207  	-123.768	1	12.266  	12.824  	0.558   	M 
9432373	BANDON, COQUILLE RIVER,                                           	43.120  	-124.413	0	\N	\N	\N	\N
9439135	BEAVER, OR                                                        	46.182  	-123.180	0	\N	\N	\N	\N
9432771	CAPE ARAGO LIGHTHOUSE,                                            	43.342  	-124.367	0	\N	\N	\N	\N
9436381	Cascade Head, Salmon River, OR                                    	45.048  	-124.007	1	11.31   	26.796  	15.486  	M 
9438772	Cathcart Landing, OR                                              	46.124  	-123.804	1	13.105  	41.724  	28.619  	M 
9432780	Charleston, OR                                                    	43.345  	-124.322	1	11.855  	13.393  	1.538   	M 
9435992	Chinook Bend,                                                     	44.880  	-123.964	1	7.961   	33.617  	25.656  	M 
9432436	Coquille River,                                                   	43.158  	-124.182	1	7.586   	21.476  	13.89   	S 
9434068	Cushman,                                                          	43.985  	-124.045	1	11.157  	34.087  	22.93   	M 
9435827	DEPOE BAY, OR                                                     	44.810  	-124.058	1	13.043  	13.901  	0.858   	M 
9437381	Dick Point, OR                                                    	45.482  	-123.902	1	9.923   	29.213  	19.29   	M 
9434938	DRIFT CREEK, ALSEA RIVER,                                         	44.413  	-123.990	0	\N	\N	\N	\N
9434098	Florence USCG Pier, Suislaw River, OR                             	44.002  	-124.123	1	11.339  	29.435  	18.096  	M 
9439008	FORT STEVENS, OR                                                  	46.207  	-123.950	0	\N	\N	\N	\N
9437540	Garibaldi, OR                                                     	45.555  	-123.919	1	12.435  	14.259  	1.824   	M 
9431011	Gold Beach, OR                                                    	42.422  	-124.419	1	11.119  	51.081  	39.962  	M 
9433445	Half Moon Bay, OR                                                 	43.675  	-124.192	1	10.99   	20.64   	9.65    	M 
9439011	Hammond, OR                                                       	46.202  	-123.945	1	12.643  	12.92   	0.277   	M 
9432796	ISTHMUS SLOUGH, COOS BAY, OR                                      	43.352  	-124.192	0	\N	\N	\N	\N
9436031	KERNVILLE, SILETZ RIVER,                                          	44.897  	-124.000	0	\N	\N	\N	\N
9439069	KNAPPA,                                                           	46.187  	-123.588	0	\N	\N	\N	\N
9438125	Multnomah Channel,                                                	45.812  	-122.827	0	\N	\N	\N	\N
9436641	Nestucca Bay, OR                                                  	45.161  	-123.938	0	\N	\N	\N	\N
9437262	NETARTS, NETARTS BAY, OR                                          	45.430  	-123.945	0	\N	\N	\N	\N
9432895	NORTH BEND, COOS BAY, OR                                          	43.410  	-124.218	0	\N	\N	\N	\N
9437954	North Fork,                                                       	45.734  	-123.876	1	12.665  	31.245  	18.58   	M 
9437585	NORTH JETTY, TILLAMOOK BAY,                                       	45.570  	-123.965	1	12.566  	43.015  	30.449  	M 
9431647	Port Orford, OR                                                   	42.739  	-124.498	1	11.392  	32.24   	20.848  	M 
9439221	Portland Morrison Street Bridge, OR                               	45.510  	-122.673	1	4.226   	5.632   	1.406   	S 
9433501	REEDSPORT,                                                        	43.708  	-124.098	1	10.748  	22.937  	12.189  	M 
9439189	Rocky Point,                                                      	45.697  	-122.868	1	4.208   	5.612   	1.404   	S 
9438478	Seaside,                                                          	46.000  	-123.922	0	\N	\N	\N	\N
9432879	SITKA DOCK, COOS BAY, OR                                          	43.377  	-124.297	0	\N	\N	\N	\N
9435380	South Beach, OR                                                   	44.625  	-124.045	1	12.783  	15.022  	2.239   	M 
9439201	St Helens, OR                                                     	45.863  	-122.796	1	4.564   	6.055   	1.491   	S 
9435362	TOLEDO, OR                                                        	44.617  	-123.937	0	\N	\N	\N	\N
9434939	Waldport,                                                         	44.434  	-124.058	1	11.008  	25.911  	14.903  	M 
9439099	Wauna, OR                                                         	46.162  	-123.409	1	9.69    	9.221   	-0.469  	M 
9435308	WEISER POINT, YAQUINA RIVER, OR                                   	44.593  	-124.008	1	13.195  	14.805  	1.61    	M 
9435385	YAQUINA USCG STA, NEWPORT,                                        	44.627  	-124.055	0	\N	\N	\N	\N
1630000	Apra Harbor, Guam, United States of America                       	13.443  	144.656 	1	3.872   	4.135   	0.263   	S 
1840000	CHUUK, MOEN ISLAND, E. CAROLINE ISLANDS, Micronesia, Federated Sta	7.447   	151.847 	1	3.16    	5.377   	2.217   	S 
1732417	Fare Ute Point,                                                   	-17.535 	-149.572	1	1.368   	42.862  	41.494  	S 
1619000	Johnston Atoll, United States of America                          	16.738  	-169.530	1	3.801   	4.89    	1.089   	S 
1820000	Kwajalein, Marshall Islands, United States of America             	8.732   	167.736 	1	6.524   	8.224   	1.7     	S 
1631428	Pago Bay, Guam, United States of America                          	13.428  	144.797 	1	2.663   	26.316  	23.653  	S 
1770000	Pago Pago, American Samoa, American Samoa                         	-14.277 	-170.689	1	4.006   	6.654   	2.648   	S 
1633227	Saipan,                                                           	15.227  	145.737 	1	3.228   	4.834   	1.606   	S 
1619910	Sand Island, Midway Islands, United States of America             	28.212  	-177.360	1	2.127   	4.446   	2.319   	S 
1910000	SUVA, SUVA HARBOR, Fiji                                           	-18.133 	178.425 	1	6.192   	41.296  	35.104  	S 
1890000	Wake Island, Pacific Ocean, United States of America              	19.291  	166.618 	1	3.775   	7.218   	3.443   	S 
8546252	Bridesburg, PA                                                    	39.983  	-75.075 	1	8.621   	27.448  	18.827  	M 
8540433	Marcus Hook, PA                                                   	39.812  	-75.409 	1	7.922   	28.819  	20.897  	M 
8549424	MEENAN, PA                                                        	40.128  	-74.823 	0	\N	\N	\N	\N
8548989	Newbold, PA                                                       	40.137  	-74.752 	1	10.067  	23.583  	13.516  	M 
8542699	NORWOOD, DARBY CREEK, PA                                          	39.880  	-75.290 	0	\N	\N	\N	\N
8545530	PHILADELPHIA (PIER 11 NORTH), DEL. RIVER, PA                      	39.953  	-75.138 	1	8.482   	11.781  	3.299   	M 
8545534	PHILADELPHIA (TEMPORARY ADR), PA                                  	39.953  	-75.138 	0	\N	\N	\N	\N
8545240	Philadelphia, PA                                                  	39.933  	-75.142 	1	8.668   	11.671  	3.003   	M 
8543111	TINICUM 1, DARBY CREEK, PA                                        	39.893  	-75.258 	0	\N	\N	\N	\N
8543025	TINICUM 2, DARBY CREEK, PA                                        	39.887  	-75.257 	0	\N	\N	\N	\N
8543024	TINICUM 3, DARBY CREEK, PA                                        	39.887  	-75.265 	0	\N	\N	\N	\N
8542885	TINICUM 4, DARBY CREEK, PA                                        	39.878  	-75.277 	0	\N	\N	\N	\N
8542426	WANNAMAKER BRIDGE 2 (BACKUP), PA                                  	39.877  	-75.305 	0	\N	\N	\N	\N
2627000	Ponta Delgada, Azores, Portugal                                   	37.735  	-25.673 	0	\N	\N	\N	\N
2630000	Praia, Cape Verde Islands, Cape Verde                             	14.908  	-23.508 	0	\N	\N	\N	\N
8450948	ANTHONY POINT, RI                                                 	41.638  	-71.212 	0	\N	\N	\N	\N
8453033	BAY SPRING, BULLOCK COVE, RI                                      	41.752  	-71.352 	0	\N	\N	\N	\N
8453999	BEAVERTAIL POINT, RI                                              	41.452  	-71.402 	0	\N	\N	\N	\N
8459681	Block Island, RI                                                  	41.163  	-71.610 	1	4.712   	12.122  	7.41    	S 
8459338	Block Island, RI                                                  	41.173  	-71.557 	1	5.163   	5.311   	0.148   	S 
8454341	BOSTON NECK, RI                                                   	41.460  	-71.428 	0	\N	\N	\N	\N
8451552	BRISTOL FERRY, RI                                                 	41.637  	-71.255 	1	6.661   	9.812   	3.151   	S 
8452154	Bristol Highlands, RI                                             	41.697  	-71.293 	1	6.812   	11.196  	4.384   	S 
8453201	CASTLE HILL, RI                                                   	41.463  	-71.362 	0	\N	\N	\N	\N
8453465	CONANICUT POINT, RI                                               	41.573  	-71.372 	0	\N	\N	\N	\N
8452944	Conimicut Light, RI                                               	41.717  	-71.343 	1	7.066   	24.54   	17.474  	S 
8454578	East Greenwich, RI                                                	41.665  	-71.445 	1	6.717   	10.291  	3.574   	S 
8455137	Kickamuit River,                                                  	41.708  	-71.242 	1	6.72    	31.967  	25.247  	S 
8450954	NANNAQUAKET, RI                                                   	41.618  	-71.203 	0	\N	\N	\N	\N
8454658	NARRAGANSETT PIER, RI                                             	41.422  	-71.455 	0	\N	\N	\N	\N
8452555	NAVY PIER, PRUDENCE ISLAND, RI                                    	41.580  	-71.322 	0	\N	\N	\N	\N
8452660	Newport, RI                                                       	41.504  	-71.326 	1	6.078   	7.054   	0.976   	S 
8453767	PAWTUXET COVE, PROVIDENCE RIVER, RI                               	41.762  	-71.388 	0	\N	\N	\N	\N
8455083	POINT JUDITH, HARBOR OF REFUGE, RI                                	41.363  	-71.490 	1	5.535   	4.787   	-0.748  	S 
8454000	Providence, RI                                                    	41.807  	-71.401 	1	7.211   	9.714   	2.503   	S 
8454049	Quonset Point, RI                                                 	41.587  	-71.410 	1	6.323   	28.371  	22.048  	S 
8453433	RUMFORD, SEEKONK RIVER, RI                                        	41.840  	-71.373 	0	\N	\N	\N	\N
8451351	SACHUEST, FLINT POINT, RI                                         	41.487  	-71.238 	0	\N	\N	\N	\N
8450898	SAKONNET RIVER, NORTH END, BAY OIL PIER, RI                       	41.652  	-71.210 	0	\N	\N	\N	\N
8450768	SAKONNET, RI                                                      	41.465  	-71.193 	1	5.75    	13.114  	7.364   	S 
8459479	SANDY POINT, BLOCK IS, SOUND, RI                                  	41.228  	-71.580 	0	\N	\N	\N	\N
8451301	THE GLEN,SAKONNET RIVER, RI                                       	41.558  	-71.237 	0	\N	\N	\N	\N
8459449	VAILS BEACH, BLOCK IS. SOUND, RI                                  	41.148  	-71.575 	0	\N	\N	\N	\N
8453572	WARWICK POINT, RI                                                 	41.667  	-71.378 	0	\N	\N	\N	\N
8458694	WATCH HILL POINT, RI                                              	41.305  	-71.860 	0	\N	\N	\N	\N
8458022	WEEKAPAUG POINT, BLOCK ISLAND SOUND, RI                           	41.328  	-71.762 	1	4.162   	4.315   	0.153   	S 
8453742	WEST JAMESTOWN, RI                                                	41.497  	-71.387 	1	5.731   	13.619  	7.888   	S 
8455189	Westerly Pawcatuck, RI                                            	41.382  	-71.832 	0	\N	\N	\N	\N
8454538	WICKFORD, NARRAGANSETT BAY, RI                                    	41.572  	-71.445 	1	6.109   	14.993  	8.884   	S 
9952000	DIEGO RAMIREZ ISLAND, Chile                                       	-56.508 	-68.715 	0	\N	\N	\N	\N
9962420	Easter Island, Chile                                              	-27.150 	-109.448	0	\N	\N	\N	\N
9963950	Valparaiso, Chile                                                 	-33.027 	-71.625 	0	\N	\N	\N	\N
8666749	AIRY HALL, ASHEPOO RIVER, SC                                      	32.632  	-80.472 	0	\N	\N	\N	\N
8661608	ALLSTON CREEK, MURRELLS INLET, SC                                 	33.532  	-79.053 	0	\N	\N	\N	\N
8664662	Army Depot, SC                                                    	32.910  	-79.952 	1	8.35    	9.711   	1.361   	M 
8664531	BACON BRIDGE, ASHLEY RIVER, SC                                    	32.958  	-80.203 	0	\N	\N	\N	\N
8668482	BAILEYS LANDING, OKATEE RIVER, SC                                 	32.347  	-80.890 	0	\N	\N	\N	\N
8668092	BATTERY CREEK, SC                                                 	32.413  	-80.700 	0	\N	\N	\N	\N
8667999	BEAUFORT, SC                                                      	32.430  	-80.675 	1	10.863  	12.824  	1.961   	M 
8665567	BEN SAWYER BRIDGE, IWW, SC                                        	32.773  	-79.842 	0	\N	\N	\N	\N
8661989	BENNETT?S DOCK, SC                                                	33.435  	-79.127 	1	5.535   	7.809   	2.274   	S 
8664611	BIG PARADISE ISLAND, WANDO RIVER, SC                              	32.915  	-79.747 	0	\N	\N	\N	\N
8669801	BLOODY POINT, NEW RIVER, SC                                       	32.082  	-80.878 	0	\N	\N	\N	\N
8666359	BLUFF PLANTATION, COMBAHEE RIVER, SC                              	32.683  	-80.738 	0	\N	\N	\N	\N
8666699	BLUFF POINT, WADMALAW RIVER, SC                                   	32.647  	-80.257 	0	\N	\N	\N	\N
8669103	BLUFFTON, MAY RIVER, SC                                           	32.230  	-80.862 	0	\N	\N	\N	\N
8665552	BREACH INLET, SC                                                  	32.777  	-79.812 	0	\N	\N	\N	\N
8669338	BROAD CREEK, SC                                                   	32.185  	-80.753 	0	\N	\N	\N	\N
8668223	BROAD RIVER BRIDGE, SC                                            	32.387  	-80.777 	0	\N	\N	\N	\N
8663858	BUCK HALL, AWENDAW CREEK, SC                                      	33.040  	-79.560 	0	\N	\N	\N	\N
8661139	BUCKSPORT, WACCAMAW RIVER, SC                                     	33.647  	-79.095 	1	3.484   	7.011   	3.527   	S 
8664621	BULL ISLAND, SUMMERHOUSE CREEK, SC                                	32.913  	-79.617 	0	\N	\N	\N	\N
8664561	CAINHOY, WANDO RIVER, SC                                          	32.923  	-79.837 	0	\N	\N	\N	\N
8664545	Cainhoy, Wando River, SC                                          	32.927  	-79.830 	1	9.089   	8.676   	-0.413  	M 
8668511	CALLAWASSIE ISLAND BRIDGE, SC                                     	32.342  	-80.857 	0	\N	\N	\N	\N
8663101	CAPE ROMAIN, SC                                                   	33.025  	-79.348 	0	\N	\N	\N	\N
8661529	CAPT. ALEX?S MARINA, MURRELLS, SC                                 	33.552  	-79.037 	0	\N	\N	\N	\N
8667679	CARTER?S DOCK, BIG BAY CREEK, SC                                  	32.493  	-80.327 	0	\N	\N	\N	\N
8663461	CASINO CREEK, SC                                                  	33.108  	-79.393 	0	\N	\N	\N	\N
8663381	CEDAR ISLAND PT, SOUTH SANTEE R, SC                               	33.120  	-79.270 	0	\N	\N	\N	\N
8665530	Charleston, Cooper River Entrance, SC                             	32.781  	-79.924 	1	8.504   	9.936   	1.432   	M 
8668301	CHECHESSEE BLUFF, CHECHESSEE R., SC                               	32.373  	-80.837 	0	\N	\N	\N	\N
8660265	CHERRY GROVE, INSIDE, SC                                          	33.835  	-78.633 	0	\N	\N	\N	\N
8665763	CHURCH FLATS, STONO RIVER, SC                                     	32.747  	-80.165 	0	\N	\N	\N	\N
8662299	CLAMBANK CREEK DOCK, GOAT ISLAND, SC                              	33.333  	-79.193 	1	7.379   	9.472   	2.093   	S 
8667633	Clarendon Plantation, SC                                          	32.503  	-80.784 	1	11.377  	12.255  	0.878   	M 
8664688	CLOUTER CREEK, NORTH, SC                                          	32.907  	-79.935 	0	\N	\N	\N	\N
8664945	CLOUTER CREEK, SOUTH, SC                                          	32.860  	-79.938 	0	\N	\N	\N	\N
8668619	COLLETON RIVER ENTRANCE, SC                                       	32.322  	-80.792 	0	\N	\N	\N	\N
8660854	COMBINATION BRIDGE, SC                                            	33.713  	-78.922 	0	\N	\N	\N	\N
8665101	COSGROVE BRIDGE, ASHLEY RIVER, SC                                 	32.835  	-79.987 	0	\N	\N	\N	\N
8662216	CUMBERLAND, SAMPIT RIVER, SC                                      	33.370  	-79.433 	0	\N	\N	\N	\N
8669691	DAUFUSKIE LANDING, NEW RIVER, SC                                  	32.103  	-80.895 	0	\N	\N	\N	\N
8666799	DAWHOO BRIDGE, DAWHOO RIVER, SC                                   	32.637  	-80.342 	0	\N	\N	\N	\N
8668155	DISTANT ISLAND CREEK, UPPER END, SC                               	32.402  	-80.653 	0	\N	\N	\N	\N
8661582	DIVINE?S DOCK, MURRELLS INLET, SC                                 	33.542  	-79.028 	0	\N	\N	\N	\N
8665002	DRAYTON, BEES FERRY, ASHLEY RIVER, SC                             	32.848  	-80.052 	0	\N	\N	\N	\N
8660148	DUNN SOUND, LITTLE RIVER, SC                                      	33.858  	-78.570 	0	\N	\N	\N	\N
8660147	DUNN SOUND, NORTH, LITTLE RIVER, SC                               	33.860  	-78.580 	0	\N	\N	\N	\N
8660195	DUNN SOUND, WEST END, SC                                          	33.852  	-78.588 	0	\N	\N	\N	\N
8663757	DUPONT, DEAN HALL, COOPER R., SC                                  	33.058  	-79.937 	0	\N	\N	\N	\N
8667972	EDDINGS POINT CREEK, SC                                           	32.447  	-80.533 	0	\N	\N	\N	\N
8667630	EDISTO BEACH, EDISTO ISLAND, SC                                   	32.502  	-80.297 	0	\N	\N	\N	\N
8667676	EDISTO MARINA, BIG BAY CREEK, SC                                  	32.493  	-80.340 	0	\N	\N	\N	\N
8665257	EDISTO RIVER, SOUTH OF CANADAY LANDING, SC                        	32.813  	-80.407 	0	\N	\N	\N	\N
8666017	EDISTO RIVER, SOUTH OF PENNY CREEK, SC                            	32.715  	-80.437 	0	\N	\N	\N	\N
8665641	ELLIOTT CUT ENTRANCE, STONO RIVER, SC                             	32.763  	-80.002 	0	\N	\N	\N	\N
8667309	FENWICK ISLAND, SOUTH EDISTO RIVER, SC                            	32.560  	-80.418 	0	\N	\N	\N	\N
8667259	FIELDS POINT, COMBAHEE R., SC                                     	32.568  	-80.553 	0	\N	\N	\N	\N
8666652	FOLLY RIVER BRIDGE, FOLLY RIVER, SC                               	32.662  	-79.945 	0	\N	\N	\N	\N
8666653	FOLLY RIVER SOUTH (TEST FLOAT), SC                                	32.662  	-79.945 	0	\N	\N	\N	\N
8666467	FOLLY RIVER, NORTH, SC                                            	32.670  	-79.917 	0	\N	\N	\N	\N
8665728	FORT SUMTER, CHARLESTON HARBOR, SC                                	32.753  	-79.877 	0	\N	\N	\N	\N
8663781	FRENCH QUARTER CREEK, SC                                          	33.055  	-79.880 	0	\N	\N	\N	\N
8668498	Fripps Inlet, SC                                                  	32.340  	-80.465 	1	9.723   	27.321  	17.598  	M 
8661419	GARDEN CITY BRIDGE, MURRELLS INLET, SC                            	33.578  	-79.003 	1	6.366   	7.233   	0.867   	S 
8661437	GARDEN CITY PIER, MURRELLS INLET, SC                              	33.575  	-78.997 	1	8.307   	9.44    	1.133   	M 
8664022	GEN. DYNAMICS PIER, COOPER R., SC                                 	33.008  	-79.923 	1	6.802   	9.114   	2.312   	S 
8662747	GEORGETOWN LT.HOUSE, WINYAH BAY, SC                               	33.223  	-79.185 	0	\N	\N	\N	\N
8661991	HAGLEY, WACCAMAW RIVER, SC                                        	33.435  	-79.182 	0	\N	\N	\N	\N
8665387	HAMLIN CREEK, ISLE OF PALMS, SC                                   	32.787  	-79.792 	0	\N	\N	\N	\N
8665167	HAMLIN SOUND, SC                                                  	32.827  	-79.787 	0	\N	\N	\N	\N
8664589	HANAHAN, TURKEY CREEK, SC                                         	32.918  	-80.012 	0	\N	\N	\N	\N
8668146	HARBOR RIVER BRIDGE, ST. HELENA SOUND, SC                         	32.403  	-80.453 	0	\N	\N	\N	\N
8665424	HIGHWAY 171 BRIDGE, FOLLY CREEK, SC                               	32.675  	-79.952 	0	\N	\N	\N	\N
8666918	HO-NON-WAH BOYSCOUT CAMP, BOHICKET CR, SC                         	32.625  	-80.167 	0	\N	\N	\N	\N
8660266	HOG INLET PIER, SC                                                	33.837  	-78.607 	0	\N	\N	\N	\N
8666167	HOPE CREEK, SC                                                    	32.700  	-80.427 	0	\N	\N	\N	\N
8664782	HORLBECK CREEK, WANDO RIVER, SC                                   	32.885  	-79.845 	0	\N	\N	\N	\N
8665099	I-526 BRIDGE, ASHLEY RIVER, SC                                    	32.837  	-80.022 	1	8.627   	15.853  	7.226   	M 
8665494	ISLE OF PALMS PIER, SC                                            	32.783  	-79.785 	0	\N	\N	\N	\N
8665737	JACKSONBORO CAMP, SOUTH EDISTO RIVER, SC                          	32.753  	-80.450 	0	\N	\N	\N	\N
8662405	JAMESTOWN BRIDGE, SANTEE RIVER, SC                                	33.305  	-79.678 	0	\N	\N	\N	\N
8667982	JENKINS CREEK, SC                                                 	32.440  	-80.553 	0	\N	\N	\N	\N
8666101	JOHNS ISLAND, CHURCH CREEK, SC                                    	32.707  	-80.157 	0	\N	\N	\N	\N
8668227	JOHNSON?S CREEK, HARBOR ISLAND, SC                                	32.392  	-80.438 	0	\N	\N	\N	\N
8667062	KIAWAH BRIDGE, KIAWAH RIVER, SC                                   	32.603  	-80.132 	0	\N	\N	\N	\N
8666775	LEADENWAH CREEK, SC                                               	32.637  	-80.202 	0	\N	\N	\N	\N
8665475	LIMEHOUSE BRIDGE, STONO RIVER, SC                                 	32.787  	-80.105 	0	\N	\N	\N	\N
8660098	LITTLE RIVER NECK, SC                                             	33.870  	-78.573 	0	\N	\N	\N	\N
8660121	LITTLE RIVER TOWN, LITTLE R., SC                                  	33.870  	-78.608 	0	\N	\N	\N	\N
8667411	LOBECO, WHALE BRANCH, COOSAW RIVER, SC                            	32.573  	-80.745 	0	\N	\N	\N	\N
8666131	LOWER TOOGOODOO CREEK, SC                                         	32.703  	-80.278 	0	\N	\N	\N	\N
8661299	LOWER TOPSAW LANDING, PEE DEE RIVER, SC                           	33.608  	-79.152 	0	\N	\N	\N	\N
8663618	MC CLELLANVILLE, JEREMY CREEK, SC                                 	33.078  	-79.460 	0	\N	\N	\N	\N
8666283	MC DERMIDS PIER, STONO RIVER, SC                                  	32.677  	-80.007 	0	\N	\N	\N	\N
8662796	MINIM CREEK, SC                                                   	33.195  	-79.275 	0	\N	\N	\N	\N
8664442	MOORES LANDING, SEWEE BAY, SC                                     	32.937  	-79.655 	0	\N	\N	\N	\N
8661734	MT. PLEASANT PLANT., BLACK R., SC                                 	33.495  	-79.462 	0	\N	\N	\N	\N
8667209	MUSSELBORO ISLAND, MOSQUITO CREEK, SC                             	32.578  	-80.448 	0	\N	\N	\N	\N
8660401	MYRTLE BEACH AIRPORT, SC                                          	33.820  	-78.718 	0	\N	\N	\N	\N
8661000	Myrtle Beach, SC                                                  	33.683  	-78.885 	0	\N	\N	\N	\N
8662793	N. SANTEE BRIDGE, N. SANTEE R., SC                                	33.210  	-79.385 	0	\N	\N	\N	\N
8660166	NIXON CROSSROADS, LITTLE RIVER, SC                                	33.855  	-78.648 	0	\N	\N	\N	\N
8669262	NORTH BULL ISLAND, MAY RIVER, SC                                  	32.200  	-80.815 	0	\N	\N	\N	\N
8664992	NORTH DEWEE?S ISLAND, SC                                          	32.850  	-79.703 	0	\N	\N	\N	\N
8660642	NORTH MYRTLE BEACH, SC                                            	33.767  	-78.815 	0	\N	\N	\N	\N
8664701	NOWELL CREEK, SC                                                  	32.900  	-79.900 	0	\N	\N	\N	\N
8666282	OAK BRANCH @ BOHICKET CREEK, SC                                   	32.683  	-80.097 	0	\N	\N	\N	\N
8661609	OAKS CR. INLET, MURRELLS INLET, SC                                	33.530  	-79.043 	0	\N	\N	\N	\N
8661684	OAKS CREEK, UPPER END, MURRELLS INLET, SC                         	33.512  	-79.068 	1	6.195   	8.736   	2.541   	S 
8667281	OCELLA CREEK, SC                                                  	32.562  	-80.238 	0	\N	\N	\N	\N
8664878	OLD CAPERS LANDING, CAPERS ISLAND, SC                             	32.870  	-79.687 	0	\N	\N	\N	\N
8667783	OTTER ISLAND, ST. HELENA SOUND, SC                                	32.477  	-80.420 	0	\N	\N	\N	\N
8662245	Oyster Landing (N Inlet Estuary), SC                              	33.352  	-79.187 	1	7.172   	10.14   	2.968   	S 
8662071	PAWLEYS INLET, WARDS DOCK, SC                                     	33.412  	-79.135 	1	5.438   	8.432   	2.994   	S 
8662006	PAWLEYS ISLAND PIER, ATLANTIC OCEAN, SC                           	33.432  	-79.117 	1	8.404   	10.645  	2.241   	M 
8665599	PENNEYS CREEK W ENTRANCE, STONO RIVER, SC                         	32.768  	-80.070 	0	\N	\N	\N	\N
8667425	PETERS POINT, ST. PIERRE CREEK, SC                                	32.540  	-80.340 	0	\N	\N	\N	\N
8663539	PIMLICO, WEST BRANCH COOPER RIVER, SC                             	33.095  	-79.953 	0	\N	\N	\N	\N
8669601	PINE ISLAND, RAMSHORN CREEK, SC                                   	32.122  	-80.898 	0	\N	\N	\N	\N
8667067	PINE LANDING, SOUTH EDISTO R., SC                                 	32.603  	-80.388 	0	\N	\N	\N	\N
8662670	PLEASANT HILL LANDING, SANTEE RIVER, SC                           	33.245  	-79.522 	0	\N	\N	\N	\N
8667178	POINT OF PINES, N. EDISTO R., SC                                  	32.585  	-80.228 	0	\N	\N	\N	\N
8669167	PORT ROYAL PLTN., HILTON HEAD, SC                                 	32.220  	-80.668 	0	\N	\N	\N	\N
8664801	PRICE CREEK, NORTH CAPERS ISLAND, SC                              	32.882  	-79.658 	0	\N	\N	\N	\N
8668701	Purrysburg Landing, Savannah River, SC                            	32.303  	-81.122 	0	\N	\N	\N	\N
8663535	QUINBY BRIDGE, QUINBY CREEK, SC                                   	33.095  	-79.808 	0	\N	\N	\N	\N
8668918	RIBAUT ISLAND, SKULL CREEK, SC                                    	32.267  	-80.737 	1	10.658  	11.377  	0.719   	M 
8663665	RICHMOND PLANTATION, E. BR. COOPER RIVER, SC                      	33.077  	-79.855 	0	\N	\N	\N	\N
8663219	S. SANTEE R.,IWW(4 MI. CANAL CR), SC                              	33.147  	-79.323 	0	\N	\N	\N	\N
8667909	SALT CREEK AT RT. 21, SC                                          	32.450  	-80.732 	0	\N	\N	\N	\N
8667733	SAMS POINT, LUCY POINT CREEK, SC                                  	32.483  	-80.600 	0	\N	\N	\N	\N
8665589	SANDBLASTERS, PENNY?S CREEK, SC                                   	32.770  	-80.063 	0	\N	\N	\N	\N
8661119	SANDY ISLAND NORTH, BULL CR., SC                                  	33.602  	-79.118 	0	\N	\N	\N	\N
8661703	SANDY ISLAND, THOROUGHFARE CREEK, SC                              	33.507  	-79.145 	1	4.887   	7.756   	2.869   	S 
8667623	SCOTT CREEK, EDISTO ISLAND, SC                                    	32.502  	-80.318 	0	\N	\N	\N	\N
8667524	SEABROOK, ASHEPOO RIVER, SC                                       	32.523  	-80.407 	0	\N	\N	\N	\N
8666102	SECESSIONVHLLE CREEK, SC                                          	32.707  	-79.937 	0	\N	\N	\N	\N
8667172	SHELDON, HUSPA CREEK, SC                                          	32.583  	-80.783 	0	\N	\N	\N	\N
8665426	SHEM CREEK AT 17, SC                                              	32.793  	-79.882 	0	\N	\N	\N	\N
8669133	SKULL CREEK SOUTH, SC                                             	32.223  	-80.772 	0	\N	\N	\N	\N
8661559	SMITH?S DOCK, MURRELLS INLET, SC                                  	33.545  	-79.045 	0	\N	\N	\N	\N
8666767	SNAKE ISLAND, STONO RIVER, SC                                     	32.640  	-80.015 	0	\N	\N	\N	\N
8664515	SNOW POINT, 0.4 MILE N OF, COOPER RIVER, SC                       	32.948  	-79.932 	0	\N	\N	\N	\N
8660983	SOCASTEE BRIDGE, SC                                               	33.687  	-79.005 	0	\N	\N	\N	\N
8665495	SOUTH ASHLEY BRIDGE, ASHLEY RIVER, SC                             	32.783  	-79.957 	0	\N	\N	\N	\N
8664941	South Capers Island, SC                                           	32.857  	-79.707 	1	8.096   	9.867   	1.771   	M 
8665111	SOUTH DEWEES ISLAND, DEWEES INLET, SC                             	32.833  	-79.727 	0	\N	\N	\N	\N
8666616	SOUTH EDISTO RIVER AT DAWHOO RIVER, SC                            	32.657  	-80.392 	0	\N	\N	\N	\N
8662549	SOUTH ISLAND FERRY, WINYAH BAY, SC                                	33.252  	-79.268 	0	\N	\N	\N	\N
8661070	Springmaid Pier, SC                                               	33.655  	-78.918 	1	8.559   	36.496  	27.937  	M 
8668601	STATION CREEK, SC                                                 	32.325  	-80.602 	0	\N	\N	\N	\N
8667075	STEAMBOAT CREEK LANDING, SC                                       	32.603  	-80.287 	0	\N	\N	\N	\N
8665637	THE COVE, FT MOULTRIE, CHARLESTON HARBOR, SC                      	32.763  	-79.857 	0	\N	\N	\N	\N
8666433	TOOGOODOO CREEK, SC                                               	32.668  	-80.293 	0	\N	\N	\N	\N
8669415	U.S. HIGHWAY 17, LITTLE BACK RIVER, SC                            	32.165  	-81.130 	0	\N	\N	\N	\N
8662799	US HIGHWAY 17, SOUTH SANTEE RIVER, SC                             	33.185  	-79.407 	0	\N	\N	\N	\N
8662931	WACCAMAW RIVER ENTRANCE, SC                                       	33.367  	-79.255 	1	5.609   	11.102  	5.493   	S 
8661347	WACCAMAW RIVER, S. OF BULL CR., SC                                	33.597  	-79.098 	0	\N	\N	\N	\N
8665192	WANDO RIVER ENTRANCE, HOBCAW POINT, SC                            	32.822  	-79.900 	0	\N	\N	\N	\N
8667074	WIGGINS, CHEHAW RIVER, SC                                         	32.602  	-80.542 	0	\N	\N	\N	\N
8666367	WILLTOWN BLUFF, SC                                                	32.682  	-80.417 	0	\N	\N	\N	\N
8667199	WIMBEE CREEK, SC                                                  	32.578  	-80.670 	0	\N	\N	\N	\N
8662953	WINDSOR PLANTATION, BLACK RIVER, SC                               	33.415  	-79.250 	1	5.326   	8.426   	3.1     	S 
8661593	WINEA PLANTATION, BLACK RIVER, SC                                 	33.535  	-79.388 	0	\N	\N	\N	\N
8662746	WINYAH BAY, SOUTH ISLAND PLANTATION, SC                           	33.235  	-79.203 	0	\N	\N	\N	\N
8661093	YAUHANNAH BRIDGE, PEE DEE RIVER, SC                               	33.660  	-79.155 	0	\N	\N	\N	\N
8664541	YEAMANS HALL, GOOSE CREEK, SC                                     	32.925  	-79.987 	0	\N	\N	\N	\N
8666217	YONGES ISLAND, WADMALAW RIVER, SC                                 	32.695  	-80.223 	0	\N	\N	\N	\N
8771801	ALLIGATOR POINT, WEST BAY, TX                                     	29.167  	-95.125 	0	\N	\N	\N	\N
8770501	ANNIE?S LANDING, SAN JACINTO RIVER, TX                            	29.818  	-95.078 	0	\N	\N	\N	\N
8775083	ARANSAS PASS, REDFISH BAY, TX                                     	27.908  	-97.135 	0	\N	\N	\N	\N
8774230	Aransas Wildlife Refuge, TX                                       	28.228  	-96.795 	1	0.373   	29.283  	28.91   	S 
8775241	Aransas, Aransas Pass, TX                                         	27.837  	-97.039 	1	2.993   	26.251  	23.258  	S 
8776604	Baffin Bay, TX                                                    	27.297  	-97.405 	0	\N	\N	\N	\N
8770743	Battleship Texas State Park, TX                                   	29.757  	-95.090 	1	3.346   	12.844  	9.498   	S 
8775870	Bob Hall Pier, Corpus Christi, TX                                 	27.581  	-97.216 	1	3.465   	23.316  	19.851  	S 
8779977	Brownsville, TX                                                   	25.952  	-97.402 	0	\N	\N	\N	\N
8779571	CAMERON CO. FISHING PIER, TX                                      	26.140  	-97.167 	0	\N	\N	\N	\N
8772132	CHRISTMAS BAY, TX                                                 	29.042  	-95.175 	0	\N	\N	\N	\N
8770933	Clear Lake, TX                                                    	29.563  	-95.067 	1	2.543   	6.743   	4.2     	S 
8774513	Copano Bay,                                                       	28.114  	-97.024 	1	0.577   	5.685   	5.108   	S 
8775351	CORPUS CHRISTI, TX                                                	27.793  	-97.390 	0	\N	\N	\N	\N
8770653	CYPRESS, SAN JACINTO RIVER, TX                                    	29.847  	-95.088 	0	\N	\N	\N	\N
8771013	Eagle Point, Galveston Bay, TX                                    	29.480  	-94.918 	1	2.843   	6.039   	3.196   	S 
8777562	EL TORO, TX                                                       	26.942  	-97.458 	0	\N	\N	\N	\N
8772479	FREEPORT ENTRANCE JETTY, TX                                       	28.930  	-95.306 	0	\N	\N	\N	\N
8772471	Freeport SPIP, Freeport Harbor, TX                                	28.936  	-95.294 	1	3.394   	29.95   	26.556  	S 
8772447	Freeport, TX                                                      	28.943  	-95.303 	1	3.394   	29.987  	26.593  	S 
8772440	Freeport, TX                                                      	28.948  	-95.308 	1	3.302   	6.462   	3.16    	S 
8771341	Galveston Bay Entrance, North Jetty, TX                           	29.357  	-94.725 	1	3.376   	11.432  	8.056   	S 
8771416	Galveston Bay Entrance, South Jetty, TX                           	29.327  	-94.693 	1	4.021   	10.456  	6.435   	S 
8771904	GALVESTON OFFSHORE, TX                                            	29.123  	-94.508 	0	\N	\N	\N	\N
8771450	Galveston Pier 21, TX                                             	29.310  	-94.793 	1	3.026   	6.436   	3.41    	S 
8771510	Galveston Pleasure Pier, TX                                       	29.285  	-94.789 	1	4.025   	6.354   	2.329   	S 
8771486	Galveston Railroad Bridge, TX                                     	29.303  	-94.897 	1	2.686   	21.267  	18.581  	S 
8779040	GREEN IS #1, WEST SIDE, TX                                        	26.362  	-97.318 	0	\N	\N	\N	\N
8770808	High Island, TX                                                   	29.595  	-94.390 	1	2.67    	15.003  	12.333  	S 
8770733	Lynchburg Landing, TX                                             	29.765  	-95.079 	1	3.013   	6.554   	3.541   	S 
8770777	Manchester, TX                                                    	29.726  	-95.266 	1	3.422   	7.738   	4.316   	S 
8773767	Matagorda Bay Entrance Channel, TX                                	28.427  	-96.330 	1	2.071   	26.904  	24.833  	S 
8773146	Matagorda City, TX                                                	28.710  	-95.914 	1	0.622   	31.412  	30.79   	S 
8770613	Morgans Point, Barbours Cut, TX                                   	29.682  	-94.985 	1	2.925   	7.103   	4.178   	S 
8775421	Naval Air Station, TX                                             	27.705  	-97.280 	1	1.717   	5.663   	3.946   	S 
8773963	NORTH MATAGORDA, TX                                               	28.333  	-96.462 	0	\N	\N	\N	\N
8775244	Nueces Bay, TX                                                    	27.833  	-97.486 	1	1.867   	25.537  	23.67   	S 
8770597	Orange, TX                                                        	30.098  	-93.722 	0	\N	\N	\N	\N
8775792	Packery Channel, TX                                               	27.633  	-97.237 	1	1.689   	4.056   	2.367   	S 
8779751	PADRE ISLAND, SOUTH END, TX                                       	26.068  	-97.152 	0	\N	\N	\N	\N
8773156	PALACIOS, TX                                                      	28.693  	-96.225 	0	\N	\N	\N	\N
8775238	PORT ARANSAS (SPECIAL PROJECT), TX                                	27.838  	-97.052 	0	\N	\N	\N	\N
8775270	PORT ARANSAS, H. CALDWELL PIER, TX                                	27.827  	-97.050 	1	4.18    	7.07    	2.89    	S 
8775237	Port Aransas, TX                                                  	27.840  	-97.073 	1	1.687   	5.871   	4.184   	S 
8770475	Port Arthur, TX                                                   	29.867  	-93.931 	1	2.131   	5.958   	3.827   	S 
8771328	Port Bolivar, TX                                                  	29.365  	-94.780 	1	3.405   	6.222   	2.817   	S 
8775283	Port Ingleside, TX                                                	27.822  	-97.203 	1	1.661   	3.899   	2.238   	S 
8779770	Port Isabel, TX                                                   	26.061  	-97.216 	1	2.894   	5.944   	3.05    	S 
8773259	Port Lavaca, TX                                                   	28.641  	-96.610 	1	1.521   	4.111   	2.59    	S 
8778490	Port Mansfield, TX                                                	26.558  	-97.426 	0	\N	\N	\N	\N
8773701	Port O?Connor, TX                                                 	28.446  	-96.396 	1	1.264   	12.366  	11.102  	S 
8779724	Queen Isabella Causeway, TX                                       	26.078  	-97.170 	0	\N	\N	\N	\N
8770520	Rainbow Bridge, TX                                                	29.980  	-93.882 	1	2.102   	5.181   	3.079   	S 
8779280	Realitos Peninsula, TX                                            	26.263  	-97.285 	0	\N	\N	\N	\N
8777812	Rincon Del San Jose, TX                                           	26.825  	-97.492 	0	\N	\N	\N	\N
8774770	Rockport,                                                         	28.022  	-97.047 	1	1.428   	7.299   	5.871   	S 
8770971	Rollover Pass, TX                                                 	29.516  	-94.511 	1	2.61    	4.971   	2.361   	S 
8776139	S. Bird Island, TX                                                	27.484  	-97.318 	0	\N	\N	\N	\N
8771081	Sabine Offshore, TX                                               	29.498  	-93.640 	0	\N	\N	\N	\N
8770570	Sabine Pass North, TX                                             	29.728  	-93.870 	1	3.281   	5.643   	2.362   	S 
8770590	SABINE PASS, TX                                                   	29.705  	-93.853 	0	\N	\N	\N	\N
8771972	San Luis Pass, TX                                                 	29.095  	-95.113 	1	2.571   	5.982   	3.411   	S 
8772985	Sargent, TX                                                       	28.771  	-95.617 	1	1.837   	32.452  	30.615  	S 
8773037	Seadrift, TX                                                      	28.407  	-96.712 	1	0.44    	1.707   	1.267   	S 
8779768	SOUTH BAY, TX                                                     	26.052  	-97.182 	0	\N	\N	\N	\N
8779753	SOUTH PADRE IS., (MODIFIED BULB), TX                              	26.068  	-97.150 	0	\N	\N	\N	\N
8779748	South Padre Island CG Station, TX                                 	26.072  	-97.167 	1	2.85    	5.716   	2.866   	S 
8779750	South Padre Island, Brazos Santiago Pass, TX                      	26.068  	-97.157 	1	3.472   	4.196   	0.724   	S 
8779749	SPI Brazos Santiago, TX                                           	26.068  	-97.155 	1	2.96    	26.434  	23.474  	S 
8770822	Texas Point, Sabine Pass, TX                                      	29.689  	-93.842 	1	3.555   	5.701   	2.146   	S 
8771021	TRINITY RIVER CHANNEL PLATFORM, TX                                	29.515  	-94.848 	0	\N	\N	\N	\N
8770625	UMBRELLA POINT, TRINITY BAY, TX                                   	29.680  	-94.868 	1	2.813   	8.293   	5.48    	S 
8775296	USS Lexington, Corpus Christi Bay, TX                             	27.812  	-97.390 	1	1.077   	5.46    	4.383   	S 
8779739	W QUEEN ISABELLA CAUSEWAY, PORT ISABEL, TX                        	26.072  	-97.192 	0	\N	\N	\N	\N
8776687	YARBROUGH PASS, TX                                                	27.167  	-97.433 	0	\N	\N	\N	\N
8639519	BELLS MILL CREEK, VA                                              	36.710  	-76.268 	0	\N	\N	\N	\N
8638923	BROAD BAY CANAL EAST, VA                                          	36.902  	-76.062 	0	\N	\N	\N	\N
8638421	BURWELL BAY, JAMES RIVER, VA                                      	37.057  	-76.668 	0	\N	\N	\N	\N
8632366	CAPE CHARLES HBR (U.S. G. WHARF), VA                              	37.263  	-76.020 	0	\N	\N	\N	\N
8638999	Cape Henry, VA                                                    	36.930  	-76.007 	0	\N	\N	\N	\N
8638942	CARTERS POINT #1, VA                                              	36.905  	-76.037 	0	\N	\N	\N	\N
8638946	CARTERS POINT #2, VA                                              	36.903  	-76.047 	0	\N	\N	\N	\N
8638978	CAVALIER YACHT CLUB,LINKHORN BAY, VA                              	36.868  	-76.005 	0	\N	\N	\N	\N
8638901	CBBT, Chesapeake Channel, VA                                      	37.033  	-76.083 	1	4.585   	8.22    	3.635   	S 
8638866	CHES BAY BR TEST FAC (BACKUP), VA                                 	36.967  	-76.113 	0	\N	\N	\N	\N
8638865	CHES. BAY TEST FACILITY, VA                                       	36.967  	-76.113 	0	\N	\N	\N	\N
8638863	Chesapeake Bay Bridge Tunnel, VA                                  	36.967  	-76.113 	1	4.496   	29.122  	24.626  	S 
8638979	Chesapeake Light, VA                                              	36.905  	-75.697 	0	\N	\N	\N	\N
8638491	Chester, James River, VA                                          	37.383  	-77.378 	0	\N	\N	\N	\N
8630308	CHINCOTEAGUE CHANNEL, SOUTH END, VA                               	37.907  	-75.405 	1	3.553   	6.436   	2.883   	S 
8630249	CHINCOTEAGUE, USCG STATION, VA                                    	37.932  	-75.383 	1	3.264   	6.248   	2.984   	S 
8638449	CLAREMONT, JAMES RIVER, VA                                        	37.232  	-76.948 	0	\N	\N	\N	\N
8635150	Colonial Beach, Potomac River, VA                                 	38.252  	-76.960 	1	3.038   	5.1     	2.062   	S 
8635027	Dahlgren, VA                                                      	38.320  	-77.037 	1	2.868   	18.553  	15.685  	S 
8639414	DEEP CREEK ENTRANCE, VA                                           	36.755  	-76.293 	0	\N	\N	\N	\N
8631935	Delmarva GPS Buoy, VA                                             	37.088  	-75.547 	0	\N	\N	\N	\N
8638864	EDL GAGE CHES BAY BR TUNNEL TEST, VA                              	36.967  	-76.113 	0	\N	\N	\N	\N
8636749	FISHING BAY, VA                                                   	37.542  	-76.333 	0	\N	\N	\N	\N
8636128	FLEET PT, GREAT WICOMICO RIVER, VA                                	37.813  	-76.275 	0	\N	\N	\N	\N
8638017	FORT EUSTIS (MARAD), JAMES RIVER, VA                              	37.138  	-76.623 	1	3.714   	28.651  	24.937  	S 
8632869	GASKINS PT., OCCOHANNOCK CREEK, VA                                	37.557  	-75.917 	1	2.641   	4.148   	1.507   	S 
8637624	Gloucester Point, VA                                              	37.247  	-76.500 	1	4.195   	5.187   	0.992   	S 
8630316	HARBOR OF REFUGE, CHINCOTEAGUE, VA                                	37.903  	-75.407 	0	\N	\N	\N	\N
8633091	HARBORTON, PUNGOTEAGUE CREEK, VA                                  	37.667  	-75.833 	0	\N	\N	\N	\N
8638481	Hopewell, VA                                                      	37.313  	-77.270 	1	3.434   	6.467   	3.033   	S 
8637712	Jamestown Wharf, VA                                               	37.220  	-76.791 	1	3.248   	22.956  	19.708  	S 
8630111	JESTERS ISLAND, CHINCOTEAGUE BAY, VA                              	37.982  	-75.302 	1	1.688   	3.329   	1.641   	S 
8638476	Jordan Point, James River, VA                                     	37.313  	-77.223 	0	\N	\N	\N	\N
8638424	Kingsmill, VA                                                     	37.220  	-76.663 	1	3.823   	12.023  	8.2     	S 
8632201	KIPTOPEKE BEACH (BACKUP), VA                                      	37.167  	-75.988 	0	\N	\N	\N	\N
8632200	Kiptopeke, VA                                                     	37.165  	-75.988 	1	4.487   	7.457   	2.97    	S 
8638671	Lafayette River, VA                                               	36.884  	-76.276 	1	4.377   	30.855  	26.478  	S 
8638445	Lanexa, Chickahominy River, VA                                    	37.403  	-76.912 	1	3.752   	5.927   	2.175   	S 
8636653	Lester Manor, VA                                                  	37.583  	-76.990 	1	4.142   	1.877   	-2.265  	S 
8635750	Lewisetta, VA                                                     	37.995  	-76.465 	1	2.293   	6.682   	4.389   	S 
8638916	LONG CREEK, LYNNHAVEN BAY, VA                                     	36.903  	-76.070 	0	\N	\N	\N	\N
8638905	LYNNHAVEN FISHING PIER, VA                                        	36.917  	-76.078 	0	\N	\N	\N	\N
8639348	Money Point, VA                                                   	36.778  	-76.302 	1	4.746   	25.668  	20.922  	S 
8639908	MUNDEN POINT, NORTH LANDING RIVER, VA                             	36.577  	-76.038 	0	\N	\N	\N	\N
8636654	NEW MILL CREEK, (GREYS POINT), VA                                 	37.583  	-76.418 	0	\N	\N	\N	\N
8637590	NEW POINT, COMFORT SHOAL, VA                                      	37.257  	-76.222 	0	\N	\N	\N	\N
8637289	NEW POINT, VA                                                     	37.347  	-76.273 	0	\N	\N	\N	\N
8637589	NEW PT.COMFORT SHOAL, (BACKUP), VA                                	37.257  	-76.222 	0	\N	\N	\N	\N
8631591	Oyster Harbor, VA                                                 	37.288  	-75.925 	0	\N	\N	\N	\N
8638660	PORTSMOUTH, NORFOLK NAVAL SHIPYARD, VA                            	36.822  	-76.293 	1	4.538   	10.317  	5.779   	S 
8638489	Puddledock, VA                                                    	37.267  	-77.372 	1	4.675   	8.415   	3.74    	S 
8635257	Rappahannock Bend, VA                                             	38.213  	-77.243 	1	3.116   	22.749  	19.633  	S 
8632837	Rappahannock Light, VA                                            	37.538  	-76.015 	1	2.367   	27.656  	25.289  	S 
8636941	Richmond Deepwater Terminal, James River, VA                      	37.460  	-77.421 	1	4.393   	5.831   	1.438   	S 
8638495	Richmond River Locks, James River, VA                             	37.525  	-77.420 	1	5.216   	3.869   	-1.347  	S 
8639214	RUDEE HEIGHTS, LAKE WESLEY, VA                                    	36.825  	-75.975 	0	\N	\N	\N	\N
8639207	Rudee Inlet, VA                                                   	36.832  	-75.973 	1	5.708   	7.358   	1.65    	S 
8631542	SAND SHOAL INLET, COBB ISLAND, VA                                 	37.302  	-75.778 	0	\N	\N	\N	\N
8639428	SANDBRIDGE, VA                                                    	36.692  	-75.920 	0	\N	\N	\N	\N
8633777	SAXIS, STARLING CREEK,                                            	37.922  	-75.728 	1	3.845   	6.924   	3.079   	S 
8633362	SCHOONER BAY, VA                                                  	37.763  	-75.773 	0	\N	\N	\N	\N
8638433	Scotland, VA                                                      	37.185  	-76.783 	1	3.394   	10.813  	7.419   	S 
8638610	Sewells Point, VA                                                 	36.947  	-76.330 	1	4.412   	8.048   	3.636   	S 
8639219	SOUTH END, LAKE RUDEE, VA                                         	36.825  	-75.982 	0	\N	\N	\N	\N
8633532	Tangier Island, VA                                                	37.828  	-75.993 	1	2.333   	4.844   	2.511   	S 
8638450	Tettington, James River, VA                                       	37.240  	-76.943 	1	2.923   	21.657  	18.734  	S 
8638888	VA. PILOTS DOCK, LYNNHAVEN INLET, VA                              	36.907  	-76.090 	0	\N	\N	\N	\N
8631044	Wachapreague, VA                                                  	37.608  	-75.686 	1	6.418   	7.853   	1.435   	S 
8630441	WALLOPS ISLAND, VA                                                	37.842  	-75.478 	0	\N	\N	\N	\N
8635985	Wares Wharf, VA                                                   	37.873  	-76.783 	1	3.117   	5.824   	2.707   	S 
8638868	WELL D, CHES BAY BR TUNNEL TEST, VA                               	36.967  	-76.113 	0	\N	\N	\N	\N
8638869	WELL J, CHES BAY BR TUNNEL TEST, VA                               	36.967  	-76.113 	0	\N	\N	\N	\N
8638339	Western Branch, VA                                                	36.823  	-76.399 	1	4.499   	31.098  	26.599  	S 
8638464	Wilcox Wharf, VA                                                  	37.315  	-77.098 	1	3.306   	7.11    	3.804   	S 
8636581	WINDMILL POINT (BACKUP), VA                                       	37.615  	-76.302 	0	\N	\N	\N	\N
8636580	Windmill Point, VA                                                	37.616  	-76.290 	1	2.466   	4.198   	1.732   	S 
8637722	York Spit Light, VA                                               	37.210  	-76.253 	0	\N	\N	\N	\N
8637689	Yorktown USCG Training Center, VA                                 	37.227  	-76.479 	1	4.209   	8.661   	4.452   	S 
9441187	Aberdeen, WA                                                      	46.968  	-123.853	1	14.666  	19.348  	4.682   	M 
9446281	ALLYN, WA                                                         	47.383  	-122.823	0	\N	\N	\N	\N
9440571	ALTOONA, COLUMBIA RIVER, WA                                       	46.265  	-123.653	0	\N	\N	\N	\N
9448794	ANACORTES, FIDALGO ISLAND, WA                                     	48.518  	-122.620	0	\N	\N	\N	\N
9446491	ARLETTA, WA                                                       	47.280  	-122.652	0	\N	\N	\N	\N
9449932	Armitage Island, WA                                               	48.535  	-122.797	1	12.406  	13.349  	0.943   	M 
9445133	Bangor, WA                                                        	47.748  	-122.727	1	16.205  	15.351  	-0.854  	L 
9440483	Barlow Point,                                                     	46.152  	-123.039	1	7.465   	31.66   	24.195  	S 
9446742	BARRON POINT, LITTLE SKOOKUM INLET ENT, WA                        	47.157  	-123.008	0	\N	\N	\N	\N
9440846	BAY CENTER, PALIX RIVER, WILLAPA BAY, WA                          	46.623  	-123.945	0	\N	\N	\N	\N
9440079	Beacon Rock State Park,                                           	45.620  	-122.020	1	2.327   	35.374  	33.047  	S 
9449211	BELLINGHAM, WA                                                    	48.745  	-122.495	0	\N	\N	\N	\N
9449679	Blaine, Drayton Harbor, WA                                        	48.992  	-122.765	1	13.984  	12.806  	-1.178  	M 
9448614	BOWMAN BAY, FIDALGO ISLAND, WA                                    	48.415  	-122.652	1	11.927  	13.091  	1.164   	M 
9445958	BREMERTON, WA                                                     	47.562  	-122.623	1	16.767  	15.707  	-1.06   	L 
9445832	BROWNSVILLE, WA                                                   	47.652  	-122.615	0	\N	\N	\N	\N
9446807	BUDD INLET, SOUTH OF GULL HARBOR, WA                              	47.098  	-122.895	1	19.764  	57.177  	37.413  	L 
9440581	Cape Disappointment, WA                                           	46.300  	-124.000	1	12.254  	62.476  	50.222  	M 
9440482	CAPE HORN, COLUMBIA RIVER, WA                                     	46.152  	-123.290	1	9.568   	27.473  	17.905  	M 
9440521	CATHLAMET, COLUMBIA RIVER, WA                                     	46.202  	-123.385	0	\N	\N	\N	\N
9449424	Cherry Point, WA                                                  	48.863  	-122.758	1	13.757  	17.139  	3.382   	M 
9445938	CLAM BAY, WA                                                      	47.573  	-122.543	0	\N	\N	\N	\N
9443826	CRESCENT BAY, WA                                                  	48.162  	-123.725	0	\N	\N	\N	\N
9449712	ECHO BAY, SUCIA ISLANDS, WA                                       	48.757  	-122.897	0	\N	\N	\N	\N
9444122	Ediz Hook, WA                                                     	48.140  	-123.413	0	\N	\N	\N	\N
9447427	EDMONDS, WA                                                       	47.813  	-122.383	0	\N	\N	\N	\N
9447659	EVERETT, WA                                                       	47.980  	-122.223	1	16.247  	12.661  	-3.586  	L 
9449896	FISH CREEK, WA                                                    	48.463  	-122.967	0	\N	\N	\N	\N
9445016	Foulweather Bluff, WA                                             	47.927  	-122.617	1	14.605  	15.139  	0.534   	M 
9449880	Friday Harbor, WA                                                 	48.545  	-123.013	1	12.033  	13.105  	1.072   	M 
9447883	Green Bank, WA                                                    	48.105  	-122.570	1	17.039  	25.783  	8.744   	L 
9446451	GREEN POINT, WA                                                   	47.302  	-122.682	0	\N	\N	\N	\N
9440650	Greenhead Slough,                                                 	46.372  	-123.950	1	14.89   	28.413  	13.523  	L 
9449828	HANBURY POINT, SAN JUAN ISLAND, WA                                	48.582  	-123.170	1	11.716  	11.73   	0.014   	M 
9445526	HANSVILLE, WA                                                     	47.918  	-122.545	0	\N	\N	\N	\N
9447855	HOLLY HARBOR FARMS, WA                                            	48.027  	-122.535	0	\N	\N	\N	\N
9446500	HOME, PUGET SOUND, WA                                             	47.275  	-122.758	0	\N	\N	\N	\N
9440572	JETTY A, COLUMBIA RIVER, WA                                       	46.268  	-124.037	0	\N	\N	\N	\N
9443551	Jim Creek,                                                        	48.187  	-124.063	1	11.855  	22.602  	10.747  	M 
9449808	JOHNS ISLAND, WA                                                  	48.667  	-123.163	0	\N	\N	\N	\N
9440372	KALAMA, COLUMBIA RIVER, WA                                        	46.017  	-122.855	0	\N	\N	\N	\N
9449856	Kanaka Bay, San Juan Island, WA                                   	48.485  	-123.083	1	11.394  	27.884  	16.49   	M 
9448094	KAYAK PT, PORT SUSAN, WA                                          	48.137  	-122.367	0	\N	\N	\N	\N
9440171	KNAPP(THORNES)LNDG, WILLOW BAR, WA                                	45.742  	-122.755	1	4.483   	15.74   	11.257  	S 
9440575	KNAPPTON, WA                                                      	46.268  	-123.827	0	\N	\N	\N	\N
9448558	LA CONNER, SWINOMISH SLOUGH, WA                                   	48.392  	-122.497	0	\N	\N	\N	\N
9442396	La Push, Quillayute River, WA                                     	47.913  	-124.637	1	13.603  	16.132  	2.529   	M 
9447114	LOCKHEED SHIPYARD (BACKUP), WA                                    	47.585  	-122.360	0	\N	\N	\N	\N
9447111	LOCKHEED SHIPYARD TEST SITE, WA                                   	47.585  	-122.360	0	\N	\N	\N	\N
9447113	LOCKHEED SHIPYARD,4 IN TEST WELL, WA                              	47.585  	-122.360	0	\N	\N	\N	\N
9447110	LOCKHEED SHIPYARD, WA                                             	47.585  	-122.362	0	\N	\N	\N	\N
9447115	LOCKHEED SHIPYARD, WA                                             	47.580  	-122.357	0	\N	\N	\N	\N
9447112	LOCKHEED SHIPYRD, 6 IN TEST WELL, WA                              	47.585  	-122.360	0	\N	\N	\N	\N
9445088	LOFALL, WA                                                        	47.815  	-122.657	0	\N	\N	\N	\N
9440422	Longview, WA                                                      	46.106  	-122.954	1	5.853   	7.727   	1.874   	S 
9445441	LYNCH COVE DOCK, WA                                               	47.418  	-122.900	0	\N	\N	\N	\N
9448233	MADRONNA BEACH, CAMANO ISLAND, WA                                 	48.212  	-122.537	0	\N	\N	\N	\N
9442861	MAKAH BAY, WA                                                     	48.297  	-124.672	0	\N	\N	\N	\N
9447729	Marysville, WA                                                    	48.040  	-122.168	0	\N	\N	\N	\N
9447973	NAS Whidbey Island,                                               	48.343  	-122.686	1	11.405  	43.015  	31.61   	M 
9443090	Neah Bay, WA                                                      	48.370  	-124.602	1	12.901  	12.356  	-0.545  	M 
9440574	NORTH JETTY, WA                                                   	46.273  	-124.072	0	\N	\N	\N	\N
9446969	OLYMPIA, BUD INLET, PUGET SOUND, WA                               	47.060  	-122.903	0	\N	\N	\N	\N
9441156	POINT BROWN, WA                                                   	46.950  	-124.128	0	\N	\N	\N	\N
9449995	POINT COLVILLE, LOPEZ ISLAND, WA                                  	48.422  	-122.812	0	\N	\N	\N	\N
9449747	POINT DISNEY, WALDRON ISLAND, WA                                  	48.675  	-123.040	0	\N	\N	\N	\N
9449639	Point Roberts,                                                    	48.975  	-123.083	1	14.814  	28.013  	13.199  	M 
9444090	Port Angeles, WA                                                  	48.125  	-123.440	1	11.607  	39.103  	27.496  	M 
9444900	Port Townsend, WA                                                 	48.113  	-122.760	1	12.9    	13.271  	0.371   	M 
9445719	POULSBO, WA                                                       	47.725  	-122.638	0	\N	\N	\N	\N
9447717	Priest Point, WA                                                  	48.035  	-122.227	1	16.202  	31.149  	14.947  	L 
9445272	QUILCENE, DABOB BAY, HOOD CANAL, WA                               	47.800  	-122.858	0	\N	\N	\N	\N
9449982	Richardson, WA                                                    	48.447  	-122.900	1	11.336  	11.59   	0.254   	M 
9449771	Rosario, Orcas Island, WA                                         	48.647  	-122.870	1	12.3    	11.689  	-0.611  	M 
9447239	Sand Point, WA                                                    	47.688  	-122.258	0	\N	\N	\N	\N
9446804	SANDY POINT ANDERSON ISLAND, PUGET SOUND,                         	47.153  	-122.675	1	16.702  	23.605  	6.903   	L 
9449292	SANDY POINT, LUMMI BAY, WA                                        	48.790  	-122.708	0	\N	\N	\N	\N
9445296	SEABECK, HOOD CANAL, WA                                           	47.642  	-122.828	0	\N	\N	\N	\N
9447130	Seattle, WA                                                       	47.602  	-122.339	1	16.345  	20.882  	4.537   	L 
9443361	SEKIU, CLALLAM BAY, WA                                            	48.263  	-124.297	1	12.179  	26.303  	14.124  	M 
9440569	Skamokawa, WA                                                     	46.270  	-123.457	1	10.408  	9.279   	-1.129  	M 
9448576	Sneeoosh Point, WA                                                	48.400  	-122.548	1	16.249  	16.155  	-0.094  	L 
9440875	SOUTH BEND, WA                                                    	46.663  	-123.798	1	14.931  	16.717  	1.786   	L 
9448009	Spee-Bi-Dah, WA                                                   	48.088  	-122.322	1	16.574  	30.929  	14.355  	L 
9448682	Swinomish, WA                                                     	48.458  	-122.513	1	13.22   	35.153  	21.933  	M 
9446545	TACOMA, WA                                                        	47.255  	-122.432	0	\N	\N	\N	\N
9446484	Tacoma, WA                                                        	47.270  	-122.413	1	16.988  	14.057  	-2.931  	L 
9441644	Taholah, WA                                                       	47.348  	-124.285	0	\N	\N	\N	\N
9449988	Telegraph Bay, WA                                                 	48.443  	-122.805	1	9.78    	7.361   	-2.419  	M 
9440357	TEMCO Kalama Terminal,                                            	45.987  	-122.837	1	5.29    	12.51   	7.22    	S 
9440910	Toke Point, WA                                                    	46.708  	-123.967	1	13.86   	15.855  	1.995   	M 
9442705	Tskawahyah Island, Cape Alava,                                    	48.171  	-124.737	1	13.562  	33.214  	19.652  	M 
9447773	Tulalip, Tulalip Bay, WA                                          	48.065  	-122.288	1	16.551  	37.856  	21.305  	L 
9448043	Tulare Beach, Port Susan, WA                                      	48.107  	-122.347	1	16.49   	33.582  	17.092  	L 
9448657	Turner Bay, WA                                                    	48.445  	-122.555	1	15.281  	14.873  	-0.408  	L 
9445478	UNION, HOOD CANAL, WA                                             	47.358  	-123.098	1	17.619  	15.619  	-2      	L 
9449911	Upright Head, WA                                                  	48.572  	-122.885	1	12.28   	29.574  	17.294  	M 
9440083	Vancouver, WA                                                     	45.632  	-122.697	1	4.385   	5.636   	1.251   	S 
9449161	VILLAGE POINT, LUMMI ISLAND, WA                                   	48.717  	-122.708	1	14.063  	15.525  	1.462   	M 
9449746	Waldron Island,                                                   	48.687  	-123.038	1	12.972  	31.45   	18.478  	M 
9440047	WASHOUGAL, COLUMBIA RIVER, WA                                     	45.578  	-122.382	1	2.051   	16.677  	14.626  	S 
9446291	Wauna, WA                                                         	47.378  	-122.634	1	19.443  	23.856  	4.413   	L 
9441102	Westport, WA                                                      	46.904  	-124.105	1	13.532  	14.218  	0.686   	M 
9445246	WHITNEY POINT, WA                                                 	47.762  	-122.850	0	\N	\N	\N	\N
9448601	YOKEKO POINT, WA                                                  	48.413  	-122.615	0	\N	\N	\N	\N
9446705	YOMAN POINT, ANDERSON ISLAND, WA                                  	47.180  	-122.675	1	18.476  	16.152  	-2.324  	L 
\.


--
-- TOC entry 2685 (class 2606 OID 30328)
-- Name: station_metadata station_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station_metadata
    ADD CONSTRAINT station_metadata_pkey PRIMARY KEY (station_id);


-- Completed on 2020-06-23 10:38:56

--
-- PostgreSQL database dump complete
--

