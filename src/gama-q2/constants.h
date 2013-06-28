/*
  GNU Gama Qt based GUI
  Copyright (C) 2013 Ales Cepek <cepek@gnu.org>

  This file is part of GNU Gama.

  GNU Gama is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  GNU Gama is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with GNU Gama.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <QStringList>
#include <QColor>

namespace GamaQ2
{
    extern QString name;
    extern QString version;
    extern QString gnu_gama_version;


    extern QStringList gama_local_schema;
    extern QStringList gama_local_schema_table_names;

    extern const QString connection_implicit_db;
    extern const QString connection_dbf_drop_tables;

    extern const QColor colorClusterHeader;
    extern const QColor colorPassiveBackground;
    extern const QColor colorOutsideCovMat;
}

#endif // CONSTANTS_H
