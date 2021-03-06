exit# TODO: Calculate game score based on question distances (instead of random)
# TODO: Make sure questions are never duplicates within a game
# TODO: Create bell curve for distances guessed

User.destroy_all
City.destroy_all
Game.destroy_all
Question.destroy_all

p1 = User.create(username: 'Carol', password: 'pw')
p2 = User.create(username: 'Steve', password: 'pw')
p3 = User.create(username: 'Kelvin', password: 'pw')
p4 = User.create(username: 'Carina', password: 'pw')
p5 = User.create(username: 'Leslie', password: 'pw')
p6 = User.create(username: 'Michelle', password: 'pw')
p7 = User.create(username: 'Chloe', password: 'pw')
p8 = User.create(username: 'David', password: 'pw')

c001 = City.create(name: 'Tokyo', country: 'Japan', lat: 35.685, long: 139.7514, population: 35676000)
c002 = City.create(name: 'New York', country: 'United States', lat: 40.6943, long: -73.9249, population: 19354922)
c003 = City.create(name: 'Mexico City', country: 'Mexico', lat: 19.4424, long: -99.131, population: 19028000)
c004 = City.create(name: 'Mumbai', country: 'India', lat: 19.017, long: 72.857, population: 18978000)
c005 = City.create(name: 'São Paulo', country: 'Brazil', lat: -23.5587, long: -46.625, population: 18845000)
c006 = City.create(name: 'Delhi', country: 'India', lat: 28.67, long: 77.23, population: 15926000)
c007 = City.create(name: 'Shanghai', country: 'China', lat: 31.2165, long: 121.4365, population: 14987000)
c008 = City.create(name: 'Kolkata', country: 'India', lat: 22.495, long: 88.3247, population: 14787000)
c009 = City.create(name: 'Los Angeles', country: 'United States', lat: 34.1139, long: -118.4068, population: 12815475)
c010 = City.create(name: 'Dhaka', country: 'Bangladesh', lat: 23.7231, long: 90.4086, population: 12797394)
c011 = City.create(name: 'Buenos Aires', country: 'Argentina', lat: -34.6025, long: -58.3975, population: 12795000)
c012 = City.create(name: 'Karachi', country: 'Pakistan', lat: 24.87, long: 66.99, population: 12130000)
c013 = City.create(name: 'Cairo', country: 'Egypt', lat: 30.05, long: 31.25, population: 11893000)
c014 = City.create(name: 'Rio de Janeiro', country: 'Brazil', lat: -22.925, long: -43.225, population: 11748000)
c015 = City.create(name: 'Ōsaka', country: 'Japan', lat: 34.75, long: 135.4601, population: 11294000)
c016 = City.create(name: 'Beijing', country: 'China', lat: 39.9289, long: 116.3883, population: 11106000)
c017 = City.create(name: 'Manila', country: 'Philippines', lat: 14.6042, long: 120.9822, population: 11100000)
c018 = City.create(name: 'Moscow', country: 'Russia', lat: 55.7522, long: 37.6155, population: 10452000)
c019 = City.create(name: 'Istanbul', country: 'Turkey', lat: 41.105, long: 29.01, population: 10061000)
c020 = City.create(name: 'Paris', country: 'France', lat: 48.8667, long: 2.3333, population: 9904000)
c021 = City.create(name: 'Seoul', country: 'Korea, South', lat: 37.5663, long: 126.9997, population: 9796000)
c022 = City.create(name: 'Lagos', country: 'Nigeria', lat: 6.4433, long: 3.3915, population: 9466000)
c023 = City.create(name: 'Jakarta', country: 'Indonesia', lat: -6.1744, long: 106.8294, population: 9125000)
c024 = City.create(name: 'Guangzhou', country: 'China', lat: 23.145, long: 113.325, population: 8829000)
c025 = City.create(name: 'Chicago', country: 'United States', lat: 41.8373, long: -87.6861, population: 8675982)
c026 = City.create(name: 'London', country: 'United Kingdom', lat: 51.5, long: -0.1167, population: 8567000)
c027 = City.create(name: 'Lima', country: 'Peru', lat: -12.048, long: -77.0501, population: 8012000)
c028 = City.create(name: 'Tehran', country: 'Iran', lat: 35.6719, long: 51.4243, population: 7873000)
c029 = City.create(name: 'Kinshasa', country: 'Congo (Kinshasa)', lat: -4.3297, long: 15.315, population: 7843000)
c030 = City.create(name: 'Bogota', country: 'Colombia', lat: 4.5964, long: -74.0833, population: 7772000)
c031 = City.create(name: 'Shenzhen', country: 'China', lat: 22.5524, long: 114.1221, population: 7581000)
c032 = City.create(name: 'Wuhan', country: 'China', lat: 30.58, long: 114.27, population: 7243000)
c033 = City.create(name: 'Hong Kong', country: 'Hong Kong', lat: 22.305, long: 114.185, population: 7206000)
c034 = City.create(name: 'Tianjin', country: 'China', lat: 39.13, long: 117.2, population: 7180000)
c035 = City.create(name: 'Chennai', country: 'India', lat: 13.09, long: 80.28, population: 7163000)
c036 = City.create(name: 'Taipei', country: 'Taiwan', lat: 25.0358, long: 121.5683, population: 6900273)
c037 = City.create(name: 'Bangalore', country: 'India', lat: 12.97, long: 77.56, population: 6787000)
c038 = City.create(name: 'Bangkok', country: 'Thailand', lat: 13.75, long: 100.5166, population: 6704000)
c039 = City.create(name: 'Lahore', country: 'Pakistan', lat: 31.56, long: 74.35, population: 6577000)
c040 = City.create(name: 'Chongqing', country: 'China', lat: 29.565, long: 106.595, population: 6461000)
c041 = City.create(name: 'Miami', country: 'United States', lat: 25.784, long: -80.2102, population: 6381966)
c042 = City.create(name: 'Hyderabad', country: 'India', lat: 17.4, long: 78.48, population: 6376000)
c043 = City.create(name: 'Dallas', country: 'United States', lat: 32.7937, long: -96.7662, population: 5733259)
c044 = City.create(name: 'Santiago', country: 'Chile', lat: -33.45, long: -70.667, population: 5720000)
c045 = City.create(name: 'Philadelphia', country: 'United States', lat: 40.0076, long: -75.134, population: 5637884)
c046 = City.create(name: 'Belo Horizonte', country: 'Brazil', lat: -19.915, long: -43.915, population: 5575000)
c047 = City.create(name: 'Madrid', country: 'Spain', lat: 40.4, long: -3.6834, population: 5567000)
c048 = City.create(name: 'Houston', country: 'United States', lat: 29.7868, long: -95.3905, population: 5446468)
c049 = City.create(name: 'Ahmedabad', country: 'India', lat: 23.0301, long: 72.58, population: 5375000)
c050 = City.create(name: 'Ho Chi Minh City', country: 'Vietnam', lat: 10.78, long: 106.695, population: 5314000)
c051 = City.create(name: 'Washington', country: 'United States', lat: 38.9047, long: -77.0163, population: 5289420)
c052 = City.create(name: 'Atlanta', country: 'United States', lat: 33.7626, long: -84.4228, population: 5228750)
c053 = City.create(name: 'Toronto', country: 'Canada', lat: 43.7, long: -79.42, population: 5213000)
c054 = City.create(name: 'Singapore', country: 'Singapore', lat: 1.293, long: 103.8558, population: 5183700)
c055 = City.create(name: 'Luanda', country: 'Angola', lat: -8.8383, long: 13.2344, population: 5172900)
c056 = City.create(name: 'Baghdad', country: 'Iraq', lat: 33.3386, long: 44.3939, population: 5054000)
c057 = City.create(name: 'Barcelona', country: 'Spain', lat: 41.3833, long: 2.1834, population: 4920000)
c058 = City.create(name: 'Haora', country: 'India', lat: 22.5804, long: 88.3299, population: 4841638)
c059 = City.create(name: 'Shenyeng', country: 'China', lat: 41.805, long: 123.45, population: 4787000)
c060 = City.create(name: 'Khartoum', country: 'Sudan', lat: 15.5881, long: 32.5342, population: 4754000)
c061 = City.create(name: 'Pune', country: 'India', lat: 18.53, long: 73.85, population: 4672000)
c062 = City.create(name: 'Boston', country: 'United States', lat: 42.3188, long: -71.0846, population: 4637537)
c063 = City.create(name: 'Sydney', country: 'Australia', lat: -33.92, long: 151.1852, population: 4630000)
c064 = City.create(name: 'St. Petersburg', country: 'Russia', lat: 59.939, long: 30.316, population: 4553000)
c065 = City.create(name: 'Chittagong', country: 'Bangladesh', lat: 22.33, long: 91.8, population: 4529000)
c066 = City.create(name: 'Dongguan', country: 'China', lat: 23.0489, long: 113.7447, population: 4528000)
c067 = City.create(name: 'Riyadh', country: 'Saudi Arabia', lat: 24.6408, long: 46.7727, population: 4465000)
c068 = City.create(name: 'Hanoi', country: 'Vietnam', lat: 21.0333, long: 105.85, population: 4378000)
c069 = City.create(name: 'Guadalajara', country: 'Mexico', lat: 20.67, long: -103.33, population: 4198000)
c070 = City.create(name: 'Melbourne', country: 'Australia', lat: -37.82, long: 144.975, population: 4170000)
c071 = City.create(name: 'Alexandria', country: 'Egypt', lat: 31.2, long: 29.95, population: 4165000)
c072 = City.create(name: 'Chengdu', country: 'China', lat: 30.67, long: 104.07, population: 4123000)
c073 = City.create(name: 'Rangoon', country: 'Burma', lat: 16.7834, long: 96.1667, population: 4088000)
c074 = City.create(name: 'Phoenix', country: 'United States', lat: 33.5722, long: -112.0891, population: 4081849)
c075 = City.create(name: 'Xian', country: 'China', lat: 34.275, long: 108.895, population: 4009000)
c076 = City.create(name: 'Porto Alegre', country: 'Brazil', lat: -30.05, long: -51.2, population: 3917000)
c077 = City.create(name: 'Surat', country: 'India', lat: 21.2, long: 72.84, population: 3842000)
c078 = City.create(name: 'Hechi', country: 'China', lat: 23.0965, long: 109.6091, population: 3830000)
c079 = City.create(name: 'Abidjan', country: 'Côte D’Ivoire', lat: 5.32, long: -4.04, population: 3802000)
c080 = City.create(name: 'Brasília', country: 'Brazil', lat: -15.7833, long: -47.9161, population: 3716996)
c081 = City.create(name: 'Ankara', country: 'Turkey', lat: 39.9272, long: 32.8644, population: 3716000)
c082 = City.create(name: 'Monterrey', country: 'Mexico', lat: 25.67, long: -100.33, population: 3712000)
c083 = City.create(name: 'Yokohama', country: 'Japan', lat: 35.32, long: 139.58, population: 3697894)
c084 = City.create(name: 'Nanjing', country: 'China', lat: 32.05, long: 118.78, population: 3679000)
c085 = City.create(name: 'Montréal', country: 'Canada', lat: 45.5, long: -73.5833, population: 3678000)
c086 = City.create(name: 'Guiyang', country: 'China', lat: 26.58, long: 106.72, population: 3662000)
c087 = City.create(name: 'Recife', country: 'Brazil', lat: -8.0756, long: -34.9156, population: 3651000)
c088 = City.create(name: 'Seattle', country: 'United States', lat: 47.6211, long: -122.3244, population: 3643765)
c089 = City.create(name: 'Harbin', country: 'China', lat: 45.75, long: 126.65, population: 3621000)
c090 = City.create(name: 'San Francisco', country: 'United States', lat: 37.7562, long: -122.443, population: 3603761)
c091 = City.create(name: 'Fortaleza', country: 'Brazil', lat: -3.75, long: -38.58, population: 3602319)
c092 = City.create(name: 'Zhangzhou', country: 'China', lat: 24.5204, long: 117.67, population: 3531147)
c093 = City.create(name: 'Detroit', country: 'United States', lat: 42.3834, long: -83.1024, population: 3522206)
c094 = City.create(name: 'Salvador', country: 'Brazil', lat: -12.97, long: -38.48, population: 3484000)
c095 = City.create(name: 'Busan', country: 'Korea, South', lat: 35.0951, long: 129.01, population: 3480000)
c096 = City.create(name: 'Johannesburg', country: 'South Africa', lat: -26.17, long: 28.03, population: 3435000)
c097 = City.create(name: 'Berlin', country: 'Germany', lat: 52.5218, long: 13.4015, population: 3406000)
c098 = City.create(name: 'Algiers', country: 'Algeria', lat: 36.7631, long: 3.0506, population: 3354000)
c099 = City.create(name: 'Rome', country: 'Italy', lat: 41.896, long: 12.4833, population: 3339000)
c100 = City.create(name: 'Pyongyang', country: 'Korea, North', lat: 39.0194, long: 125.7547, population: 3300000)
c101 = City.create(name: 'Medellín', country: 'Colombia', lat: 6.275, long: -75.575, population: 3297000)
c102 = City.create(name: 'Kabul', country: 'Afghanistan', lat: 34.5167, long: 69.1833, population: 3277000)
c103 = City.create(name: 'Athens', country: 'Greece', lat: 37.9833, long: 23.7333, population: 3242000)
c104 = City.create(name: 'Nagoya', country: 'Japan', lat: 35.155, long: 136.915, population: 3230000)
c105 = City.create(name: 'Cape Town', country: 'South Africa', lat: -33.92, long: 18.435, population: 3215000)
c106 = City.create(name: 'San Diego', country: 'United States', lat: 32.8312, long: -117.1226, population: 3210314)
c107 = City.create(name: 'Changchun', country: 'China', lat: 43.865, long: 125.34, population: 3183000)
c108 = City.create(name: 'Casablanca', country: 'Morocco', lat: 33.6, long: -7.6164, population: 3181000)
c109 = City.create(name: 'Dalian', country: 'China', lat: 38.9228, long: 121.6298, population: 3167000)
c110 = City.create(name: 'Kanpur', country: 'India', lat: 26.46, long: 80.32, population: 3162000)
c111 = City.create(name: 'Kano', country: 'Nigeria', lat: 12, long: 8.52, population: 3140000)
c112 = City.create(name: 'Tel Aviv-Yafo', country: 'Israel', lat: 32.08, long: 34.77, population: 3112000)
c113 = City.create(name: 'Addis Ababa', country: 'Ethiopia', lat: 9.0333, long: 38.7, population: 3100000)
c114 = City.create(name: 'Curitiba', country: 'Brazil', lat: -25.42, long: -49.32, population: 3084000)
c115 = City.create(name: 'Zibo', country: 'China', lat: 36.8, long: 118.05, population: 3061000)
c116 = City.create(name: 'Jeddah', country: 'Saudi Arabia', lat: 21.5169, long: 39.2192, population: 3012000)
c117 = City.create(name: 'Nairobi', country: 'Kenya', lat: -1.2833, long: 36.8167, population: 3010000)
c118 = City.create(name: 'Hangzhou', country: 'China', lat: 30.25, long: 120.17, population: 3007000)
c119 = City.create(name: 'Benoni', country: 'South Africa', lat: -26.1496, long: 28.3299, population: 2986000)
c120 = City.create(name: 'Caracas', country: 'Venezuela', lat: 10.501, long: -66.917, population: 2985000)
c121 = City.create(name: 'Milan', country: 'Italy', lat: 45.47, long: 9.205, population: 2945000)
c122 = City.create(name: 'Stuttgart', country: 'Germany', lat: 48.78, long: 9.2, population: 2944700)
c123 = City.create(name: 'Kunming', country: 'China', lat: 25.07, long: 102.68, population: 2931000)
c124 = City.create(name: 'Dar es Salaam', country: 'Tanzania', lat: -6.8, long: 39.2683, population: 2930000)
c125 = City.create(name: 'Minneapolis', country: 'United States', lat: 44.9635, long: -93.2678, population: 2926757)
c126 = City.create(name: 'Jaipur', country: 'India', lat: 26.9211, long: 75.81, population: 2917000)
c127 = City.create(name: 'Taiyuan', country: 'China', lat: 37.875, long: 112.5451, population: 2913000)
c128 = City.create(name: 'Frankfurt', country: 'Germany', lat: 50.1, long: 8.675, population: 2895000)
c129 = City.create(name: 'Qingdao', country: 'China', lat: 36.09, long: 120.33, population: 2866000)
c130 = City.create(name: 'Surabaya', country: 'Indonesia', lat: -7.2492, long: 112.7508, population: 2845000)
c131 = City.create(name: 'Lisbon', country: 'Portugal', lat: 38.7227, long: -9.1449, population: 2812000)
c132 = City.create(name: 'Tampa', country: 'United States', lat: 27.9937, long: -82.4454, population: 2804240)
c133 = City.create(name: 'Jinan', country: 'China', lat: 36.675, long: 116.995, population: 2798000)
c134 = City.create(name: 'Fukuoka', country: 'Japan', lat: 33.595, long: 130.41, population: 2792000)
c135 = City.create(name: 'Campinas', country: 'Brazil', lat: -22.9, long: -47.1, population: 2791000)
c136 = City.create(name: 'Denver', country: 'United States', lat: 39.7621, long: -104.8759, population: 2787266)
c137 = City.create(name: 'Kaohsiung', country: 'Taiwan', lat: 22.6333, long: 120.2666, population: 2769072)
c138 = City.create(name: 'Quezon City', country: 'Philippines', lat: 14.6504, long: 121.03, population: 2761720)
c139 = City.create(name: 'Katowice', country: 'Poland', lat: 50.2604, long: 19.02, population: 2746000)
c140 = City.create(name: 'Aleppo', country: 'Syria', lat: 36.23, long: 37.17, population: 2738000)
c141 = City.create(name: 'Durban', country: 'South Africa', lat: -29.865, long: 30.98, population: 2729000)
c142 = City.create(name: 'Kiev', country: 'Ukraine', lat: 50.4334, long: 30.5166, population: 2709000)
c143 = City.create(name: 'Lucknow', country: 'India', lat: 26.855, long: 80.915, population: 2695000)
c144 = City.create(name: 'El Giza', country: 'Egypt', lat: 30.01, long: 31.19, population: 2681863)
c145 = City.create(name: 'Zhengzhou', country: 'China', lat: 34.755, long: 113.6651, population: 2636000)
c146 = City.create(name: 'Taichung', country: 'Taiwan', lat: 24.1521, long: 120.6817, population: 2629323)
c147 = City.create(name: 'Brooklyn', country: 'United States', lat: 40.6501, long: -73.9496, population: 2629150)
c148 = City.create(name: 'Ibadan', country: 'Nigeria', lat: 7.38, long: 3.93, population: 2628000)
c149 = City.create(name: 'Faisalabad', country: 'Pakistan', lat: 31.41, long: 73.11, population: 2617000)
c150 = City.create(name: 'Fuzhou', country: 'China', lat: 26.08, long: 119.3, population: 2606000)
c151 = City.create(name: 'Dakar', country: 'Senegal', lat: 14.7158, long: -17.4731, population: 2604000)
c152 = City.create(name: 'Changsha', country: 'China', lat: 28.2, long: 112.97, population: 2604000)
c153 = City.create(name: 'İzmir', country: 'Turkey', lat: 38.4361, long: 27.1518, population: 2587000)
c154 = City.create(name: 'Xiangtan', country: 'China', lat: 27.8504, long: 112.9, population: 2586948)
c155 = City.create(name: 'Lanzhou', country: 'China', lat: 36.056, long: 103.792, population: 2561000)
c156 = City.create(name: 'Incheon', country: 'Korea, South', lat: 37.4761, long: 126.6422, population: 2550000)
c157 = City.create(name: 'Sapporo', country: 'Japan', lat: 43.075, long: 141.34, population: 2544000)
c158 = City.create(name: 'Xiamen', country: 'China', lat: 24.45, long: 118.08, population: 2519000)
c159 = City.create(name: 'Guayaquil', country: 'Ecuador', lat: -2.22, long: -79.92, population: 2514000)
c160 = City.create(name: 'George Town', country: 'Malaysia', lat: 5.4136, long: 100.3294, population: 2500000)
c161 = City.create(name: 'Mashhad', country: 'Iran', lat: 36.27, long: 59.57, population: 2469000)
c162 = City.create(name: 'Damascus', country: 'Syria', lat: 33.5, long: 36.3, population: 2466000)
c163 = City.create(name: 'Daegu', country: 'Korea, South', lat: 35.8668, long: 128.607, population: 2460000)
c164 = City.create(name: 'Nagpur', country: 'India', lat: 21.17, long: 79.09, population: 2454000)
c165 = City.create(name: 'Jinxi', country: 'China', lat: 40.7503, long: 120.83, population: 2426000)
c166 = City.create(name: 'Shijianzhuang', country: 'China', lat: 38.05, long: 114.48, population: 2417000)
c167 = City.create(name: 'Tunis', country: 'Tunisia', lat: 36.8028, long: 10.1797, population: 2412500)
c168 = City.create(name: 'Vienna', country: 'Austria', lat: 48.2, long: 16.3666, population: 2400000)
c169 = City.create(name: 'Jilin', country: 'China', lat: 43.85, long: 126.55, population: 2396000)
c170 = City.create(name: 'Omdurman', country: 'Sudan', lat: 15.6167, long: 32.48, population: 2395159)
c171 = City.create(name: 'Bandung', country: 'Indonesia', lat: -6.95, long: 107.57, population: 2394000)
c172 = City.create(name: 'Bekasi', country: 'Indonesia', lat: -6.2173, long: 106.9723, population: 2378211)
c173 = City.create(name: 'Mannheim', country: 'Germany', lat: 49.5004, long: 8.47, population: 2362000)
c174 = City.create(name: 'Nanchang', country: 'China', lat: 28.68, long: 115.88, population: 2350000)
c175 = City.create(name: 'Wenzhou', country: 'China', lat: 28.02, long: 120.6501, population: 2350000)
c176 = City.create(name: 'Queens', country: 'United States', lat: 40.7498, long: -73.7976, population: 2333054)
c177 = City.create(name: 'Vancouver', country: 'Canada', lat: 49.2734, long: -123.1216, population: 2313328)
c178 = City.create(name: 'Birmingham', country: 'United Kingdom', lat: 52.475, long: -1.92, population: 2285000)
c179 = City.create(name: 'Cali', country: 'Colombia', lat: 3.4, long: -76.5, population: 2254000)
c180 = City.create(name: 'Naples', country: 'Italy', lat: 40.84, long: 14.245, population: 2250000)
c181 = City.create(name: 'Sendai', country: 'Japan', lat: 38.2871, long: 141.0217, population: 2250000)
c182 = City.create(name: 'Manchester', country: 'United Kingdom', lat: 53.5004, long: -2.248, population: 2230000)
c183 = City.create(name: 'Puebla', country: 'Mexico', lat: 19.05, long: -98.2, population: 2195000)
c184 = City.create(name: 'Tripoli', country: 'Libya', lat: 32.8925, long: 13.18, population: 2189000)
c185 = City.create(name: 'Tashkent', country: 'Uzbekistan', lat: 41.3117, long: 69.2949, population: 2184000)
c186 = City.create(name: 'Nanchong', country: 'China', lat: 30.7804, long: 106.13, population: 2174000)
c187 = City.create(name: 'Havana', country: 'Cuba', lat: 23.132, long: -82.3642, population: 2174000)
c188 = City.create(name: 'Baltimore', country: 'United States', lat: 39.3051, long: -76.6144, population: 2170504)
c189 = City.create(name: 'Belém', country: 'Brazil', lat: -1.45, long: -48.48, population: 2167000)
c190 = City.create(name: 'Nanning', country: 'China', lat: 22.82, long: 108.32, population: 2167000)
c191 = City.create(name: 'Patna', country: 'India', lat: 25.625, long: 85.13, population: 2158000)
c192 = City.create(name: 'Santo Domingo', country: 'Dominican Republic', lat: 18.4701, long: -69.9001, population: 2154000)
c193 = City.create(name: 'Ürümqi', country: 'China', lat: 43.805, long: 87.575, population: 2151000)
c194 = City.create(name: 'Zaozhuang', country: 'China', lat: 34.88, long: 117.57, population: 2145000)
c195 = City.create(name: 'Baku', country: 'Azerbaijan', lat: 40.3953, long: 49.8622, population: 2122300)
c196 = City.create(name: 'Accra', country: 'Ghana', lat: 5.55, long: -0.2167, population: 2121000)
c197 = City.create(name: 'Yantai', country: 'China', lat: 37.5304, long: 121.4, population: 2116000)
c198 = City.create(name: 'Medan', country: 'Indonesia', lat: 3.58, long: 98.65, population: 2115000)
c199 = City.create(name: 'Santa Cruz', country: 'Bolivia', lat: -17.7539, long: -63.226, population: 2102998)
c200 = City.create(name: 'Xuzhou', country: 'China', lat: 34.28, long: 117.18, population: 2091000)

