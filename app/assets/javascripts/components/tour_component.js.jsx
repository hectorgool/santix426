//Data within a component can come from the outside (props) 
//or be instantiated from the inside (states)

var TourComponent = React.createClass({
  render: function() {
    return (
      <div className="container">
        <h2>
          Comments
        </h2>
        <textarea className="form-control" rows="8"></textarea>
      </div>
    );
  }
});
