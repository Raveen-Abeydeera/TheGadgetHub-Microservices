# config.py

class Config:
    """
    Centralized configuration for The Gadget Hub SOC System.
    """
    
    # Database Configuration
    DB_CONFIG = {
        'host': 'localhost',
        'user': 'root',
        'password': '',  # Default XAMPP password is empty
        'database': 'gadgethub_db'
    }

    # Service Ports
    ORDER_PORT = 5000
    TECH_PORT = 5001
    ELECTRO_PORT = 5002
    GADGET_PORT = 5003
    QUOTATION_PORT = 5004
    NOTIFICATION_PORT = 5005
    CLIENT_PORT = 7860

    # Service URLs
    ORDER_SERVICE_URL = f"http://127.0.0.1:{ORDER_PORT}"
    QUOTATION_SERVICE_URL = f"http://127.0.0.1:{QUOTATION_PORT}"
    NOTIFICATION_SERVICE_URL = f"http://127.0.0.1:{NOTIFICATION_PORT}"

    # Distributor Endpoints
    # Used by Quotation Service (for quotes) and Order Service (for orders)
    DISTRIBUTORS = {
        "TechWorld": {
            "quote_url": f"http://127.0.0.1:{TECH_PORT}/quote",
            "order_url": f"http://127.0.0.1:{TECH_PORT}/order"
        },
        "ElectroCom": {
            "quote_url": f"http://127.0.0.1:{ELECTRO_PORT}/quote",
            "order_url": f"http://127.0.0.1:{ELECTRO_PORT}/order"
        },
        "GadgetCentral": {
            "quote_url": f"http://127.0.0.1:{GADGET_PORT}/quote",
            "order_url": f"http://127.0.0.1:{GADGET_PORT}/order"
        }
    }