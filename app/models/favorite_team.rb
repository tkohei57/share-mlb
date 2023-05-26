class FavoriteTeam < ActiveHash::Base
  self.data = [
    { id: 1, name: '好きなチームを選択してください' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'Baltimore Orioles' },
    { id: 4, name: 'Boston Red Sox' },
    { id: 5, name: 'New York Yankees' },
    { id: 6, name: 'Tampa Bay Rays' },
    { id: 7, name: 'Toronto Blue Jays' },
    { id: 8, name: 'Chicago White Sox' },
    { id: 9, name: 'Cleveland Guardians' },
    { id: 10, name: 'Detroit Tigers' },
    { id: 11, name: 'Kansas City Royals' },
    { id: 12, name: 'Minnesota Twins' },
    { id: 13, name: 'Houston Astros' },
    { id: 14, name: 'Los Angeles Angels' },
    { id: 15, name: 'Oakland Athletics' },
    { id: 16, name: 'Seattle Mariners' },
    { id: 17, name: 'Texas Rangers' },
    { id: 18, name: 'Atlanta Braves' },
    { id: 19, name: 'Miami Marlins' },
    { id: 20, name: 'New York Mets' },
    { id: 21, name: 'Philadelphia Phillies' },
    { id: 22, name: 'Washington Nationals' },
    { id: 23, name: 'Chicago Cubs' },
    { id: 24, name: 'Cincinnati Reds' },
    { id: 25, name: 'Milwaukee Brewers' },
    { id: 26, name: 'Pittsburgh Pirates' },
    { id: 27, name: 'St. Louis Cardinals' },
    { id: 28, name: 'Arizona Diamondbacks' },
    { id: 29, name: 'Colorado Rockies' },
    { id: 30, name: 'Los Angeles Dodgers' },
    { id: 31, name: 'Sun Diego Padres' },
    { id: 32, name: 'Sun Francisco Giants' }
  ]
 
   include ActiveHash::Associations
   has_many :users
 
  end