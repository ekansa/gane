CREATE TABLE gane_features (
  id int(11) NOT NULL AUTO_INCREMENT,
  lineID int(11) NOT NULL,
  entryGroupID int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_geo (
  id int(11) NOT NULL AUTO_INCREMENT,
  lineID int(11) NOT NULL,
  entryGroupID int(11) NOT NULL,
  lon double NOT NULL,
  lat double NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_langcodes (
  id int(11) NOT NULL AUTO_INCREMENT,
  tavo varchar(10) NOT NULL,
  `language` varchar(200) NOT NULL,
  iso varchar(10) NOT NULL,
  iso_stand tinyint(1) NOT NULL,
  note text NOT NULL,
  PRIMARY KEY (id),
  KEY tavo (tavo,iso),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_languages (
  id int(11) NOT NULL AUTO_INCREMENT,
  lineID int(11) NOT NULL,
  entryGroupID int(11) NOT NULL,
  langID int(11) NOT NULL,
  TAVOlangCode varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY sort (langID),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_lines (
  id int(11) NOT NULL AUTO_INCREMENT,
  volume varchar(50) NOT NULL,
  `page` int(11) NOT NULL,
  entryGroupID int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY rawLine (rawLine)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_mapmetadata (
  id int(11) NOT NULL AUTO_INCREMENT,
  mapCode varchar(20) NOT NULL,
  accuracy int(11) NOT NULL,
  title varchar(200) NOT NULL,
  periodID int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY map (mapCode(5)),
  KEY periodID (periodID)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_maps (
  id int(11) NOT NULL AUTO_INCREMENT,
  lineID int(11) NOT NULL,
  entryGroupID int(11) NOT NULL,
  mapMetaID int(11) NOT NULL,
  letter varchar(2) NOT NULL,
  roman varchar(5) NOT NULL,
  number varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY sort (mapMetaID),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_periods (
  id int(11) NOT NULL AUTO_INCREMENT,
  period varchar(200) NOT NULL,
  startDate int(11) NOT NULL,
  endDate int(11) NOT NULL,
  region varchar(200) NOT NULL,
  notes text NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY period (period)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE gane_toponymns (
  id int(11) NOT NULL AUTO_INCREMENT,
  lineID int(11) NOT NULL,
  entryGroupID int(11) NOT NULL,
  rawOCR varchar(200) NOT NULL,
  editedToponymn varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
