
interface ISelectOption {
    image: string,
    holder: string;
    label?: boolean,
    labelText?: string,
    big?: boolean,
    optionsList: { value: any; optionItem: string }[];
}

export const PropertiesLocationData: ISelectOption = {
    image: 'location.svg',
    holder: 'Location',
    label: false,
    optionsList: [
        { value: 'Moscow', optionItem: 'Moscow' },
        { value: 'Maldives', optionItem: 'Maldives' },
        { value: 'New York', optionItem: 'New York' },
        { value: 'France', optionItem: 'France' }
    ]
};

export const PropertiesPropertyTypeData: ISelectOption = {
    image: 'property.svg',
    holder: 'Property Type',
    label: false,
    optionsList: [
        { value: 'true', optionItem: 'with villa' },
        { value: 'false', optionItem: 'none villa' },
    ]
};

export const PropertiesPricingRangeData: ISelectOption = {
    image: 'priceRange.svg',
    holder: 'Pricing Range',
    label: false,
    optionsList: [
        { value: 500000, optionItem: 'Up to 500k' },
        { value: 1000000, optionItem: 'Up to 1M' },
        { value: 10000000, optionItem: 'Up to 10M' },
        { value: 100000000, optionItem: 'Up to 100M' },
        { value: 1000000000, optionItem: 'Up to 1000M' },
    ]
};

export const PropertiesPropertySizeData: ISelectOption = {
    image: 'propertySize.svg',
    holder: 'Property Size',
    label: false,
    optionsList: [
        { value: 'Small', optionItem: 'Small' },
        { value: 'Medium', optionItem: 'Medium' },
        { value: 'Large', optionItem: 'Large' },
        { value: 'extra-large', optionItem: 'Extra Large' }
    ]
};

export const PropertiesBuildYearData: ISelectOption = {
    image: 'buildYear.svg',
    holder: 'Build Year',
    label: false,
    optionsList: [
        { value: 2024, optionItem: '2024' },
        { value: 2023, optionItem: '2023' },
        { value: 2022, optionItem: '2022' },
        { value: 2021, optionItem: '2021' },
        { value: 2020, optionItem: '2020' },
        { value: 2019, optionItem: '2019' },
        { value: 2018, optionItem: '2018' },
        { value: 2017, optionItem: '2017' },
        { value: 2016, optionItem: '2016' },
        { value: 2015, optionItem: '2015' },
    ]
};



export const SelectSixContact: ISelectOption = {
    image: 'location.svg',
    holder: 'Select Inquiry Type',
    label: true,
    labelText: 'Inquiry Type',
    big: false,
    optionsList: [
        { value: 'moscow', optionItem: 'Moscow' },
        { value: 'peter', optionItem: 'Peter' },
        { value: 'krasnodar', optionItem: 'Krasnodar' },
        { value: 'usa', optionItem: 'USA' },
    ]
}

export const SelectSevenContact: ISelectOption = {
    image: 'location.svg',
    holder: 'Select',
    label: true,
    labelText: 'Inquiry Type',
    big: false,
    optionsList: [
        { value: 'moscow', optionItem: 'Moscow' },
        { value: 'peter', optionItem: 'Peter' },
        { value: 'krasnodar', optionItem: 'Krasnodar' },
        { value: 'usa', optionItem: 'USA' },
    ]
}