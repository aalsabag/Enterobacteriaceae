import logo from './logo.svg';
import './App.css';
import FullForm from './components/FullForm'

function App() {
  return (
    <div className="Bacteria-Frontend">
      <header className="bacteria-header">
        <div id="title-bar">
          <img src={logo} className="App-logo" alt="logo" id="logo-left"/>
          <div id="title-text">Identifying Enterobacteriaceae</div>
          <img src={logo} className="App-logo" alt="logo"id="logo-right" />
        </div>
        <FullForm />
      </header>
    </div>
  );
}

export default App;
