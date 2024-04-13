**Accident Table Schema**

**Fields:**

-   **ID (Integer):** A unique identifier for each accident record. This
    is the primary key.

-   **Latitude (Float, optional):** Latitude coordinate of the accident
    location.

-   **Longitude (Float, optional)**: Longitude coordinate of the
    accident location.

-   **Timestamp (DateTime):** The exact time when the accident occurred.

-   **AccidentType (String):** Type of accident (e.g., collision,
    off-road, pedestrian).

-   **Severity (String):** Severity level of the accident (e.g., minor,
    moderate, severe).

-   **Participants (Integer):** Number of participants involved in the
    accident.

-   **WeatherConditions** (String, optional): Weather conditions at the
    time of the accident.

**Additional Fields:**

-   **AccidentCoordinates:** A separate table to store multiple geometry
    data points for each accident, linked by the accident ID.

**JSON Example:**

{

    "latitude": 60.192059,

    "longitude": 24.945831,

    "timestamp": "2024-03-03T12:00:00",

    "volume": 100,

    "averageSpeed": 80,

    "congestionLevel": "High",

    "geometry": [

        [

        {"latitude": 60.192059, "longitude": 24.945831},

        {"latitude": 60.193000, "longitude": 24.946000},

        {"latitude": 60.194000, "longitude": 24.947000}

        ]

    ]

}

**OR**

{

    "latitude": 60.192059,

    "longitude": 24.945831,

    "timestamp": "2024-03-03T12:00:00",

    "accident_type": "Collision",

    "severity": "Minor",

    "participants": 2,

    "weather_conditions": "Clear"

}

**Traffic Table Schema**

**Fields:**

-   **ID (Integer):** A unique identifier for each traffic record. This
    is the primary key.

-   **Latitude (Float, optional):** Latitude coordinate where the
    traffic data was collected.

-   **Longitude (Float, optional):** Longitude coordinate where the
    traffic data was collected.

-   **Timestamp (DateTime):** The moment the traffic data was collected.

-   **Volume (Integer):** Volume of traffic at the specified time,
    usually measured as vehicles per hour.

-   **AverageSpeed (Float):** Average speed of the traffic in km/h at
    the time of data collection.

-   **CongestionLevel (String, optional):** Level of traffic congestion
    (e.g., light, moderate, heavy).

**Additional Structure:**

-   **TrafficCoordinates:** A separate table to store multiple geometry
    data points for each traffic record, linked by the traffic ID.

**JSON Example:**

{

    "latitude": 60.192059,

    "longitude": 24.945831,

    "timestamp": "2024-03-03T12:00:00",

    "volume": 100,

    "averageSpeed": 80,

    "congestionLevel": "High",

    "geometry": [

        [

        {"latitude": 60.192059, "longitude": 24.945831},

        {"latitude": 60.193000, "longitude": 24.946000},

        {"latitude": 60.194000, "longitude": 24.947000}

        ]

    ]

}

**OR**

{

    "latitude": 60.192059,

    "longitude": 24.945831,

    "timestamp": "2024-03-03T12:00:00",

    "volume": 100,

    "averageSpeed": 80,

    "congestionLevel": "High"

}
