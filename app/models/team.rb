class Team < ActiveHash::Base
  self.data = [
    { id: 1, name: 'チームを選択してください' },
    { id: 2, name: 'Baltimore Orioles' },
    { id: 3, name: 'Boston Red Sox' },
    { id: 4, name: 'New York Yankees' },
    { id: 5, name: 'Tampa Bay Rays' },
    { id: 6, name: 'Toronto Blue Jays' },
    { id: 7, name: 'Chicago White Sox' },
    { id: 8, name: 'Cleveland Guardians' },
    { id: 9, name: 'Detroit Tigers' },
    { id: 10, name: 'Kansas City Royals' },
    { id: 11, name: 'Minnesota Twins' },
    { id: 12, name: 'Houston Astros' },
    { id: 13, name: 'Los Angeles Angels' },
    { id: 14, name: 'Oakland Athletics' },
    { id: 15, name: 'Seattle Mariners' },
    { id: 16, name: 'Texas Rangers' },
    { id: 17, name: 'Atlanta Braves' },
    { id: 18, name: 'Miami Marlins' },
    { id: 19, name: 'New York Mets' },
    { id: 20, name: 'Philadelphia Phillies' },
    { id: 21, name: 'Washington Nationals' },
    { id: 22, name: 'Chicago Cubs' },
    { id: 23, name: 'Cincinnati Reds' },
    { id: 24, name: 'Milwaukee Brewers' },
    { id: 25, name: 'Pittsburgh Pirates' },
    { id: 26, name: 'St. Louis Cardinals' },
    { id: 27, name: 'Arizona Diamondbacks' },
    { id: 28, name: 'Colorado Rockies' },
    { id: 29, name: 'Los Angeles Dodgers' },
    { id: 30, name: 'Sun Diego Padres' },
    { id: 31, name: 'Sun Francisco Giants' },
    { id: 32, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :articles
 
end