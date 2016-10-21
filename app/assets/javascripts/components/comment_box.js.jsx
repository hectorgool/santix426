
var CommentBox = React.createClass({
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

var CommentList = React.createClass({

  componentDidMount: function(){
    Store.addChangeListener(this._onChange);
  },

  componentWillUnmont: function(){
    Store.removeChangeListener(this._onChange);    
  },

  render: function() {
    console.log('rendering');
    return (
      <div>
      {
        [].map(function(comment){
          return <Comment key={comment.id} {... comment} />;
        })
      }
      </div>
    );
  },

  _onChange: function(){
    this.forceUpdate();
  }



});


var Constants = {
  CHANGE_EVENT: 'change',
  ADD_COMMENT: 'comments.add'
}


//Store, lodash
var Store = new _.extend({}, EventEmitter.prototype, {

  _comments: [],

  addComment: function(comment){
    this._comments[comment.id] = comment;
  },

  comments: function(){
    return this._comments;
  },

  addChangeListener: function(callback){
    this.on(Constants.CHANGE_EVENT, callback);
  },

  removeChangeListener: function(callback){
    this.removeListener(Constants.CHANGE_EVENT, callback);
  },

  emitChange: function(){
    this.emit( Constants.CHANGE_EVENT );
  }

});


//Dispatcher, Flux
var AppDispatcher = new Flux.Dispatcher();

AppDispatcher.register(function(playload){

  var action = playload.actionType; 
  switch(action){
    case Constants.ADD_COMMENT:
      Store.addComment(playload.comment);
      break;
    default:
      //NO-OP
  } 

});


//Actions

var Actions = new _.extend({},{

  addComment: function( params ){
    AppDispatcher.dispatch({
      actionType: Constants.ADD_COMMENT,
      comment: params
    });
  }

});