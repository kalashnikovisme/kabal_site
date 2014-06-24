/** @jsx React.DOM */

var divStyle = {
  margin: 0,
  padding: 0,
  display:'inline'
};
var URL = document.URL;


var currentNumberURL;
if (URL.indexOf('#') != -1) {
  currentNumberURL = '/numbers/' + URL.substring(0, URL.indexOf('#')).substring(URL.lastIndexOf('/') + 1) + '/wrong';
} else {
  currentNumberURL = '/numbers/' + URL.substring(URL.lastIndexOf('/') + 1) + '/wrong';
}
var simple_form = <form charSet='UTF-8' action={currentNumberURL} method='put' className='simple_form form-horizontal' id='edit_number'><div style={divStyle}><input name='utf8' type='hidden' value='&#x2713;' /><input name='_method' type='hidden' value='put' /><input name='authenticity_token' type='hidden' value='K7wQ1000e20QVO4WaYNQNalgm6nD9DsLtaUcd9RwO5w=' /></div><div className='input hidden number_value'><input className='hidden' id='number_value' name='number[value]' type='hidden' value='555' /></div><div className='input hidden number_language'><input className='hidden' id='number_language' name='number[language]' type='hidden' value='Russian' /></div><div className='input string optional number_comment'><input className='string optional' id='number_comment' name='number[comment]' placeholder='Добавьте комментарий (необязательно)' size='50' type='text' /></div><div className='form-actions'><input className='button btn btn-danger' name='commit' type='submit' value='Число составлено неправильно' /><a href='#button' className='btn btn-primary'>Скрыть</a></div></form>;
var wrong_button = <a href='#form' className='btn btn-danger' rel='nofollow'>Неправильно?</a>;
var wrong_form = React.createClass({
  getInitialState: function() {
    return { currentForm: 'button' };
  },
  componentDidMount: function() {
    var router = Router({
      '/button': this.setState.bind(this, { currentForm: 'button' }),
      '/form': this.setState.bind(this, { currentForm: 'form' })
    });
    router.init();
  },
  render: function() {
    var partial;
    if (this.state.currentForm === 'button') {
      partial = wrong_button;
    } else if (this.state.currentForm === 'form') {
      partial = simple_form;
    }
    return (partial);
  }
});
$(document).ready(function() {
  React.renderComponent(<wrong_form/>, document.getElementById('wrong'));
});
