interface ICustomers {
    title: string,
    description: string
}
interface IDreamCard {
    image: string,
    title: string,
    link: string
}


export const CustomersData: ICustomers[] = [
    {
        title: '200+',
        description: 'Happy Customers'
    },
    {
        title: '10k+',
        description: 'Properties For Clients'
    },
    {
        title: '16+',
        description: 'Years of Experience'
    },
]

export const DreamCardData: IDreamCard[] = [
    {
        image: '/SectionDream/icon1.png',
        title: 'Find Your Dream Home',
        link: '/'
    },
    {
        image: '/SectionDream/icon2.png',
        title: 'Unlock Property Value',
        link: '/'
    },
    {
        image: '/SectionDream/icon3.png',
        title: 'Effortless Property Management',
        link: '/'
    },
    {
        image: '/SectionDream/icon4.png',
        title: 'Smart Investments, Informed Decisions',
        link: '/'
    },
]

export const DreamCardDataContact: IDreamCard[] = [
    {
        image: '/Contact/icon1.png',
        title: 'info@estatein.com',
        link: '/'
    },
    {
        image: '/Contact/icon2.png',
        title: '+1 (123) 456-7890',
        link: '/'
    },
    {
        image: '/Contact/icon3.png',
        title: 'Main Headquarters',
        link: '/'
    },
    {
        image: '/Contact/icon4.png',
        title: 'Social Networks',
        link: '/'
    },
]