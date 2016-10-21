
var SearchBox = React.createClass({

  propTypes: {
    term: React.PropTypes.string
  },

  render: function() {
    return (
      <div className="input-group input-group-lg">
        <input type="text" className="form-control" placeholder="Search for..." />
        <span className="input-group-btn">
          <SearchButton />
        </span>
      </div>
    );
  }

});

var SearchButton = React.createClass({
  render: function() {
    return (
      <button className="btn btn-default" type="button">
        <SearchIcon />
      </button>
    );
  }
});

var SearchIcon = React.createClass({
  render: function() {
    return (
      <span className="glyphicon glyphicon-search" aria-hidden="true"></span>
    );
  }
});