import * as fs from 'fs'

export function readJsonFile<T>(path: string): T {
    const jsonData = JSON.parse(fs.readFileSync(path, 'utf8'));
    return jsonData as T;
}