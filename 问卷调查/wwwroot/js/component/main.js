require.config({
    paths: {
        hello: 'hello'
    },
    scriptType: 'text/babel'
});
require(['hello'], function (hello) {
    const rootElement = document.getElementById('example');
    ReactDOM.render(React.createElement(hello),
        rootElement);

});

//class Main extends React.Component {
//    constructor(props) {
//        super(props);
//    }
//    render() {
//        return <div>helloworld</div>;
//    }
//}

