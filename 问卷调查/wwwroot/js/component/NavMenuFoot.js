const foot = {
    display: "flex",
    paddingTop: 25
};

export class NavMenuFoot extends Component {
    constructor(props) {
        super(props);

        this.state = {
            prev: "上一页",
            next: "下一页"
        };
    }
    prev() {
        let prevPageNo = this.props.page - 1;
        this.props.setPage(prevPageNo);
    }
    next() {
        if (this.props.islastPage) return;

        let nextPageNo = this.props.page + 1;
        this.props.setPage(nextPageNo);
    }
    render() {
        let left = {
            flex: 1,
            visibility: "hidden"
        };
        let mid = {
            flex: 1,
            visibility: ""
        };
        let right = {
            flex: 1,
            visibility: ""
        };
        if (this.props.page !== 1) {
            left.visibility = "";
        }
        else {
            this.setState = { next: "下一页" };
        }
        if (this.props.islastPage)this.setState = { next: "提交" };
        return (
            <div style={foot}>
                <div style={left} onClick={() => this.prev()}><button>{this.state.prev}</button></div>
                <div style={mid}>{this.props.page}</div>
                <div style={right} onClick={() => this.next()}><button>{this.state.next}</button></div>
            </div >
        );
    }
}
