import logo from './logo.svg';
import './App.css';
import FullForm from './components/FullForm'

function App() {
  return (
    <div className="Bacteria-Frontend">
      <header className="bacteria-header">
        <img src={logo} className="App-logo" alt="logo" />
        <FullForm />
      </header>
    </div>
  );
}

export default App;
