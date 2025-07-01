import { SchemaDiff, SchemaDiffToSqlOptions } from 'src/sql-tools/types';

export type SqlTransformer = (item: SchemaDiff, options: SchemaDiffToSqlOptions) => string | string[] | false;