g01 = Game.create(user: p1, score: 619)
g02 = Game.create(user: p2, score: 597)
g03 = Game.create(user: p3, score: 636)
g04 = Game.create(user: p4, score: 905)
g05 = Game.create(user: p5, score: 593)
g06 = Game.create(user: p6, score: 506)
g07 = Game.create(user: p7, score: 969)
g08 = Game.create(user: p8, score: 558)
g09 = Game.create(user: p1, score: 638)
g10 = Game.create(user: p2, score: 810)
g11 = Game.create(user: p3, score: 849)
g12 = Game.create(user: p4, score: 705)
g13 = Game.create(user: p5, score: 642)
g14 = Game.create(user: p6, score: 874)
g15 = Game.create(user: p7, score: 512)
g16 = Game.create(user: p8, score: 651)
g17 = Game.create(user: p1, score: 802)
g18 = Game.create(user: p2, score: 640)
g19 = Game.create(user: p3, score: 753)
g20 = Game.create(user: p4, score: 606)

20.times { Question.create(game: g01, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g02, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g03, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g04, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g05, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g06, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g07, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g08, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g09, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g10, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g11, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g12, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g13, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g14, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g15, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g16, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g17, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g18, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g19, city: City.all.sample, distance: rand(8000..120000)/100) }
20.times { Question.create(game: g20, city: City.all.sample, distance: rand(8000..120000)/100) }
