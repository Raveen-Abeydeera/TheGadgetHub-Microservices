# TheGadgetHub-Microservices

The Gadget Hub is a Service-Oriented Computing (SOC) system built with Python, Flask, and MySQL. It simulates a distributed e-commerce backend where an Order Service communicates with a Quotation Service to find the best product prices across multiple independent Distributors, and then finalizes the order via a Notification Service. A Gradio-based frontend is provided for easy client interaction.

## 🏗️ Architecture & Microservices

The application is broken down into several modular microservices:
* **Client UI (Port 7860):** A user-friendly frontend built with Gradio that allows customers to browse the catalog, add items to their cart, and place orders.
* **Order Service (Port 5000):** The core orchestrator. It receives orders from the UI, requests quotes, processes the transaction, updates the database, and triggers notifications.
* **Quotation Service (Port 5004):** Reaches out to all available distributors, compares prices for requested items, and returns the best available quote to ensure the customer gets the lowest price.
* **Notification Service (Port 5005):** Simulates sending email receipts to the customer upon successful order placement.
* **Distributor Services (Ports 5001, 5002, 5003):** Three independent inventory servers (`TechWorld`, `ElectroCom`, and `GadgetCentral`). They provide stock/price quotes and process inventory reduction upon successful orders.

## 🛠️ Tech Stack

* **Backend:** Python, Flask, Requests
* **Frontend:** Gradio
* **Database:** MySQL (via `mysql-connector-python`)
* **Testing:** `unittest`, Threading (Load Testing), Postman

## 🚀 Getting Started

### 1. Prerequisites
* Python 3.x
* MySQL Server (e.g., XAMPP or native MySQL)

### 2. Database Setup
1. Start your MySQL server.
2. Create a database named `gadgethub_db`.
3. Import the provided schema and sample data:

   mysql -u root -p gadgethub_db < database/gadgethub_db.sql
(Note: Default database credentials in config.py are set to user: root with a blank password).

### 3. Install Dependencies
Install the required Python packages using the provided Requirements.txt file:

( pip install -r Requirements.txt )

### 4. Running the Services
Because this is a microservices architecture, you need to spin up the services sequentially. They are provided as Jupyter Notebooks:

Run services/1_Distributors.ipynb to start TechWorld, ElectroCom, and GadgetCentral.

Run services/2_Quotation.ipynb to start the Quotation Service.

Run services/3_Order.ipynb to start the main Order orchestrator.

Run services/5_Notification.ipynb to start the email simulator.

### 5. Launch the UI
Once all services are running, execute the client UI:

Run client/4_Client_UI.ipynb * Access the web interface at http://127.0.0.1:7860/ to start shopping.

🧪 Testing
The project includes a comprehensive test suite in tests/6_Testing_and_Debugging.ipynb, which covers:

Unit Tests: Business logic, lowest-price selection, and UI logic.

Integration Tests: Verifying the full order chain (Order -> Quote -> Distributor -> Notification) and database transaction integrity.

Performance Testing: Load testing with 50 concurrent users.

Security Testing: Basic SQL Injection vulnerability assessments.
