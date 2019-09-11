import React, { Component } from "react";
import LeaderBoard from "./LeaderBoard.js";
import MyStats from "./MyStats.js";
import Deets from "./Deets.js";
import { Grid, Header } from "semantic-ui-react";

class StatsContainer extends Component {
  state = {
    games: [],
    gameForDeets: null
  };

  componentDidMount() {
    if (this.props.user) {
      fetch(`http://localhost:3000/users/${this.props.user.username}`)
        .then(resp => resp.json())
        .then(data => this.setState({ games: data.games }));
    } else return null;
  }

  setGameForDeets = game => {
    if (this.state.gameForDeets === game) {
      this.setState({ gameForDeets: null });
    } else {
      this.setState({ gameForDeets: game });
    }
  };

  render() {
    return (
      <Grid id="leader-grid">
        <Grid.Row columns={1}>
          <Header as="h1" textAlign="center">
            <Header.Content>Leaderboard</Header.Content>
          </Header>
          <Grid.Column>
            <LeaderBoard />
            {/* {this.props.user ? ( */}
          </Grid.Column>
        </Grid.Row>

        <Grid.Row columns={2}>
          <Header as="h1" textAlign="center">
            <Header.Content>My Stats</Header.Content>
          </Header>
          <Grid.Column>
            <Header as="h3" textAlign="center">
              <Header.Content>Games</Header.Content>
            </Header>
            <MyStats
              games={this.state.games}
              handleClick={this.setGameForDeets}
            />
          </Grid.Column>

          <Grid.Column>
            <Header as="h3" textAlign="center">
              <Header.Content>Questions</Header.Content>
            </Header>
            <Deets game={this.state.gameForDeets} />
          </Grid.Column>
        </Grid.Row>
        {/* ) : null} */}
      </Grid>
    );
  }
}

export default StatsContainer;
