PadrinoExample::Example.controllers :hello do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index, :map => '/' do
    '<b>Welcome to Padrino Example application!</b><br/>'+
      'To learn more about Padrino framework, go to: <a href="http://www.padrinorb.com/">padrinorb.com</a>.<br/>' +
      'To learn more about this OpenShift quickstart, go to <a href="https://github.com/mfojtik/padrino-example">github.com</a>.'
  end

end
