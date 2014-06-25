/** @jsx React.DOM */

var divStyle = {
  margin: 0,
  padding: 0,
  display:'inline'
};
var URL = document.URL;
var numberId;
if (URL.indexOf('#') != -1) {
    numberId = URL.substring(0, URL.indexOf('#')).substring(URL.lastIndexO('/') + 1);
} else {
    numberId = URL.substring(URL.lastIndexOf('/') + 1);
}
var simple_form = <form charSet='UTF-8' action='/comments' method='post' className='simple_form form-horizontal' id='new_comment'><div style={divStyle}><input name='utf8' type='hidden' value='&#x2713;' /><input name='_method' type='hidden' value='post' /></div><div className="input hidden comment_number_id"><input className="hidden" id="comment_number_id" name="comment[number_id]" type="hidden" value={numberId} /></div><div className='input string optional comment_text'><input className='string optional' id='comment_text' name='comment[text]' placeholder='Добавьте комментарий (необязательно)' size='50' type='text' /></div><div className='form-actions'><input className='button btn btn-danger' name='commit' type='submit' value='Число составлено неправильно' /><a href='#button' className='btn btn-primary'>Скрыть</a></div></form>;
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
