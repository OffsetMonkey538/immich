import { Comparer, DatabaseOverride, Reason, SchemaDiff } from 'src/sql-tools/types';

export const compareOverrides: Comparer<DatabaseOverride> = {
  onMissing: (source) => [
    {
      type: 'override.create',
      override: source,
      reason: Reason.MissingInTarget,
    },
  ],
  onExtra: (target) => [
    {
      type: 'override.drop',
      overrideName: target.name,
      reason: Reason.MissingInSource,
    },
  ],
  onCompare: (source, target) => compareOverride(source, target),
};

const compareOverride = (source: DatabaseOverride, target: DatabaseOverride): SchemaDiff[] => {
  if (source.value !== target.value) {
    return [
      { type: 'override.update', override: source, reason: `data is different (${source.value} vs ${target.value})` },
    ];
  }

  return [];
};
