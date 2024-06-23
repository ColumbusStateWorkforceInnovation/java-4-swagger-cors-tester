import SwaggerUI from "swagger-ui-react"
import "swagger-ui-react/swagger-ui.css"

function App() {
  const apiUrl = process.env.REACT_APP_API_URL || "http://localhost:8080/v3/api-docs";
  
  return (
    <SwaggerUI url={apiUrl} />
  );
}

export default App;
