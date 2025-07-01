import { SqlTransformer } from 'src/sql-tools/to-sql/transformers/types';
import { DatabaseOverride } from 'src/sql-tools/types';

export const transformOverrides: SqlTransformer = (item, options) => {
  const tableName = options.overrideTableName || 'sql_tools_overrides';

  switch (item.type) {
    case 'override.create': {
      return asOverrideCreate(tableName, item.override);
    }

    case 'override.update': {
      return asOverrideUpdate(tableName, item.override);
    }

    case 'override.drop': {
      return asOverrideDrop(tableName, item.overrideName);
    }

    default: {
      return false;
    }
  }
};

export const asOverrideCreate = (tableName: string, override: DatabaseOverride): string => {
  return `INSERT INTO "${tableName}" ("name", "value") VALUES ('${override.name}', '${override.value}')`;
};

export const asOverrideUpdate = (tableName: string, override: DatabaseOverride): string => {
  return `UPDATE "${tableName}" SET "value" = '${override.value}' WHERE "name" = '${override.name}';`;
};

export const asOverrideDrop = (tableName: string, overrideName: string): string => {
  return `DELETE FROM "${tableName}" WHERE "name" = '${overrideName}';`;
};
