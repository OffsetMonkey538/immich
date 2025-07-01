import { Processor } from 'src/sql-tools/from-code/processors/type';

const asValue = (data: unknown) => Buffer.from(JSON.stringify(data)).toString('base64');

export const processOverrides: Processor = (builder) => {
  for (const index of builder.tables.flatMap((table) => table.indexes)) {
    builder.overrides.push({
      name: `index_${index.name}`,
      type: 'index',
      value: asValue(index),
      synchronize: true,
    });
  }

  for (const func of builder.functions) {
    builder.overrides.push({
      name: `function_${func.name}`,
      type: 'function',
      value: asValue(func),
      synchronize: true,
    });
  }
};
