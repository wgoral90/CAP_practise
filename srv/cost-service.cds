using company.overview as company from '../db/schema';

service CostsService {
    entity Costs as projection on company.Costs
}